(* Flatenning records *)
module PA = Ast
open Context
exception UnsupportedQuery of string



let datatype_large_array_detect (cstor : PA.cstor) = 
  let rec aux = function 
    | [] -> false 
    | (_, ty) :: rest ->
        begin match (ty : PA.ty) with 
          | Ty_array ( Ty_bv n, _) when n > 9 -> true 
          | _ -> aux rest
        end
      in 
  aux cstor.cstor_args

let replace_cstor_args (cstor_args : (string * PA.ty) list) = 
  let rec aux replace acc_cstor_args acc_replacements = function 
      | (name, PA.Ty_app (f, [])) :: rest when StrTbl.mem Ctx.t.fold_adts f -> 
          let adt_record = StrTbl.find Ctx.t.fold_adts f in 
          let new_args = 
            List.map 
              (fun (sel_name, sel_ty) ->
                ((name ^ "_" ^ sel_name, sel_ty))
              )
            adt_record.cstor_args
          in 
          let new_replacements = 
            List.map 
              (fun (sel_name, _) ->
                "_" ^ sel_name
              )
            adt_record.cstor_args 
          in 
          aux true (acc_cstor_args @ new_args) (acc_replacements @ [Some (new_replacements, adt_record.cstor_name)]) rest
      | cstor_arg :: rest ->
          aux replace (acc_cstor_args @ [cstor_arg]) (acc_replacements @ [None]) rest
      | [] -> replace, acc_cstor_args, acc_replacements
  in
  aux false [] [] cstor_args



let replace_cstors cstors =
  let rec aux replace acc =  function  
    | (cstor : PA.cstor) :: rest -> 
        let replace_cstor, new_cstor_args, replace_list = replace_cstor_args cstor.cstor_args in 
        let new_cstor : PA.cstor = {cstor_ty_vars = cstor.cstor_ty_vars; cstor_name = cstor.cstor_name; cstor_args = new_cstor_args} in 
        if replace_cstor then Ctx.add_fold_adt_func cstor.cstor_name true replace_list false;
        aux (replace || replace_cstor) (acc @ [new_cstor]) rest
    | _ -> acc
    in 
  aux false [] cstors


let datatypes_large_array_detect encountered_record datatypes  = 
  let rec aux encountered_record acc_datatypes = function 
    | [] -> encountered_record, acc_datatypes
    | ((name, _), [cstor]) :: rest when not encountered_record(*when datatype_large_array_detect cstor*)  ->
          print_endline ("Changing the datatype: " ^ name);
          Ctx.add_fold_adt name cstor;
          aux true acc_datatypes rest 
    | ((name, n), cstors) :: rest -> 
      let new_cstors = replace_cstors cstors in 
      aux encountered_record (acc_datatypes @ [((name, n), new_cstors)]) rest
  in
  aux encountered_record [] datatypes

let rec replace_flattened_adt_bindings_ty (bindings : (string * PA.ty) list) = 
begin match bindings with 
  | (var, PA.Ty_app (f, [])) :: rest when StrTbl.mem Ctx.t.fold_adts f -> 
      print_endline ("Adding in the binding from FORALL " ^ var);
      let fold_adt_record = StrTbl.find Ctx.t.fold_adts f in 
      let new_bindings = 
        List.map 
        (fun (sel_name, sel_ty) -> (var ^ "_" ^ sel_name, sel_ty))
        fold_adt_record.cstor_args 
      in 
      let (adt_var_record : Ctx.fold_adt_var) = {adt_name = f; selectors = fold_adt_record.cstor_args} in 
      StrTbl.add Ctx.t.fold_adt_vars var adt_var_record;  
      new_bindings @ (replace_flattened_adt_bindings_ty rest)
  | binding :: rest ->       print_endline ("NOT adding in the binding from FORALL " ^ (fst binding));  binding :: (replace_flattened_adt_bindings_ty rest)
  | _ -> []
end

(*TODO: There are probably way more ways to represent this so I need to figure this out *)
let rec replace_adt_bindings_term name = function 
  | PA.Const f when StrTbl.mem Ctx.t.fold_adt_vars f -> 
      let adt_record = StrTbl.find Ctx.t.fold_adt_vars f in 
      Ctx.add_fold_adt_var name adt_record.adt_name adt_record.selectors;
      List.map 
        (fun (sel_name, _) -> (name ^ "_" ^ sel_name, PA.Const (f ^ "_" ^ sel_name)))
        adt_record.selectors 
  | PA.App (f, terms) when StrTbl.mem Ctx.t.fold_adt_cstors f -> 
    let cstor_record = StrTbl.find Ctx.t.fold_adt_cstors f in 
    if (name <> "") then Ctx.add_fold_adt_var name cstor_record.adt_name cstor_record.selectors;
    List.map2
      (fun (sel_name, _) term -> (name ^ "_" ^ sel_name, term))
      cstor_record.selectors 
      terms
  | PA.If (t1, t2, t3) ->
      let t2_bindings = replace_adt_bindings_term name t2 in 
      let t3_bindings = replace_adt_bindings_term name t3 in 
      print_string_list (List.map fst t2_bindings);
      print_string_list (List.map fst t3_bindings);
      List.map2 
        (fun (name, t2_term) (_, t3_term) -> (name, PA.If (t1, t2_term, t3_term)))
        t2_bindings 
        t3_bindings
  | PA.Array (PA.Select, PA.Const c :: rest)  when StrTbl.mem Ctx.t.fold_adt_vars c -> 
    let adt_record = StrTbl.find Ctx.t.fold_adt_vars c in 
    Ctx.add_fold_adt_var name adt_record.adt_name adt_record.selectors;
    List.map
      (fun (sel_name, _) -> (name ^ "_" ^ sel_name, PA.Array (PA.Select, PA.Const (c ^ "_" ^ sel_name) :: rest)))
      adt_record.selectors 
  | PA.Array (PA.Store, [PA.Const c1; t; PA.Const c2])  when StrTbl.mem Ctx.t.fold_adt_vars c1 -> 
    let adt_record = StrTbl.find Ctx.t.fold_adt_vars c1 in 
    Ctx.add_fold_adt_var name adt_record.adt_name adt_record.selectors;
    List.map
      (fun (sel_name, _) -> (name ^ "_" ^ sel_name, PA.Array (PA.Store, [PA.Const (c1 ^ "_" ^ sel_name); t; PA.Const (c2 ^ "_" ^ sel_name)])))
      adt_record.selectors 
  | term -> [(name, term)]

(* a function that will add a suffix to the required terms*)
let rec add_adt_suffix (func_name : string) cstor_name i suffix = function 
  | PA.Const c -> PA.Const (c ^ suffix)
  | If (t1, t2, t3) -> If (t1, add_adt_suffix func_name cstor_name i suffix t2, add_adt_suffix func_name cstor_name i suffix t3)
  | PA.App (f, terms) when f = cstor_name ->
      print_endline (" We match to the cstor_name " ^ f);
      (List.nth terms i )
  | PA.App (f, _) -> raise (UnsupportedQuery ("DO not support adding a suffic to this term on function " ^ func_name ^ " trying to simplify " ^ f))
  | _ -> raise (UnsupportedQuery ("DO not support adding a suffic to this term on function " ^ func_name))


let replace_flattened_eq t1 t2 = 
  begin match t1, t2 with 
    | PA.Const f1, PA.Const f2 when StrTbl.mem Ctx.t.fold_adt_vars f1 && StrTbl.mem Ctx.t.fold_adt_vars f2 -> 
        let adt_record = StrTbl.find Ctx.t.fold_adt_vars f1 in 
        PA.And (List.map 
                (fun (sel_name, _) -> 
                  PA.Eq (PA.Const (f1 ^ "_" ^ sel_name), PA.Const (f2 ^ "_" ^ sel_name)))
                adt_record.selectors)
    | PA.Const f1, PA.App (f2, terms) when StrTbl.mem Ctx.t.fold_adt_vars f1 && StrTbl.mem Ctx.t.fold_adt_cstors f2 -> 
      let adt_record = StrTbl.find Ctx.t.fold_adt_vars f1 in 
      PA.And (List.map2 
                (fun (sel_name, _) term -> 
                  PA.Eq (PA.Const (f1 ^ "_" ^ sel_name), term))
                adt_record.selectors terms)
    | PA.App (f1, terms), PA.Const f2 when StrTbl.mem Ctx.t.fold_adt_cstors f1 && StrTbl.mem Ctx.t.fold_adt_vars f2 -> 
      let adt_record = StrTbl.find Ctx.t.fold_adt_vars f2 in 
      PA.And (List.map2 
                (fun (sel_name, _) term -> 
                  PA.Eq (term, PA.Const (f2 ^ "_" ^ sel_name)))
                adt_record.selectors terms)
    | PA.App (f1, terms1), PA.App (f2, terms2) when StrTbl.mem Ctx.t.fold_adt_cstors f1 && StrTbl.mem Ctx.t.fold_adt_cstors f2 -> 
      PA.And (List.map2 
                (fun term1 term2 -> 
                  PA.Eq (term1, term2))
                terms1 terms2)
    | PA.Array (PA.Select, [PA.Const c1; t1]), PA.Array (PA.Select, [PA.Const c2; t2]) 
        when StrTbl.mem Ctx.t.fold_adt_vars c1 && StrTbl.mem Ctx.t.fold_adt_vars c2 -> 
      let record = StrTbl.find Ctx.t.fold_adt_vars c1 in 
      PA.And (List.map 
                (fun (sel_name, _) -> 
                  PA.Eq (PA.Array (PA.Select, [PA.Const (c1 ^ "_" ^ sel_name); t1]), PA.Array (PA.Select, [PA.Const (c2 ^ "_" ^ sel_name); t2])))
                record.selectors)
    | _ -> PA.Eq (t1, t2)
  end

let rec replace_flattened_adt = function 
  | PA.Forall (bindings, t) ->
      let new_bindings = replace_flattened_adt_bindings_ty bindings in 
      PA.Forall (new_bindings, replace_flattened_adt t)
  | Exists (bindings, t) ->
      let new_bindings = replace_flattened_adt_bindings_ty bindings in 
      PA.Exists (new_bindings, replace_flattened_adt t)
  | Let (bindings, t) ->
      let new_bindings = 
        List.concat_map 
          (fun (name, t) -> 
            let new_term = replace_flattened_adt t in 
            replace_adt_bindings_term name new_term)
          bindings 
      in 
      Let (new_bindings, replace_flattened_adt t)
  | Eq (t1, t2) ->
      let t1, t2 = replace_flattened_adt t1, replace_flattened_adt t2 in 
      replace_flattened_eq t1 t2
  | App (f, [term]) when StrTbl.mem Ctx.t.fold_adt_sels f -> 
      begin match term with 
        | PA.App (cstor, subterms) when StrTbl.mem Ctx.t.fold_adt_cstors cstor ->
           let cstor_record = StrTbl.find Ctx.t.fold_adt_cstors cstor in 
           let filtered_term = List.filter_map 
                    (fun ((sel_name, _), term) -> 
                      if sel_name = f then Some (term) else None) 
                    (List.combine cstor_record.selectors subterms)
            in 
          let term = List.nth filtered_term 0 in 
          term
        | PA.Const c when StrTbl.mem Ctx.t.fold_adt_vars c -> 
            (* print_endline ("At selector-constructor part with " ^ f ^ " " ^ c); *)
            PA.Const (c ^ "_" ^ f)
        | PA.Array (array_op, PA.Const c :: rest) when StrTbl.mem Ctx.t.fold_adt_vars c -> 
           PA.Array (array_op, PA.Const (c ^ "_" ^ f) :: rest)
        | PA.Const c  -> raise (UnsupportedQuery ("Incorrectlly applied selector: " ^ f ^ " applied on " ^ c))
        | _ -> raise (UnsupportedQuery ("Incorrectlly applied selector: " ^ f))
      end
  | App (f, terms) when (StrTbl.mem Ctx.t.fold_adt_funcs f && (StrTbl.find Ctx.t.fold_adt_funcs f).replaced_all = false) -> 
    print_endline ("We are in an App case with: " ^ f);
    print_endline ("and the replaced_all is " ^ (string_of_bool ((StrTbl.find Ctx.t.fold_adt_funcs f).replaced_all = false)));
    let func_record = StrTbl.find Ctx.t.fold_adt_funcs f in 
    print_endline ("The length of func_record.replace_list is " ^ (List.length func_record.replace_list |> string_of_int));
    let flattened_terms = List.map replace_flattened_adt terms in 
    print_endline ("The length of flattened_terms is " ^ (List.length flattened_terms |> string_of_int));
    let new_terms = 
      if func_record.replace_args 
      then (
        List.concat_map 
          (fun (replace_option, term) -> 
            begin match replace_option with 
              | Some (suffixes, cstor_name) ->
                  (* let const = match term with PA.Const c -> c | _ -> raise (UnsupportedQuery ("Not a constant inside ADT function " ^ f)) in  *)
                  List.mapi (fun i suffix -> add_adt_suffix f cstor_name i suffix term) suffixes
              | None -> [term]
            end
            )
          (List.combine func_record.replace_list flattened_terms)
      ) else (
        flattened_terms
      )
      in 
    App (f, new_terms)
  | App (f, terms) -> PA.App (f, List.map replace_flattened_adt terms)
  | Arith (op, terms) -> Arith (op, List.map replace_flattened_adt terms)
  | Bitvec (op, terms) -> Bitvec (op, List.map replace_flattened_adt terms)
  | Array (op, terms) -> Array (op, List.map replace_flattened_adt terms)
  | If (t1, t2, t3) -> If (replace_flattened_adt t1, replace_flattened_adt t2, replace_flattened_adt t3)
  | Fun (ty_var, t) -> Fun (ty_var, replace_flattened_adt t )
  | Imply (t1, t2) -> Imply (replace_flattened_adt t1, replace_flattened_adt t2)
  | And terms -> And (List.map replace_flattened_adt terms)
  | Or terms -> Or (List.map replace_flattened_adt terms)
  | Not t -> Not (replace_flattened_adt t)
  | Cast (t, ty) -> Cast (replace_flattened_adt t, ty)
  | Attr (t, attr) -> Attr (replace_flattened_adt t, attr)
  | HO_app _ -> raise (UnsupportedQuery "We do not support HO_app")
  | Match _ -> raise (UnsupportedQuery "We do not support match statements")
  | Distinct _ -> raise (UnsupportedQuery "We should have removed distinct by now")
  | Is_a _ -> raise (UnsupportedQuery "We should have removed is_a by now")
  | term -> term

let replace_args (args : PA.ty list) = 
  let rec aux replace suffixes new_args = function 
    | PA.Ty_app (f, []) :: rest when StrTbl.mem Ctx.t.fold_adts f -> 
        let adt_record = StrTbl.find Ctx.t.fold_adts f in 
        let suffix = 
            List.map 
              (fun (s, ty) -> "_" ^ s, ty)
              adt_record.cstor_args
        in 
        aux true (suffixes @ [Some (List.map fst suffix, adt_record.cstor_name)]) (new_args @ (List.map snd suffix)) rest
    | arg :: rest -> aux replace (suffixes @ [None]) (new_args @ [arg]) rest
    | _ -> replace, suffixes, new_args
in 
aux false [] [] args

let replace_ret (fun_decl : PA.ty PA.fun_decl) = function 
  | PA.Ty_app (f, []) when StrTbl.mem Ctx.t.fold_adts f -> 
      let adt_record = StrTbl.find Ctx.t.fold_adts f in 
      let new_fun_decls = 
        List.map 
        (fun (sel_name, sel_ty) -> 
          let sel_fun_decl : (PA.ty PA.fun_decl) = 
            {
              fun_ty_vars = [];
              fun_name = fun_decl.fun_name ^ "_" ^ sel_name;
              fun_args = fun_decl.fun_args;
              fun_ret = sel_ty
            } in 
          PA.Stmt_decl sel_fun_decl
          )
        adt_record.cstor_args
        in
        true, new_fun_decls, Some (f, adt_record.cstor_args)
  | _ -> false, [PA.Stmt_decl fun_decl], None

let rec find_cycle_helper original_key = function 
  | key :: rest -> 
      if (original_key = key) then (raise (UnsupportedQuery ("we have the inductive datatype " ^ key)));
      begin match StrTbl.find_opt Ctx.t.adt_cycle_list key with 
        | Some adt -> find_cycle_helper original_key (adt.dependencies @ rest)
        | None -> find_cycle_helper original_key rest 
      end
  | _ -> ()

let rec find_cycles = function 
  | key :: rest ->
      let dependencies = (StrTbl.find Ctx.t.adt_cycle_list key).dependencies in
      find_cycle_helper key dependencies;
      find_cycles rest
  | _ -> ()  

(*A function that checks for cycles in datatype declarations. If there is a cycle, 
   then it throws an error, otherwise it reorders datatypes so things are ok*)
   let rec datatype_cycle_detect (datatypes : ((string * int) * PA.cstor list) list) other_adt_names acc_datatype_order = 
    match datatypes, other_adt_names with 
      | ((name, i), cstors) :: rest, adt_name :: adt_name_rest -> 
            let selector_ty_names = List.filter_map (fun x -> match (snd x) with PA.Ty_app (f, _) -> Some f | _ -> None) 
                                               (List.concat_map (fun (cstor : PA.cstor) -> cstor.cstor_args) cstors) in 
            StrTbl.replace Ctx.t.adt_cycle_list adt_name {dependencies = selector_ty_names};
            let keys_list = StrTbl.keys_list Ctx.t.adt_cycle_list in 
            find_cycles keys_list;
            let value = List.fold_left (fun acc x -> acc || (List.exists (fun y -> x = y) other_adt_names)) false selector_ty_names in 
            if value then (datatype_cycle_detect (rest @ [((name, i), cstors)]) (adt_name_rest @ [adt_name]) acc_datatype_order)
            else (datatype_cycle_detect rest adt_name_rest (acc_datatype_order @ [((name, i), cstors)]))
      | _ -> acc_datatype_order

let rec flatten_records_helper acc = function
  (* let rec aux acc encountered_record = function *)
    | [] -> acc
    | stmt :: rest ->
      begin match (stmt : PA.stmt) with
        (* | Stmt_data datatypes ->
            let encountered_record, new_datatypes = datatypes_large_array_detect encountered_record (List.rev datatypes) in 
            aux (acc @ [PA.Stmt_data (List.rev new_datatypes)]) encountered_record rest *)
        | Stmt_decl fun_decl when fun_decl.fun_args= [] ->
          begin match fun_decl.fun_ret with 
            | PA.Ty_app (f, []) when StrTbl.mem Ctx.t.fold_adts f -> 
                let fold_adt_record = StrTbl.find Ctx.t.fold_adts f in 
                let new_fun_decls = 
                  List.map 
                  (fun (sel_name, sel_ty) -> 
                    let sel_fun_decl : (PA.ty PA.fun_decl) = 
                      {
                        fun_ty_vars = [];
                        fun_name = fun_decl.fun_name ^ "_" ^ sel_name;
                        fun_args = fun_decl.fun_args;
                        fun_ret = sel_ty
                      } in 
                    PA.Stmt_decl sel_fun_decl
                    )
                  fold_adt_record.cstor_args
                  in 
                print_endline ("Adding INTO fold_adt_vars: " ^ fun_decl.fun_name);
                StrTbl.add Ctx.t.fold_adt_vars fun_decl.fun_name {adt_name = f; selectors = fold_adt_record.cstor_args};
                flatten_records_helper (acc @ new_fun_decls) rest
            | PA.Ty_array (ty1, Ty_app (f, [])) when StrTbl.mem Ctx.t.fold_adts f -> 
              let fold_adt_record = StrTbl.find Ctx.t.fold_adts f in 
              let new_fun_decls = 
                List.map 
                (fun (sel_name, sel_ty) -> 
                  let sel_fun_decl : (PA.ty PA.fun_decl) = 
                    {
                      fun_ty_vars = fun_decl.fun_ty_vars;
                      fun_name = fun_decl.fun_name ^ "_" ^ sel_name;
                      fun_args = fun_decl.fun_args;
                      fun_ret = PA.Ty_array (ty1, sel_ty)
                    } in 
                  PA.Stmt_decl sel_fun_decl
                  )
                fold_adt_record.cstor_args
                in 
                print_endline ("Adding INTO fold_adt_vars: " ^ fun_decl.fun_name);
                StrTbl.add Ctx.t.fold_adt_vars fun_decl.fun_name {adt_name = f; selectors = fold_adt_record.cstor_args};
                flatten_records_helper (acc @ new_fun_decls) rest
            | _ -> flatten_records_helper (acc @ [stmt]) rest
          end
        | Stmt_decl fun_decl ->
          print_endline ("Adding in the function: " ^ fun_decl.fun_name);
          let replace_args, suffixes, new_args = replace_args fun_decl.fun_args in 
          let fun_decl : (PA.ty PA.fun_decl) = 
            if replace_args 
              then (print_endline "We are in replace-args"; {fun_ty_vars = fun_decl.fun_ty_vars; fun_name = fun_decl.fun_name; fun_args = new_args; fun_ret = fun_decl.fun_ret})
              else fun_decl 
          in 
          let replace_ret, new_fun_decls, new_vals = replace_ret fun_decl fun_decl.fun_ret in 
          if (replace_ret || replace_args)
            then (
              print_endline "We are in replace ret";
              Ctx.add_fold_adt_func fun_decl.fun_name replace_args suffixes replace_ret
            );
          flatten_records_helper (acc @ new_fun_decls) rest 
        | Stmt_assert term -> 
            let new_term = replace_flattened_adt term in
            flatten_records_helper (acc @ [PA.Stmt_assert new_term]) rest
        | _ -> flatten_records_helper (acc @ [stmt]) rest
      end
  (*in
  let encountered_record, stmts = aux [] false stmts in 
  if encountered_record 
    then (
      print_endline "RESTART ----------";
      Ctx.set_replaced_all_fold_adt_func ();
      flatten_records stmts) 
    else stmts *)

let rec flatten_records (stmts : PA.stmt list) =
  let rec aux acc = function 
    | PA.Stmt_data datatypes :: rest ->
        let encountered_record, new_datatypes = datatypes_large_array_detect false (List.rev datatypes) in 
        if encountered_record then (
          true, flatten_records_helper (List.rev (PA.Stmt_data new_datatypes :: rest)) (List.rev acc) 
        ) else (
          aux (acc @ [PA.Stmt_data (List.rev new_datatypes)]) rest
        )
    | stmt :: rest -> aux (acc @ [stmt]) rest 
    | [] -> false, acc 
  in
  let encountered_record, stmts = aux [] (List.rev stmts) in 
  if encountered_record 
    then (
      print_endline "RESTART ----------";
      Ctx.set_replaced_all_fold_adt_func ();
      stmts |> flatten_records) 
    else (List.rev stmts)






