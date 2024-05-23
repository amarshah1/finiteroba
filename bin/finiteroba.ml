module PA = Finiteroba_lib.Ast
module Smtlib = Finiteroba_lib.Smtlib_utils.V_2_6
open Core
open Finiteroba_lib.Context
open Finiteroba_lib.Finite_reduction
open Finiteroba_lib.Z3_utils
open Finiteroba_lib.F0inline
open Finiteroba_lib.F0rename
open Finiteroba_lib.F1normalize
open Finiteroba_lib.F2simplify

let usage_msg = "finiteroba <query> [options]"

let input_file = ref ""

let output_file = ref ""
let measure = ref false

let depths_based_acyclicality = ref false
let acyclicality_pause = ref (-1)

let anon_fun filename = input_file := filename

let speclist =
  [ ("-o", Arg.Set_string output_file, "Write to an output file")
  ; ("-t", Arg.Int set_timeout, "Set a timeout for solving (in milliseconds)")
  ; ("--measure", Arg.Set measure, "Measure time spent in each step")
]
   
  let print_time before words =
    if !measure then
      Printf.printf "  - %s: %s\n%!" words
        (Core.Time.Span.to_short_string
            (Core.Time.diff (Core.Time.now ()) before) )
  
  let () =
    Arg.parse speclist anon_fun usage_msg ;
    try
      match !input_file with
      | "" -> failwith "No input file provided"
      | _ -> (
          if !measure then Printf.printf "Mesuring time:\n" ;
          let before = Core.Time.now () in
          let stmt_list =
            match Smtlib.parse_file !input_file with
            | Ok f -> f
            | Error _ -> []
          in

          (* Delete below *)

          (* let rec check_for_check_sat = function 
            | PA.Stmt_check_sat :: _ -> "CHECK-SAT-EXISTS"  
            | _ :: rest -> check_for_check_sat rest 
            | _ -> "CHECK-SAT-DOESNT-EXIST" 
          in 
          print_endline (check_for_check_sat (List.map stmt_list ~f:statement_to_stmt));
        
          let oc = Out_channel.create !output_file in
          let fmt = Format.formatter_of_out_channel oc in
          Format.fprintf fmt "@[<hv>%a@]" (PA.pp_list PA.pp_stmt)
                stmt_list;
          print_time before "Parsing time" ;
          let before = Core.Time.now () in *)
          (*INLINING seems to be really bad efficiency wise, so we won't do it rn*)
          (* could keep this as an optimization for the future -> inlining + CSE could be good*)
          let rs =  rename_vars_statements (List.map stmt_list ~f:statement_to_stmt) in
          let before = Core.Time.now () in
          print_time before "Rename time" ;
          (* Note: Inlining statements screws up performance *)
          (* let is = inline_statements rs in 
          let before = Core.Time.now () in
          print_time before "Inline time" ; *)
          let ns =  normalize_statements rs in
          let before = Core.Time.now () in
          print_time before "Convert to NNF time" ;
          let nas = remove_datatypes ns in
          print_time before "Reduction time" ;
          let before = Core.Time.now () in
          (* Doing a post-reduction simplification in order to be compatible with bitwuzla*)
          let ss = simplify_statements nas in
          print_time before "Post-reduction simplification time" ;
          let before = Core.Time.now () in
          match !output_file with
          | "" -> (
                let first_result, context, solver, sorts, func_decls =
                  evaluate_stmts_from_scratch nas
                in
                print_time before "Solve time" ;
                print_endline "----";
                print_endline (Z3.Solver.to_string solver);
                print_string first_result;
          )
          | _ ->
              (let oc = Out_channel.create !output_file in
                let fmt = Format.formatter_of_out_channel oc in
                (* let first_result, context, solver, sorts, func_decls =
                  evaluate_stmts_from_scratch nas in *)
                let before = Core.Time.now () in
                print_time before "Reduce axioms time" ;
                (* Format.pp_print_string fmt (Z3.Solver.to_string solver) ; *)
                Format.fprintf fmt "@[<hv>%a@]" (PA.pp_list PA.pp_stmt)
                (stmt_to_statements ss);
                Out_channel.close oc ) ;
              exit 0 
        )
    with Failure s -> print_endline s ; exit 1