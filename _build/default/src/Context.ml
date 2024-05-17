module PA = Ast
open Containers
exception UnsupportedQuery of string

module StrTbl = CCHashtbl.Make(CCString)

module Ctx = struct
  type finite_adt_record = {
    size: int;
    tag_length: int;
    disallowed_tags: string list;
    equality_fun: PA.term -> PA.term -> PA.term;
    disequality_fun: PA.term -> PA.term -> PA.term;
    cstors: PA.cstor list;
  }

  type finite_sel = {
    return_typ_original: PA.ty;
    return_type_bv: PA.ty;
    returned_adt_originally: bool;
    length: int;
    start_pos: int;
    stop_pos: int;
  }


  type finite_cstor = {
    adt_name: string;
    tag: string;
    adt_length: int;
    total_length: int;
    start_pos: int;
    end_pos: int;
    selectors: finite_sel StrTbl.t;
  }

  type finite_tester = {
    adt_name: string;
    tag: string;
    disallowed_tags: string list;
    tag_start_pos: int;
    tag_end_pos: int;
  }

  type adt_func = {
    adt_name: string;
    bitvec_ty: PA.ty;
  }

  type array_term = {
    array_length: int;
    num_items: int;
    array_bv_index_size: int;
    array_item_length: int;
    array_subtype : PA.ty;
    returns_bool : bool;
    equality_fun: PA.term -> PA.term -> PA.term;
    disequality_fun: PA.term -> PA.term -> PA.term;
  }

  let ty_printer ty = PA.pp_ty Format.std_formatter ty

  let print_array_term (a : array_term) = 
    print_string ("{array length: " ^ (string_of_int a.array_length) ^ ";\n num_items: " ^ (string_of_int a.num_items) ^ ";\n array_bv_index_size: " ^ (string_of_int a.array_bv_index_size) ^ ";\n array_item_length: " ^ (string_of_int a.array_item_length) ^ ";\n array_subtype: "); 
    (ty_printer a.array_subtype);
    print_string "}"

  type adt_with_dependencies = {
    dependencies: string list;
  }

  type t = {
    mutable finite_adts: finite_adt_record StrTbl.t;
    mutable cstors: finite_cstor StrTbl.t;
    mutable adt_funs: adt_func StrTbl.t;
    mutable testers: finite_tester StrTbl.t;
    mutable array_terms: array_term StrTbl.t;
    mutable adt_cycle_list: adt_with_dependencies StrTbl.t;
    mutable var_rename_index: int;
    mutable vars_created: int;
    set_logic: string;
  }

  let t : t = {
    finite_adts=StrTbl.create 8;
    cstors = StrTbl.create 32;
    adt_funs = StrTbl.create 64;
    testers = StrTbl.create 32;
    array_terms = StrTbl.create 64;
    adt_cycle_list = StrTbl.create 32;
    var_rename_index = 0;
    vars_created = 0;
    set_logic = "UFBV";
  }

  let add_finite_adt name size tag_length disallowed_tags equality_fun disequality_fun cstors = 
    let (record : finite_adt_record) = {size = size; tag_length = tag_length; disallowed_tags = disallowed_tags; equality_fun = equality_fun; disequality_fun = disequality_fun; cstors = cstors} in
    StrTbl.add t.finite_adts name record

  let add_adt_fun name adt_name bitvec_ty = 
    let (record : adt_func) = {adt_name = adt_name; bitvec_ty = bitvec_ty} in
    StrTbl.add t.adt_funs name record

  let add_cstor cstor_name adt_name tag adt_length total_length start_pos end_pos selectors = 
    let (record: finite_cstor) = {adt_name = adt_name; tag = tag; adt_length = adt_length; total_length = total_length; start_pos = start_pos; end_pos = end_pos; selectors = selectors} in
    StrTbl.add t.cstors cstor_name record

  let make_finite_sel og_ty bv_ty returned_adt_originally size start_pos stop_pos = 
    let (selector_record : finite_sel) = {return_typ_original = og_ty; return_type_bv = bv_ty; returned_adt_originally = returned_adt_originally; length = size; start_pos = start_pos; stop_pos = stop_pos } in
    selector_record

  let increment_var_rename_index () : unit = 
    t.var_rename_index <- t.var_rename_index + 1

  let increment_vars_created () : unit = 
    t.vars_created <- t.vars_created + 1

end;;

(*General helper functions*)

let statement_to_stmt (s: PA.statement) = s.PA.stmt

let statement_to_stmts (statements : PA.statement list) : PA.stmt list = 
  let rec aux statements acc = 
    begin match statements with
      | statement :: rest -> aux rest ((statement.PA.stmt) :: acc)
      | _ -> acc
    end in 
  List.rev (aux statements [])

(*Goes from PA.stmt to PA.statement with the location being None*)

let print_string_list s =
  let rec print_string_list_helper = function
    | [] -> ()
    | h::t -> print_string (h ^ ", ") ; print_string_list_helper t
  in
  print_string "["; print_string_list_helper s; print_endline "]"

let stmt_to_statement (s: PA.stmt) : PA.statement = {PA.stmt = s; loc = None}

let stmt_to_statements (stmts : PA.stmt list) : PA.statement list = 
  let rec aux stmts acc = 
    begin match stmts with
      | stmt :: rest -> aux rest (acc @ [{PA.stmt = stmt; loc = None}])
      | _ -> acc
    end in 
  aux stmts []

let statement_printer lst = Format.printf "@[<hv>%a@]@." (PA.pp_list PA.pp_stmt) lst

let stmt_printer lst =  statement_printer (List.map stmt_to_statement lst)

let ty_printer ty = PA.pp_ty Format.std_formatter ty

(*TODO: update this function, will need to implement lookup_fun_def*)
(* let rec get_type (term: PA.term) : PA.ty = 
  begin match term with
    | True -> PA.Ty_bool
    | False -> PA.Ty_bool
    | Const v -> (Ctx.lookup_fun_def v) (*TODO*)
    | Arith (op, _) -> 
        begin match op with
        | Leq -> PA.Ty_bool
        | Lt -> PA.Ty_bool
        | Geq -> PA.Ty_bool
        | Gt -> PA.Ty_bool
        | Add -> PA.Ty_real
        | Minus -> PA.Ty_real
        | Mult -> PA.Ty_real
        | Div -> PA.Ty_real
        end
    | App (s, _) -> Ctx.lookup_fun_def s (*PA.Ty_app (s, (List.map (fun x -> get_type x) terms))*) (*TODO*)
    | HO_app (_,_) -> PA.Ty_bool(*raise (UnsupportedQuery "We do not support HO_App")*)
    | Match (_, branches) -> raise (UnsupportedQuery "We do not currently support Match")
    | If (_, t2, _) -> get_type t2
    | Is_a (_, _) -> PA.Ty_bool
    | Fun (_, t) -> get_type t
    | Eq (_, _) -> PA.Ty_bool
    | Imply (_, _) -> PA.Ty_bool
    | And _ -> PA.Ty_bool
    | Or _ -> PA.Ty_bool
    | Not _ -> PA.Ty_bool
    | Distinct _ -> PA.Ty_bool
    | Cast (_, ty) -> ty
    | Forall (_, _) -> raise (UnsupportedQuery "We do not support Forall")
    | Exists (_, _) -> raise (UnsupportedQuery "We do not support Exists")
    | Attr (t, _) -> get_type t
  end *)