module PA = Ast
open Context
open Z3.Expr
open Z3.Boolean
open Z3.FuncDecl
open Z3.Solver

open Z3
open Z3.Symbol
open Z3.Sort
open Z3.Expr
open Z3.Boolean
open Z3.FuncDecl
open Z3.Goal
open Z3.Tactic
open Z3.Tactic.ApplyResult
open Z3.Probe
open Z3.Solver
open Z3.Arithmetic
open Z3.Arithmetic.Integer
open Z3.Arithmetic.Real
open Z3.BitVector

open Containers

exception UnsupportedQuery of string

module StrTbl = CCHashtbl.Make (CCString)

let counter = ref 0

let ctx_params = ref []

let global_params = ref []

let solver_flags = ref []

let simplifiers = ref []


let rec convert_smt_to_z3_ty context sorts (ty : PA.ty) =
  match (ty : PA.ty) with
  | Ty_bool -> Z3.Boolean.mk_sort context
  | Ty_real -> Z3.Arithmetic.Real.mk_sort context
  | Ty_bv n -> Z3.BitVector.mk_sort context n
  | Ty_array (i, j) -> 
    let i = convert_smt_to_z3_ty context sorts i in 
    let j = convert_smt_to_z3_ty context sorts j in 
    Z3.Z3Array.mk_sort context i j
  | Ty_app (s, []) -> (
    match Hashtbl.find_opt sorts s with
    | Some sort -> sort
    | None -> raise (UnsupportedQuery ("trying to use a sort that does not exist: " ^ s))
    )
  | Ty_app _ ->
      raise (UnsupportedQuery "We do not currently support Polymorphic types")
  | Ty_arrow _ -> raise (UnsupportedQuery "We do not currently support Ty_arrow")


let convert_smt_to_z3_bitvecop context (bv_op : PA.bitvec_op) = 
  match bv_op with 
    | BVUlt -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_ult context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVSlt -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_slt context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVNot -> (fun exprs -> match exprs with [expr] -> Z3.BitVector.mk_not context expr | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVAnd -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_and context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVOr -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_or context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVXor -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_xor context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVShl -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_shl context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVLshr -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_lshr context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation")) (*Note I think I spelt this wrong in smtlib_utils*)
    | BVAshr -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_ashr context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVAdd -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_add context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVMul -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_mul context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVURem -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_urem context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVUDiv -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_udiv context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | Concat -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_concat context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVUge -> (fun exprs -> match exprs with [expr1; expr2] -> Z3.BitVector.mk_uge context expr1 expr2 | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BV2nat -> (fun exprs -> match exprs with [expr] -> Z3.BitVector.mk_bv2int context expr false | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | BVconst (i, n) -> (fun exprs -> match exprs with [] -> Z3.BitVector.mk_numeral context i n | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    (* | BV3 i -> (fun exprs -> match exprs with [] -> Z3.BitVector.mk_numeral context "3" i | _ -> raise (UnsupportedQuery "Incorrect bitvector operation")) *)
    | Zero_extend i -> (fun exprs -> match exprs with [expr] -> Z3.BitVector.mk_zero_ext context i expr | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | Sign_extend i -> (fun exprs -> match exprs with [expr] -> Z3.BitVector.mk_sign_ext context i expr | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))
    | Extract (i, j) -> (fun exprs -> match exprs with [expr] -> Z3.BitVector.mk_extract context i j expr | _ -> raise (UnsupportedQuery "Incorrect bitvector operation"))


let rec convert_smt_to_z3_term context func_decls sorts (quant_decls : (string * Z3.Expr.expr) list) (term : PA.term)  : expr =
  match term with
  | True -> mk_true context
  | False -> mk_false context
  | Const v when String.starts_with ~prefix:"#b" v ->
      let name = match String.chop_prefix ~pre:"#b" v with Some s -> s | None -> "" in
      let size = String.length name in
      Z3.BitVector.mk_numeral context name size
  | Const v -> 
     begin match Hashtbl.find_opt func_decls v with
      | Some fun_decl -> Z3.Expr.mk_const_s context v (get_range fun_decl)
      | None ->
          let _, expr = List.find (fun (x, _: string * Z3.Expr.expr) -> String.equal x v) quant_decls in 
          expr (*THIS IS THE DE-BRUIJN INDEX, BUT IDK???*)
     end
  | Arith (op, terms) -> (
    match op with
    | Leq ->
        Z3.Arithmetic.mk_le context
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 0))
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 1))
    | Lt ->
        Z3.Arithmetic.mk_lt context
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 0))
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 1))
    | Geq ->
        Z3.Arithmetic.mk_ge context
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 0))
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 1))
    | Gt ->
        Z3.Arithmetic.mk_gt context
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 0))
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 1))
    | Add ->
        Z3.Arithmetic.mk_add context
          (List.map (convert_smt_to_z3_term context func_decls sorts quant_decls) terms)
    | Minus ->
        Z3.Arithmetic.mk_sub context
          (List.map (convert_smt_to_z3_term context func_decls sorts quant_decls) terms)
    | Mult ->
        Z3.Arithmetic.mk_mul context
          (List.map (convert_smt_to_z3_term context func_decls sorts quant_decls) terms)
    | Div ->
        Z3.Arithmetic.mk_div context
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 0))
          (convert_smt_to_z3_term context func_decls sorts quant_decls (List.nth terms 1)) )
  | App (s, terms) -> (
    match Hashtbl.find_opt func_decls s with
    | Some func_decl ->
        mk_app context func_decl
          (List.map (convert_smt_to_z3_term context func_decls sorts quant_decls) terms)
    | None ->
        raise
          (UnsupportedQuery
             ("Trying to use a function that has not been declared " ^ s) ) )
  | HO_app _ -> raise (UnsupportedQuery "we do not support HO_App yet")
  | Match _ ->
      raise
        (UnsupportedQuery "we should have simplified Match statements by now")
  | Eq (a, b) ->
      mk_eq context
        (convert_smt_to_z3_term context func_decls sorts quant_decls a)
        (convert_smt_to_z3_term context func_decls sorts quant_decls b)
  | And terms ->
      Z3.Boolean.mk_and context
        (List.map (convert_smt_to_z3_term context func_decls sorts quant_decls) terms)
  | Or terms ->
      Z3.Boolean.mk_or context
        (List.map (convert_smt_to_z3_term context func_decls sorts quant_decls) terms)
  | Not term ->
      Z3.Boolean.mk_not context
        (convert_smt_to_z3_term context func_decls sorts quant_decls term)
  | Distinct terms ->
      mk_distinct context
        (List.map (convert_smt_to_z3_term context func_decls sorts quant_decls) terms)
  | Cast _ -> raise (UnsupportedQuery "Don't currently have Z3 Cast support")
  | Forall (vars_types, t) -> 
      let vars = List.map (fun v_t -> Z3.Expr.mk_const_s context (fst v_t) (convert_smt_to_z3_ty context sorts (snd v_t))) vars_types in
      let new_quant_decls = (List.map2 (fun x y -> (fst x, y)) vars_types vars) @ quant_decls in
      let z3_term = convert_smt_to_z3_term context func_decls sorts new_quant_decls t in 
      let quantifier =  Z3.Quantifier.mk_forall_const context vars z3_term None [] [] None None in
      Z3.Quantifier.expr_of_quantifier quantifier (*???? -> for some reason this screws things up*)
  | Exists (vars_types, t) ->
    let vars = List.map (fun v_t -> Z3.Expr.mk_const_s context (fst v_t) (convert_smt_to_z3_ty context sorts (snd v_t))) vars_types in
    let new_quant_decls = (List.map2 (fun x y -> (fst x, y)) vars_types vars) @ quant_decls in
    let z3_term = convert_smt_to_z3_term context func_decls sorts new_quant_decls t in 
    let quantifier =  Z3.Quantifier.mk_exists_const context vars z3_term None [] [] None None in
    Z3.Quantifier.expr_of_quantifier quantifier (*???? -> for some reason this screws things up*)
  | Attr _ -> raise (UnsupportedQuery "Don't currently have Z3 Attr support")
  | If (t1, t2, t3) ->
      Z3.Boolean.mk_ite context
        (convert_smt_to_z3_term context func_decls sorts quant_decls t1)
        (convert_smt_to_z3_term context func_decls sorts quant_decls t2)
        (convert_smt_to_z3_term context func_decls sorts quant_decls t3)
  | Let _ -> raise (UnsupportedQuery "We should have already simplified Let")
  | Is_a _ ->
      raise (UnsupportedQuery "We should have already simplified is-a")
      (* tester: is-constructor(term) *)
  | Imply (t1, t2) ->
      Z3.Boolean.mk_implies context
        (convert_smt_to_z3_term context func_decls sorts quant_decls t1)
        (convert_smt_to_z3_term context func_decls sorts quant_decls t2)
  | Bitvec (bv_op, terms) -> convert_smt_to_z3_bitvecop context bv_op (List.map (convert_smt_to_z3_term context func_decls sorts quant_decls) terms)
  | _ ->
      (*print_string "here"; stmt_printer [(PA.Stmt_assert term)];
        Z3.Boolean.mk_true context *)
      raise (UnsupportedQuery "We should have already simplified this term")

let rec convert_smt_to_z3 context solver (stmts : PA.stmt list)
    (sorts : (string, Z3.Sort.sort) Hashtbl.t)
    (func_decls : (string, func_decl) Hashtbl.t) =
  match stmts with
  | stmt :: rest -> (
    stmt_printer [stmt];
    match (stmt : PA.stmt) with
    (* | Stmt_set_logic s -> let set_logic_symbol = mk_string context s in let
       new_solver = Z3.Solver.mk_solver context (Some set_logic_symbol) in
       convert_smt_to_z3 context new_solver rest sorts func_decls *)
    (*WILL JUST HAVE THIS ALWAYS BE QFUF FOR RIGHT NOW *)
    (* | Stmt_set_info (s1, s2) -> () *)
    (* | Stmt_set_option string_list -> () *)
    | Stmt_decl_sort (s, _) ->
        let (sort_symbol : Z3.Symbol.symbol) = Z3.Symbol.mk_string context s in
        let (new_sort : Z3.Sort.sort) =
          Z3.Sort.mk_uninterpreted context sort_symbol
        in
        (*TODO: WHAT do i actually do with this sort??*)
        Hashtbl.add sorts s new_sort ;
        convert_smt_to_z3 context solver rest sorts func_decls
    | Stmt_decl fun_decl ->
        (*look at the z3 type fun_decl*)
        let func_name = Z3.Symbol.mk_string context fun_decl.fun_name in
        let input_sorts =
          List.map (convert_smt_to_z3_ty context sorts) fun_decl.fun_args
        in
        let output_sort = convert_smt_to_z3_ty context sorts fun_decl.fun_ret in
        let z3_func_decl =
          Z3.FuncDecl.mk_func_decl context func_name input_sorts output_sort
        in
        (*not sure if i need to do anything to this*)
        Hashtbl.add func_decls fun_decl.fun_name z3_func_decl ;
        (* print_endline ("Added in the fun_decl: " ^ fun_decl.fun_name);  *)
        convert_smt_to_z3 context solver rest sorts func_decls
    | Stmt_fun_def fun_def ->
        let fun_decl = fun_def.fr_decl in
        if (List.is_empty fun_decl.fun_args) then (
          print_string "IN THIS CASE";
          (*TODO: we can't use name here I think something is getting screwed up hmm*)
          let term = PA.Eq (PA.App (fun_decl.fun_name, List.map (fun arg -> PA.Const (fst arg)) fun_decl.fun_args), fun_def.fr_body) in 
          add solver [convert_smt_to_z3_term context func_decls sorts [] term];
          convert_smt_to_z3 context solver rest sorts func_decls
        ) else (
          let univ_quant_macro = PA.Forall (fun_decl.fun_args, PA.Eq (PA.App (fun_decl.fun_name, List.map (fun arg -> PA.Const (fst arg)) fun_decl.fun_args), fun_def.fr_body)) in
          add solver [convert_smt_to_z3_term context func_decls sorts [] univ_quant_macro];
          convert_smt_to_z3 context solver rest sorts func_decls
        )
    (* | Stmt_fun_def of fun_def | Stmt_fun_rec of fun_def | Stmt_funs_rec of
       funs_rec_def | Stmt_data of ((string * int) * cstor list) list *)
    | Stmt_assert term ->
        counter := !counter + 1 ;
        add solver [convert_smt_to_z3_term context func_decls sorts [] term] ;
        convert_smt_to_z3 context solver rest sorts func_decls
    (* | Stmt_get_assertions | Stmt_get_assignment | Stmt_get_info of string *)
    (*| Stmt_get_model (*This looks to be a parameter in the Context*)*)
    (* | Stmt_get_option of string | Stmt_get_proof | Stmt_get_unsat_assumptions
       | Stmt_get_unsat_core | Stmt_get_value of term list*)
    (* | Stmt_check_sat -> *)
    (* | Stmt_check_sat_assuming of prop_literal list | Stmt_pop of int |
       Stmt_push of int | Stmt_reset | Stmt_reset_assertions | Stmt_exit *)
    | _ -> convert_smt_to_z3 context solver rest sorts func_decls )
  | _ -> (context, solver, sorts, func_decls)

let evaluate_stmts (stmts : PA.stmt list) ctx solver sorts func_decls =
  (* push solver ; *)
  let context, solver, sorts, func_decls =
    convert_smt_to_z3 ctx solver stmts sorts func_decls
  in
  (*TODO: Have a terminal command that allows us to print out the assertions
    from z3: this would be very useful for debugging*)
  (* let _ = List.map (fun x -> output_string stderr (Z3.Expr.to_string x))
     (get_assertions solver) in *)
  print_string " THESE ARE THE FUNC_DECLS"; print_string_list (Hashtbl.keys_list func_decls);
  let result = check solver [] in
  print_string " THESE ARE THE FUNC_DECLS2"; print_string_list (Hashtbl.keys_list func_decls);
  match result with
  | SATISFIABLE -> ("sat", context, solver, sorts, func_decls)
  | UNSATISFIABLE -> ("unsat", context, solver, sorts, func_decls)
  | UNKNOWN -> ("unknown", context, solver, sorts, func_decls)

let evaluate_stmts_from_scratch (stmts : PA.stmt list) =
  (* let ctx = Z3.mk_context !ctx_params in


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

  List.iter (fun (k, v) -> Z3.set_global_param k v) !global_params ;
  let ctx = Z3.mk_context !ctx_params in
  let solver = Z3.Solver.mk_solver_s ctx Ctx.t.set_logic in
  let solver =
    List.fold_left
      (fun acc simplifier ->
        add_simplifier ctx acc (Z3.Simplifier.mk_simplifier ctx simplifier) )
      solver !simplifiers
  in
  let params = Z3.Params.mk_params ctx in
  List.iter
    (fun (k, v) -> Z3.Params.add_bool params (Z3.Symbol.mk_string ctx k) v)
    !solver_flags ;
  Z3.Params.add_bool params (Z3.Symbol.mk_string ctx "macro_finder") true;
  Z3.Solver.set_parameters solver params ;
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

let clear_solver_flag (s : string) = solver_flags := (s, false) :: !solver_flags