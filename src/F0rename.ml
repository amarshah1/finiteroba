module PA = Ast
exception UnsupportedQuery of string
open Hashtbl
open Context
(* module StrTbl = CCHashtbl.Make(CCString) *)

(* var args (sub_term : PA.term) *)
let rec rename_vars_term (substitutions : (string, string) Hashtbl.t) (acc_term : PA.term) : PA.term  =
  match acc_term with
  | Const v ->
      begin match Hashtbl.find_opt substitutions v with 
        | Some t -> PA.Const t
        | None ->  acc_term
      end
  | Arith (op, terms) -> Arith (op, List.map (rename_vars_term substitutions) terms)
  | Bitvec (op, terms) -> Bitvec (op, List.map (rename_vars_term substitutions) terms)
  | Array (op, terms) -> Array (op, List.map (rename_vars_term substitutions) terms)
  | App (s, terms) ->
    begin match Hashtbl.find_opt substitutions s with 
      | Some new_s -> PA.App (new_s, List.map (rename_vars_term substitutions) terms)
      | None -> PA.App (s, List.map (rename_vars_term substitutions) terms)
    end
  | HO_app (_, _) -> raise (UnsupportedQuery "We do not support HO_App")
  | Match (t, branches) -> Match (rename_vars_term substitutions t, branches)
  | If (t1, t2, t3) ->
    If (rename_vars_term substitutions t1, rename_vars_term substitutions t2, rename_vars_term substitutions t3)
  | Let (bindings, t) ->
    let substitutions_copy = Hashtbl.copy substitutions in 
    let new_bindings = List.map 
              (fun (var_name, binding_term) -> 
                let new_var_name = var_name ^ (string_of_int Ctx.t.var_rename_index) in 
                Ctx.increment_var_rename_index (); 
                Hashtbl.replace substitutions_copy var_name new_var_name;
                new_var_name, rename_vars_term substitutions binding_term)
            bindings in 
    Let (new_bindings, rename_vars_term substitutions_copy t)
  | Is_a (s, t) -> Is_a (s, rename_vars_term substitutions t)
  | Fun (vt, t) -> Fun (vt, rename_vars_term substitutions t)
  | Eq (t1, t2) -> Eq (rename_vars_term substitutions t1, rename_vars_term substitutions t2)
  | Imply (t1, t2) -> Imply (rename_vars_term substitutions t1, rename_vars_term substitutions t2)
  | And terms -> And (List.map (rename_vars_term substitutions) terms)
  | Or terms -> Or (List.map (rename_vars_term substitutions) terms)
  | Not t -> Not (rename_vars_term substitutions t)
  | Distinct terms -> Distinct (List.map (rename_vars_term substitutions) terms)
  | Cast (t, ty) -> Cast (rename_vars_term substitutions t, ty)
  | Forall (bindings, t) -> 
    let substitutions_copy = Hashtbl.copy substitutions in 
    let new_bindings = List.map 
              (fun (var_name, ty) -> 
                let new_var_name = var_name ^ (string_of_int Ctx.t.var_rename_index) in 
                Ctx.increment_var_rename_index (); 
                Hashtbl.replace substitutions_copy var_name new_var_name;
                new_var_name, ty)
            bindings in 
    Forall (new_bindings, rename_vars_term substitutions_copy t)
  | Exists (bindings, t) -> 
      let substitutions_copy = Hashtbl.copy substitutions in 
      let new_bindings = List.map 
                (fun (var_name, ty) -> 
                  let new_var_name = var_name ^ (string_of_int Ctx.t.var_rename_index) in 
                  Ctx.increment_var_rename_index (); 
                  Hashtbl.replace substitutions_copy var_name new_var_name;
                  new_var_name, ty)
              bindings in 
      Exists (new_bindings, rename_vars_term substitutions_copy t)
  | Attr (t, attrs) -> Attr (rename_vars_term substitutions t, attrs)
  | _ -> acc_term
  

  (*TODO: throw error for forall, exists, ho_app, fun_rec*)
(* rename_vars_term multiple terms for their corresponding variables in a term *)
(* and multi_substitute (substitutions: (string, (string list * PA.term)) Hashtbl.t) term =
  let substitutions = if (substitutions = []) then [("", [], PA.Const "")] else substitutions in (*have to add sort of a blank subtition if there are none, otherwise nothing happsn*)
  List.fold_left
    (fun acc_term (var, args, sub_term) -> rename_vars_term _ acc_term)
    term substitutions *)


let rename_vars_statements stmts =
  let rec aux (substitutions : (string, string) Hashtbl.t) acc = function
    | [] -> List.rev acc
    | stmt :: rest ->
      begin
        match stmt with
        | PA.Stmt_fun_def fun_def ->
          let args = fun_def.fr_decl.fun_args in 
          let new_args = List.map 
                          (fun s -> Ctx.increment_var_rename_index (); 
                                    (fst s) ^ (string_of_int (Ctx.t.var_rename_index - 1))) args in 
          let substitutions_copy = Hashtbl.copy substitutions in
          let _ = List.map2 (fun var_name new_var_name -> Hashtbl.replace substitutions_copy (fst var_name) new_var_name) args new_args in 
          let new_body = rename_vars_term substitutions_copy fun_def.fr_body in

          let new_fun_name = fun_def.fr_decl.fun_name ^ (string_of_int Ctx.t.var_rename_index) in
          Ctx.increment_var_rename_index ();
          Hashtbl.add substitutions fun_def.fr_decl.fun_name new_fun_name;

          let new_fun_decl : (PA.typed_var PA.fun_decl) = 
            {fun_ty_vars = fun_def.fr_decl.fun_ty_vars;
             fun_name = new_fun_name;
             fun_args = fun_def.fr_decl.fun_args;
             fun_ret = fun_def.fr_decl.fun_ret; } 
            in

          let new_fun_def = PA.Stmt_fun_def {fr_decl = new_fun_decl; fr_body = new_body} in

          aux substitutions (new_fun_def :: acc) rest
        | PA.Stmt_decl fun_decl -> 
          let new_fun_name = fun_decl.fun_name ^ (string_of_int Ctx.t.var_rename_index) in
          Ctx.increment_var_rename_index ();
          Hashtbl.add substitutions fun_decl.fun_name new_fun_name;
          let new_fun_decl  = 
            PA.Stmt_decl {fun_ty_vars = fun_decl.fun_ty_vars;
                                        fun_name = new_fun_name;
                                        fun_args = fun_decl.fun_args;
                                        fun_ret = fun_decl.fun_ret; } 
              in
          aux substitutions (new_fun_decl :: acc) rest
        | Stmt_fun_rec _ -> raise (UnsupportedQuery "We do not support Stmt_fun_rec")
        | Stmt_funs_rec _ -> raise (UnsupportedQuery "We do not support funs_rec_def")
        | Stmt_assert term ->
          let inlined_term = rename_vars_term substitutions term in
          aux substitutions ((PA.Stmt_assert (inlined_term)) :: acc) rest
        | _ -> aux substitutions (stmt :: acc) rest
      end
  in
  let substitutions = Hashtbl.create 64 in
  aux substitutions [] stmts