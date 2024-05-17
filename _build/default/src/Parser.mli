
(* The type of tokens. *)

type token = 
  | ZERO_EXTEND
  | WILDCARD
  | SIGN_EXTEND
  | RIGHT_PAREN
  | QUOTED of (string)
  | PAR
  | MATCH
  | LET
  | LEFT_PAREN
  | IS
  | IF
  | IDENT of (string)
  | GET_VALUE
  | FUN
  | FORALL
  | EXTRACT
  | EXISTS
  | EQ
  | EOI
  | DISTINCT
  | DEFINE_FUN_REC
  | DEFINE_FUNS_REC
  | DEFINE_FUN
  | DECLARE_SORT
  | DECLARE_FUN
  | DECLARE_CONST
  | DATUM
  | DATA
  | CHECK_SAT_ASSUMING
  | CHECK_SAT
  | BV3
  | BV0
  | BITVEC
  | BANG
  | AT
  | ASSERT
  | AS
  | ARROW
  | ARRAY

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val parse_ty: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.ty)

val parse_term: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.term)

val parse_list: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.statement list)

val parse: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.statement)
