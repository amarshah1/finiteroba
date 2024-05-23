module PA = Finiteroba_lib.Ast
module Smtlib = Finiteroba_lib.Smtlib_utils.V_2_6
open Core
open Finiteroba_lib.Context
open Finiteroba_lib.Finite_reduction
open Finiteroba_lib.Z3_utils
open Finiteroba_lib.F1normalize


(* let _ = reset_ctx () need to reset the context beforehand *)
let stmt_list = begin match (Smtlib.parse_file "very_truncated_query.smt2") with
|Ok(f) -> f
|Error(_) -> print_string "failure!!!"; []
end

let stmts = List.map stmt_list statement_to_stmt
let reduced_stmts = remove_datatypes stmts