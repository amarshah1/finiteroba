module PA = Ast
exception UnsupportedQuery of string
open Hashtbl
open Context
(* A step that removes arrays from inside ADTs*)

let count = 50

let rec over_approximate_count_term count = function
  | PA.Const _ -> 1
  | Arith (_, terms) -> terms |> List.map (over_approximate_count_term count) |> List.fold_left (+) 0 
  | Bitvec (_, terms) -> terms |> List.map (over_approximate_count_term count) |> List.fold_left (+) 0 
  | Array (_, terms) -> terms |> List.map (over_approximate_count_term count) |> List.fold_left (+) 0 
  | App (_, terms) -> terms |> List.map (over_approximate_count_term count) |> List.fold_left (+) 1
  | If (t1, t2, t3) -> over_approximate_count_term count t1 + (Int.max (over_approximate_count_term count t2) (over_approximate_count_term count t3))
  | Let (bindings, t) -> bindings |> List.map snd |> List.map (over_approximate_count_term count) |> List.fold_left (+) (over_approximate_count_term count t)
  | Fun (_, t) -> over_approximate_count_term count t
  | Eq (t1, t2) -> over_approximate_count_term count t1 + over_approximate_count_term count t2
  | Imply (t1, t2) -> over_approximate_count_term count t1 + over_approximate_count_term count t2
  | And terms -> terms |> List.map (over_approximate_count_term count) |> List.fold_left (+) 1
  | Or terms -> terms |> List.map (over_approximate_count_term count) |> List.fold_left (+) 1
  | Not term -> over_approximate_count_term count term
  | Distinct terms -> terms |> List.map (over_approximate_count_term count) |> List.fold_left (+) 1
  | Cast (term, _) -> over_approximate_count_term count term
  | Forall (_, term) -> over_approximate_count_term count term
  | Exists (_, term) -> over_approximate_count_term count term
  | Attr _ -> raise (UnsupportedQuery "We do not support attributes")
  | _ -> 0


let over_approximate_count stmts = 
  let rec aux count_acc = function
    | PA.Stmt_assert term:: rest-> 
        let term_count = over_approximate_count_term 0 term in 
        aux (count_acc + term_count) rest
    | _ :: rest -> aux count_acc rest 
    | _ -> count_acc 
    in 
  aux 0 stmts

let rec reduce_args new_functions args_acc = function 
  | (selector_name, PA.Ty_array (t1, t2)) :: rest ->
      let length = Ctx.t.total_terms_count |> log_base 2 |> Float.ceil |> int_of_float in (*TODO change how we compute count*)
      let (new_function : PA.ty PA.fun_decl) = PA.mk_fun_decl ~ty_vars:[] ("indirect_" ^ selector_name) [PA.Ty_bv length] (PA.Ty_array (t1, t2)) in 
      Ctx.add_array_selector selector_name (PA.Ty_array (t1, t2)) (PA.Ty_bv length) ("indirect_" ^ selector_name);
      let new_arg = (selector_name, PA.Ty_bv length) in 
      reduce_args (new_functions @ [PA.Stmt_decl new_function]) (args_acc @ [new_arg]) rest
  | arg :: rest -> reduce_args new_functions (args_acc @ [arg]) rest
  | _ -> new_functions, args_acc


let rec remove_array_from_cstors functions cstors_acc = function 
  | (cstor : PA.cstor) :: rest ->
     let args = cstor.cstor_args in 
     let new_functions, new_args = reduce_args [] [] args in 
     let selectors_ty_option = 
      List.map2 
      (fun (_, og_ty) (name, new_ty) ->
        if (og_ty <> new_ty) then Some (new_ty, "indirect_" ^ name) else None
      )
      cstor.cstor_args
      new_args
     in 
     (*TODO: add this back in, but make it work for Let's and Forall's*)
     if (List.exists Option.is_some selectors_ty_option) then (Ctx.add_array_constructor cstor.cstor_name selectors_ty_option);
     let new_cstor : PA.cstor = {cstor_ty_vars = cstor.cstor_ty_vars; cstor_name = cstor.cstor_name; cstor_args = new_args} in 
    remove_array_from_cstors (functions @ new_functions) (cstors_acc @ [new_cstor]) rest
  | _ -> functions, cstors_acc


let rec remove_array_from_datatypes functions datatypes_acc = function 
  | ((name, n), cstors) :: rest -> 
    let new_functions, new_cstors = remove_array_from_cstors [] [] cstors in 
    remove_array_from_datatypes (functions @ new_functions) (datatypes_acc @ [((name, n), new_cstors)]) rest
  | _ -> functions, datatypes_acc

let new_stmts_holder = ref []

let update_new_stmts_holder stmts = 
  new_stmts_holder := !new_stmts_holder @ stmts

let reset_new_stmts_holder () = 
  let stmts = !new_stmts_holder in 
  new_stmts_holder := [];
  stmts

let rec find_bound_asserts bindings_names additional_stmts_acc new_reset_stmts_acc = function 
  | PA.Stmt_assert (PA.Eq (PA.App (func, [PA.Const const_name]), term)) :: rest ->
    print_endline ("Found a bound_assert: " ^ const_name);
    find_bound_asserts bindings_names (additional_stmts_acc @ [PA.Eq (PA.App (func, [PA.Const const_name]), term)]) new_reset_stmts_acc rest
  | stmt :: rest -> find_bound_asserts bindings_names additional_stmts_acc (new_reset_stmts_acc @ [stmt]) rest
  | _ -> new_reset_stmts_acc, additional_stmts_acc

let rec replace_selectors = function 
  | PA.Arith (op, terms) -> PA.Arith (op, List.map replace_selectors terms)
  | Bitvec (op, terms) -> Bitvec (op, List.map replace_selectors terms)
  | Array (op, terms) -> Array (op, List.map replace_selectors terms)
  | App (f, terms) when StrTbl.mem Ctx.t.array_selectors f -> 
      let record = StrTbl.find Ctx.t.array_selectors f in 
      App (record.function_name, [App (f, List.map replace_selectors terms)])
  | App (f, terms) when StrTbl.mem Ctx.t.array_constructors f ->
      let terms = List.map replace_selectors terms in
      let record = StrTbl.find Ctx.t.array_constructors f in 
      let new_terms_stmts = 
        List.map2
        (fun ty_option term -> 
          match ty_option with 
            | Some (ty, func) -> 
              let const_name = "array_placeholder" ^ (string_of_int Ctx.t.vars_created) in 
              Ctx.increment_vars_created ();
              (PA.Const const_name, [PA.Stmt_decl (PA.mk_fun_decl ~ty_vars:[] const_name [] ty); PA.Stmt_assert (PA.Eq (PA.App (func, [PA.Const const_name]), term))])
            | None -> term, [])
        record.selector_types
        terms
        in
      let new_terms = List.map fst new_terms_stmts in 
      let new_stmts = List.concat_map snd new_terms_stmts in 
      update_new_stmts_holder new_stmts;
      App (f, new_terms)
  | App (f, terms) -> App (f, List.map replace_selectors terms)
  | If (t1, t2, t3) -> If (replace_selectors t1, replace_selectors t2, replace_selectors t3)
  | Let (bindings, t) -> 
      let new_bindings = List.map (fun (name, term) -> (name, replace_selectors term)) bindings in 
      Let (new_bindings, replace_selectors t)
  | Fun (ty_var, t) -> Fun(ty_var, replace_selectors t)
  | Eq (t1, t2) -> Eq (replace_selectors t1, replace_selectors t2)
  | Imply (t1, t2) -> Imply (replace_selectors t1, replace_selectors t2)
  | And terms -> And (List.map replace_selectors terms)
  | Or terms -> And (List.map replace_selectors terms)
  | Not term -> Not (replace_selectors term)
  | Distinct terms -> Distinct (List.map replace_selectors terms)
  | Cast (term, ty) -> Cast (replace_selectors term, ty)
  | Forall (bindings, term) -> 
    let previous_smts_holder = reset_new_stmts_holder () in
    let term = replace_selectors term in 
    let replace_stmts_holder, additional_stmts_acc = find_bound_asserts (List.map fst bindings) [] [] (reset_new_stmts_holder ()) in 
    new_stmts_holder := previous_smts_holder @ replace_stmts_holder;
    Forall (bindings, PA.And (additional_stmts_acc @ [term]))
  | Exists (bindings, term) -> 
    let previous_smts_holder = reset_new_stmts_holder () in
    let term = replace_selectors term in 
    let replace_stmts_holder, additional_stmts_acc = find_bound_asserts (List.map fst bindings) [] [] (reset_new_stmts_holder ()) in 
    new_stmts_holder := previous_smts_holder @ replace_stmts_holder;
    Exists (bindings, PA.And (additional_stmts_acc @ [term]))
  | Attr _ -> raise (UnsupportedQuery "We do not support attributes")
  | term -> term

let remove_arrays (stmts : PA.stmt list) = 
  let rec aux acc = function
    | PA.Stmt_data datatypes :: rest -> 
      let new_functions, new_datatypes = remove_array_from_datatypes [] [] datatypes in 
      aux (acc @ new_functions @ [PA.Stmt_data new_datatypes]) rest
    | PA.Stmt_assert term :: rest -> 
      let new_term = replace_selectors term in 
      let new_stmts = reset_new_stmts_holder () in 
      aux (acc @ new_stmts @ [PA.Stmt_assert (new_term)]) rest
    | stmt :: rest -> aux (acc @ [stmt]) rest
    | [] -> acc 
  in 
  stmts |> over_approximate_count |> Ctx.set_count;
  aux [] stmts




