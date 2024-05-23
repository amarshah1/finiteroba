module PA = Ast
exception UnsupportedQuery of string
open Hashtbl
open Context
(* A post reduction simplifier to make sure that our query is compatible with bitwuzla*)

let rec simplify_term = function 
  | PA.And [x] -> simplify_term x 
  | PA.Or [x] -> simplify_term x 
  | PA.And terms -> PA.And (List.map simplify_term terms)
  | PA.Or terms -> PA.Or (List.map simplify_term terms) 
  | Arith (op, terms) -> Arith (op, List.map simplify_term terms)
  | Bitvec (op, terms) -> Bitvec (op, List.map simplify_term terms)
  | Array (op, terms) -> Array (op, List.map simplify_term terms)
  | App (s, terms) -> PA.App (s, List.map simplify_term terms)
  | HO_app (_, _) -> raise (UnsupportedQuery "We do not support HO_App")
  | Match (t, branches) -> Match (simplify_term t, branches)
  | If (t1, t2, t3) -> If (simplify_term t1, simplify_term t2, simplify_term t3)
  | Let (bindings, t) ->
    let new_bindings = List.map (fun (var_name, binding_term) -> var_name, simplify_term binding_term) bindings in 
    Let (new_bindings, simplify_term t)
  | Is_a (s, t) -> Is_a (s, simplify_term t)
  | Fun (vt, t) -> Fun (vt, simplify_term t)
  | Eq (t1, t2) -> Eq (simplify_term t1, simplify_term t2)
  | Imply (t1, t2) -> Imply (simplify_term t1, simplify_term t2)
  | Not t -> Not (simplify_term t)
  | Distinct _ -> raise (UnsupportedQuery "Distinct should be removed by now")
  | Cast (t, ty) -> Cast (simplify_term t, ty)
  | Forall (bindings, t) -> Forall (bindings, simplify_term t)
  | Exists (bindings, t) -> Exists (bindings, simplify_term t)
  | Attr (t, attrs) -> Attr (simplify_term t, attrs)
  | term -> term


let simplify_statements stmts =
  let rec aux (substitutions : (string, string) Hashtbl.t) acc = function
    | [] -> List.rev acc
    | stmt :: rest ->
      begin
        match stmt with
        | PA.Stmt_assert term ->
          let simplified_term = simplify_term term in
          aux substitutions ((PA.Stmt_assert (simplified_term)) :: acc) rest
        | _ -> aux substitutions (stmt :: acc) rest
      end
  in
  let substitutions = Hashtbl.create 64 in
  aux substitutions [] stmts