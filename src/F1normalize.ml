(* Converting a flattened, inlined formula to NNF *)
module PA = Ast
open Context
exception UnsupportedQuery of string

let negate (not_parity: bool) (term: PA.term) = 
  if not_parity then (PA.Not term)
  else term


(*TODO: this needs to be tail recursive as well*)
let rec normalize (defined_vars : (string, bool) Hashtbl.t) (not_parity: bool)  (term : PA.term) =
  match term with
  | HO_app (_, _) -> raise (UnsupportedQuery "We do not support HO_App")
  | Match _ -> raise (UnsupportedQuery "We should have reduced Match to ITE by now")
  | Let (bindings, t) ->
    let _ = List.map  (fun (var, _) -> Hashtbl.add defined_vars var false) bindings in 
    let new_term = normalize defined_vars not_parity t in 
    let new_bindings = List.concat_map 
                          (fun (var, bound_term) -> 
                            if Hashtbl.find defined_vars var then [(var, normalize defined_vars false bound_term); (var ^"_not", normalize defined_vars true bound_term)]
                            else [(var, normalize defined_vars false bound_term)]) 
                       bindings in 
     PA.Let (new_bindings, new_term)
  | Imply (a, b) -> normalize defined_vars not_parity (PA.Or [PA.Not a; b])
  | And terms -> 
      if not_parity then PA.Or (List.map (normalize defined_vars not_parity) terms)
      else PA.And (List.map (normalize defined_vars not_parity) terms)
  | Or terms -> 
    if not_parity then And (List.map (normalize defined_vars not_parity) terms)
    else Or (List.map (normalize defined_vars not_parity) terms)
  | Not t -> (normalize defined_vars (not not_parity) t)
  | Forall (bindings, term) -> 
      if not_parity then PA.Exists (bindings, normalize defined_vars not_parity term)
      else PA.Forall (bindings, normalize defined_vars not_parity term)
  | Exists (bindings, term) -> 
      if not_parity then PA.Forall (bindings, normalize defined_vars not_parity term)
      else PA.Exists (bindings, normalize defined_vars not_parity term)
  | Is_a (name, t) -> (negate not_parity (PA.App ("is-" ^ name, [t]))) (*NOT NORMALIZATION: but rather turning testers to uninterpreted functions*)
  | PA.Const c when (Hashtbl.mem defined_vars c && not_parity) ->
      print_endline ("REPLACING THE VARIABLE " ^ c);
      Hashtbl.replace defined_vars c true;
      PA.Const (c ^ "_not")
  | _ -> negate not_parity term (* catch all for everything else: note we assume that everything is flattened and typechecked*)

let normalize_statements stmts =
  let rec aux (defined_vars : (string, bool) Hashtbl.t) stmts acc =
    begin match stmts with
      | PA.Stmt_assert term :: rest -> 
          let normalized_assert =  PA.Stmt_assert (normalize defined_vars false term) in
          aux defined_vars rest (acc @ [normalized_assert])
      | ((PA.Stmt_fun_def fun_def) :: rest) when (fun_def.fr_decl.fun_args = [] && fun_def.fr_decl.fun_ret = PA.Ty_bool) -> 
          let negated_fun_def : PA.fun_def = {fr_decl = {fun_name = fun_def.fr_decl.fun_name ^ "_not";
                                                         fun_ty_vars = fun_def.fr_decl.fun_ty_vars;
                                                         fun_args = fun_def.fr_decl.fun_args;
                                                         fun_ret = fun_def.fr_decl.fun_ret};
                                              fr_body = normalize defined_vars true fun_def.fr_body} in
          let _ = Hashtbl.replace defined_vars fun_def.fr_decl.fun_name false in 
          aux defined_vars rest (acc @ [PA.Stmt_fun_def fun_def; PA.Stmt_fun_def negated_fun_def])
      | stmt :: rest -> (aux defined_vars rest (acc @ [stmt]))
      | _ -> acc
    end in
  let defined_vars = Hashtbl.create 64 in 
  aux defined_vars stmts []

