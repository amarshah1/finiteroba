module PA = Finiteroba_lib.Ast
module Smtlib = Finiteroba_lib.Smtlib_utils.V_2_6
open Core
(* open Sexp *)
open Finiteroba_lib.Context
open Finiteroba_lib.Finite_reduction
open Finiteroba_lib.Z3_utils
open Finiteroba_lib.F0inline
open Finiteroba_lib.F0rename
open Finiteroba_lib.F1normalize
open Finiteroba_lib.F2flatten
open Finiteroba_lib.F3removearrays
open Finiteroba_lib.F4simplify

let usage_msg = "finiteroba <query> [options]"

let input_file = ref ""

let output_file = ref ""
let measure = ref false

let inline = ref false
let flat_records = ref false
let remove_arr = ref false 
let remove_data = ref true 

let solver = ref "bitwuzla"

let keep_datatypes (keep : bool) =
  remove_data := not keep

let set_solver (solver_name: string) = 
  solver := solver_name

let anon_fun filename = input_file := filename

let speclist =
  [ ("-o", Arg.Set_string output_file, "Write to an output file")
  ; ("-t", Arg.Int set_timeout, "Set a timeout for solving (in milliseconds)")
  ; ("--measure", Arg.Set measure, "Measure time spent in each step")
  ; ("--array_max_size", Arg.Int set_array_max, "Sets the largest size of array we want to reduct to BitVector. Default is 0. Setting -1 will reduce all arrays to Bitvector")
  ; ("--inline", Arg.Set inline, "Inlines the query before processing")
  ; ("--flatten_records", Arg.Set flat_records, "Flattens records in our query")
  ; ("--remove_arrays", Arg.Set remove_arr, "Removes arrays that are inside ADTs")
  ; ("--keep-datatypes", Arg.Bool keep_datatypes , "Decides to keep datatypes instead of turning them into bitvectors")
  ; ("--keep-datatypes", Arg.String set_solver , "Sets the back-end solver (default: bitwuzla)")
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
          let stmts =  rename_vars_statements (List.map stmt_list ~f:statement_to_stmt) in
          print_time before "Rename time" ;
          let before = Core.Time.now () in
          let stmts = 
            if (!inline) then (
              (* Note: Inlining statements screws up performance *)
              inline_statements stmts  
            ) else stmts in 
          let stmts =  normalize_statements stmts in
          print_time before "Convert to NNF" ;
          let stmts = 
            if (!flat_records) 
              then (flatten_records stmts) 
              else stmts in
          let stmts = 
            if (!remove_arr)
              then (remove_arrays stmts)
              else stmts in 
          let stmts = 
            if (!remove_data) 
              then (remove_datatypes stmts)
              else stmts
            in
          let ss = simplify_statements stmts in
          match !output_file with
          | "" -> (
                begin match !solver with 
                  | "z3" ->
                      let first_result, context, solver, sorts, func_decls =
                        evaluate_stmts_from_scratch ss
                      in
                      print_time before "Solve time" ;
                      print_endline "----";
                      print_endline (Z3.Solver.to_string solver);
                      print_string first_result;
                  | "bitwuzla" -> () 
                  | "cvc5" -> () 
                  | _ -> raise (UnsupportedQuery ("We do not support the solver: " ^ !solver))
                end
          )
          | _ ->
              (let oc = Out_channel.create !output_file in
                let fmt = Format.formatter_of_out_channel oc in
                (* let first_result, context, solver, sorts, func_decls =
                  evaluate_stmts_from_scratch nas in *)
                print_time before "Reduce axioms time" ;
                let before = Core.Time.now () in
                (* Format.pp_print_string fmt (Z3.Solver.to_string solver) ; *)
                Format.fprintf fmt "@[<hv>%a@]" (PA.pp_list PA.pp_stmt)
                (stmt_to_statements ss);
                Out_channel.close oc ) ;
              exit 0 
        )
    with Failure s -> print_endline s ; exit 1