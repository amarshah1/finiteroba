
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | ZERO_EXTEND
    | WILDCARD
    | SIGN_EXTEND
    | RIGHT_PAREN
    | QUOTED of (
# 118 "src/Parser.mly"
       (string)
# 19 "src/Parser.ml"
  )
    | PAR
    | MATCH
    | LET
    | LEFT_PAREN
    | IS
    | IF
    | IDENT of (
# 117 "src/Parser.mly"
       (string)
# 30 "src/Parser.ml"
  )
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
  
end

include MenhirBasics

# 10 "src/Parser.mly"
  

  let consts =
    let module A = Ast in
    let tbl = Hashtbl.create 32 in
    let mkc c name ~loc = function
      | [] -> c
      | _ ->
        A.parse_errorf ~loc "wrong arity for constant %s" name
    and mkf1 f name ~loc = function
      | [t] -> f t
      | _ ->
        A.parse_errorf ~loc "wrong arity for unary function %s" name
    and mkl f _name ~loc:_ args =
      f args
    and arith_op op _name ~loc:_ args =
      A.arith op args
    and bitvec_op op _name ~loc:_ args =
      A.bitvec op args
    and array_op op _name ~loc:_ args =
      A.array op args
    in
    List.iter (fun (s,f) -> Hashtbl.add tbl s f) [
      ("true", mkc A.true_);
      ("false", mkc A.false_);
      ("or", mkl A.or_);
      ("and", mkl A.and_);
      ("not", mkf1 A.not_);
      ("+", arith_op A.Add);
      ("-", arith_op A.Minus);
      ("*", arith_op A.Mult);
      ("/", arith_op A.Div);
      ("<=", arith_op A.Leq);
      ("<", arith_op A.Lt);
      (">=", arith_op A.Geq);
      (">", arith_op A.Gt);
      ("bvult", bitvec_op A.BVUlt);
      ("bvslt", bitvec_op A.BVSlt);
      ("bvnot", bitvec_op A.BVNot);
      ("bvand", bitvec_op A.BVAnd);
      ("bvor", bitvec_op A.BVOr);
      ("bvxor", bitvec_op A.BVXor);
      ("bvshl", bitvec_op A.BVShl);
      ("bvlshr", bitvec_op A.BVLshr);
      ("bvashr", bitvec_op A.BVAshr);
      ("bvadd", bitvec_op A.BVAdd);
      ("bvmul", bitvec_op A.BVMul);
      ("bvurem", bitvec_op A.BVURem);
      ("bvudiv", bitvec_op A.BVUDiv);
      ("bv2nat", bitvec_op A.BV2nat);
      ("select", array_op A.Select);
      ("store", array_op A.Store);
    ];
    tbl

  let apply_const ~loc name args =
    let module A = Ast in
    try
      let f = Hashtbl.find consts name in
      f name ~loc args
    with Not_found ->
      if args=[] then A.const name else A.app name args

# 128 "src/Parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_parse) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: parse. *)

  | MenhirState003 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse) _menhir_state
    (** State 003.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse. *)

  | MenhirState008 : (('s, 'r) _menhir_cell1_anystr, 'r) _menhir_state
    (** State 008.
        Stack shape : anystr.
        Start symbol: <undetermined>. *)

  | MenhirState010 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 010.
        Stack shape : LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState013 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 013.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState023 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_MATCH, 'r) _menhir_state
    (** State 023.
        Stack shape : LEFT_PAREN MATCH.
        Start symbol: <undetermined>. *)

  | MenhirState024 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 024.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState032 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_MATCH, 'r) _menhir_state
    (** State 032.
        Stack shape : LEFT_PAREN MATCH.
        Start symbol: <undetermined>. *)

  | MenhirState035 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_MATCH, 'r) _menhir_cell1_term _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 035.
        Stack shape : LEFT_PAREN MATCH term LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState037 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 037.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState042 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 042.
        Stack shape : LEFT_PAREN LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState045 : (('s, 'r) _menhir_cell1_var, 'r) _menhir_state
    (** State 045.
        Stack shape : var.
        Start symbol: <undetermined>. *)

  | MenhirState048 : ((('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_cell1_nonempty_list_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 048.
        Stack shape : LEFT_PAREN LEFT_PAREN IDENT nonempty_list(var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState051 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 051.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState057 : (('s, 'r) _menhir_cell1_case, 'r) _menhir_state
    (** State 057.
        Stack shape : case.
        Start symbol: <undetermined>. *)

  | MenhirState060 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 060.
        Stack shape : LEFT_PAREN LET LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState061 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 061.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState064 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_var, 'r) _menhir_state
    (** State 064.
        Stack shape : LEFT_PAREN var.
        Start symbol: <undetermined>. *)

  | MenhirState068 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_binding_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 068.
        Stack shape : LEFT_PAREN LET LEFT_PAREN nonempty_list(binding) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState071 : (('s, 'r) _menhir_cell1_binding, 'r) _menhir_state
    (** State 071.
        Stack shape : binding.
        Start symbol: <undetermined>. *)

  | MenhirState073 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 073.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState077 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 077.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState079 : (('s, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 079.
        Stack shape : term.
        Start symbol: <undetermined>. *)

  | MenhirState086 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 086.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState091 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 091.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState097 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 097.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState101 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 101.
        Stack shape : LEFT_PAREN LET LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState103 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_binding_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 103.
        Stack shape : LEFT_PAREN LET LEFT_PAREN nonempty_list(binding) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState106 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 106.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState110 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 110.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState115 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 115.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState120 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 120.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState126 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 126.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState129 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_state
    (** State 129.
        Stack shape : LEFT_PAREN IF.
        Start symbol: <undetermined>. *)

  | MenhirState130 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 130.
        Stack shape : LEFT_PAREN IF term.
        Start symbol: <undetermined>. *)

  | MenhirState131 : ((((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_term, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 131.
        Stack shape : LEFT_PAREN IF term term.
        Start symbol: <undetermined>. *)

  | MenhirState134 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IDENT, 'r) _menhir_state
    (** State 134.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState138 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 138.
        Stack shape : LEFT_PAREN FUN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState139 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 139.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState140 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_var, 'r) _menhir_state
    (** State 140.
        Stack shape : LEFT_PAREN var.
        Start symbol: <undetermined>. *)

  | MenhirState146 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 146.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState148 : (('s, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 148.
        Stack shape : ty.
        Start symbol: <undetermined>. *)

  | MenhirState152 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 152.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState155 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 155.
        Stack shape : LEFT_PAREN ty.
        Start symbol: <undetermined>. *)

  | MenhirState157 : ((('s, 'r) _menhir_cell1_ty, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 157.
        Stack shape : ty ty.
        Start symbol: <undetermined>. *)

  | MenhirState158 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 158.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState159 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 159.
        Stack shape : LEFT_PAREN ty.
        Start symbol: <undetermined>. *)

  | MenhirState164 : (('s, 'r) _menhir_cell1_typed_var, 'r) _menhir_state
    (** State 164.
        Stack shape : typed_var.
        Start symbol: <undetermined>. *)

  | MenhirState167 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 167.
        Stack shape : LEFT_PAREN FUN LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState171 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 171.
        Stack shape : LEFT_PAREN FORALL LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState173 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 173.
        Stack shape : LEFT_PAREN FORALL LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState177 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 177.
        Stack shape : LEFT_PAREN EXISTS LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState179 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 179.
        Stack shape : LEFT_PAREN EXISTS LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState182 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EQ, 'r) _menhir_state
    (** State 182.
        Stack shape : LEFT_PAREN EQ.
        Start symbol: <undetermined>. *)

  | MenhirState183 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EQ, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 183.
        Stack shape : LEFT_PAREN EQ term.
        Start symbol: <undetermined>. *)

  | MenhirState186 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_DISTINCT, 'r) _menhir_state
    (** State 186.
        Stack shape : LEFT_PAREN DISTINCT.
        Start symbol: <undetermined>. *)

  | MenhirState189 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_state
    (** State 189.
        Stack shape : LEFT_PAREN BANG.
        Start symbol: <undetermined>. *)

  | MenhirState190 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 190.
        Stack shape : LEFT_PAREN BANG term.
        Start symbol: <undetermined>. *)

  | MenhirState191 : (('s, 'r) _menhir_cell1_IDENT, 'r) _menhir_state
    (** State 191.
        Stack shape : IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState195 : (('s, 'r) _menhir_cell1_attr, 'r) _menhir_state
    (** State 195.
        Stack shape : attr.
        Start symbol: <undetermined>. *)

  | MenhirState197 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AT, 'r) _menhir_state
    (** State 197.
        Stack shape : LEFT_PAREN AT.
        Start symbol: <undetermined>. *)

  | MenhirState198 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AT, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 198.
        Stack shape : LEFT_PAREN AT term.
        Start symbol: <undetermined>. *)

  | MenhirState201 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AS, 'r) _menhir_state
    (** State 201.
        Stack shape : LEFT_PAREN AS.
        Start symbol: <undetermined>. *)

  | MenhirState202 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AS, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 202.
        Stack shape : LEFT_PAREN AS term.
        Start symbol: <undetermined>. *)

  | MenhirState205 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ARROW, 'r) _menhir_state
    (** State 205.
        Stack shape : LEFT_PAREN ARROW.
        Start symbol: <undetermined>. *)

  | MenhirState206 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ARROW, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 206.
        Stack shape : LEFT_PAREN ARROW term.
        Start symbol: <undetermined>. *)

  | MenhirState211 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_composite_term, 'r) _menhir_state
    (** State 211.
        Stack shape : LEFT_PAREN composite_term.
        Start symbol: <undetermined>. *)

  | MenhirState214 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_state
    (** State 214.
        Stack shape : LEFT_PAREN IF.
        Start symbol: <undetermined>. *)

  | MenhirState215 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 215.
        Stack shape : LEFT_PAREN IF term.
        Start symbol: <undetermined>. *)

  | MenhirState216 : ((((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_term, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 216.
        Stack shape : LEFT_PAREN IF term term.
        Start symbol: <undetermined>. *)

  | MenhirState219 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IDENT, 'r) _menhir_state
    (** State 219.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState223 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 223.
        Stack shape : LEFT_PAREN FUN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState225 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 225.
        Stack shape : LEFT_PAREN FUN LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState229 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 229.
        Stack shape : LEFT_PAREN FORALL LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState231 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 231.
        Stack shape : LEFT_PAREN FORALL LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState235 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 235.
        Stack shape : LEFT_PAREN EXISTS LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState237 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 237.
        Stack shape : LEFT_PAREN EXISTS LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState240 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EQ, 'r) _menhir_state
    (** State 240.
        Stack shape : LEFT_PAREN EQ.
        Start symbol: <undetermined>. *)

  | MenhirState241 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EQ, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 241.
        Stack shape : LEFT_PAREN EQ term.
        Start symbol: <undetermined>. *)

  | MenhirState244 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_DISTINCT, 'r) _menhir_state
    (** State 244.
        Stack shape : LEFT_PAREN DISTINCT.
        Start symbol: <undetermined>. *)

  | MenhirState247 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_state
    (** State 247.
        Stack shape : LEFT_PAREN BANG.
        Start symbol: <undetermined>. *)

  | MenhirState248 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 248.
        Stack shape : LEFT_PAREN BANG term.
        Start symbol: <undetermined>. *)

  | MenhirState251 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AT, 'r) _menhir_state
    (** State 251.
        Stack shape : LEFT_PAREN AT.
        Start symbol: <undetermined>. *)

  | MenhirState252 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AT, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 252.
        Stack shape : LEFT_PAREN AT term.
        Start symbol: <undetermined>. *)

  | MenhirState255 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AS, 'r) _menhir_state
    (** State 255.
        Stack shape : LEFT_PAREN AS.
        Start symbol: <undetermined>. *)

  | MenhirState256 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AS, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 256.
        Stack shape : LEFT_PAREN AS term.
        Start symbol: <undetermined>. *)

  | MenhirState259 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ARROW, 'r) _menhir_state
    (** State 259.
        Stack shape : LEFT_PAREN ARROW.
        Start symbol: <undetermined>. *)

  | MenhirState260 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ARROW, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 260.
        Stack shape : LEFT_PAREN ARROW term.
        Start symbol: <undetermined>. *)

  | MenhirState265 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_composite_term, 'r) _menhir_state
    (** State 265.
        Stack shape : LEFT_PAREN composite_term.
        Start symbol: <undetermined>. *)

  | MenhirState269 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_MATCH, 'r) _menhir_cell1_term _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 269.
        Stack shape : LEFT_PAREN MATCH term LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState275 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 275.
        Stack shape : LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState278 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 278.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState280 : (('s, 'r) _menhir_cell1_tyvar, 'r) _menhir_state
    (** State 280.
        Stack shape : tyvar.
        Start symbol: <undetermined>. *)

  | MenhirState284 : ((('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 284.
        Stack shape : LEFT_PAREN LEFT_PAREN list(tyvar) RIGHT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState286 : (('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 286.
        Stack shape : IDENT LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState287 : (('s, 'r) _menhir_cell1_typed_var, 'r) _menhir_state
    (** State 287.
        Stack shape : typed_var.
        Start symbol: <undetermined>. *)

  | MenhirState290 : ((('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 290.
        Stack shape : IDENT LEFT_PAREN list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState296 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 296.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState299 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 299.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState302 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 302.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState303 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 303.
        Stack shape : LEFT_PAREN ty.
        Start symbol: <undetermined>. *)

  | MenhirState308 : (((('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_fun_def_mono, 'r) _menhir_state
    (** State 308.
        Stack shape : LEFT_PAREN LEFT_PAREN list(tyvar) RIGHT_PAREN LEFT_PAREN fun_def_mono.
        Start symbol: <undetermined>. *)

  | MenhirState314 : (('s, 'r) _menhir_cell1_fun_def_mono, 'r) _menhir_state
    (** State 314.
        Stack shape : fun_def_mono.
        Start symbol: <undetermined>. *)

  | MenhirState317 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 317.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState318 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 318.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState320 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_PAR _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 320.
        Stack shape : LEFT_PAREN PAR LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState323 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_PAR _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 323.
        Stack shape : LEFT_PAREN PAR LEFT_PAREN list(tyvar) RIGHT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState325 : (('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 325.
        Stack shape : IDENT LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState327 : ((('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 327.
        Stack shape : IDENT LEFT_PAREN list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState336 : ((('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_cell1_nonempty_list_funs_rec_decl_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 336.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(funs_rec_decl) RIGHT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState340 : (('s, 'r) _menhir_cell1_funs_rec_decl, 'r) _menhir_state
    (** State 340.
        Stack shape : funs_rec_decl.
        Start symbol: <undetermined>. *)

  | MenhirState342 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 342.
        Stack shape : LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState349 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 349.
        Stack shape : LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState352 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 352.
        Stack shape : LEFT_PAREN LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState355 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 355.
        Stack shape : LEFT_PAREN LEFT_PAREN LEFT_PAREN list(tyvar) RIGHT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState357 : (('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 357.
        Stack shape : IDENT LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState358 : (('s, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 358.
        Stack shape : ty.
        Start symbol: <undetermined>. *)

  | MenhirState361 : ((('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_ty_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 361.
        Stack shape : IDENT LEFT_PAREN list(ty) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState370 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse) _menhir_state
    (** State 370.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse. *)

  | MenhirState374 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse) _menhir_state
    (** State 374.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse. *)

  | MenhirState375 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 375.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState378 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 378.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState380 : ((('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 380.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState382 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 382.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState384 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 384.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState389 : (('s, 'r) _menhir_cell1_cstor_arg, 'r) _menhir_state
    (** State 389.
        Stack shape : cstor_arg.
        Start symbol: <undetermined>. *)

  | MenhirState396 : (('s, 'r) _menhir_cell1_cstor, 'r) _menhir_state
    (** State 396.
        Stack shape : cstor.
        Start symbol: <undetermined>. *)

  | MenhirState401 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 401.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState406 : (('s, 'r) _menhir_cell1_ty_decl_paren, 'r) _menhir_state
    (** State 406.
        Stack shape : ty_decl_paren.
        Start symbol: <undetermined>. *)

  | MenhirState410 : ((('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_cell1_nonempty_list_ty_decl_paren_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 410.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(ty_decl_paren) RIGHT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState414 : (('s, 'r) _menhir_cell1_cstors, 'r) _menhir_state
    (** State 414.
        Stack shape : cstors.
        Start symbol: <undetermined>. *)

  | MenhirState417 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 417.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState419 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 419.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState423 : (('s, 'r) _menhir_cell1_prop_lit, 'r) _menhir_state
    (** State 423.
        Stack shape : prop_lit.
        Start symbol: <undetermined>. *)

  | MenhirState430 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 430.
        Stack shape : LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState436 : ('s, _menhir_box_parse_list) _menhir_state
    (** State 436.
        Stack shape : .
        Start symbol: parse_list. *)

  | MenhirState439 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse_list) _menhir_state
    (** State 439.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse_list. *)

  | MenhirState442 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 442.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState445 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 445.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState449 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 449.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState452 : ((('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_cell1_nonempty_list_funs_rec_decl_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 452.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(funs_rec_decl) RIGHT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState456 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 456.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState463 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 463.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState467 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse_list) _menhir_state
    (** State 467.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse_list. *)

  | MenhirState471 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse_list) _menhir_state
    (** State 471.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse_list. *)

  | MenhirState475 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 475.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState478 : ((('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_cell1_nonempty_list_ty_decl_paren_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 478.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(ty_decl_paren) RIGHT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState483 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 483.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState489 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 489.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState492 : (('s, _menhir_box_parse_list) _menhir_cell1_stmt, _menhir_box_parse_list) _menhir_state
    (** State 492.
        Stack shape : stmt.
        Start symbol: parse_list. *)

  | MenhirState497 : ('s, _menhir_box_parse_term) _menhir_state
    (** State 497.
        Stack shape : .
        Start symbol: parse_term. *)

  | MenhirState501 : ('s, _menhir_box_parse_ty) _menhir_state
    (** State 501.
        Stack shape : .
        Start symbol: parse_ty. *)


and ('s, 'r) _menhir_cell1_anystr = 
  | MenhirCell1_anystr of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_attr = 
  | MenhirCell1_attr of 's * ('s, 'r) _menhir_state * (string * string)

and ('s, 'r) _menhir_cell1_binding = 
  | MenhirCell1_binding of 's * ('s, 'r) _menhir_state * (string * Ast.term)

and ('s, 'r) _menhir_cell1_case = 
  | MenhirCell1_case of 's * ('s, 'r) _menhir_state * (Ast.match_branch)

and ('s, 'r) _menhir_cell1_composite_term = 
  | MenhirCell1_composite_term of 's * ('s, 'r) _menhir_state * (Ast.term)

and ('s, 'r) _menhir_cell1_cstor = 
  | MenhirCell1_cstor of 's * ('s, 'r) _menhir_state * (Ast.cstor)

and ('s, 'r) _menhir_cell1_cstor_arg = 
  | MenhirCell1_cstor_arg of 's * ('s, 'r) _menhir_state * (string * Ast.ty)

and ('s, 'r) _menhir_cell1_cstors = 
  | MenhirCell1_cstors of 's * ('s, 'r) _menhir_state * (Ast.cstor list)

and ('s, 'r) _menhir_cell1_fun_def_mono = 
  | MenhirCell1_fun_def_mono of 's * ('s, 'r) _menhir_state * (string * Ast.typed_var list * Ast.ty)

and ('s, 'r) _menhir_cell1_funs_rec_decl = 
  | MenhirCell1_funs_rec_decl of 's * ('s, 'r) _menhir_state * (Ast.typed_var Ast.fun_decl)

and ('s, 'r) _menhir_cell1_list_ty_ = 
  | MenhirCell1_list_ty_ of 's * ('s, 'r) _menhir_state * (Ast.ty list)

and ('s, 'r) _menhir_cell1_list_typed_var_ = 
  | MenhirCell1_list_typed_var_ of 's * ('s, 'r) _menhir_state * (Ast.typed_var list)

and ('s, 'r) _menhir_cell1_list_tyvar_ = 
  | MenhirCell1_list_tyvar_ of 's * ('s, 'r) _menhir_state * (string list)

and ('s, 'r) _menhir_cell1_nonempty_list_binding_ = 
  | MenhirCell1_nonempty_list_binding_ of 's * ('s, 'r) _menhir_state * ((string * Ast.term) list)

and ('s, 'r) _menhir_cell1_nonempty_list_funs_rec_decl_ = 
  | MenhirCell1_nonempty_list_funs_rec_decl_ of 's * ('s, 'r) _menhir_state * (Ast.typed_var Ast.fun_decl list)

and ('s, 'r) _menhir_cell1_nonempty_list_ty_decl_paren_ = 
  | MenhirCell1_nonempty_list_ty_decl_paren_ of 's * ('s, 'r) _menhir_state * ((string * int) list)

and ('s, 'r) _menhir_cell1_nonempty_list_typed_var_ = 
  | MenhirCell1_nonempty_list_typed_var_ of 's * ('s, 'r) _menhir_state * (Ast.typed_var list)

and ('s, 'r) _menhir_cell1_nonempty_list_var_ = 
  | MenhirCell1_nonempty_list_var_ of 's * ('s, 'r) _menhir_state * (string list)

and ('s, 'r) _menhir_cell1_prop_lit = 
  | MenhirCell1_prop_lit of 's * ('s, 'r) _menhir_state * (Ast.prop_literal)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.statement)

and ('s, 'r) _menhir_cell1_term = 
  | MenhirCell1_term of 's * ('s, 'r) _menhir_state * (Ast.term)

and ('s, 'r) _menhir_cell1_ty = 
  | MenhirCell1_ty of 's * ('s, 'r) _menhir_state * (Ast.ty)

and ('s, 'r) _menhir_cell1_ty_decl_paren = 
  | MenhirCell1_ty_decl_paren of 's * ('s, 'r) _menhir_state * (string * int)

and ('s, 'r) _menhir_cell1_typed_var = 
  | MenhirCell1_typed_var of 's * ('s, 'r) _menhir_state * (Ast.typed_var)

and ('s, 'r) _menhir_cell1_tyvar = 
  | MenhirCell1_tyvar of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_var = 
  | MenhirCell1_var of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_ARROW = 
  | MenhirCell1_ARROW of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_AS = 
  | MenhirCell1_AS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_AT = 
  | MenhirCell1_AT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BANG = 
  | MenhirCell1_BANG of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_DISTINCT = 
  | MenhirCell1_DISTINCT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EQ = 
  | MenhirCell1_EQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EXISTS = 
  | MenhirCell1_EXISTS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FORALL = 
  | MenhirCell1_FORALL of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FUN = 
  | MenhirCell1_FUN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IDENT = 
  | MenhirCell1_IDENT of 's * ('s, 'r) _menhir_state * (
# 117 "src/Parser.mly"
       (string)
# 1001 "src/Parser.ml"
) * Lexing.position * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 117 "src/Parser.mly"
       (string)
# 1008 "src/Parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LEFT_PAREN = 
  | MenhirCell1_LEFT_PAREN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LEFT_PAREN = 
  | MenhirCell0_LEFT_PAREN of 's * Lexing.position

and ('s, 'r) _menhir_cell1_LET = 
  | MenhirCell1_LET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MATCH = 
  | MenhirCell1_MATCH of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PAR = 
  | MenhirCell1_PAR of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_RIGHT_PAREN = 
  | MenhirCell0_RIGHT_PAREN of 's * Lexing.position

and ('s, 'r) _menhir_cell1_WILDCARD = 
  | MenhirCell1_WILDCARD of 's * ('s, 'r) _menhir_state

and _menhir_box_parse_ty = 
  | MenhirBox_parse_ty of (Ast.ty) [@@unboxed]

and _menhir_box_parse_term = 
  | MenhirBox_parse_term of (Ast.term) [@@unboxed]

and _menhir_box_parse_list = 
  | MenhirBox_parse_list of (Ast.statement list) [@@unboxed]

and _menhir_box_parse = 
  | MenhirBox_parse of (Ast.statement) [@@unboxed]

let _menhir_action_004 =
  fun s ->
    (
# 221 "src/Parser.mly"
            (s)
# 1052 "src/Parser.ml"
     : (string))

let _menhir_action_005 =
  fun s ->
    (
# 222 "src/Parser.mly"
             (s)
# 1060 "src/Parser.ml"
     : (string))

let _menhir_action_006 =
  fun a b ->
    (
# 409 "src/Parser.mly"
                     ( a,b )
# 1068 "src/Parser.ml"
     : (string * string))

let _menhir_action_007 =
  fun t v ->
    (
# 393 "src/Parser.mly"
                                        ( v, t )
# 1076 "src/Parser.ml"
     : (string * Ast.term))

let _menhir_action_008 =
  fun c rhs ->
    (
# 381 "src/Parser.mly"
    ( Ast.Match_case (c, [], rhs) )
# 1084 "src/Parser.ml"
     : (Ast.match_branch))

let _menhir_action_009 =
  fun c rhs vars ->
    (
# 386 "src/Parser.mly"
    ( Ast.Match_case (c, vars, rhs) )
# 1092 "src/Parser.ml"
     : (Ast.match_branch))

let _menhir_action_010 =
  fun rhs ->
    (
# 390 "src/Parser.mly"
    ( Ast.Match_default rhs )
# 1100 "src/Parser.ml"
     : (Ast.match_branch))

let _menhir_action_011 =
  fun t ->
    (
# 412 "src/Parser.mly"
                                  ( t )
# 1108 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_012 =
  fun a b c ->
    (
# 413 "src/Parser.mly"
                                                   ( Ast.if_ a b c )
# 1116 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_013 =
  fun l ->
    (
# 414 "src/Parser.mly"
                                            ( Ast.distinct l )
# 1124 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_014 =
  fun a b ->
    (
# 415 "src/Parser.mly"
                                            ( Ast.eq a b )
# 1132 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_015 =
  fun a b ->
    (
# 416 "src/Parser.mly"
                                               ( Ast.imply a b )
# 1140 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_016 =
  fun _endpos__4_ _startpos__1_ args f ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 417 "src/Parser.mly"
                                              (
    let loc = Loc.mk_pos _startpos _endpos in
    apply_const ~loc f args )
# 1152 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_017 =
  fun _endpos__5_ _startpos__1_ i ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 420 "src/Parser.mly"
                                                (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.bitvec (Ast.BV3 (int_of_string i)) []) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for bv3, not %s" i
  )
# 1166 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_018 =
  fun _endpos__5_ _startpos__1_ i ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 425 "src/Parser.mly"
                                                (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.bitvec (Ast.BV0 (int_of_string i)) []) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for bv0, not %s" i
  )
# 1180 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_019 =
  fun _endpos__8_ _startpos__1_ args i ->
    let _endpos = _endpos__8_ in
    let _startpos = _startpos__1_ in
    (
# 430 "src/Parser.mly"
                                                                                          (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.bitvec (Ast.Zero_extend (int_of_string i)) args) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for zero_extend, not %s" i
  )
# 1194 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_020 =
  fun _endpos__8_ _startpos__1_ args i ->
    let _endpos = _endpos__8_ in
    let _startpos = _startpos__1_ in
    (
# 435 "src/Parser.mly"
                                                                                          (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.bitvec (Ast.Sign_extend (int_of_string i)) args) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for sign_extend, not %s" i
  )
# 1208 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_021 =
  fun _endpos__9_ _startpos__1_ args i j ->
    let _endpos = _endpos__9_ in
    let _startpos = _startpos__1_ in
    (
# 440 "src/Parser.mly"
                                                                                              (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.bitvec (Ast.Extract (int_of_string i, int_of_string j)) args) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for pop, not %s %s" i j
  )
# 1222 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_022 =
  fun args f ->
    (
# 445 "src/Parser.mly"
                                                       ( Ast.ho_app_l f args )
# 1230 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_023 =
  fun arg f ->
    (
# 446 "src/Parser.mly"
                                              ( Ast.ho_app f arg )
# 1238 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_024 =
  fun attrs t ->
    (
# 447 "src/Parser.mly"
                                                   ( Ast.attr t attrs )
# 1246 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_025 =
  fun l lhs ->
    (
# 455 "src/Parser.mly"
    ( Ast.match_ lhs l )
# 1254 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_026 =
  fun body vars ->
    (
# 461 "src/Parser.mly"
    ( Ast.fun_l vars body )
# 1262 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_027 =
  fun c t ->
    (
# 466 "src/Parser.mly"
    ( Ast.is_a c t )
# 1270 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_028 =
  fun l r ->
    (
# 472 "src/Parser.mly"
    ( Ast.let_ l r )
# 1278 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_029 =
  fun t ty ->
    (
# 474 "src/Parser.mly"
    ( Ast.cast t ~ty )
# 1286 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_030 =
  fun f vars ->
    (
# 478 "src/Parser.mly"
    ( Ast.forall vars f )
# 1294 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_031 =
  fun f vars ->
    (
# 482 "src/Parser.mly"
    ( Ast.exists vars f )
# 1302 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_032 =
  fun dec ->
    (
# 139 "src/Parser.mly"
                  ( let c,l = dec in Ast.mk_cstor ~vars:[] c l )
# 1310 "src/Parser.ml"
     : (Ast.cstor))

let _menhir_action_033 =
  fun dec vars ->
    (
# 141 "src/Parser.mly"
    ( let c,l = dec in Ast.mk_cstor ~vars c l )
# 1318 "src/Parser.ml"
     : (Ast.cstor))

let _menhir_action_034 =
  fun name ty ->
    (
# 133 "src/Parser.mly"
                                            ( name, ty )
# 1326 "src/Parser.ml"
     : (string * Ast.ty))

let _menhir_action_035 =
  fun c l ->
    (
# 136 "src/Parser.mly"
                                                ( c, l )
# 1334 "src/Parser.ml"
     : (string * (string * Ast.ty) list))

let _menhir_action_036 =
  fun l ->
    (
# 144 "src/Parser.mly"
                                    ( l )
# 1342 "src/Parser.ml"
     : (Ast.cstor list))

let _menhir_action_037 =
  fun tup ->
    (
# 172 "src/Parser.mly"
                      ( let f, args, ret = tup in [], f, args, ret )
# 1350 "src/Parser.ml"
     : (string list * string * Ast.ty list * Ast.ty))

let _menhir_action_038 =
  fun tup tyvars ->
    (
# 178 "src/Parser.mly"
    ( let f, args, ret = tup in tyvars, f, args, ret )
# 1358 "src/Parser.ml"
     : (string list * string * Ast.ty list * Ast.ty))

let _menhir_action_039 =
  fun args f ret ->
    (
# 169 "src/Parser.mly"
    ( f, args, ret )
# 1366 "src/Parser.ml"
     : (string * Ast.ty list * Ast.ty))

let _menhir_action_040 =
  fun args f ret ->
    (
# 163 "src/Parser.mly"
    ( f, args, ret )
# 1374 "src/Parser.ml"
     : (string * Ast.typed_var list * Ast.ty))

let _menhir_action_041 =
  fun body tup ->
    (
# 182 "src/Parser.mly"
    (
      let f, args, ret = tup in
      Ast.mk_fun_rec ~ty_vars:[] f args ret body
    )
# 1385 "src/Parser.ml"
     : (Ast.fun_def))

let _menhir_action_042 =
  fun body l tup ->
    (
# 191 "src/Parser.mly"
    (
      let f, args, ret = tup in
      Ast.mk_fun_rec ~ty_vars:l f args ret body
    )
# 1396 "src/Parser.ml"
     : (Ast.fun_def))

let _menhir_action_043 =
  fun tup ->
    (
# 198 "src/Parser.mly"
    (
      let f, args, ret = tup in
      Ast.mk_fun_decl ~ty_vars:[] f args ret
    )
# 1407 "src/Parser.ml"
     : (Ast.typed_var Ast.fun_decl))

let _menhir_action_044 =
  fun l tup ->
    (
# 207 "src/Parser.mly"
    (
      let f, args, ret = tup in
      Ast.mk_fun_decl ~ty_vars:l f args ret
    )
# 1418 "src/Parser.ml"
     : (Ast.typed_var Ast.fun_decl))

let _menhir_action_045 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1426 "src/Parser.ml"
     : (string list))

let _menhir_action_046 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1434 "src/Parser.ml"
     : (string list))

let _menhir_action_047 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1442 "src/Parser.ml"
     : ((string * Ast.ty) list))

let _menhir_action_048 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1450 "src/Parser.ml"
     : ((string * Ast.ty) list))

let _menhir_action_049 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1458 "src/Parser.ml"
     : (Ast.prop_literal list))

let _menhir_action_050 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1466 "src/Parser.ml"
     : (Ast.prop_literal list))

let _menhir_action_051 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1474 "src/Parser.ml"
     : (Ast.statement list))

let _menhir_action_052 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1482 "src/Parser.ml"
     : (Ast.statement list))

let _menhir_action_053 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1490 "src/Parser.ml"
     : (Ast.ty list))

let _menhir_action_054 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1498 "src/Parser.ml"
     : (Ast.ty list))

let _menhir_action_055 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1506 "src/Parser.ml"
     : (Ast.typed_var list))

let _menhir_action_056 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1514 "src/Parser.ml"
     : (Ast.typed_var list))

let _menhir_action_057 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1522 "src/Parser.ml"
     : (string list))

let _menhir_action_058 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1530 "src/Parser.ml"
     : (string list))

let _menhir_action_059 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1538 "src/Parser.ml"
     : ((string * string) list))

let _menhir_action_060 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1546 "src/Parser.ml"
     : ((string * string) list))

let _menhir_action_061 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1554 "src/Parser.ml"
     : ((string * Ast.term) list))

let _menhir_action_062 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1562 "src/Parser.ml"
     : ((string * Ast.term) list))

let _menhir_action_063 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1570 "src/Parser.ml"
     : (Ast.match_branch list))

let _menhir_action_064 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1578 "src/Parser.ml"
     : (Ast.match_branch list))

let _menhir_action_065 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1586 "src/Parser.ml"
     : (Ast.cstor list))

let _menhir_action_066 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1594 "src/Parser.ml"
     : (Ast.cstor list))

let _menhir_action_067 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1602 "src/Parser.ml"
     : (Ast.cstor list list))

let _menhir_action_068 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1610 "src/Parser.ml"
     : (Ast.cstor list list))

let _menhir_action_069 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1618 "src/Parser.ml"
     : (Ast.typed_var Ast.fun_decl list))

let _menhir_action_070 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1626 "src/Parser.ml"
     : (Ast.typed_var Ast.fun_decl list))

let _menhir_action_071 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1634 "src/Parser.ml"
     : (Ast.term list))

let _menhir_action_072 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1642 "src/Parser.ml"
     : (Ast.term list))

let _menhir_action_073 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1650 "src/Parser.ml"
     : (Ast.ty list))

let _menhir_action_074 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1658 "src/Parser.ml"
     : (Ast.ty list))

let _menhir_action_075 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1666 "src/Parser.ml"
     : ((string * int) list))

let _menhir_action_076 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1674 "src/Parser.ml"
     : ((string * int) list))

let _menhir_action_077 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1682 "src/Parser.ml"
     : (Ast.typed_var list))

let _menhir_action_078 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1690 "src/Parser.ml"
     : (Ast.typed_var list))

let _menhir_action_079 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1698 "src/Parser.ml"
     : (string list))

let _menhir_action_080 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1706 "src/Parser.ml"
     : (string list))

let _menhir_action_081 =
  fun t ->
    (
# 128 "src/Parser.mly"
                  ( t )
# 1714 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_082 =
  fun l ->
    (
# 127 "src/Parser.mly"
                        (l)
# 1722 "src/Parser.ml"
     : (Ast.statement list))

let _menhir_action_083 =
  fun t ->
    (
# 129 "src/Parser.mly"
                       ( t )
# 1730 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_084 =
  fun t ->
    (
# 130 "src/Parser.mly"
                   ( t )
# 1738 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_085 =
  fun s ->
    (
# 225 "src/Parser.mly"
          ( s, true )
# 1746 "src/Parser.ml"
     : (Ast.prop_literal))

let _menhir_action_086 =
  fun _endpos__4_ _startpos__1_ not_ s ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 226 "src/Parser.mly"
                                            (
    if not_ = "not" then s, false
    else
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.parse_errorf ~loc "expected `not`, not `%s`" not_
    )
# 1761 "src/Parser.ml"
     : (Ast.prop_literal))

let _menhir_action_087 =
  fun _endpos__4_ _startpos__1_ t ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 235 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.assert_ ~loc t
    )
# 1774 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_088 =
  fun _endpos__4_ _endpos_n_ _startpos__1_ _startpos_s_ n s ->
    let td =
      let _endpos = _endpos_n_ in
      let _startpos = _startpos_s_ in
      
# 147 "src/Parser.mly"
                     (
      let loc = Loc.mk_pos _startpos _endpos in
      try
        let n = int_of_string n in
        s, n
      with Failure _ ->
        Ast.parse_errorf ~loc "expected arity to be an integer, not `%s`" n
  )
# 1792 "src/Parser.ml"
      
    in
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 240 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      let s, n = td in
      Ast.decl_sort ~loc s ~arity:n
    )
# 1804 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_089 =
  fun _endpos__9_ _startpos__1_ l tys ->
    let _endpos = _endpos__9_ in
    let _startpos = _startpos__1_ in
    (
# 249 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.data_zip ~loc tys l
    )
# 1817 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_090 =
  fun _endpos__5_ _startpos__1_ l s ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 257 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.data_zip ~loc [(s, 0)] [l]
    )
# 1830 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_091 =
  fun _endpos__4_ _startpos__1_ tup ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 262 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      let tyvars, f, args, ret = tup in
      Ast.decl_fun ~loc ~tyvars f args ret
    )
# 1844 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_092 =
  fun _endpos__5_ _startpos__1_ f ty ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 268 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.decl_fun ~loc ~tyvars:[] f [] ty
    )
# 1857 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_093 =
  fun _endpos__4_ _startpos__1_ f ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 273 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.fun_def ~loc f
    )
# 1870 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_094 =
  fun _endpos__4_ _startpos__1_ f ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 281 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.fun_rec ~loc f
    )
# 1883 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_095 =
  fun _endpos__9_ _startpos__1_ bodies decls ->
    let _endpos = _endpos__9_ in
    let _startpos = _startpos__1_ in
    (
# 290 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.funs_rec ~loc decls bodies
    )
# 1896 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_096 =
  fun _endpos__3_ _startpos__1_ ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 295 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.check_sat ~loc ()
    )
# 1909 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_097 =
  fun _endpos__6_ _startpos__1_ l ->
    let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    (
# 300 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.check_sat_assuming ~loc l
    )
# 1922 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_098 =
  fun _endpos__4_ _startpos__1_ l ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 305 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.get_value ~loc l
    )
# 1935 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_099 =
  fun _endpos__4_ _startpos__1_ args s ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 310 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      match s, args with
      | "exit", [] -> Ast.exit ~loc ()
      | "set-logic", [l] -> Ast.set_logic ~loc l
      | "set-info", [a;b] -> Ast.set_info ~loc a b
      | "set-option", l -> Ast.set_option ~loc l
      | "get-option", [a] -> Ast.get_option ~loc a
      | "get-info", [a] -> Ast.get_info ~loc a
      | "get-assertions", [] -> Ast.get_assertions ~loc ()
      | "get-assignment", [] -> Ast.get_assignment ~loc ()
      | "get-proof", [] -> Ast.get_proof ~loc ()
      | "get-model", [] -> Ast.get_model ~loc ()
      | "get-unsat-core", [] -> Ast.get_unsat_core ~loc ()
      | "get-unsat-assumptions", [] -> Ast.get_unsat_assumptions ~loc ()
      | "reset", [] -> Ast.reset ~loc ()
      | "reset-assertions", [] -> Ast.reset_assertions ~loc ()
      | "push", [x] ->
        (try Ast.push ~loc (int_of_string x) with _ ->
         Ast.parse_errorf ~loc "expected an integer argument for push, not %s" x)
      | "pop", [x] ->
        (try Ast.pop ~loc (int_of_string x) with _ ->
         Ast.parse_errorf ~loc "expected an integer argument for pop, not %s" x)
      | _ ->
        Ast.parse_errorf ~loc "expected statement"
    )
# 1970 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_100 =
  fun _endpos__1_ _startpos__1_ ->
    let _ = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 337 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.parse_errorf ~loc "expected statement"
    )
# 1983 "src/Parser.ml"
     : (Ast.statement)) in
    prerr_string "Menhir: misuse: the semantic action associated with the production\nstmt -> error\nis expected to abort the parser, but does not do so.\n";
    assert false

let _menhir_action_101 =
  fun s ->
    (
# 396 "src/Parser.mly"
             ( Ast.const s )
# 1993 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_102 =
  fun _endpos_s_ _startpos_s_ s ->
    let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    (
# 397 "src/Parser.mly"
            (
    let loc = Loc.mk_pos _startpos _endpos in
    apply_const ~loc s []
    )
# 2006 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_103 =
  fun t ->
    (
# 401 "src/Parser.mly"
                     ( t )
# 2014 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_104 =
  fun _endpos__1_ _startpos__1_ ->
    let _ = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 403 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.parse_errorf ~loc "expected term"
    )
# 2027 "src/Parser.ml"
     : (Ast.term)) in
    prerr_string "Menhir: misuse: the semantic action associated with the production\nterm -> error\nis expected to abort the parser, but does not do so.\n";
    assert false

let _menhir_action_105 =
  fun s ->
    (
# 349 "src/Parser.mly"
            (
    begin match s with
      | "Bool" -> Ast.ty_bool
      | "Real" -> Ast.ty_real
      | _ -> Ast.ty_const s
    end
    )
# 2043 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_106 =
  fun _endpos__5_ _startpos__1_ n ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 356 "src/Parser.mly"
                                                   (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.ty_bv (int_of_string n)) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for BitVec, not %s" n )
# 2056 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_107 =
  fun i j ->
    (
# 361 "src/Parser.mly"
    ( (Ast.ty_array i j) )
# 2064 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_108 =
  fun args s ->
    (
# 363 "src/Parser.mly"
    (Ast.ty_app s args )
# 2072 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_109 =
  fun tup ->
    (
# 365 "src/Parser.mly"
    (
      let args, ret = tup in
      Ast.ty_arrow_l args ret )
# 2082 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_110 =
  fun a ret ->
    (
# 370 "src/Parser.mly"
                ( [a], ret )
# 2090 "src/Parser.ml"
     : (Ast.ty list * Ast.ty))

let _menhir_action_111 =
  fun a tup ->
    (
# 371 "src/Parser.mly"
                           ( a :: fst tup, snd tup )
# 2098 "src/Parser.ml"
     : (Ast.ty list * Ast.ty))

let _menhir_action_112 =
  fun _endpos_n_ _startpos_s_ n s ->
    let ty =
      let _endpos = _endpos_n_ in
      let _startpos = _startpos_s_ in
      
# 147 "src/Parser.mly"
                     (
      let loc = Loc.mk_pos _startpos _endpos in
      try
        let n = int_of_string n in
        s, n
      with Failure _ ->
        Ast.parse_errorf ~loc "expected arity to be an integer, not `%s`" n
  )
# 2116 "src/Parser.ml"
      
    in
    (
# 157 "src/Parser.mly"
                                      ( ty )
# 2122 "src/Parser.ml"
     : (string * int))

let _menhir_action_113 =
  fun s ty ->
    (
# 374 "src/Parser.mly"
                                       ( s, ty )
# 2130 "src/Parser.ml"
     : (Ast.typed_var))

let _menhir_action_114 =
  fun s ->
    (
# 346 "src/Parser.mly"
            ( s )
# 2138 "src/Parser.ml"
     : (string))

let _menhir_action_115 =
  fun () ->
    (
# 343 "src/Parser.mly"
             ( "_" )
# 2146 "src/Parser.ml"
     : (string))

let _menhir_action_116 =
  fun s ->
    (
# 344 "src/Parser.mly"
            ( s )
# 2154 "src/Parser.ml"
     : (string))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ARRAY ->
        "ARRAY"
    | ARROW ->
        "ARROW"
    | AS ->
        "AS"
    | ASSERT ->
        "ASSERT"
    | AT ->
        "AT"
    | BANG ->
        "BANG"
    | BITVEC ->
        "BITVEC"
    | BV0 ->
        "BV0"
    | BV3 ->
        "BV3"
    | CHECK_SAT ->
        "CHECK_SAT"
    | CHECK_SAT_ASSUMING ->
        "CHECK_SAT_ASSUMING"
    | DATA ->
        "DATA"
    | DATUM ->
        "DATUM"
    | DECLARE_CONST ->
        "DECLARE_CONST"
    | DECLARE_FUN ->
        "DECLARE_FUN"
    | DECLARE_SORT ->
        "DECLARE_SORT"
    | DEFINE_FUN ->
        "DEFINE_FUN"
    | DEFINE_FUNS_REC ->
        "DEFINE_FUNS_REC"
    | DEFINE_FUN_REC ->
        "DEFINE_FUN_REC"
    | DISTINCT ->
        "DISTINCT"
    | EOI ->
        "EOI"
    | EQ ->
        "EQ"
    | EXISTS ->
        "EXISTS"
    | EXTRACT ->
        "EXTRACT"
    | FORALL ->
        "FORALL"
    | FUN ->
        "FUN"
    | GET_VALUE ->
        "GET_VALUE"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
    | IS ->
        "IS"
    | LEFT_PAREN ->
        "LEFT_PAREN"
    | LET ->
        "LET"
    | MATCH ->
        "MATCH"
    | PAR ->
        "PAR"
    | QUOTED _ ->
        "QUOTED"
    | RIGHT_PAREN ->
        "RIGHT_PAREN"
    | SIGN_EXTEND ->
        "SIGN_EXTEND"
    | WILDCARD ->
        "WILDCARD"
    | ZERO_EXTEND ->
        "ZERO_EXTEND"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_498 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_term =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOI ->
          let t = _v in
          let _v = _menhir_action_083 t in
          MenhirBox_parse_term _v
      | _ ->
          _eRR ()
  
  let _menhir_error_goto_fun_rec : type  ttv_stack ttv_result. ttv_stack -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_s ->
      match _menhir_s with
      | MenhirState456 ->
          _eRR ()
      | MenhirState445 ->
          _eRR ()
      | MenhirState342 ->
          _eRR ()
      | MenhirState275 ->
          _eRR ()
      | _ ->
          _menhir_fail ()
  
  let _menhir_error_run_315 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_fun_def_mono -> _ -> ttv_result =
    fun _menhir_stack _v ->
      let MenhirCell1_fun_def_mono (_menhir_stack, _menhir_s, tup) = _menhir_stack in
      let body = _v in
      let _ = _menhir_action_041 body tup in
      _menhir_error_goto_fun_rec _menhir_stack _menhir_s
  
  let rec _menhir_error_run_014 : type  ttv_stack ttv_result. ttv_stack -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
      let _v = _menhir_action_104 _endpos__1_ _startpos__1_ in
      _menhir_error_goto_term _menhir_stack _menhir_lexbuf _v _menhir_s
  
  and _menhir_error_goto_term : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      match _menhir_s with
      | MenhirState497 ->
          _eRR ()
      | MenhirState489 ->
          _eRR ()
      | MenhirState430 ->
          _eRR ()
      | MenhirState314 ->
          _menhir_error_run_315 _menhir_stack _v
      | MenhirState308 ->
          _eRR ()
      | MenhirState023 ->
          _eRR ()
      | MenhirState024 ->
          _eRR ()
      | MenhirState260 ->
          _eRR ()
      | MenhirState259 ->
          _menhir_error_run_260 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState255 ->
          _eRR ()
      | MenhirState252 ->
          _eRR ()
      | MenhirState251 ->
          _menhir_error_run_252 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState247 ->
          _eRR ()
      | MenhirState241 ->
          _eRR ()
      | MenhirState240 ->
          _menhir_error_run_241 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState237 ->
          _eRR ()
      | MenhirState231 ->
          _eRR ()
      | MenhirState225 ->
          _eRR ()
      | MenhirState216 ->
          _eRR ()
      | MenhirState215 ->
          _menhir_error_run_216 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState214 ->
          _menhir_error_run_215 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState013 ->
          _eRR ()
      | MenhirState073 ->
          _eRR ()
      | MenhirState106 ->
          _eRR ()
      | MenhirState206 ->
          _eRR ()
      | MenhirState205 ->
          _menhir_error_run_206 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState201 ->
          _eRR ()
      | MenhirState198 ->
          _eRR ()
      | MenhirState197 ->
          _menhir_error_run_198 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState189 ->
          _eRR ()
      | MenhirState183 ->
          _eRR ()
      | MenhirState182 ->
          _menhir_error_run_183 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState179 ->
          _eRR ()
      | MenhirState173 ->
          _eRR ()
      | MenhirState167 ->
          _eRR ()
      | MenhirState131 ->
          _eRR ()
      | MenhirState130 ->
          _menhir_error_run_131 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState129 ->
          _menhir_error_run_130 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState120 ->
          _eRR ()
      | MenhirState103 ->
          _eRR ()
      | MenhirState091 ->
          _eRR ()
      | MenhirState452 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState442 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState336 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState010 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState265 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState244 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState219 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState211 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState186 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState134 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState126 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState115 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState110 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState097 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState086 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState079 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState077 ->
          _menhir_error_run_079 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState068 ->
          _eRR ()
      | MenhirState064 ->
          _eRR ()
      | MenhirState051 ->
          _eRR ()
      | MenhirState048 ->
          _eRR ()
      | MenhirState037 ->
          _eRR ()
      | MenhirState032 ->
          _eRR ()
      | _ ->
          _menhir_fail ()
  
  and _menhir_error_run_260 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState260
  
  and _menhir_error_run_252 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState252
  
  and _menhir_error_run_241 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState241
  
  and _menhir_error_run_216 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState216
  
  and _menhir_error_run_215 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState215
  
  and _menhir_error_run_011 : type  ttv_stack ttv_result. ttv_stack -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
      let _v = _menhir_action_104 _endpos__1_ _startpos__1_ in
      _menhir_error_goto_term _menhir_stack _menhir_lexbuf _v _menhir_s
  
  and _menhir_error_run_206 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState206
  
  and _menhir_error_run_198 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState198
  
  and _menhir_error_run_183 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState183
  
  and _menhir_error_run_131 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState131
  
  and _menhir_error_run_130 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState130
  
  and _menhir_error_run_079 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState079
  
  let _menhir_run_502 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_ty =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOI ->
          let t = _v in
          let _v = _menhir_action_084 t in
          MenhirBox_parse_ty _v
      | _ ->
          _eRR ()
  
  let _menhir_run_495 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _v ->
      let l = _v in
      let _v = _menhir_action_082 l in
      MenhirBox_parse_list _v
  
  let rec _menhir_run_493 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_stmt -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_052 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState436 ->
          _menhir_run_495 _menhir_stack _v
      | MenhirState492 ->
          _menhir_run_493 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_error_run_437 : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
      let _v = _menhir_action_100 _endpos__1_ _startpos__1_ in
      _menhir_error_goto_stmt _menhir_stack _menhir_lexbuf _v _menhir_s
  
  and _menhir_error_goto_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      match _menhir_s with
      | MenhirState492 ->
          _menhir_error_run_492 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState436 ->
          _menhir_error_run_492 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState000 ->
          _eRR ()
      | _ ->
          _menhir_fail ()
  
  and _menhir_error_run_492 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_437 _menhir_stack _menhir_lexbuf MenhirState492
  
  let _menhir_run_433 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOI ->
          let t = _v in
          let _v = _menhir_action_081 t in
          MenhirBox_parse _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_004 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_005 s in
      _menhir_goto_anystr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_anystr : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState191 ->
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState439 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_192 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, a, _, _) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_006 a b in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_attr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState195
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_059 x in
          _menhir_goto_nonempty_list_attr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_191 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      let _menhir_s = MenhirState191 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENT _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_004 s in
      _menhir_goto_anystr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_nonempty_list_attr_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState248 ->
          _menhir_run_249 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState195 ->
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState190 ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_249 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_BANG, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_term (_menhir_stack, _, t) = _menhir_stack in
      let MenhirCell1_BANG (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let attrs = _v in
      let _v = _menhir_action_024 attrs t in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_composite_term : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState024 ->
          _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_211 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_211 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_211 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState452 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState442 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState336 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState265 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState259 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState251 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState244 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState240 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState219 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState214 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState211 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState205 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState197 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState186 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState182 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState134 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState129 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState130 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState497 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState489 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState430 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState314 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState308 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState260 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState255 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState252 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState247 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState241 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState237 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState231 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState225 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState216 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState206 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState201 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState198 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState189 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState183 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState179 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState173 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState167 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState131 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState120 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState091 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState032 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState048 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_265 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState265
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState265
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState265
      | RIGHT_PAREN ->
          let t = _v in
          let _v = _menhir_action_103 t in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState265
  
  and _menhir_run_012 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_101 s in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_term : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState497 ->
          _menhir_run_498 _menhir_stack _v _tok
      | MenhirState489 ->
          _menhir_run_490 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState430 ->
          _menhir_run_431 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState314 ->
          _menhir_run_315 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState308 ->
          _menhir_run_309 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState023 ->
          _menhir_run_268 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState024 ->
          _menhir_run_263 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState260 ->
          _menhir_run_261 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState259 ->
          _menhir_run_260 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState255 ->
          _menhir_run_256 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState252 ->
          _menhir_run_253 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState251 ->
          _menhir_run_252 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState247 ->
          _menhir_run_248 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState241 ->
          _menhir_run_242 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState240 ->
          _menhir_run_241 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState237 ->
          _menhir_run_238 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState231 ->
          _menhir_run_232 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState225 ->
          _menhir_run_226 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState216 ->
          _menhir_run_217 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState215 ->
          _menhir_run_216 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState214 ->
          _menhir_run_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_209 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState073 ->
          _menhir_run_209 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState106 ->
          _menhir_run_209 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState206 ->
          _menhir_run_207 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState205 ->
          _menhir_run_206 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState201 ->
          _menhir_run_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState198 ->
          _menhir_run_199 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState197 ->
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState189 ->
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState183 ->
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState182 ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState179 ->
          _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState173 ->
          _menhir_run_174 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState167 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState131 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState130 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState129 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState120 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState103 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState091 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState452 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState442 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState336 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState265 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState244 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState219 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState211 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState186 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState134 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState064 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState051 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState032 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_490 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, t) = (_endpos, _v) in
          let _v = _menhir_action_087 _endpos__4_ _startpos__1_ t in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState492 ->
          _menhir_run_492 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState436 ->
          _menhir_run_492 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_433 _menhir_stack _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_492 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_438 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState492
      | EOI ->
          let _v_0 = _menhir_action_051 () in
          _menhir_run_493 _menhir_stack _v_0
      | _ ->
          _menhir_error_run_437 _menhir_stack _menhir_lexbuf MenhirState492
  
  and _menhir_run_438 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v_1 ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState439
          | IDENT _v_2 ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState439
          | RIGHT_PAREN ->
              let _v_3 = _menhir_action_045 () in
              _menhir_run_440 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
          | _ ->
              _eRR ())
      | GET_VALUE ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState442 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | DEFINE_FUN_REC ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState445 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_276 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_285 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | DEFINE_FUNS_REC ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState449 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_318 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DEFINE_FUN ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState456 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_276 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_285 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | DECLARE_SORT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v_6 ->
                  let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | RIGHT_PAREN ->
                      let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_startpos__1_, _startpos_s_, s, _endpos__4_, _endpos_n_, n) = (_startpos, _startpos_5, _v, _endpos_9, _endpos_8, _v_6) in
                      let _v = _menhir_action_088 _endpos__4_ _endpos_n_ _startpos__1_ _startpos_s_ n s in
                      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DECLARE_FUN ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState463 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_350 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_356 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | DECLARE_CONST ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
              let _menhir_s = MenhirState467 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DATUM ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
              let _menhir_s = MenhirState471 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_375 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DATA ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState475 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_402 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | CHECK_SAT_ASSUMING ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos_14 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos_14) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WILDCARD ->
                  _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState483
              | LEFT_PAREN ->
                  _menhir_run_418 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState483
              | IDENT _v ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState483
              | RIGHT_PAREN ->
                  let _v = _menhir_action_049 () in
                  _menhir_run_484 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | CHECK_SAT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RIGHT_PAREN ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _endpos__3_) = (_startpos, _endpos) in
              let _v = _menhir_action_096 _endpos__3_ _startpos__1_ in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | ASSERT ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState489 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          _eRR ()
  
  and _menhir_run_440 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__4_, args) = (_endpos, _v) in
      let _v = _menhir_action_099 _endpos__4_ _startpos__1_ args s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_013 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState013 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _menhir_stack = MenhirCell1_WILDCARD (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | BV3 ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
          | BV0 ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer
          | _ ->
              _eRR ())
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MATCH ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LEFT_PAREN ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FORALL ->
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXISTS ->
          _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EQ ->
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DISTINCT ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BANG ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AT ->
          _menhir_run_197 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AS ->
          _menhir_run_201 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ARROW ->
          _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_016 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RIGHT_PAREN ->
              let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
              let (_endpos__5_, i) = (_endpos_0, _v) in
              let _v = _menhir_action_017 _endpos__5_ _startpos__1_ i in
              _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RIGHT_PAREN ->
              let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
              let (_endpos__5_, i) = (_endpos_0, _v) in
              let _v = _menhir_action_018 _endpos__5_ _startpos__1_ i in
              _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_101 s in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_023 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MATCH (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState023 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_024 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | BV3 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | RIGHT_PAREN ->
                      let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_startpos__1_, _endpos__5_, i) = (_startpos, _endpos_1, _v) in
                      let _v = _menhir_action_017 _endpos__5_ _startpos__1_ i in
                      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | BV0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | RIGHT_PAREN ->
                      let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_startpos__1_, _endpos__5_, i) = (_startpos, _endpos_3, _v) in
                      let _v = _menhir_action_018 _endpos__5_ _startpos__1_ i in
                      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | QUOTED _v ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState024
      | MATCH ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_MATCH (_menhir_stack, MenhirState024) in
          let _menhir_s = MenhirState032 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | LET ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_LET (_menhir_stack, MenhirState024) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState060 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState024 in
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState073 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WILDCARD ->
              let _menhir_stack = MenhirCell1_WILDCARD (_menhir_stack, _menhir_s) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | ZERO_EXTEND ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENT _v ->
                      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RIGHT_PAREN ->
                          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
                          let _menhir_s = MenhirState077 in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | QUOTED _v ->
                              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | LEFT_PAREN ->
                              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                          | IDENT _v ->
                              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | _ ->
                              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | SIGN_EXTEND ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENT _v ->
                      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RIGHT_PAREN ->
                          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
                          let _menhir_s = MenhirState086 in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | QUOTED _v ->
                              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | LEFT_PAREN ->
                              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                          | IDENT _v ->
                              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | _ ->
                              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | IS ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENT _v ->
                      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RIGHT_PAREN ->
                          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
                          let _menhir_s = MenhirState091 in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | QUOTED _v ->
                              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | LEFT_PAREN ->
                              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                          | IDENT _v ->
                              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | _ ->
                              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | EXTRACT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENT _v ->
                      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | IDENT _v ->
                          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | RIGHT_PAREN ->
                              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                              let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
                              let _menhir_s = MenhirState097 in
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | QUOTED _v ->
                                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                              | LEFT_PAREN ->
                                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                              | IDENT _v ->
                                  _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                              | _ ->
                                  _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | BV3 ->
                  _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
              | BV0 ->
                  _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer
              | _ ->
                  _eRR ())
          | QUOTED _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | MATCH ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LEFT_PAREN ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FUN ->
              _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FORALL ->
              _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXISTS ->
              _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EQ ->
              _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DISTINCT ->
              _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BANG ->
              _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | AT ->
              _menhir_run_197 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | AS ->
              _menhir_run_201 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ARROW ->
              _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | IF ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_IF (_menhir_stack, MenhirState024) in
          let _menhir_s = MenhirState214 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_25 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v_26 ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState024, _v, _startpos_25, _endpos) in
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_26 MenhirState219
          | LEFT_PAREN ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState024, _v, _startpos_25, _endpos) in
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState219
          | IDENT _v_27 ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState024, _v, _startpos_25, _endpos) in
              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v_27 MenhirState219
          | RIGHT_PAREN ->
              let _v =
                let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_25, _v) in
                _menhir_action_102 _endpos_s_ _startpos_s_ s
              in
              _menhir_run_263 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState024, _v, _startpos_25, _endpos) in
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState219)
      | FUN ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_FUN (_menhir_stack, MenhirState024) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState223 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | FORALL ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_FORALL (_menhir_stack, MenhirState024) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState229 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | EXISTS ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_EXISTS (_menhir_stack, MenhirState024) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState235 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | EQ ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_EQ (_menhir_stack, MenhirState024) in
          let _menhir_s = MenhirState240 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | DISTINCT ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_DISTINCT (_menhir_stack, MenhirState024) in
          let _menhir_s = MenhirState244 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | BANG ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_BANG (_menhir_stack, MenhirState024) in
          let _menhir_s = MenhirState247 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | AT ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_AT (_menhir_stack, MenhirState024) in
          let _menhir_s = MenhirState251 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | AS ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_AS (_menhir_stack, MenhirState024) in
          let _menhir_s = MenhirState255 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | ARROW ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell1_ARROW (_menhir_stack, MenhirState024) in
          let _menhir_s = MenhirState259 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState024
  
  and _menhir_run_033 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_102 _endpos_s_ _startpos_s_ s in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_061 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_115 () in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let s = _v in
            _menhir_action_116 s
          in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState061 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState064
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState064
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState064
  
  and _menhir_run_078 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_102 _endpos_s_ _startpos_s_ s in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_100 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState101 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState106 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _menhir_stack = MenhirCell1_WILDCARD (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ZERO_EXTEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | RIGHT_PAREN ->
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
                      let _menhir_s = MenhirState110 in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | QUOTED _v ->
                          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | LEFT_PAREN ->
                          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | IDENT _v ->
                          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | _ ->
                          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | SIGN_EXTEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | RIGHT_PAREN ->
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
                      let _menhir_s = MenhirState115 in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | QUOTED _v ->
                          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | LEFT_PAREN ->
                          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | IDENT _v ->
                          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | _ ->
                          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | IS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | RIGHT_PAREN ->
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
                      let _menhir_s = MenhirState120 in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | QUOTED _v ->
                          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | LEFT_PAREN ->
                          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | IDENT _v ->
                          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | _ ->
                          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | EXTRACT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENT _v ->
                      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RIGHT_PAREN ->
                          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
                          let _menhir_s = MenhirState126 in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | QUOTED _v ->
                              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | LEFT_PAREN ->
                              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                          | IDENT _v ->
                              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | _ ->
                              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | BV3 ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer
          | BV0 ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer
          | _ ->
              _eRR ())
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MATCH ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LEFT_PAREN ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FORALL ->
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXISTS ->
          _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EQ ->
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DISTINCT ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BANG ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AT ->
          _menhir_run_197 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AS ->
          _menhir_run_201 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ARROW ->
          _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_129 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState129 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_134 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState134
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState134
      | RIGHT_PAREN ->
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_102 _endpos_s_ _startpos_s_ s in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState134
  
  and _menhir_run_137 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FUN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState138 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_139 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState139 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_115 () in
      _menhir_goto_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_var : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState483 ->
          _menhir_run_422 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState423 ->
          _menhir_run_422 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState417 ->
          _menhir_run_422 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState419 ->
          _menhir_run_420 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState139 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState378 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_422 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let s = _v in
      let _v = _menhir_action_085 s in
      _menhir_goto_prop_lit _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_prop_lit : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_prop_lit (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState423
      | LEFT_PAREN ->
          _menhir_run_418 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState423
      | IDENT _v_0 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState423
      | RIGHT_PAREN ->
          let _v_1 = _menhir_action_049 () in
          _menhir_run_424 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_418 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
          let _menhir_s = MenhirState419 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WILDCARD ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_116 s in
      _menhir_goto_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_424 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_prop_lit -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_prop_lit (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_050 x xs in
      _menhir_goto_list_prop_lit_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_prop_lit_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState483 ->
          _menhir_run_484 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState417 ->
          _menhir_run_425 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState423 ->
          _menhir_run_424 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_484 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__6_) = (_v, _endpos_0) in
          let _v = _menhir_action_097 _endpos__6_ _startpos__1_ l in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_425 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__6_) = (_v, _endpos_0) in
          let _v = _menhir_action_097 _endpos__6_ _startpos__1_ l in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_420 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, not_, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (s, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_086 _endpos__4_ _startpos__1_ not_ s in
          _menhir_goto_prop_lit _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_140 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | IDENT _v_0 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState140
      | _ ->
          _eRR ()
  
  and _menhir_run_141 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | BITVEC ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | RIGHT_PAREN ->
                      let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_startpos__1_, n, _endpos__5_) = (_startpos, _v, _endpos_1) in
                      let _v = _menhir_action_106 _endpos__5_ _startpos__1_ n in
                      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
          let _menhir_s = MenhirState146 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ARROW ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState152 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ARRAY ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState158 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_ty : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState501 ->
          _menhir_run_502 _menhir_stack _v _tok
      | MenhirState467 ->
          _menhir_run_468 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState384 ->
          _menhir_run_385 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState370 ->
          _menhir_run_371 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState361 ->
          _menhir_run_362 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState358 ->
          _menhir_run_358 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState357 ->
          _menhir_run_358 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState327 ->
          _menhir_run_328 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState290 ->
          _menhir_run_307 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState303 ->
          _menhir_run_304 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState302 ->
          _menhir_run_303 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState256 ->
          _menhir_run_257 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState202 ->
          _menhir_run_203 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState140 ->
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState159 ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState158 ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState157 ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState155 ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState299 ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState296 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState148 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_468 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, f, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__5_, ty) = (_endpos, _v) in
          let _v = _menhir_action_092 _endpos__5_ _startpos__1_ f ty in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_385 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, name, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ty = _v in
          let _v = _menhir_action_034 name ty in
          let _menhir_stack = MenhirCell1_cstor_arg (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_383 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState389
          | RIGHT_PAREN ->
              let _v_0 = _menhir_action_047 () in
              _menhir_run_390 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_383 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
          let _menhir_s = MenhirState384 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_147 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_105 s in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_390 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_cstor_arg -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_cstor_arg (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_048 x xs in
      _menhir_goto_list_cstor_arg_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_cstor_arg_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState389 ->
          _menhir_run_390 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState382 ->
          _menhir_run_387 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_387 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENT (_menhir_stack, c, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_035 c l in
      _menhir_goto_cstor_dec _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_cstor_dec : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState396 ->
          _menhir_run_395 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState375 ->
          _menhir_run_395 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState380 ->
          _menhir_run_391 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_395 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let dec = _v in
      let _v = _menhir_action_032 dec in
      _menhir_goto_cstor _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_cstor : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_cstor (_menhir_stack, _menhir_s, _v) in
          _menhir_run_376 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState396
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_065 x in
          _menhir_goto_nonempty_list_cstor_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_376 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState378 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WILDCARD ->
                  _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENT _v ->
          _menhir_run_382 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_382 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_383 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState382
      | RIGHT_PAREN ->
          let _v_0 = _menhir_action_047 () in
          _menhir_run_387 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_cstor_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState396 ->
          _menhir_run_397 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState375 ->
          _menhir_run_393 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_397 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_cstor -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_cstor (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_066 x xs in
      _menhir_goto_nonempty_list_cstor_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_393 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_036 l in
      _menhir_goto_cstors _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_cstors : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState471 ->
          _menhir_run_472 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState478 ->
          _menhir_run_414 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState414 ->
          _menhir_run_414 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState410 ->
          _menhir_run_414 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState374 ->
          _menhir_run_398 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_472 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__5_) = (_v, _endpos) in
          let _v = _menhir_action_090 _endpos__5_ _startpos__1_ l s in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_414 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_cstors (_menhir_stack, _menhir_s, _v) in
          _menhir_run_375 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState414
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_067 x in
          _menhir_goto_nonempty_list_cstors_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_375 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState375 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_376 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_cstors_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState478 ->
          _menhir_run_479 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState414 ->
          _menhir_run_415 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState410 ->
          _menhir_run_411 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_479 : type  ttv_stack. ((ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_cell1_nonempty_list_ty_decl_paren_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_ty_decl_paren_ (_menhir_stack, _, tys) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__9_) = (_v, _endpos_0) in
          let _v = _menhir_action_089 _endpos__9_ _startpos__1_ l tys in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_415 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_cstors -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_cstors (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_068 x xs in
      _menhir_goto_nonempty_list_cstors_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_411 : type  ttv_stack. ((ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_cell1_nonempty_list_ty_decl_paren_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_ty_decl_paren_ (_menhir_stack, _, tys) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__9_) = (_v, _endpos_0) in
          let _v = _menhir_action_089 _endpos__9_ _startpos__1_ l tys in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_398 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__5_) = (_v, _endpos) in
          let _v = _menhir_action_090 _endpos__5_ _startpos__1_ l s in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_391 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_var_ (_menhir_stack, _, vars) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let dec = _v in
          let _v = _menhir_action_033 dec vars in
          _menhir_goto_cstor _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_371 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, f, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__5_, ty) = (_endpos, _v) in
          let _v = _menhir_action_092 _endpos__5_ _startpos__1_ f ty in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_362 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_ty_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_list_ty_ (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, f, _, _) = _menhir_stack in
      let ret = _v in
      let _v = _menhir_action_039 args f ret in
      _menhir_goto_fun_decl_mono _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_fun_decl_mono : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState463 ->
          _menhir_run_366 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState349 ->
          _menhir_run_366 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState355 ->
          _menhir_run_363 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_366 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let tup = _v in
      let _v = _menhir_action_037 tup in
      _menhir_goto_fun_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_fun_decl : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState463 ->
          _menhir_run_464 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState349 ->
          _menhir_run_367 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_464 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (tup, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_091 _endpos__4_ _startpos__1_ tup in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_367 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (tup, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_091 _endpos__4_ _startpos__1_ tup in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_363 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RIGHT_PAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_list_tyvar_ (_menhir_stack, _, tyvars) = _menhir_stack in
              let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
              let tup = _v in
              let _v = _menhir_action_038 tup tyvars in
              _menhir_goto_fun_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_358 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState358
      | IDENT _v_0 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState358
      | RIGHT_PAREN ->
          let _v_1 = _menhir_action_053 () in
          _menhir_run_359 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_359 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ty (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_054 x xs in
      _menhir_goto_list_ty_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_ty_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState357 ->
          _menhir_run_360 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState358 ->
          _menhir_run_359 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_360 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_ty_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState361 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_328 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_list_typed_var_ (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, f, _, _) = _menhir_stack in
      let ret = _v in
      let _v = _menhir_action_040 args f ret in
      _menhir_goto_fun_def_mono _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_fun_def_mono : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState318 ->
          _menhir_run_332 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState323 ->
          _menhir_run_329 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState456 ->
          _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState445 ->
          _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState342 ->
          _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState275 ->
          _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState284 ->
          _menhir_run_308 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_332 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let tup = _v in
          let _v = _menhir_action_043 tup in
          _menhir_goto_funs_rec_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_funs_rec_decl : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_funs_rec_decl (_menhir_stack, _menhir_s, _v) in
          _menhir_run_318 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState340
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_069 x in
          _menhir_goto_nonempty_list_funs_rec_decl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_318 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR ->
          let _menhir_stack = MenhirCell1_PAR (_menhir_stack, MenhirState318) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos_0) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  _menhir_run_279 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState320
              | RIGHT_PAREN ->
                  let _v = _menhir_action_057 () in
                  _menhir_run_321 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState320
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENT _v ->
          _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState318
      | _ ->
          _eRR ()
  
  and _menhir_run_279 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_114 s in
      let _menhir_stack = MenhirCell1_tyvar (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_279 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState280
      | RIGHT_PAREN ->
          let _v_1 = _menhir_action_057 () in
          _menhir_run_281 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_281 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_tyvar -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_tyvar (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_058 x xs in
      _menhir_goto_list_tyvar_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_tyvar_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState352 ->
          _menhir_run_353 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState320 ->
          _menhir_run_321 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState278 ->
          _menhir_run_282 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState280 ->
          _menhir_run_281 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_353 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_tyvar_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState355 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_356 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_356 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState357
          | IDENT _v_1 ->
              _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState357
          | RIGHT_PAREN ->
              let _v_2 = _menhir_action_053 () in
              _menhir_run_360 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState357
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_321 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_PAR _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_tyvar_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState323 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_324 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState325
          | RIGHT_PAREN ->
              let _v_1 = _menhir_action_055 () in
              _menhir_run_326 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState325
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_326 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState327 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_282 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_tyvar_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState284 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_285 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_285 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState286
          | RIGHT_PAREN ->
              let _v_1 = _menhir_action_055 () in
              _menhir_run_289 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState286
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_289 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WILDCARD ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | BITVEC ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENT _v_0 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RIGHT_PAREN ->
                          let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let _v_4 =
                            let (_startpos__1_, n, _endpos__5_) = (_startpos, _v_0, _endpos_3) in
                            _menhir_action_106 _endpos__5_ _startpos__1_ n
                          in
                          _menhir_run_307 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | IDENT _v_5 ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState290, _startpos) in
              let _v = _v_5 in
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
              let _menhir_s = MenhirState296 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | ARROW ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState290, _startpos) in
              let _menhir_s = MenhirState299 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | ARRAY ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState290, _startpos) in
              let _menhir_s = MenhirState302 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENT _v_11 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v_13 =
            let s = _v_11 in
            _menhir_action_105 s
          in
          _menhir_run_307 _menhir_stack _menhir_lexbuf _menhir_lexer _v_13 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_307 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_list_typed_var_ (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, f, _, _) = _menhir_stack in
      let ret = _v in
      let _v = _menhir_action_040 args f ret in
      _menhir_goto_fun_def_mono _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_nonempty_list_funs_rec_decl_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState449 ->
          _menhir_run_450 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState340 ->
          _menhir_run_341 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState317 ->
          _menhir_run_334 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_450 : type  ttv_stack. ((ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_funs_rec_decl_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState452 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          _eRR ()
  
  and _menhir_run_341 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_funs_rec_decl -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_funs_rec_decl (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_070 x xs in
      _menhir_goto_nonempty_list_funs_rec_decl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_334 : type  ttv_stack. ((ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_parse) _menhir_state -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_funs_rec_decl_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState336 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          _eRR ()
  
  and _menhir_run_329 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_PAR _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RIGHT_PAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_list_tyvar_ (_menhir_stack, _, l) = _menhir_stack in
              let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_PAR (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
              let tup = _v in
              let _v = _menhir_action_044 l tup in
              _menhir_goto_funs_rec_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_314 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_fun_def_mono (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState314
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState314
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState314
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState314
  
  and _menhir_run_308 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_fun_def_mono (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState308
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState308
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState308
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState308
  
  and _menhir_run_304 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _, i) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let j = _v in
          let _v = _menhir_action_107 i j in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_303 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState303
      | IDENT _v_0 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState303
      | _ ->
          _eRR ()
  
  and _menhir_run_257 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AS, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_AS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ty = _v in
          let _v = _menhir_action_029 t ty in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_203 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AS, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_AS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ty = _v in
          let _v = _menhir_action_029 t ty in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_162 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_var -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_var (_menhir_stack, _, s) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ty = _v in
          let _v = _menhir_action_113 s ty in
          _menhir_goto_typed_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_typed_var : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState325 ->
          _menhir_run_287 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState287 ->
          _menhir_run_287 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState286 ->
          _menhir_run_287 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState235 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState229 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState223 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState177 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState171 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState164 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_287 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typed_var (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState287
      | RIGHT_PAREN ->
          let _v_0 = _menhir_action_055 () in
          _menhir_run_288 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_288 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_typed_var -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_typed_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_056 x xs in
      _menhir_goto_list_typed_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_typed_var_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState325 ->
          _menhir_run_326 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState286 ->
          _menhir_run_289 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState287 ->
          _menhir_run_288 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_164 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_typed_var (_menhir_stack, _menhir_s, _v) in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState164
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_077 x in
          _menhir_goto_nonempty_list_typed_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_typed_var_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState235 ->
          _menhir_run_236 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState229 ->
          _menhir_run_230 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState223 ->
          _menhir_run_224 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState177 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState171 ->
          _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState138 ->
          _menhir_run_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState164 ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_236 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState237 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_230 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState231 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_224 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState225 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_178 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState179 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_172 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState173 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_166 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState167 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_165 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_typed_var -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_typed_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_078 x xs in
      _menhir_goto_nonempty_list_typed_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_160 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _, i) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let j = _v in
          let _v = _menhir_action_107 i j in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_159 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState159
      | IDENT _v_0 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState159
      | _ ->
          _eRR ()
  
  and _menhir_run_157 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_ty as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState157
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState157
      | RIGHT_PAREN ->
          let MenhirCell1_ty (_menhir_stack, _menhir_s, a) = _menhir_stack in
          let ret = _v in
          let _v = _menhir_action_110 a ret in
          _menhir_goto_ty_arrow_args _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_ty_arrow_args : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState299 ->
          _menhir_run_300 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState157 ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState155 ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState152 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_300 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let tup = _v in
      let _v = _menhir_action_109 tup in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_156 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ty (_menhir_stack, _menhir_s, a) = _menhir_stack in
      let tup = _v in
      let _v = _menhir_action_111 a tup in
      _menhir_goto_ty_arrow_args _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_153 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let tup = _v in
      let _v = _menhir_action_109 tup in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_155 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
      | IDENT _v_0 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState155
      | _ ->
          _eRR ()
  
  and _menhir_run_148 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState148
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_073 x in
          _menhir_goto_nonempty_list_ty_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_ty_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState296 ->
          _menhir_run_297 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState146 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState148 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_297 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_108 args s in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_150 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_108 args s in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_149 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ty (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_074 x xs in
      _menhir_goto_nonempty_list_ty_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_045 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState045
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_079 x in
          _menhir_goto_nonempty_list_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_var_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState378 ->
          _menhir_run_379 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState042 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState045 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_379 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState380 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_382 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState048 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_046 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_var -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_080 x xs in
      _menhir_goto_nonempty_list_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_170 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FORALL (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState171 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_176 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXISTS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState177 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_182 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState182 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_186 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DISTINCT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState186 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_189 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BANG (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState189 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_197 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState197 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_201 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState201 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_205 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ARROW (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState205 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_263 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_011 t in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_276 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos_0) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  _menhir_run_279 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState278
              | RIGHT_PAREN ->
                  let _v = _menhir_action_057 () in
                  _menhir_run_282 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState278
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_350 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos_0) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  _menhir_run_279 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState352
              | RIGHT_PAREN ->
                  let _v = _menhir_action_057 () in
                  _menhir_run_353 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState352
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_402 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v_1 ->
              let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RIGHT_PAREN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_startpos_s_, s, _endpos_n_, n) = (_startpos_0, _v, _endpos_3, _v_1) in
                  let _v = _menhir_action_112 _endpos_n_ _startpos_s_ n s in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      let _menhir_stack = MenhirCell1_ty_decl_paren (_menhir_stack, _menhir_s, _v) in
                      _menhir_run_402 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState406
                  | RIGHT_PAREN ->
                      let x = _v in
                      let _v = _menhir_action_075 x in
                      _menhir_goto_nonempty_list_ty_decl_paren_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_ty_decl_paren_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState475 ->
          _menhir_run_476 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState401 ->
          _menhir_run_408 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState406 ->
          _menhir_run_407 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_476 : type  ttv_stack. ((ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_ty_decl_paren_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState478 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_375 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_408 : type  ttv_stack. ((ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_parse) _menhir_state -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_ty_decl_paren_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState410 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_375 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_407 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty_decl_paren -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ty_decl_paren (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_076 x xs in
      _menhir_goto_nonempty_list_ty_decl_paren_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_431 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, t) = (_endpos, _v) in
          let _v = _menhir_action_087 _endpos__4_ _startpos__1_ t in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_315 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_fun_def_mono -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_fun_def_mono (_menhir_stack, _menhir_s, tup) = _menhir_stack in
      let body = _v in
      let _v = _menhir_action_041 body tup in
      _menhir_goto_fun_rec _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_fun_rec : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState456 ->
          _menhir_run_457 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState445 ->
          _menhir_run_446 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState342 ->
          _menhir_run_343 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState275 ->
          _menhir_run_312 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_457 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, f) = (_endpos, _v) in
          let _v = _menhir_action_093 _endpos__4_ _startpos__1_ f in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_446 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, f) = (_endpos, _v) in
          let _v = _menhir_action_094 _endpos__4_ _startpos__1_ f in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_343 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, f) = (_endpos, _v) in
          let _v = _menhir_action_093 _endpos__4_ _startpos__1_ f in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_312 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, f) = (_endpos, _v) in
          let _v = _menhir_action_094 _endpos__4_ _startpos__1_ f in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_309 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_fun_def_mono -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RIGHT_PAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_fun_def_mono (_menhir_stack, _, tup) = _menhir_stack in
              let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_list_tyvar_ (_menhir_stack, _, l) = _menhir_stack in
              let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
              let body = _v in
              let _v = _menhir_action_042 body l tup in
              _menhir_goto_fun_rec _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_268 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_MATCH as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState269 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _menhir_s = MenhirState037 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
              let _menhir_s = MenhirState042 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WILDCARD ->
                  _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
          let _menhir_s = MenhirState051 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          _eRR ()
  
  and _menhir_run_261 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, a) = _menhir_stack in
          let MenhirCell1_ARROW (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let b = _v in
          let _v = _menhir_action_015 a b in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_260 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState260
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState260
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState260
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState260
  
  and _menhir_run_256 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState256
      | IDENT _v_0 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState256
      | _ ->
          _eRR ()
  
  and _menhir_run_253 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, f) = _menhir_stack in
          let MenhirCell1_AT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let arg = _v in
          let _v = _menhir_action_023 arg f in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_252 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState252
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState252
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState252
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState252
  
  and _menhir_run_248 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState248
      | _ ->
          _eRR ()
  
  and _menhir_run_242 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, a) = _menhir_stack in
          let MenhirCell1_EQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let b = _v in
          let _v = _menhir_action_014 a b in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_241 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState241
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState241
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState241
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState241
  
  and _menhir_run_238 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _, vars) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_EXISTS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let f = _v in
          let _v = _menhir_action_031 f vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_232 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _, vars) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_FORALL (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let f = _v in
          let _v = _menhir_action_030 f vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_226 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _, vars) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_026 body vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_217 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, b) = _menhir_stack in
          let MenhirCell1_term (_menhir_stack, _, a) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let c = _v in
          let _v = _menhir_action_012 a b c in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_216 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState216
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState216
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState216
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState216
  
  and _menhir_run_215 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState215
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState215
      | IDENT _v_1 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState215
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState215
  
  and _menhir_run_209 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_011 t in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_207 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, a) = _menhir_stack in
          let MenhirCell1_ARROW (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let b = _v in
          let _v = _menhir_action_015 a b in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_206 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState206
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState206
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState206
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState206
  
  and _menhir_run_202 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | IDENT _v_0 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState202
      | _ ->
          _eRR ()
  
  and _menhir_run_199 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, f) = _menhir_stack in
          let MenhirCell1_AT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let arg = _v in
          let _v = _menhir_action_023 arg f in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_198 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState198
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState198
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState198
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState198
  
  and _menhir_run_190 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState190
      | _ ->
          _eRR ()
  
  and _menhir_run_184 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, a) = _menhir_stack in
          let MenhirCell1_EQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let b = _v in
          let _v = _menhir_action_014 a b in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_183 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState183
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState183
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState183
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState183
  
  and _menhir_run_180 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _, vars) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_EXISTS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let f = _v in
          let _v = _menhir_action_031 f vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_174 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _, vars) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_FORALL (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let f = _v in
          let _v = _menhir_action_030 f vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_168 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _, vars) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_FUN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let body = _v in
          let _v = _menhir_action_026 body vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_132 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, b) = _menhir_stack in
          let MenhirCell1_term (_menhir_stack, _, a) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let c = _v in
          let _v = _menhir_action_012 a b c in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState131
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | IDENT _v_1 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState131
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState131
  
  and _menhir_run_130 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState130
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | IDENT _v_1 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState130
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState130
  
  and _menhir_run_121 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_IDENT (_menhir_stack, c, _, _) = _menhir_stack in
          let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_027 c t in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_binding_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_binding_ (_menhir_stack, _, l) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let r = _v in
          let _v = _menhir_action_028 l r in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_IDENT (_menhir_stack, c, _, _) = _menhir_stack in
          let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_027 c t in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState079
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState079
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_071 x in
          _menhir_goto_nonempty_list_term_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState079
  
  and _menhir_goto_nonempty_list_term_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState452 ->
          _menhir_run_453 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState442 ->
          _menhir_run_443 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState336 ->
          _menhir_run_337 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState010 ->
          _menhir_run_273 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState265 ->
          _menhir_run_266 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState244 ->
          _menhir_run_245 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState219 ->
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState211 ->
          _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState186 ->
          _menhir_run_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState134 ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState126 ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState115 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState097 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState086 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState077 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState079 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_453 : type  ttv_stack. ((ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_cell1_nonempty_list_funs_rec_decl_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_funs_rec_decl_ (_menhir_stack, _, decls) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__9_, bodies) = (_endpos_0, _v) in
          let _v = _menhir_action_095 _endpos__9_ _startpos__1_ bodies decls in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_443 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (l, _endpos__4_) = (_v, _endpos) in
      let _v = _menhir_action_098 _endpos__4_ _startpos__1_ l in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_337 : type  ttv_stack. ((ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_cell1_nonempty_list_funs_rec_decl_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_funs_rec_decl_ (_menhir_stack, _, decls) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__9_, bodies) = (_endpos_0, _v) in
          let _v = _menhir_action_095 _endpos__9_ _startpos__1_ bodies decls in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_273 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (l, _endpos__4_) = (_v, _endpos) in
      let _v = _menhir_action_098 _endpos__4_ _startpos__1_ l in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_266 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_composite_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_composite_term (_menhir_stack, _, f) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_022 args f in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_245 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_DISTINCT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_DISTINCT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_013 l in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_220 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _, f, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__4_, args) = (_endpos, _v) in
      let _v = _menhir_action_016 _endpos__4_ _startpos__1_ args f in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_212 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_composite_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_composite_term (_menhir_stack, _, f) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_022 args f in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_187 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_DISTINCT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_DISTINCT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_013 l in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_135 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _, f, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__4_, args) = (_endpos, _v) in
      let _v = _menhir_action_016 _endpos__4_ _startpos__1_ args f in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_127 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, j, _, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__9_) = (_v, _endpos) in
      let _v = _menhir_action_021 _endpos__9_ _startpos__1_ args i j in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_116 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__8_) = (_v, _endpos) in
      let _v = _menhir_action_020 _endpos__8_ _startpos__1_ args i in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_111 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__8_) = (_v, _endpos) in
      let _v = _menhir_action_019 _endpos__8_ _startpos__1_ args i in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_098 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, j, _, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__9_) = (_v, _endpos) in
      let _v = _menhir_action_021 _endpos__9_ _startpos__1_ args i j in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_087 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__8_) = (_v, _endpos) in
      let _v = _menhir_action_020 _endpos__8_ _startpos__1_ args i in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_082 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__8_) = (_v, _endpos) in
      let _v = _menhir_action_019 _endpos__8_ _startpos__1_ args i in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_080 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_term (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_072 x xs in
      _menhir_goto_nonempty_list_term_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_069 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_binding_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_binding_ (_menhir_stack, _, l) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let r = _v in
          let _v = _menhir_action_028 l r in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_var -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_var (_menhir_stack, _, v) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_007 t v in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _menhir_stack = MenhirCell1_binding (_menhir_stack, _menhir_s, _v) in
              _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
          | RIGHT_PAREN ->
              let x = _v in
              let _v = _menhir_action_061 x in
              _menhir_goto_nonempty_list_binding_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_binding_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState101 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState071 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState060 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_102 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_binding_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState103 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_072 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_binding -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_binding (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_062 x xs in
      _menhir_goto_nonempty_list_binding_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_067 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_binding_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState068 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_052 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, c, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let rhs = _v in
          let _v = _menhir_action_008 c rhs in
          _menhir_goto_case _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_case : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_case (_menhir_stack, _menhir_s, _v) in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_063 x in
          _menhir_goto_nonempty_list_case_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_case_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState269 ->
          _menhir_run_270 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState035 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_270 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_MATCH, ttv_result) _menhir_cell1_term _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_term (_menhir_stack, _, lhs) = _menhir_stack in
          let MenhirCell1_MATCH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let l = _v in
          let _v = _menhir_action_025 l lhs in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_case -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_case (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_064 x xs in
      _menhir_goto_nonempty_list_case_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_054 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_MATCH, ttv_result) _menhir_cell1_term _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_term (_menhir_stack, _, lhs) = _menhir_stack in
          let MenhirCell1_MATCH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let l = _v in
          let _v = _menhir_action_025 l lhs in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN _menhir_cell0_IDENT, ttv_result) _menhir_cell1_nonempty_list_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_var_ (_menhir_stack, _, vars) = _menhir_stack in
          let MenhirCell0_IDENT (_menhir_stack, c, _, _) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let rhs = _v in
          let _v = _menhir_action_009 c rhs vars in
          _menhir_goto_case _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let rhs = _v in
          let _v = _menhir_action_010 rhs in
          _menhir_goto_case _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_MATCH as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState035 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_211 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState211
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState211
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState211
      | RIGHT_PAREN ->
          let t = _v in
          let _v = _menhir_action_103 t in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState211
  
  and _menhir_run_081 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let t = _v in
      let _v = _menhir_action_103 t in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_040 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let t = _v in
      let _v = _menhir_action_103 t in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_196 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_attr -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_attr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_060 x xs in
      _menhir_goto_nonempty_list_attr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_193 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_BANG, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_term (_menhir_stack, _, t) = _menhir_stack in
      let MenhirCell1_BANG (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let attrs = _v in
      let _v = _menhir_action_024 attrs t in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_008 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_anystr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState008
      | IDENT _v_1 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState008
      | RIGHT_PAREN ->
          let _v_2 = _menhir_action_045 () in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_anystr -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_anystr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_046 x xs in
      _menhir_goto_list_anystr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_anystr_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState439 ->
          _menhir_run_440 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState008 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState003 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_006 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__4_, args) = (_endpos, _v) in
      let _v = _menhir_action_099 _endpos__4_ _startpos__1_ args s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | QUOTED _v_1 ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState003
              | IDENT _v_2 ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState003
              | RIGHT_PAREN ->
                  let _v_3 = _menhir_action_045 () in
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
              | _ ->
                  _eRR ())
          | GET_VALUE ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _menhir_s = MenhirState010 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | QUOTED _v ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LEFT_PAREN ->
                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
          | DEFINE_FUN_REC ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _menhir_s = MenhirState275 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_276 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_285 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | DEFINE_FUNS_REC ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
                  let _menhir_s = MenhirState317 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      _menhir_run_318 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | DEFINE_FUN ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _menhir_s = MenhirState342 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_276 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_285 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | DECLARE_SORT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENT _v_6 ->
                      let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RIGHT_PAREN ->
                          let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let _v =
                            let (_startpos__1_, _startpos_s_, s, _endpos__4_, _endpos_n_, n) = (_startpos, _startpos_5, _v, _endpos_9, _endpos_8, _v_6) in
                            _menhir_action_088 _endpos__4_ _endpos_n_ _startpos__1_ _startpos_s_ n s
                          in
                          _menhir_run_433 _menhir_stack _v _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | DECLARE_FUN ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _menhir_s = MenhirState349 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_350 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_356 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | DECLARE_CONST ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                  let _menhir_s = MenhirState370 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | IDENT _v ->
                      _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | DATUM ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
                  let _menhir_s = MenhirState374 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      _menhir_run_375 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | DATA ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
                  let _menhir_s = MenhirState401 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      _menhir_run_402 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | CHECK_SAT_ASSUMING ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  let _startpos_14 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos_14) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | WILDCARD ->
                      _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState417
                  | LEFT_PAREN ->
                      _menhir_run_418 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState417
                  | IDENT _v ->
                      _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState417
                  | RIGHT_PAREN ->
                      let _v = _menhir_action_049 () in
                      _menhir_run_425 _menhir_stack _menhir_lexbuf _menhir_lexer _v
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | CHECK_SAT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RIGHT_PAREN ->
                  let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v =
                    let (_startpos__1_, _endpos__3_) = (_startpos, _endpos) in
                    _menhir_action_096 _endpos__3_ _startpos__1_
                  in
                  _menhir_run_433 _menhir_stack _v _tok
              | _ ->
                  _eRR ())
          | ASSERT ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _menhir_s = MenhirState430 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | QUOTED _v ->
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LEFT_PAREN ->
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
          | _ ->
              _eRR ())
      | _ ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _ =
            let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
            _menhir_action_100 _endpos__1_ _startpos__1_
          in
          _eRR ()
  
  let _menhir_run_436 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_438 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState436
      | EOI ->
          let _v = _menhir_action_051 () in
          _menhir_run_495 _menhir_stack _v
      | _ ->
          _menhir_error_run_437 _menhir_stack _menhir_lexbuf MenhirState436
  
  let _menhir_run_497 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState497 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  let _menhir_run_501 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_ty =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState501 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
end

let parse_ty =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_parse_ty v = _menhir_run_501 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let parse_term =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_parse_term v = _menhir_run_497 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let parse_list =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_parse_list v = _menhir_run_436 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let parse =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_parse v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

# 484 "src/Parser.mly"
  

# 7466 "src/Parser.ml"
