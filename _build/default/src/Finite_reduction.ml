module PA = Ast
exception UnsupportedQuery of string
open Context

let exp (a : int) (b : int) = int_of_float ((float_of_int a) ** (float_of_int b))
let log_base (base : int) (value : int) = ((log (float_of_int value)) /. (log (float_of_int base)))

let rec int_to_bitvec (bitvec_size : int) i = 
  if (bitvec_size = 0) 
    then (if i = 0 then "" 
          else raise (UnsupportedQuery ("Bitvec size " ^ (string_of_int bitvec_size) ^ " not large enough for integer " ^ (string_of_int i))))
  else (
    if (log_base 2 i >= (float_of_int (bitvec_size - 1)))
    then (
      "1" ^ (int_to_bitvec (bitvec_size - 1) (i - (exp 2 (bitvec_size - 1))))
    ) else (
      "0" ^ (int_to_bitvec (bitvec_size - 1) i)
    )
  )

let log2_ceiling (n : int) : int = int_of_float (Float.ceil (Float.log2 (float_of_int n)))

let find_disallowed_tags cstors_length cstor_tag_length = 
  let max_cstors = exp 2 cstor_tag_length in 
  let int_disallowed =  List.init (max_cstors - cstors_length) (fun x -> x + cstors_length) in
  List.map (int_to_bitvec cstor_tag_length) int_disallowed

let rec find_ty_bitvec_size = function
  | PA.Ty_bool -> 1
  | PA.Ty_bv n -> n
  | PA.Ty_app (s, []) -> 
      begin match (StrTbl.find_opt Ctx.t.finite_adts s) with 
        | Some finite_adt_record -> finite_adt_record.size
        | None -> raise (UnsupportedQuery ("Trying to have a non bool, bitvector, finite adt type in record: " ^ s))
      end
  | PA.Ty_array (t1, t2) ->
      begin match t1 with 
       | PA.Ty_bool -> find_ty_bitvec_size t2
       | PA.Ty_bv n -> n * (find_ty_bitvec_size t2)
       | _ -> raise (UnsupportedQuery "We only support Arrays indexed by bitvectors or booleans.")
      end
  | PA.Ty_app _ -> raise (UnsupportedQuery "We do not support functions as values")
  | PA.Ty_real -> raise (UnsupportedQuery "We do not support reals")
  | PA.Ty_arrow _ -> raise (UnsupportedQuery "We do not support arrow types")

let rec compute_selector_lengths selectors =
  let rec aux acc = function 
    | (sel_name, sel_ty) :: rest ->
        let size = find_ty_bitvec_size sel_ty in
        (sel_name, PA.Ty_bv size, size, sel_ty, acc, acc + size - 1) :: (aux (acc + size) rest)
    | _ -> []
    in 
  aux 0 selectors


let rec make_cstor_interpretations (cstors : PA.cstor list) index size_acc cstor_tag_length adt_name total_length disallowed_tags acc =
  begin match cstors with 
    | cstor :: rest -> 
        let adt_ty = PA.Ty_bv total_length in
        let cstor_tag = int_to_bitvec cstor_tag_length index in
        let cstor_tag_const = (PA.Const ("#b" ^ cstor_tag)) in
        let selector_name_ty_length = compute_selector_lengths cstor.cstor_args in 
        (* let selector_tys = List.map (fun (sel_name, sel_ty) -> (sel_name, PA.Ty_bv (find_ty_bitvec_size sel_ty))) cstor.cstor_args in *)
        let adt_length = List.fold_left (fun acc (_,_, n, _, _, _) -> acc + n) 0 selector_name_ty_length in
        let length_diff = total_length  - cstor_tag_length - adt_length in
        let (selector_table : Ctx.finite_sel StrTbl.t) = StrTbl.create 64 in 
        let _ = List.map 
                 (fun (name, bv_ty,size, og_ty, start_pos, end_pos) -> 
                    let sel_record = Ctx.make_finite_sel og_ty bv_ty (og_ty = bv_ty) size start_pos end_pos in 
                    StrTbl.add selector_table name sel_record ) 
                 selector_name_ty_length in
        let (new_cstor_interpretation: Ctx.finite_cstor) = {adt_name = adt_name;
                                                             tag = cstor_tag;
                                                             start_pos = size_acc;
                                                             end_pos = (size_acc + adt_length - 1);
                                                             adt_length = adt_length;
                                                             total_length = total_length;
                                                             selectors = selector_table} 
                                            in
        StrTbl.add Ctx.t.cstors cstor.cstor_name new_cstor_interpretation;
        (* let cstor_ty_decl = PA.Stmt_decl {fun_ty_vars = []; 
                                          fun_name = cstor.cstor_name;
                                          fun_args = List.map (fun (_, x, _, _, _, _) -> x) selector_name_ty_length;
                                          fun_ret = adt_ty} in *)
        let reversed_selectors = List.rev (List.map (fun x -> PA.Const ((fst x) ^ "_var")) cstor.cstor_args) in
        print_endline (cstor.cstor_name ^ " has adt_length " ^ (string_of_int adt_length) ^ " and total_length " ^ (string_of_int total_length));
        let cstor_def = 
          if (length_diff > 0) then (
            let var_name = "contrived_variable" ^ (string_of_int Ctx.t.vars_created) in
            Ctx.increment_vars_created ();
            let var_decl = PA.Stmt_decl {fun_ty_vars = []; 
                           fun_name = var_name;
                           fun_args = [];
                           fun_ret = PA.Ty_bv length_diff} in
            let fun_def = 
              PA.Stmt_fun_def {fr_decl = {fun_ty_vars = []; 
                                          fun_name = cstor.cstor_name;
                                          fun_args = List.map (fun (x,y,_, _, _, _) -> (x ^"_var", y)) selector_name_ty_length;
                                          fun_ret = adt_ty};
                               fr_body =  List.fold_left 
                                           (fun acc x -> PA.Bitvec (PA.Concat, [acc; x]))
                                           (PA.Bitvec (PA.Concat, 
                                                       [PA.Const ("#b" ^ cstor_tag);
                                                        PA.Const var_name;]))
                                           reversed_selectors} in 
            [var_decl; fun_def]
          ) else (
            [PA.Stmt_fun_def {fr_decl = {fun_ty_vars = []; 
                                        fun_name = cstor.cstor_name;
                                        fun_args = List.map (fun (x,y,_, _, _, _) -> (x ^ "_var", y)) selector_name_ty_length;
                                        fun_ret = adt_ty};
                            fr_body = (List.fold_left 
                                        (fun acc x -> PA.Bitvec (PA.Concat, [acc; x]))
                                        cstor_tag_const
                                        reversed_selectors)}]
          ) in
                                    
        (* let selectors_ty_decl = 
          List.map (fun (sel_name, sel_ty, _, _, _, _) ->
                          PA.Stmt_decl {fun_ty_vars = []; 
                          fun_name = sel_name;
                          fun_args = [adt_ty];
                          fun_ret = sel_ty})
                    selector_name_ty_length
          in *)
        let selectors_non_bv_ty_decl = 
          List.map (fun (sel_name, sel_ty, _, _, _, _) ->
                          PA.Stmt_decl {fun_ty_vars = []; 
                          fun_name = sel_name ^ "_non_bv";
                          fun_args = [adt_ty];
                          fun_ret = sel_ty})
                    selector_name_ty_length
          in
        let _, selectors_def = 
          List.fold_left_map 
                  (fun (acc : int) (sel_name, sel_ty,sel_length, _, _, _) ->
                    (acc + sel_length,
                    PA.Stmt_fun_def {fr_decl = {fun_ty_vars = []; 
                                                fun_name = sel_name;
                                                fun_args = [(adt_name ^"_var", adt_ty)];
                                                fun_ret = sel_ty};
                                    fr_body = PA.If ( PA.Eq (PA.Bitvec ((PA.Extract (total_length - 1, total_length - cstor_tag_length)), [PA.Const (adt_name ^ "_var")]), cstor_tag_const),
                                                      PA.Bitvec ((PA.Extract (acc + sel_length - 1, acc)), [PA.Const (adt_name ^ "_var")]),
                                                      PA.App (sel_name ^ "_non_bv", [PA.Const (adt_name ^ "_var")]))}))
                    0
                    selector_name_ty_length 
          in
        (* let testers_ty_decl = PA.Stmt_decl {fun_ty_vars = []; 
                                            fun_name = "is-" ^ cstor.cstor_name;
                                            fun_args = [adt_ty];
                                            fun_ret = PA.ty_bool}
        in *)
        let (tester_record : Ctx.finite_tester) = 
          {adt_name = adt_name; 
           tag = cstor_tag;
           disallowed_tags = disallowed_tags;
           tag_start_pos = total_length - cstor_tag_length;
           tag_end_pos = total_length - 1;
           } in
        StrTbl.add Ctx.t.testers ("is-" ^ cstor.cstor_name) tester_record;
        let testers_def = PA.Stmt_fun_def {fr_decl = {fun_ty_vars = []; 
                                                      fun_name = "is-" ^ cstor.cstor_name;
                                                      fun_args = [(adt_name ^ "_var", adt_ty)];
                                                      fun_ret = PA.ty_bool};
                                           fr_body = PA.Eq (PA.Bitvec ((PA.Extract (total_length - 1, total_length - cstor_tag_length)), [PA.Const (adt_name ^ "_var")]), cstor_tag_const)}
        in
        let enum_case =
          if (cstor.cstor_args = []) then [PA.Stmt_assert (PA.App ("is-" ^ cstor.cstor_name, [PA.Const cstor.cstor_name]))] else [] in
        let new_definitions = (*cstor_ty_decl::selectors_ty_decl @*) cstor_def @ selectors_non_bv_ty_decl @ selectors_def (* @ [testers_ty_decl] *) @ [testers_def] @ enum_case in
        make_cstor_interpretations rest (index + 1) (size_acc + adt_length) cstor_tag_length adt_name total_length disallowed_tags (acc @ new_definitions)
    | [] -> acc
  end

  


(*TODO: fix recursive case here -> it's erroring*)
let rec get_disequality_function_body (x : PA.term) (y: PA.term) cstors disallowed_tags total_length tag_length ?(offset = 0) =
  print_string "PRINTING TAG LENGTH";print_int tag_length; print_newline ();
  let disallow_tags_x = 
    if (tag_length = 0) then []
    else (List.map (fun tag -> PA.Not (PA.Eq (PA.Bitvec (PA.Extract (total_length - 1 + offset, total_length - tag_length + offset), [x]),
                                              PA.Const ("#b" ^ tag)))) disallowed_tags) in 
  let disallow_tags_y =
    if (tag_length = 0) then []
    else (List.map (fun tag -> PA.Not (PA.Eq (PA.Bitvec (PA.Extract (total_length - 1 + offset, total_length - tag_length + offset), [y]), 
                                              PA.Const ("#b" ^ tag)))) disallowed_tags) in  
    let main_or = 
      PA.Or (List.map 
            (fun (cstor : PA.cstor) -> 
              let cstor_record = StrTbl.find Ctx.t.cstors cstor.cstor_name in 
              let cstor_start_pos = cstor_record.start_pos in
              let extra_lengths_equality = if cstor_record.adt_length  = cstor_record.total_length - tag_length
                                            then []
                                            else (
                                              [PA.Eq ((PA.Bitvec (PA.Extract (cstor_record.total_length - tag_length + offset, cstor_record.adt_length + offset), [x]))
                                              ,(PA.Bitvec (PA.Extract (cstor_record.total_length - tag_length  + offset, cstor_record.adt_length + offset), [y])))]
                                            )
                in
              let recursive_step =
                  List.filter_map 
                    (fun sel ->
                        let sel_record = StrTbl.find cstor_record.selectors sel in 
                        let original_return_ty = sel_record.return_typ_original in 
                        begin match original_return_ty with 
                          | PA.Ty_app (f, []) ->
                              begin match StrTbl.find_opt Ctx.t.finite_adts f with 
                                | Some finite_adt_record -> 
                                    let inner_stmts = get_disequality_function_body x y finite_adt_record.cstors finite_adt_record.disallowed_tags finite_adt_record.size finite_adt_record.tag_length ~offset:(cstor_start_pos + sel_record.start_pos) in 
                                    Some inner_stmts
                                | None -> None 
                              end
                          | _ -> None 
                        end
                      )
                    (StrTbl.keys_list cstor_record.selectors)
            in
            let tags_equal = if tag_length = 0 then []
                             else [(PA.Not (PA.Eq ((PA.Bitvec (PA.Extract (cstor_record.total_length - 1 + offset, cstor_record.total_length - tag_length + offset), [x]))
                             ,(PA.Bitvec (PA.Extract (cstor_record.total_length - 1 + offset, cstor_record.total_length - tag_length + offset), [y])))))]
                            in 
              (* let cstor_length = List.fold_left (fun acc (_,_, x) -> acc + x) 0 sel_info in  *)
              if recursive_step = [] then PA.And (tags_equal @ extra_lengths_equality)
              else PA.And (tags_equal @ [PA.Or recursive_step] @ extra_lengths_equality)
              )
            cstors)
        in
      PA.And (main_or::disallow_tags_x @ disallow_tags_y)
            
let rec get_equality_function_body (x : PA.term) (y: PA.term) cstors disallowed_tags total_length tag_length ?(offset = 0) =
  let disallow_tags = 
    if (tag_length = 0) then []
    else (List.map (fun tag -> PA.Not (PA.Eq (PA.Bitvec (PA.Extract (total_length - 1 + offset, total_length - tag_length + offset), [x]),
                                              PA.Const ("#b" ^ tag)))) disallowed_tags) in 
  let main_or = 
    PA.Or (List.map 
          (fun (cstor : PA.cstor) -> 
            let cstor_record = StrTbl.find Ctx.t.cstors cstor.cstor_name in 
            let cstor_start_pos = cstor_record.start_pos in
            let extra_lengths_equality = if cstor_record.adt_length  = cstor_record.total_length - tag_length
                                          then []
                                          else (
                                            [PA.Eq ((PA.Bitvec (PA.Extract (cstor_record.total_length - tag_length + offset, cstor_record.adt_length + offset), [x]))
                                            ,(PA.Bitvec (PA.Extract (cstor_record.total_length - tag_length  + offset, cstor_record.adt_length + offset), [y])))]
                                          )
              in
            let recursive_step =
                List.filter_map 
                  (fun sel ->
                      let sel_record = StrTbl.find cstor_record.selectors sel in 
                      let original_return_ty = sel_record.return_typ_original in 
                      begin match original_return_ty with 
                        | PA.Ty_app (f, []) ->
                            begin match StrTbl.find_opt Ctx.t.finite_adts f with 
                              | Some finite_adt_record -> 
                                  let inner_stmts = get_equality_function_body x y finite_adt_record.cstors finite_adt_record.disallowed_tags finite_adt_record.size finite_adt_record.tag_length ~offset:(cstor_start_pos + sel_record.start_pos) in 
                                  Some inner_stmts
                              | None -> None 
                            end
                        | _ -> None 
                      end
                    )
                  (StrTbl.keys_list cstor_record.selectors)
          in
          let tags_equal = if tag_length = 0 then []
                           else [(PA.Eq ((PA.Bitvec (PA.Extract (cstor_record.total_length - 1 + offset, cstor_record.total_length - tag_length + offset), [x]))
                           ,(PA.Bitvec (PA.Extract (cstor_record.total_length - 1 + offset, cstor_record.total_length - tag_length + offset), [y]))))]
                          in 
            if recursive_step = [] then PA.And (tags_equal @ extra_lengths_equality)
            else PA.And (tags_equal @ [PA.And recursive_step] @ extra_lengths_equality)
            )
          cstors)
        in
      PA.And (main_or::disallow_tags)

let simplify_datatype (name: string) (cstors: PA.cstor list) = 
  let cstor_tag_length = Int.max 1 (log2_ceiling (List.length cstors)) in
  let disallowed_tags = find_disallowed_tags (List.length cstors) cstor_tag_length in
  let selector_lengths = List.map (fun (cstor : PA.cstor) -> 
                                     (cstor.cstor_name, compute_selector_lengths cstor.cstor_args)) 
                                  cstors in
  let cstor_lengths = List.map (fun (cstor_name, sel_lengths) ->
                                  (cstor_name, List.fold_left 
                                                (fun acc (_,_, x, _, _, _) -> acc + x) 
                                                0 
                                                sel_lengths))
                               selector_lengths in 
  let total_length = cstor_tag_length + List.fold_left (fun acc x -> max acc (snd x)) 0 cstor_lengths in 
  let cstor_interpretations = make_cstor_interpretations cstors 0 0 cstor_tag_length name total_length disallowed_tags [] in
  let equality_function = (fun (x : PA.term) (y : PA.term) ->
                                  get_equality_function_body x y cstors disallowed_tags total_length cstor_tag_length ~offset:0)
  in
  let disequality_fun = (fun (x : PA.term) (y : PA.term) ->
                                  get_disequality_function_body x y cstors disallowed_tags total_length cstor_tag_length ~offset:0)
  in
  Ctx.add_finite_adt name total_length cstor_tag_length disallowed_tags equality_function disequality_fun cstors;

  cstor_interpretations

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

let rec simply_datatyp_decls (datatypes : ((string * int) * PA.cstor list) list) acc = 
  begin match datatypes with 
    | ((name, _), cstors) :: rest -> 
        let new_stmts = simplify_datatype name cstors in 
        simply_datatyp_decls rest (acc @ new_stmts)
    | _ -> acc
  end


let replace_adt_array_ty ?(name = "") (ty: PA.ty) =
  match ty with 
    | PA.Ty_app (s, []) ->
      begin match StrTbl.find_opt Ctx.t.finite_adts s with 
        | Some record -> 
            if (name <> "") then (
             Ctx.add_adt_fun name s (PA.Ty_bv record.size)
            );
            PA.Ty_bv record.size 
        | None -> ty
      end
    | PA.Ty_array (t1, t2) -> 
      begin match t1 with 
       | PA.Ty_bv bv_index_size ->
          let item_length = find_ty_bitvec_size t2 in 
          let num_items = exp 2 bv_index_size in 
          let array_length = item_length * num_items in 
          let (array_term : Ctx.array_term) = {array_length = array_length;
                                               num_items = num_items;
                                               array_bv_index_size = bv_index_size;
                                               array_item_length = item_length;
                                               array_subtype = t2} in 
          if (name <> "") then (
            StrTbl.add Ctx.t.array_terms name array_term
          );
          PA.Ty_bv array_length
       | PA.Ty_bool -> 
          let item_length = find_ty_bitvec_size t2 in 
          let num_items = 2 in 
          let array_length = item_length * num_items in 
          let (array_term : Ctx.array_term) = {array_length = array_length;
                                              num_items = 2;
                                              array_bv_index_size = 1;
                                              array_item_length = item_length;
                                              array_subtype = t2} in 
          if (name <> "") then (
            StrTbl.add Ctx.t.array_terms name array_term
          );
          PA.Ty_bv array_length
       | _ -> raise (UnsupportedQuery "We do not currently support indexing arrays with anything other than BitVector or Bool")
      end
    | _ -> ty

let find_equality_function (term : PA.term) = 
  begin match term with 
      | PA.App (s, _) | PA.Const s ->
         begin match (StrTbl.find_opt Ctx.t.adt_funs s) with 
          | Some record -> 
              let finite_adt_record = StrTbl.find Ctx.t.finite_adts record.adt_name in 
              Some finite_adt_record.equality_fun
          | None -> None 
          end 
      | _ -> None 
    end

let find_disequality_function (term : PA.term) = 
  begin match term with 
      | PA.App (s, _) | PA.Const s ->
          begin match (StrTbl.find_opt Ctx.t.adt_funs s) with 
          | Some record -> 
              let finite_adt_record = StrTbl.find Ctx.t.finite_adts record.adt_name in 
              Some finite_adt_record.disequality_fun
          | None -> None 
          end 
      | _ -> None 
    end

let rec get_array_info = function
    | PA.Const a -> StrTbl.find Ctx.t.array_terms a 
    | PA.App (f, _) -> StrTbl.find Ctx.t.array_terms f
    | PA.Array (PA.Store, [array; _; _]) -> get_array_info array
    | PA.Array (PA.Select, [_; _]) -> 
        raise (UnsupportedQuery " We do not currently support Select in get_array_info")
    | If (_, t, _) -> get_array_info t
    | Let (_, _) ->
        raise (UnsupportedQuery " We do not currently support Let in get_array_info")
    | _ -> raise (UnsupportedQuery "Expected an array")

let replace_array_term (terms : PA.term list) = function 
    | PA.Select -> 
        begin match terms with 
          | [array; index] -> 
              let array_record = get_array_info array in
              let index = PA.Bitvec ((PA.Zero_extend (array_record.array_length - array_record.array_bv_index_size)), [index]) in
              print_string ("The array item length is " ^ (string_of_int array_record.array_item_length) ^ " and the array length is " ^ (string_of_int array_record.array_length));
              let array_item_length_bitvec = PA.Const ("#b" ^ (int_to_bitvec array_record.array_length array_record.array_item_length)) in
              PA.Bitvec (PA.Extract(array_record.array_item_length - 1, 0),
                          [PA.Bitvec (PA.BVLshr, [array; PA.Bitvec (BVMul, [index; array_item_length_bitvec])])])
          | _ -> raise (UnsupportedQuery "Incorrectly applied select")
        end
    | PA.Store ->
        match terms with 
          | [array; index; new_val] -> 
            let array_record = get_array_info array in
            let index = PA.Bitvec ((PA.Zero_extend (array_record.array_length - array_record.array_bv_index_size)), [index]) in
            let zero_out = PA.Bitvec (BVXor, 
                                        [PA.Bitvec (PA.BVShl, 
                                                        [PA.Const ("#b" ^ (int_to_bitvec ((exp 2 array_record.array_item_length) - 1) array_record.array_length));
                                                         index]);
                                         PA.Const ("#b" ^ (int_to_bitvec ((exp 2 array_record.array_length) - 1) array_record.array_length))]) in
            let new_val_extended = PA.Bitvec (BVShl, [Bitvec (PA.Zero_extend (array_record.array_length - array_record.array_item_length), [new_val]) ; index]) in
            PA.Bitvec (PA.BVOr, [(PA.Bitvec (PA.BVAnd, [array; zero_out])); new_val_extended]) (* (array && zero-out) || new_val_extended*)
          | _ -> raise (UnsupportedQuery "Incorrectly applied store")
          


let rec replace_equalities (extra_terms : PA.term list) (term : PA.term) = 
  match term with 
  | Eq (t1, t2) ->
    begin match (find_equality_function t1) with 
      | Some f ->
          f (replace_equalities extra_terms t1) (replace_equalities extra_terms t2)
      | None -> 
          begin match (find_equality_function t2) with 
            | Some f -> f (replace_equalities extra_terms t1) (replace_equalities extra_terms t2)
            | None -> PA.Eq (replace_equalities extra_terms t1, replace_equalities extra_terms t2)
          end
    end
  | Not (Eq (t1, t2)) -> 
    begin match (find_disequality_function t1) with 
    | Some f ->
        f (replace_equalities extra_terms t1) (replace_equalities extra_terms t2)
    | None -> 
        begin match (find_disequality_function t2) with 
          | Some f -> f (replace_equalities extra_terms t1) (replace_equalities extra_terms t2)
          | None -> PA.Eq (replace_equalities extra_terms t1, replace_equalities extra_terms t2)
        end
  end
  | Forall (bindings, term) ->
      let new_bindings = List.map (fun (s, ty) -> (s, replace_adt_array_ty ty ~name:s)) bindings in
      Forall (new_bindings, replace_equalities extra_terms term)
  | Exists (bindings, term) ->
      let new_bindings = List.map (fun (s, ty) -> (s, replace_adt_array_ty ty ~name:s)) bindings in
      Exists (new_bindings, replace_equalities extra_terms term)
  | App (f, [t]) -> 
      (* If f is a selector, then assert that t can only have one of the correct tags  *)
      let app = PA.App (f, [replace_equalities extra_terms t]) in
      begin match StrTbl.find_opt Ctx.t.testers f with 
        | Some tester_record ->
            let start, stop = tester_record.tag_start_pos, tester_record.tag_end_pos in
            let disallow_tags = List.map 
                                  (fun tag -> 
                                    PA.Not (PA.Eq (Bitvec (PA.Extract (stop, start), [t]),
                                                   PA.Const ("#b" ^ tag))))
                                  tester_record.disallowed_tags in
            PA.And (app::disallow_tags)
        | None -> app
        end
  | Not (App (f, [t])) ->
      let app = PA.Not (PA.App (f, [replace_equalities extra_terms t])) in
      begin match StrTbl.find_opt Ctx.t.testers f with 
        | Some tester_record ->
            let start, stop = tester_record.tag_start_pos, tester_record.tag_end_pos in
            let disallow_tags = List.map 
                                  (fun tag -> 
                                    PA.Not (PA.Eq (Bitvec (PA.Extract (stop, start), [t]),
                                                  PA.Const ("#b" ^ tag))))
                                  tester_record.disallowed_tags in
            PA.And (app::disallow_tags)
        | None -> app
      end
  | Array (op, terms) -> replace_array_term (List.map (replace_equalities extra_terms) terms) op
  | Match _ -> raise (UnsupportedQuery "We do not currently support Match")
  | If (t1, t2, t3) -> If (replace_equalities extra_terms t1, replace_equalities extra_terms t2, replace_equalities extra_terms t3)
  | Let (bindings, t) -> Let ((List.map (fun (x, y) -> x, replace_equalities extra_terms y) bindings), replace_equalities extra_terms t)
  | Is_a (name, t) -> PA.App ("is-" ^ name, [replace_equalities extra_terms t])
  | Fun (var, t) -> Fun (var, replace_equalities extra_terms t)
  | Imply (t1, t2) -> Imply (replace_equalities extra_terms t1, replace_equalities extra_terms t2)
  | And terms -> And (List.map (replace_equalities extra_terms) terms)
  | Or terms -> Or (List.map (replace_equalities extra_terms) terms)
  | Not term -> Not (replace_equalities extra_terms term)
  | Distinct [t1; t2] -> replace_equalities extra_terms (PA.Not (PA.Eq (t1, t2)))
  | Distinct _ -> raise (UnsupportedQuery "We do not currently support Distinc for more than two items")
  | Cast _ -> raise (UnsupportedQuery "We do not currently support Cast")
  | HO_app _ -> raise (UnsupportedQuery "We do not currently support HO_App")
  | Attr _ -> raise (UnsupportedQuery "We do not currently support Attr")
  | _ -> term

let remove_datatypes stmts =
  let rec aux acc = function
    | [] -> acc
    | stmt :: rest ->
      begin match (stmt : PA.stmt) with
        | Stmt_data datatypes ->
            let datatype_names = List.map (fun x  -> fst (fst x)) datatypes in
            print_string_list datatype_names;
            let datatypes = datatype_cycle_detect datatypes datatype_names [] in
            let stmts = simply_datatyp_decls datatypes [] in 
            aux (acc @ stmts) rest
        | Stmt_decl fun_decl ->
          let new_fun_args = List.map replace_adt_array_ty fun_decl.fun_args in 
          let new_fun_ret = replace_adt_array_ty ~name:fun_decl.fun_name fun_decl.fun_ret in 
          let (new_fun_decl : PA.ty PA.fun_decl) = {fun_ty_vars = fun_decl.fun_ty_vars;
                                                    fun_name = fun_decl.fun_name;
                                                    fun_args = new_fun_args;
                                                    fun_ret = new_fun_ret} in
          aux (acc @ [PA.Stmt_decl new_fun_decl]) rest
        | Stmt_assert term -> 
            let new_term = replace_equalities [] term in
            aux (acc @ [PA.Stmt_assert new_term]) rest
        | Stmt_fun_def fun_def -> 
            let fun_decl = fun_def.fr_decl in 
            let new_fun_args = List.map (fun (var, ty) -> (var, replace_adt_array_ty ty)) fun_decl.fun_args in 
            let new_fun_ret = replace_adt_array_ty ~name:fun_decl.fun_name fun_decl.fun_ret in 
            let (new_fun_decl : PA.typed_var PA.fun_decl) = {fun_ty_vars = fun_decl.fun_ty_vars;
                                                    fun_name = fun_decl.fun_name;
                                                    fun_args = new_fun_args;
                                                    fun_ret = new_fun_ret} in
            let new_fun_def : PA.fun_def = {fr_decl = new_fun_decl; 
                                            fr_body = fun_def.fr_body} in 
            aux (acc @ [PA.Stmt_fun_def new_fun_def]) rest
        | _ -> aux (acc @ [stmt]) rest
      end
  in
  aux [] stmts



