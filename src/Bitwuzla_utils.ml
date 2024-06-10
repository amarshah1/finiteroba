module PA = Ast
(* open Bitwuzla *)
(* open Bitwuzla_c *)
(* open Bitwuzla_cxx *)

open Containers

exception UnsupportedQuery of string

module StrTbl = CCHashtbl.Make (CCString)

(* 
open Bitwuzla.Once ()
open Bitwuzla.Incremental () *)

let counter = ref 0

(* let ctx_params = ref [] 

let global_params = ref []

let solver_flags = ref []

let simplifiers = ref []*)

(* let options = Bitwuzla.Options.default () in *)
(* let bitwuzla = Solver.create options in *)



(* let rec convert_smt_to_bitwuzla_ty context sorts (ty : PA.ty) =
  match (ty : PA.ty) with
  | Ty_bool -> Bitwuzla.bool context
  | Ty_real -> Bitwuzla.Arithmetic.Real.mk_sort context
  | Ty_bv n -> Bitwuzla.BitVector.mk_sort context n
  | Ty_array (i, j) -> 
    let i = convert_smt_to_bitwuzla_ty context sorts i in 
    let j = convert_smt_to_bitwuzla_ty context sorts j in 
    Bitwuzla.BitwuzlaArray.mk_sort context i j
  | Ty_app (s, []) -> (
    match Hashtbl.find_opt sorts s with
    | Some sort -> sort
    | None -> raise (UnsupportedQuery ("trying to use a sort that does not exist: " ^ s))
    )
  | Ty_app _ ->
      raise (UnsupportedQuery "We do not currently support Polymorphic types")
  | Ty_arrow _ -> raise (UnsupportedQuery "We do not currently support Ty_arrow") *)

(* 
let convert_smt_to_bitwuzla_bitvecop (bv_op : PA.bitvec_op) = 
  match bv_op with 
    | BVUlt -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.ult expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVSlt -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.slt expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVNot -> (fun exprs -> match exprs with [expr] -> Term.Bv.lognot expr | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVAnd -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.logand expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVOr -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.logor expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVXor -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.logxor expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVShl -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.shift_left expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVLshr -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.shift_right_logical expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation")) (*Note I think I spelt this wrong in smtlib_utils*)
    | BVAshr -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.shift_right expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVAdd -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.add expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVMul -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.mul expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVURem -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.urem expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVUDiv -> (fun exprs -> match exprs with [expr1; expr2] -> Term.Bv.udiv expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | Concat -> (fun exprs -> exprs |> Array.of_list |> Term.Bv.concat )
    | BV2nat -> raise (UnsupportedQuery "We do not support BV2nat in bitwuzla")
      (* (fun exprs -> match exprs with [expr] -> Term.Bv.to_bl expr false | _ -> raise (UnsupportedQuery "Incorrect bitvector operation")) *)
    | BVconst (i, n) -> (fun exprs -> match exprs with [] -> Term.Bv.of_string (Sort.bv n) i| _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | Zero_extend i -> (fun exprs -> match exprs with [expr] -> Term.Bv.zero_extend i expr | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | Sign_extend i -> (fun exprs -> match exprs with [expr] -> Term.Bv.sign_extend i expr | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | Extract (i, j) -> (fun exprs -> match exprs with [expr] -> Term.Bv.extract ~hi:i ~lo:j expr | _ -> raise (UnsupportedQuery "Incorrect bitvector operation")) *)



(* let rec convert_smt_to_bitwuzla_terms context constants functions sorts terms : _ Term.variadic  = 
  begin match terms with 
    | [] -> []
    | term :: rest -> (convert_smt_to_bitwuzla_term context constants functions sorts term) :: (convert_smt_to_bitwuzla_terms context constants functions sorts rest)
  end *)

(* let rec convert_smt_to_bitwuzla_term t context constants functions sorts (*quant_decls : (string * Bitwuzla.Expr.expr) list*) (term : PA.term) : Bitwuzla_c.term =
  match term with
  | True -> Bitwuzla_c.mk_true t
  | False -> Bitwuzla_c.mk_false t
  | Const v when String.starts_with ~prefix:"#b" v ->
      let name = match String.chop_prefix ~pre:"#b" v with Some s -> s | None -> "" in
      let size = String.length name in
      mk_bv_value t (mk_bv_sort t size) name Bin
      (* Term.Bv.of_string (Sort.bv size) name *)
  | Const v -> 
     begin match Hashtbl.find_opt constants v with
      | Some constant -> constant
      | None -> raise (UnsupportedQuery ("We are using undefined constant " ^ v))
          (* let _, expr = List.find (fun (x, _: string * Bitwuzla.Expr.expr) -> String.equal x v) quant_decls in 
          expr  *)
     end
  | Arith (_, _) -> raise (UnsupportedQuery "Bitwuzla does not support arithmetic")
  | App (s, terms) -> (
    match Hashtbl.find_opt functions s with
    | Some func -> 
      let terms = List.map (convert_smt_to_bitwuzla_term t context constants functions sorts) terms in 
      let terms_with_fun = Array.of_list (func :: terms) in
      (*TODO: I don't know if this is the correct way to do this *) 
      mk_term t Apply terms_with_fun
    | None ->
        raise (UnsupportedQuery ("Trying to use a function that has not been declared " ^ s) ) )
  | HO_app _ -> raise (UnsupportedQuery "we do not support HO_App yet")
  | Match _ -> raise (UnsupportedQuery "we should have simplified Match statements by now")
  | Eq (a, b) -> 
      mk_term t Equal
      [|(convert_smt_to_bitwuzla_term t context constants functions sorts a);
        (convert_smt_to_bitwuzla_term t context constants functions sorts b)|]
  | And terms ->
      let terms = List.map (convert_smt_to_bitwuzla_term t context constants functions sorts) terms in 
      let terms = Array.of_list terms in 
      mk_term t And terms
  | Or terms ->
      let terms = List.map (convert_smt_to_bitwuzla_term t context constants functions sorts) terms in 
      let terms = Array.of_list terms in 
      mk_term t Or terms
  | Not term ->
      mk_term t Equal  [|convert_smt_to_bitwuzla_term t context constants functions sorts term|]
  | Distinct terms ->
      let terms = List.map (convert_smt_to_bitwuzla_term t context constants functions sorts) terms in 
      let terms = Array.of_list terms in 
      mk_term t Distinct terms
  | Cast _ -> raise (UnsupportedQuery "Don't currently have Bitwuzla Cast support")
  | Forall (vars_types, t) -> 
      mk_term_indexed 
      (* let vars = List.map (fun v_t -> Bitwuzla.Expr.mk_const_s context (fst v_t) (convert_smt_to_bitwuzla_ty context sorts (snd v_t))) vars_types in
      let new_quant_decls = (List.map2 (fun x y -> (fst x, y)) vars_types vars) @ quant_decls in
      let bitwuzla_term = convert_smt_to_bitwuzla_term context func_decls sorts new_quant_decls t in 
      let quantifier =  Bitwuzla.Quantifier.mk_forall_const context vars bitwuzla_term None [] [] None None in
      Bitwuzla.Quantifier.expr_of_quantifier quantifier ???? -> for some reason this screws things up *)
  | Exists (vars_types, t) ->
    let vars = List.map (fun v_t -> Bitwuzla.Expr.mk_const_s context (fst v_t) (convert_smt_to_bitwuzla_ty context sorts (snd v_t))) vars_types in
    let new_quant_decls = (List.map2 (fun x y -> (fst x, y)) vars_types vars) @ quant_decls in
    let bitwuzla_term = convert_smt_to_bitwuzla_term context func_decls sorts new_quant_decls t in 
    let quantifier =  Bitwuzla.Quantifier.mk_exists_const context vars bitwuzla_term None [] [] None None in
    Bitwuzla.Quantifier.expr_of_quantifier quantifier (*???? -> for some reason this screws things up*)
  | Attr _ -> raise (UnsupportedQuery "Don't currently have Bitwuzla Attr support")
  | If (t1, t2, t3) ->
      Bitwuzla.Boolean.mk_ite context
        (convert_smt_to_bitwuzla_term context func_decls sorts quant_decls t1)
        (convert_smt_to_bitwuzla_term context func_decls sorts quant_decls t2)
        (convert_smt_to_bitwuzla_term context func_decls sorts quant_decls t3)
  | Let _ -> raise (UnsupportedQuery "We should have already simplified Let")
  | Is_a _ ->
      raise (UnsupportedQuery "We should have already simplified is-a")
      (* tester: is-constructor(term) *)
  | Imply (t1, t2) ->
      Bitwuzla.Boolean.mk_implies context
        (convert_smt_to_bitwuzla_term context func_decls sorts quant_decls t1)
        (convert_smt_to_bitwuzla_term context func_decls sorts quant_decls t2)
  | Bitvec (bv_op, terms) -> convert_smt_to_bitwuzla_bitvecop context bv_op (List.map (convert_smt_to_bitwuzla_term context func_decls sorts quant_decls) terms)
  | _ ->
      (*print_string "here"; stmt_printer [(PA.Stmt_assert term)];
        Bitwuzla.Boolean.mk_true context *)
      raise (UnsupportedQuery "We should have already simplified this term") *)

(*

let rec convert_smt_to_bitwuzla context solver (stmts : PA.stmt list)
    (sorts : (string, Bitwuzla.Sort.sort) Hashtbl.t)
    (func_decls : (string, func_decl) Hashtbl.t) =
  match stmts with
  | stmt :: rest -> (
    stmt_printer [stmt];
    match (stmt : PA.stmt) with
    (* | Stmt_set_logic s -> let set_logic_symbol = mk_string context s in let
       new_solver = Bitwuzla.Solver.mk_solver context (Some set_logic_symbol) in
       convert_smt_to_bitwuzla context new_solver rest sorts func_decls *)
    (*WILL JUST HAVE THIS ALWAYS BE QFUF FOR RIGHT NOW *)
    (* | Stmt_set_info (s1, s2) -> () *)
    (* | Stmt_set_option string_list -> () *)
    | Stmt_decl_sort (s, _) ->
        let (sort_symbol : Bitwuzla.Symbol.symbol) = Bitwuzla.Symbol.mk_string context s in
        let (new_sort : Bitwuzla.Sort.sort) =
          Bitwuzla.Sort.mk_uninterpreted context sort_symbol
        in
        (*TODO: WHAT do i actually do with this sort??*)
        Hashtbl.add sorts s new_sort ;
        convert_smt_to_bitwuzla context solver rest sorts func_decls
    | Stmt_decl fun_decl ->
        (*look at the bitwuzla type fun_decl*)
        let func_name = Bitwuzla.Symbol.mk_string context fun_decl.fun_name in
        let input_sorts =
          List.map (convert_smt_to_bitwuzla_ty context sorts) fun_decl.fun_args
        in
        let output_sort = convert_smt_to_bitwuzla_ty context sorts fun_decl.fun_ret in
        let bitwuzla_func_decl =
          Bitwuzla.FuncDecl.mk_func_decl context func_name input_sorts output_sort
        in
        (*not sure if i need to do anything to this*)
        Hashtbl.add func_decls fun_decl.fun_name bitwuzla_func_decl ;
        (* print_endline ("Added in the fun_decl: " ^ fun_decl.fun_name);  *)
        convert_smt_to_bitwuzla context solver rest sorts func_decls
    | Stmt_fun_def fun_def ->
        let fun_decl = fun_def.fr_decl in
        if (List.is_empty fun_decl.fun_args) then (
          print_string "IN THIS CASE";
          (*TODO: we can't use name here I think something is getting screwed up hmm*)
          let term = PA.Eq (PA.App (fun_decl.fun_name, List.map (fun arg -> PA.Const (fst arg)) fun_decl.fun_args), fun_def.fr_body) in 
          add solver [convert_smt_to_bitwuzla_term context func_decls sorts [] term];
          convert_smt_to_bitwuzla context solver rest sorts func_decls
        ) else (
          let univ_quant_macro = PA.Forall (fun_decl.fun_args, PA.Eq (PA.App (fun_decl.fun_name, List.map (fun arg -> PA.Const (fst arg)) fun_decl.fun_args), fun_def.fr_body)) in
          add solver [convert_smt_to_bitwuzla_term context func_decls sorts [] univ_quant_macro];
          convert_smt_to_bitwuzla context solver rest sorts func_decls
        )
    (* | Stmt_fun_def of fun_def | Stmt_fun_rec of fun_def | Stmt_funs_rec of
       funs_rec_def | Stmt_data of ((string * int) * cstor list) list *)
    | Stmt_assert term ->
        counter := !counter + 1 ;
        add solver [convert_smt_to_bitwuzla_term context func_decls sorts [] term] ;
        convert_smt_to_bitwuzla context solver rest sorts func_decls
    (* | Stmt_get_assertions | Stmt_get_assignment | Stmt_get_info of string *)
    (*| Stmt_get_model (*This looks to be a parameter in the Context*)*)
    (* | Stmt_get_option of string | Stmt_get_proof | Stmt_get_unsat_assumptions
       | Stmt_get_unsat_core | Stmt_get_value of term list*)
    (* | Stmt_check_sat -> *)
    (* | Stmt_check_sat_assuming of prop_literal list | Stmt_pop of int |
       Stmt_push of int | Stmt_reset | Stmt_reset_assertions | Stmt_exit *)
    | _ -> convert_smt_to_bitwuzla context solver rest sorts func_decls )
  | _ -> (context, solver, sorts, func_decls)

let evaluate_stmts (stmts : PA.stmt list) ctx solver sorts func_decls =
  (* push solver ; *)
  let context, solver, sorts, func_decls =
    convert_smt_to_bitwuzla ctx solver stmts sorts func_decls
  in
  (*TODO: Have a terminal command that allows us to print out the assertions
    from bitwuzla: this would be very useful for debugging*)
  (* let _ = List.map (fun x -> output_string stderr (Bitwuzla.Expr.to_string x))
     (get_assertions solver) in *)
  print_string " THESE ARE THE FUNC_DECLS"; print_string_list (Hashtbl.keys_list func_decls);
  let result = check solver [] in
  print_string " THESE ARE THE FUNC_DECLS2"; print_string_list (Hashtbl.keys_list func_decls);
  match result with
  | SATISFIABLE -> ("sat", context, solver, sorts, func_decls)
  | UNSATISFIABLE -> ("unsat", context, solver, sorts, func_decls)
  | UNKNOWN -> ("unknown", context, solver, sorts, func_decls)

let evaluate_stmts_from_scratch (stmts : PA.stmt list) =
  (* let ctx = Bitwuzla.mk_context !ctx_params in


  Printf.printf "QuantifierExample\n" ;
  let is = (Integer.mk_sort ctx) in
  let types = [ is; is; is ] in
  let names = [ (Symbol.mk_string ctx "x_0");
		(Symbol.mk_string ctx "x_1");
		(Symbol.mk_string ctx "x_2") ] in
  let vars = [ (Quantifier.mk_bound ctx 2 (List.nth types 0));
	       (Quantifier.mk_bound ctx 2 (List.nth types 1));
	       (Quantifier.mk_bound ctx 2 (List.nth types 2)) ] in
  let xs = [ (Integer.mk_const ctx (List.nth names 0));
	     (Integer.mk_const ctx (List.nth names 1));
	     (Integer.mk_const ctx (List.nth names 2)) ] in

  let body_vars = (Boolean.mk_and ctx
		     [ (mk_eq ctx
			  (Arithmetic.mk_add ctx [ (List.nth vars 0) ; (Integer.mk_numeral_i ctx 1)])
			  (Integer.mk_numeral_i ctx 2)) ;
		       (mk_eq ctx
			  (Arithmetic.mk_add ctx [ (List.nth vars 1); (Integer.mk_numeral_i ctx 2)])
			  (Arithmetic.mk_add ctx [ (List.nth vars 2); (Integer.mk_numeral_i ctx 3)])) ]) in
  let body_const = (Boolean.mk_and ctx
		      [ (mk_eq ctx
			   (Arithmetic.mk_add ctx [ (List.nth xs 0); (Integer.mk_numeral_i ctx 1)])
			   (Integer.mk_numeral_i ctx 2)) ;
			(mk_eq ctx
			   (Arithmetic.mk_add ctx [ (List.nth xs 1); (Integer.mk_numeral_i ctx 2)])
			   (Arithmetic.mk_add ctx [ (List.nth xs 2); (Integer.mk_numeral_i ctx 3)])) ]) in

  let x = (Quantifier.mk_forall ctx types names body_vars (Some 1) [] [] (Some (Symbol.mk_string ctx "Q1")) (Some (Symbol.mk_string ctx "skid1"))) in
  Printf.printf "Quantifier X: %s\n" (Quantifier.to_string x) ;
  let y = (Quantifier.mk_forall_const ctx xs body_const (Some 1) [] [] (Some (Symbol.mk_string ctx "Q2")) (Some (Symbol.mk_string ctx "skid2"))) in
  Printf.printf "Quantifier Y: %s\n" (Quantifier.to_string y) ;
  if (is_true (Quantifier.expr_of_quantifier x)) then
    print_string "true"
  else if (is_false (Quantifier.expr_of_quantifier x)) then
    print_string "false"
  else if (is_const (Quantifier.expr_of_quantifier x)) then
    print_string "const"; *)

  List.iter (fun (k, v) -> Bitwuzla.set_global_param k v) !global_params ;
  let ctx = Bitwuzla.mk_context !ctx_params in
  let solver = Bitwuzla.Solver.mk_solver_s ctx Ctx.t.set_logic in
  let solver =
    List.fold_left
      (fun acc simplifier ->
        add_simplifier ctx acc (Bitwuzla.Simplifier.mk_simplifier ctx simplifier) )
      solver !simplifiers
  in
  let params = Bitwuzla.Params.mk_params ctx in
  List.iter
    (fun (k, v) -> Bitwuzla.Params.add_bool params (Bitwuzla.Symbol.mk_string ctx k) v)
    !solver_flags ;
  Bitwuzla.Params.add_bool params (Bitwuzla.Symbol.mk_string ctx "macro_finder") true;
  Bitwuzla.Solver.set_parameters solver params ;
  let sorts = Hashtbl.create 16 in
  let func_decls = Hashtbl.create 256 in
  evaluate_stmts stmts ctx solver sorts func_decls

let set_timeout (timeout : int) =
  ctx_params := ("timeout", string_of_int timeout) :: !ctx_params

let set_simplifier (s : string) = simplifiers := s :: !simplifiers

let set_global_parameter (p : string) =
  let left = String.sub p 0 (String.index p '=') in
  let right =
    String.sub p
      (String.index p '=' + 1)
      (String.length p - String.index p '=' - 1)
  in
  global_params := (left, right) :: !global_params

let set_solver_flag (s : string) = solver_flags := (s, true) :: !solver_flags

let clear_solver_flag (s : string) = solver_flags := (s, false) :: !solver_flags *)