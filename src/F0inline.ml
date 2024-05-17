module PA = Ast
exception UnsupportedQuery of string
open Hashtbl
(* module StrTbl = CCHashtbl.Make(CCString) *)

(* var args (sub_term : PA.term) *)
let rec substitute (substitutions : (string, (string list * PA.term)) Hashtbl.t) (acc_term : PA.term) : PA.term  =
  print_string "doing a subsitution";
  match acc_term with
  | Const v ->
      begin match Hashtbl.find_opt substitutions v with 
        | Some (_, t) -> t
        | None ->  acc_term
      end
  | Arith (op, terms) -> Arith (op, List.map (substitute substitutions) terms)
  | Bitvec (op, terms) -> Bitvec (op, List.map (substitute substitutions) terms)
  | Array (op, terms) -> Array (op, List.map (substitute substitutions) terms)
  | App (s, terms) ->
    begin match Hashtbl.find_opt substitutions s with 
      | Some (vars, t) -> 
          let new_terms = List.map (substitute substitutions) terms in 
          let substitutions_copy = Hashtbl.copy substitutions in
          let _ = List.map2 (fun var_name term -> Hashtbl.replace substitutions_copy var_name ([], term)) vars new_terms in 
          substitute substitutions_copy t
      | None -> PA.App (s, List.map (substitute substitutions) terms)
    end
  | HO_app (_, _) -> raise (UnsupportedQuery "We do not support HO_App")
  | Match (t, branches) -> Match (substitute substitutions t, branches)
  | If (t1, t2, t3) ->
    If (substitute substitutions t1, substitute substitutions t2, substitute substitutions t3)
  | Let (bindings, t) ->
    let new_bindings = List.map (fun x -> (fst x, substitute substitutions (snd x))) bindings in 
    let substitutions_copy = Hashtbl.copy substitutions in 
    let _ = List.map (fun (var_name, term) -> Hashtbl.replace substitutions_copy var_name ([], term)) new_bindings in 
    substitute substitutions_copy t
  | Is_a (s, t) -> Is_a (s, substitute substitutions t)
  | Fun (vt, t) -> Fun (vt, substitute substitutions t)
  | Eq (t1, t2) -> Eq (substitute substitutions t1, substitute substitutions t2)
  | Imply (t1, t2) -> Imply (substitute substitutions t1, substitute substitutions t2)
  | And terms -> And (List.map (substitute substitutions) terms)
  | Or terms -> Or (List.map (substitute substitutions) terms)
  | Not t -> Not (substitute substitutions t)
  | Distinct terms -> Distinct (List.map (substitute substitutions) terms)
  | Cast (t, ty) -> Cast (substitute substitutions t, ty)
  | Forall (bindings, t) -> Forall (bindings, substitute substitutions t)
  | Exists (bindings, t) -> Exists (bindings, substitute substitutions t)
  | Attr (t, attrs) -> Attr (substitute substitutions t, attrs)
  | _ -> acc_term
  

  (*TODO: throw error for forall, exists, ho_app, fun_rec*)
(* Substitute multiple terms for their corresponding variables in a term *)
(* and multi_substitute (substitutions: (string, (string list * PA.term)) Hashtbl.t) term =
  let substitutions = if (substitutions = []) then [("", [], PA.Const "")] else substitutions in (*have to add sort of a blank subtition if there are none, otherwise nothing happsn*)
  List.fold_left
    (fun acc_term (var, args, sub_term) -> substitute _ acc_term)
    term substitutions *)


let inline_statements stmts =
  let rec aux (substitutions : (string, (string list * PA.term)) Hashtbl.t) acc = function
    | [] -> List.rev acc
    | stmt :: rest ->
      begin
        match stmt with
        | PA.Stmt_fun_def fun_def ->
          Hashtbl.add substitutions fun_def.fr_decl.fun_name (List.map fst fun_def.fr_decl.fun_args, fun_def.fr_body);
          aux substitutions acc rest
        | Stmt_fun_rec _ -> raise (UnsupportedQuery "We do not support Stmt_fun_rec")
        | Stmt_funs_rec _ -> raise (UnsupportedQuery "We do not support funs_rec_def")
        | Stmt_assert term ->
          let inlined_term = substitute substitutions term in
          aux substitutions ((PA.Stmt_assert (inlined_term)) :: acc) rest
        | _ -> aux substitutions (stmt :: acc) rest
      end
  in
  let substitutions = Hashtbl.create 64 in
  aux substitutions [] stmts