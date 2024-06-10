module PA = Finiteroba_lib.Ast
module Smtlib = Finiteroba_lib.Smtlib_utils.V_2_6
open Core
open Finiteroba_lib.Context
open Finiteroba_lib.Finite_reduction
open Finiteroba_lib.Z3_utils
open Finiteroba_lib.F1normalize
open Finiteroba_lib.F0rename
open Finiteroba_lib.F4simplify


(* let _ = reset_ctx () need to reset the context beforehand *)
let stmt_list = begin match (Smtlib.parse_file "c3_inductive_query_8.smt2") with
|Ok(f) -> f
|Error(_) -> print_string "failure!!!"; []
end

let stmts = List.map stmt_list statement_to_stmt
let reduced_stmts =  rename_vars_statements stmts |> normalize_statements |> remove_datatypes |> simplify_statements