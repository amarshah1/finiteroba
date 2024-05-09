
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
# 116 "src/Parser.mly"
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
# 115 "src/Parser.mly"
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

# 126 "src/Parser.ml"

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

  | MenhirState016 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_MATCH, 'r) _menhir_state
    (** State 016.
        Stack shape : LEFT_PAREN MATCH.
        Start symbol: <undetermined>. *)

  | MenhirState017 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 017.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState018 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_MATCH, 'r) _menhir_state
    (** State 018.
        Stack shape : LEFT_PAREN MATCH.
        Start symbol: <undetermined>. *)

  | MenhirState021 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_MATCH, 'r) _menhir_cell1_term _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 021.
        Stack shape : LEFT_PAREN MATCH term LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState023 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 023.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState028 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 028.
        Stack shape : LEFT_PAREN LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState031 : (('s, 'r) _menhir_cell1_var, 'r) _menhir_state
    (** State 031.
        Stack shape : var.
        Start symbol: <undetermined>. *)

  | MenhirState034 : ((('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_cell1_nonempty_list_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 034.
        Stack shape : LEFT_PAREN LEFT_PAREN IDENT nonempty_list(var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState037 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 037.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState043 : (('s, 'r) _menhir_cell1_case, 'r) _menhir_state
    (** State 043.
        Stack shape : case.
        Start symbol: <undetermined>. *)

  | MenhirState046 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 046.
        Stack shape : LEFT_PAREN LET LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState047 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 047.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState050 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_var, 'r) _menhir_state
    (** State 050.
        Stack shape : LEFT_PAREN var.
        Start symbol: <undetermined>. *)

  | MenhirState054 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_binding_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 054.
        Stack shape : LEFT_PAREN LET LEFT_PAREN nonempty_list(binding) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState057 : (('s, 'r) _menhir_cell1_binding, 'r) _menhir_state
    (** State 057.
        Stack shape : binding.
        Start symbol: <undetermined>. *)

  | MenhirState059 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 059.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState063 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 063.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState065 : (('s, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 065.
        Stack shape : term.
        Start symbol: <undetermined>. *)

  | MenhirState072 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 072.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState077 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 077.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState083 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 083.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState087 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 087.
        Stack shape : LEFT_PAREN LET LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState089 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_binding_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 089.
        Stack shape : LEFT_PAREN LET LEFT_PAREN nonempty_list(binding) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState092 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 092.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState096 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 096.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState101 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 101.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState106 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 106.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState112 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 112.
        Stack shape : LEFT_PAREN LEFT_PAREN WILDCARD IDENT IDENT RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState115 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_state
    (** State 115.
        Stack shape : LEFT_PAREN IF.
        Start symbol: <undetermined>. *)

  | MenhirState116 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 116.
        Stack shape : LEFT_PAREN IF term.
        Start symbol: <undetermined>. *)

  | MenhirState117 : ((((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_term, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 117.
        Stack shape : LEFT_PAREN IF term term.
        Start symbol: <undetermined>. *)

  | MenhirState120 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IDENT, 'r) _menhir_state
    (** State 120.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState124 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 124.
        Stack shape : LEFT_PAREN FUN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState125 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 125.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState126 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_var, 'r) _menhir_state
    (** State 126.
        Stack shape : LEFT_PAREN var.
        Start symbol: <undetermined>. *)

  | MenhirState132 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 132.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState134 : (('s, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 134.
        Stack shape : ty.
        Start symbol: <undetermined>. *)

  | MenhirState138 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 138.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState141 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 141.
        Stack shape : LEFT_PAREN ty.
        Start symbol: <undetermined>. *)

  | MenhirState143 : ((('s, 'r) _menhir_cell1_ty, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 143.
        Stack shape : ty ty.
        Start symbol: <undetermined>. *)

  | MenhirState144 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 144.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState145 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 145.
        Stack shape : LEFT_PAREN ty.
        Start symbol: <undetermined>. *)

  | MenhirState150 : (('s, 'r) _menhir_cell1_typed_var, 'r) _menhir_state
    (** State 150.
        Stack shape : typed_var.
        Start symbol: <undetermined>. *)

  | MenhirState153 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 153.
        Stack shape : LEFT_PAREN FUN LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState157 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 157.
        Stack shape : LEFT_PAREN FORALL LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState159 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 159.
        Stack shape : LEFT_PAREN FORALL LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState163 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 163.
        Stack shape : LEFT_PAREN EXISTS LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState165 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 165.
        Stack shape : LEFT_PAREN EXISTS LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState168 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EQ, 'r) _menhir_state
    (** State 168.
        Stack shape : LEFT_PAREN EQ.
        Start symbol: <undetermined>. *)

  | MenhirState169 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EQ, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 169.
        Stack shape : LEFT_PAREN EQ term.
        Start symbol: <undetermined>. *)

  | MenhirState172 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_DISTINCT, 'r) _menhir_state
    (** State 172.
        Stack shape : LEFT_PAREN DISTINCT.
        Start symbol: <undetermined>. *)

  | MenhirState175 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_state
    (** State 175.
        Stack shape : LEFT_PAREN BANG.
        Start symbol: <undetermined>. *)

  | MenhirState176 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 176.
        Stack shape : LEFT_PAREN BANG term.
        Start symbol: <undetermined>. *)

  | MenhirState177 : (('s, 'r) _menhir_cell1_IDENT, 'r) _menhir_state
    (** State 177.
        Stack shape : IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState181 : (('s, 'r) _menhir_cell1_attr, 'r) _menhir_state
    (** State 181.
        Stack shape : attr.
        Start symbol: <undetermined>. *)

  | MenhirState183 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AT, 'r) _menhir_state
    (** State 183.
        Stack shape : LEFT_PAREN AT.
        Start symbol: <undetermined>. *)

  | MenhirState184 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AT, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 184.
        Stack shape : LEFT_PAREN AT term.
        Start symbol: <undetermined>. *)

  | MenhirState187 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AS, 'r) _menhir_state
    (** State 187.
        Stack shape : LEFT_PAREN AS.
        Start symbol: <undetermined>. *)

  | MenhirState188 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AS, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 188.
        Stack shape : LEFT_PAREN AS term.
        Start symbol: <undetermined>. *)

  | MenhirState191 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ARROW, 'r) _menhir_state
    (** State 191.
        Stack shape : LEFT_PAREN ARROW.
        Start symbol: <undetermined>. *)

  | MenhirState192 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ARROW, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 192.
        Stack shape : LEFT_PAREN ARROW term.
        Start symbol: <undetermined>. *)

  | MenhirState197 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_composite_term, 'r) _menhir_state
    (** State 197.
        Stack shape : LEFT_PAREN composite_term.
        Start symbol: <undetermined>. *)

  | MenhirState200 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_state
    (** State 200.
        Stack shape : LEFT_PAREN IF.
        Start symbol: <undetermined>. *)

  | MenhirState201 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 201.
        Stack shape : LEFT_PAREN IF term.
        Start symbol: <undetermined>. *)

  | MenhirState202 : ((((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_term, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 202.
        Stack shape : LEFT_PAREN IF term term.
        Start symbol: <undetermined>. *)

  | MenhirState205 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_IDENT, 'r) _menhir_state
    (** State 205.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState209 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 209.
        Stack shape : LEFT_PAREN FUN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState211 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 211.
        Stack shape : LEFT_PAREN FUN LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState215 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 215.
        Stack shape : LEFT_PAREN FORALL LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState217 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 217.
        Stack shape : LEFT_PAREN FORALL LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState221 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 221.
        Stack shape : LEFT_PAREN EXISTS LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState223 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 223.
        Stack shape : LEFT_PAREN EXISTS LEFT_PAREN nonempty_list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState226 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EQ, 'r) _menhir_state
    (** State 226.
        Stack shape : LEFT_PAREN EQ.
        Start symbol: <undetermined>. *)

  | MenhirState227 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_EQ, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 227.
        Stack shape : LEFT_PAREN EQ term.
        Start symbol: <undetermined>. *)

  | MenhirState230 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_DISTINCT, 'r) _menhir_state
    (** State 230.
        Stack shape : LEFT_PAREN DISTINCT.
        Start symbol: <undetermined>. *)

  | MenhirState233 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_state
    (** State 233.
        Stack shape : LEFT_PAREN BANG.
        Start symbol: <undetermined>. *)

  | MenhirState234 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 234.
        Stack shape : LEFT_PAREN BANG term.
        Start symbol: <undetermined>. *)

  | MenhirState237 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AT, 'r) _menhir_state
    (** State 237.
        Stack shape : LEFT_PAREN AT.
        Start symbol: <undetermined>. *)

  | MenhirState238 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AT, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 238.
        Stack shape : LEFT_PAREN AT term.
        Start symbol: <undetermined>. *)

  | MenhirState241 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AS, 'r) _menhir_state
    (** State 241.
        Stack shape : LEFT_PAREN AS.
        Start symbol: <undetermined>. *)

  | MenhirState242 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_AS, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 242.
        Stack shape : LEFT_PAREN AS term.
        Start symbol: <undetermined>. *)

  | MenhirState245 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ARROW, 'r) _menhir_state
    (** State 245.
        Stack shape : LEFT_PAREN ARROW.
        Start symbol: <undetermined>. *)

  | MenhirState246 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ARROW, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 246.
        Stack shape : LEFT_PAREN ARROW term.
        Start symbol: <undetermined>. *)

  | MenhirState251 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_composite_term, 'r) _menhir_state
    (** State 251.
        Stack shape : LEFT_PAREN composite_term.
        Start symbol: <undetermined>. *)

  | MenhirState255 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_MATCH, 'r) _menhir_cell1_term _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 255.
        Stack shape : LEFT_PAREN MATCH term LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState261 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 261.
        Stack shape : LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState264 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 264.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState266 : (('s, 'r) _menhir_cell1_tyvar, 'r) _menhir_state
    (** State 266.
        Stack shape : tyvar.
        Start symbol: <undetermined>. *)

  | MenhirState270 : ((('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 270.
        Stack shape : LEFT_PAREN LEFT_PAREN list(tyvar) RIGHT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState272 : (('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 272.
        Stack shape : IDENT LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState273 : (('s, 'r) _menhir_cell1_typed_var, 'r) _menhir_state
    (** State 273.
        Stack shape : typed_var.
        Start symbol: <undetermined>. *)

  | MenhirState276 : ((('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 276.
        Stack shape : IDENT LEFT_PAREN list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState282 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 282.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState285 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 285.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState288 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 288.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState289 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 289.
        Stack shape : LEFT_PAREN ty.
        Start symbol: <undetermined>. *)

  | MenhirState294 : (((('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_fun_def_mono, 'r) _menhir_state
    (** State 294.
        Stack shape : LEFT_PAREN LEFT_PAREN list(tyvar) RIGHT_PAREN LEFT_PAREN fun_def_mono.
        Start symbol: <undetermined>. *)

  | MenhirState300 : (('s, 'r) _menhir_cell1_fun_def_mono, 'r) _menhir_state
    (** State 300.
        Stack shape : fun_def_mono.
        Start symbol: <undetermined>. *)

  | MenhirState303 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 303.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState304 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 304.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState306 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_PAR _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 306.
        Stack shape : LEFT_PAREN PAR LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState309 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_PAR _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 309.
        Stack shape : LEFT_PAREN PAR LEFT_PAREN list(tyvar) RIGHT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState311 : (('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 311.
        Stack shape : IDENT LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState313 : ((('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_typed_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 313.
        Stack shape : IDENT LEFT_PAREN list(typed_var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState322 : ((('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_cell1_nonempty_list_funs_rec_decl_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 322.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(funs_rec_decl) RIGHT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState326 : (('s, 'r) _menhir_cell1_funs_rec_decl, 'r) _menhir_state
    (** State 326.
        Stack shape : funs_rec_decl.
        Start symbol: <undetermined>. *)

  | MenhirState328 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 328.
        Stack shape : LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState335 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 335.
        Stack shape : LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState338 : ((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 338.
        Stack shape : LEFT_PAREN LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState341 : (((('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 341.
        Stack shape : LEFT_PAREN LEFT_PAREN LEFT_PAREN list(tyvar) RIGHT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState343 : (('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 343.
        Stack shape : IDENT LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState344 : (('s, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 344.
        Stack shape : ty.
        Start symbol: <undetermined>. *)

  | MenhirState347 : ((('s, 'r) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_list_ty_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 347.
        Stack shape : IDENT LEFT_PAREN list(ty) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState356 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse) _menhir_state
    (** State 356.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse. *)

  | MenhirState360 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse) _menhir_state
    (** State 360.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse. *)

  | MenhirState361 : (('s, 'r) _menhir_cell1_LEFT_PAREN, 'r) _menhir_state
    (** State 361.
        Stack shape : LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState364 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_state
    (** State 364.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState366 : ((('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, 'r) _menhir_cell1_nonempty_list_var_ _menhir_cell0_RIGHT_PAREN, 'r) _menhir_state
    (** State 366.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(var) RIGHT_PAREN.
        Start symbol: <undetermined>. *)

  | MenhirState368 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 368.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState370 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 370.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState375 : (('s, 'r) _menhir_cell1_cstor_arg, 'r) _menhir_state
    (** State 375.
        Stack shape : cstor_arg.
        Start symbol: <undetermined>. *)

  | MenhirState382 : (('s, 'r) _menhir_cell1_cstor, 'r) _menhir_state
    (** State 382.
        Stack shape : cstor.
        Start symbol: <undetermined>. *)

  | MenhirState387 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 387.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState392 : (('s, 'r) _menhir_cell1_ty_decl_paren, 'r) _menhir_state
    (** State 392.
        Stack shape : ty_decl_paren.
        Start symbol: <undetermined>. *)

  | MenhirState396 : ((('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_cell1_nonempty_list_ty_decl_paren_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 396.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(ty_decl_paren) RIGHT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState400 : (('s, 'r) _menhir_cell1_cstors, 'r) _menhir_state
    (** State 400.
        Stack shape : cstors.
        Start symbol: <undetermined>. *)

  | MenhirState403 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 403.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState405 : (('s, 'r) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 405.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState409 : (('s, 'r) _menhir_cell1_prop_lit, 'r) _menhir_state
    (** State 409.
        Stack shape : prop_lit.
        Start symbol: <undetermined>. *)

  | MenhirState416 : (('s, _menhir_box_parse) _menhir_cell1_LEFT_PAREN, _menhir_box_parse) _menhir_state
    (** State 416.
        Stack shape : LEFT_PAREN.
        Start symbol: parse. *)

  | MenhirState422 : ('s, _menhir_box_parse_list) _menhir_state
    (** State 422.
        Stack shape : .
        Start symbol: parse_list. *)

  | MenhirState425 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse_list) _menhir_state
    (** State 425.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse_list. *)

  | MenhirState428 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 428.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState431 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 431.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState435 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 435.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState438 : ((('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_cell1_nonempty_list_funs_rec_decl_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 438.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(funs_rec_decl) RIGHT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState442 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 442.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState449 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 449.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState453 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse_list) _menhir_state
    (** State 453.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse_list. *)

  | MenhirState457 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT, _menhir_box_parse_list) _menhir_state
    (** State 457.
        Stack shape : LEFT_PAREN IDENT.
        Start symbol: parse_list. *)

  | MenhirState461 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 461.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState464 : ((('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_cell1_nonempty_list_ty_decl_paren_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 464.
        Stack shape : LEFT_PAREN LEFT_PAREN nonempty_list(ty_decl_paren) RIGHT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState469 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 469.
        Stack shape : LEFT_PAREN LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState475 : (('s, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN, _menhir_box_parse_list) _menhir_state
    (** State 475.
        Stack shape : LEFT_PAREN.
        Start symbol: parse_list. *)

  | MenhirState478 : (('s, _menhir_box_parse_list) _menhir_cell1_stmt, _menhir_box_parse_list) _menhir_state
    (** State 478.
        Stack shape : stmt.
        Start symbol: parse_list. *)

  | MenhirState483 : ('s, _menhir_box_parse_term) _menhir_state
    (** State 483.
        Stack shape : .
        Start symbol: parse_term. *)

  | MenhirState487 : ('s, _menhir_box_parse_ty) _menhir_state
    (** State 487.
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
# 115 "src/Parser.mly"
       (string)
# 999 "src/Parser.ml"
) * Lexing.position * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 115 "src/Parser.mly"
       (string)
# 1006 "src/Parser.ml"
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
# 219 "src/Parser.mly"
            (s)
# 1050 "src/Parser.ml"
     : (string))

let _menhir_action_005 =
  fun s ->
    (
# 220 "src/Parser.mly"
             (s)
# 1058 "src/Parser.ml"
     : (string))

let _menhir_action_006 =
  fun a b ->
    (
# 407 "src/Parser.mly"
                     ( a,b )
# 1066 "src/Parser.ml"
     : (string * string))

let _menhir_action_007 =
  fun t v ->
    (
# 391 "src/Parser.mly"
                                        ( v, t )
# 1074 "src/Parser.ml"
     : (string * Ast.term))

let _menhir_action_008 =
  fun c rhs ->
    (
# 379 "src/Parser.mly"
    ( Ast.Match_case (c, [], rhs) )
# 1082 "src/Parser.ml"
     : (Ast.match_branch))

let _menhir_action_009 =
  fun c rhs vars ->
    (
# 384 "src/Parser.mly"
    ( Ast.Match_case (c, vars, rhs) )
# 1090 "src/Parser.ml"
     : (Ast.match_branch))

let _menhir_action_010 =
  fun rhs ->
    (
# 388 "src/Parser.mly"
    ( Ast.Match_default rhs )
# 1098 "src/Parser.ml"
     : (Ast.match_branch))

let _menhir_action_011 =
  fun t ->
    (
# 410 "src/Parser.mly"
                                  ( t )
# 1106 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_012 =
  fun a b c ->
    (
# 411 "src/Parser.mly"
                                                   ( Ast.if_ a b c )
# 1114 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_013 =
  fun l ->
    (
# 412 "src/Parser.mly"
                                            ( Ast.distinct l )
# 1122 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_014 =
  fun a b ->
    (
# 413 "src/Parser.mly"
                                            ( Ast.eq a b )
# 1130 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_015 =
  fun a b ->
    (
# 414 "src/Parser.mly"
                                               ( Ast.imply a b )
# 1138 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_016 =
  fun _endpos__4_ _startpos__1_ args f ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 415 "src/Parser.mly"
                                              (
    let loc = Loc.mk_pos _startpos _endpos in
    apply_const ~loc f args )
# 1150 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_017 =
  fun _endpos__8_ _startpos__1_ args i ->
    let _endpos = _endpos__8_ in
    let _startpos = _startpos__1_ in
    (
# 418 "src/Parser.mly"
                                                                                          (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.bitvec (Ast.Zero_extend (int_of_string i)) args) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for zero_extend, not %s" i
  )
# 1164 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_018 =
  fun _endpos__8_ _startpos__1_ args i ->
    let _endpos = _endpos__8_ in
    let _startpos = _startpos__1_ in
    (
# 423 "src/Parser.mly"
                                                                                          (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.bitvec (Ast.Sign_extend (int_of_string i)) args) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for sign_extend, not %s" i
  )
# 1178 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_019 =
  fun _endpos__9_ _startpos__1_ args i j ->
    let _endpos = _endpos__9_ in
    let _startpos = _startpos__1_ in
    (
# 428 "src/Parser.mly"
                                                                                              (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.bitvec (Ast.Extract (int_of_string i, int_of_string j)) args) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for pop, not %s %s" i j
  )
# 1192 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_020 =
  fun args f ->
    (
# 433 "src/Parser.mly"
                                                       ( Ast.ho_app_l f args )
# 1200 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_021 =
  fun arg f ->
    (
# 434 "src/Parser.mly"
                                              ( Ast.ho_app f arg )
# 1208 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_022 =
  fun attrs t ->
    (
# 435 "src/Parser.mly"
                                                   ( Ast.attr t attrs )
# 1216 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_023 =
  fun l lhs ->
    (
# 443 "src/Parser.mly"
    ( Ast.match_ lhs l )
# 1224 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_024 =
  fun body vars ->
    (
# 449 "src/Parser.mly"
    ( Ast.fun_l vars body )
# 1232 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_025 =
  fun c t ->
    (
# 454 "src/Parser.mly"
    ( Ast.is_a c t )
# 1240 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_026 =
  fun l r ->
    (
# 460 "src/Parser.mly"
    ( Ast.let_ l r )
# 1248 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_027 =
  fun t ty ->
    (
# 462 "src/Parser.mly"
    ( Ast.cast t ~ty )
# 1256 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_028 =
  fun f vars ->
    (
# 466 "src/Parser.mly"
    ( Ast.forall vars f )
# 1264 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_029 =
  fun f vars ->
    (
# 470 "src/Parser.mly"
    ( Ast.exists vars f )
# 1272 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_030 =
  fun dec ->
    (
# 137 "src/Parser.mly"
                  ( let c,l = dec in Ast.mk_cstor ~vars:[] c l )
# 1280 "src/Parser.ml"
     : (Ast.cstor))

let _menhir_action_031 =
  fun dec vars ->
    (
# 139 "src/Parser.mly"
    ( let c,l = dec in Ast.mk_cstor ~vars c l )
# 1288 "src/Parser.ml"
     : (Ast.cstor))

let _menhir_action_032 =
  fun name ty ->
    (
# 131 "src/Parser.mly"
                                            ( name, ty )
# 1296 "src/Parser.ml"
     : (string * Ast.ty))

let _menhir_action_033 =
  fun c l ->
    (
# 134 "src/Parser.mly"
                                                ( c, l )
# 1304 "src/Parser.ml"
     : (string * (string * Ast.ty) list))

let _menhir_action_034 =
  fun l ->
    (
# 142 "src/Parser.mly"
                                    ( l )
# 1312 "src/Parser.ml"
     : (Ast.cstor list))

let _menhir_action_035 =
  fun tup ->
    (
# 170 "src/Parser.mly"
                      ( let f, args, ret = tup in [], f, args, ret )
# 1320 "src/Parser.ml"
     : (string list * string * Ast.ty list * Ast.ty))

let _menhir_action_036 =
  fun tup tyvars ->
    (
# 176 "src/Parser.mly"
    ( let f, args, ret = tup in tyvars, f, args, ret )
# 1328 "src/Parser.ml"
     : (string list * string * Ast.ty list * Ast.ty))

let _menhir_action_037 =
  fun args f ret ->
    (
# 167 "src/Parser.mly"
    ( f, args, ret )
# 1336 "src/Parser.ml"
     : (string * Ast.ty list * Ast.ty))

let _menhir_action_038 =
  fun args f ret ->
    (
# 161 "src/Parser.mly"
    ( f, args, ret )
# 1344 "src/Parser.ml"
     : (string * Ast.typed_var list * Ast.ty))

let _menhir_action_039 =
  fun body tup ->
    (
# 180 "src/Parser.mly"
    (
      let f, args, ret = tup in
      Ast.mk_fun_rec ~ty_vars:[] f args ret body
    )
# 1355 "src/Parser.ml"
     : (Ast.fun_def))

let _menhir_action_040 =
  fun body l tup ->
    (
# 189 "src/Parser.mly"
    (
      let f, args, ret = tup in
      Ast.mk_fun_rec ~ty_vars:l f args ret body
    )
# 1366 "src/Parser.ml"
     : (Ast.fun_def))

let _menhir_action_041 =
  fun tup ->
    (
# 196 "src/Parser.mly"
    (
      let f, args, ret = tup in
      Ast.mk_fun_decl ~ty_vars:[] f args ret
    )
# 1377 "src/Parser.ml"
     : (Ast.typed_var Ast.fun_decl))

let _menhir_action_042 =
  fun l tup ->
    (
# 205 "src/Parser.mly"
    (
      let f, args, ret = tup in
      Ast.mk_fun_decl ~ty_vars:l f args ret
    )
# 1388 "src/Parser.ml"
     : (Ast.typed_var Ast.fun_decl))

let _menhir_action_043 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1396 "src/Parser.ml"
     : (string list))

let _menhir_action_044 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1404 "src/Parser.ml"
     : (string list))

let _menhir_action_045 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1412 "src/Parser.ml"
     : ((string * Ast.ty) list))

let _menhir_action_046 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1420 "src/Parser.ml"
     : ((string * Ast.ty) list))

let _menhir_action_047 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1428 "src/Parser.ml"
     : (Ast.prop_literal list))

let _menhir_action_048 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1436 "src/Parser.ml"
     : (Ast.prop_literal list))

let _menhir_action_049 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1444 "src/Parser.ml"
     : (Ast.statement list))

let _menhir_action_050 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1452 "src/Parser.ml"
     : (Ast.statement list))

let _menhir_action_051 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1460 "src/Parser.ml"
     : (Ast.ty list))

let _menhir_action_052 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1468 "src/Parser.ml"
     : (Ast.ty list))

let _menhir_action_053 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1476 "src/Parser.ml"
     : (Ast.typed_var list))

let _menhir_action_054 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1484 "src/Parser.ml"
     : (Ast.typed_var list))

let _menhir_action_055 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1492 "src/Parser.ml"
     : (string list))

let _menhir_action_056 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1500 "src/Parser.ml"
     : (string list))

let _menhir_action_057 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1508 "src/Parser.ml"
     : ((string * string) list))

let _menhir_action_058 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1516 "src/Parser.ml"
     : ((string * string) list))

let _menhir_action_059 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1524 "src/Parser.ml"
     : ((string * Ast.term) list))

let _menhir_action_060 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1532 "src/Parser.ml"
     : ((string * Ast.term) list))

let _menhir_action_061 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1540 "src/Parser.ml"
     : (Ast.match_branch list))

let _menhir_action_062 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1548 "src/Parser.ml"
     : (Ast.match_branch list))

let _menhir_action_063 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1556 "src/Parser.ml"
     : (Ast.cstor list))

let _menhir_action_064 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1564 "src/Parser.ml"
     : (Ast.cstor list))

let _menhir_action_065 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1572 "src/Parser.ml"
     : (Ast.cstor list list))

let _menhir_action_066 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1580 "src/Parser.ml"
     : (Ast.cstor list list))

let _menhir_action_067 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1588 "src/Parser.ml"
     : (Ast.typed_var Ast.fun_decl list))

let _menhir_action_068 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1596 "src/Parser.ml"
     : (Ast.typed_var Ast.fun_decl list))

let _menhir_action_069 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1604 "src/Parser.ml"
     : (Ast.term list))

let _menhir_action_070 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1612 "src/Parser.ml"
     : (Ast.term list))

let _menhir_action_071 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1620 "src/Parser.ml"
     : (Ast.ty list))

let _menhir_action_072 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1628 "src/Parser.ml"
     : (Ast.ty list))

let _menhir_action_073 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1636 "src/Parser.ml"
     : ((string * int) list))

let _menhir_action_074 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1644 "src/Parser.ml"
     : ((string * int) list))

let _menhir_action_075 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1652 "src/Parser.ml"
     : (Ast.typed_var list))

let _menhir_action_076 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1660 "src/Parser.ml"
     : (Ast.typed_var list))

let _menhir_action_077 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1668 "src/Parser.ml"
     : (string list))

let _menhir_action_078 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1676 "src/Parser.ml"
     : (string list))

let _menhir_action_079 =
  fun t ->
    (
# 126 "src/Parser.mly"
                  ( t )
# 1684 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_080 =
  fun l ->
    (
# 125 "src/Parser.mly"
                        (l)
# 1692 "src/Parser.ml"
     : (Ast.statement list))

let _menhir_action_081 =
  fun t ->
    (
# 127 "src/Parser.mly"
                       ( t )
# 1700 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_082 =
  fun t ->
    (
# 128 "src/Parser.mly"
                   ( t )
# 1708 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_083 =
  fun s ->
    (
# 223 "src/Parser.mly"
          ( s, true )
# 1716 "src/Parser.ml"
     : (Ast.prop_literal))

let _menhir_action_084 =
  fun _endpos__4_ _startpos__1_ not_ s ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 224 "src/Parser.mly"
                                            (
    if not_ = "not" then s, false
    else
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.parse_errorf ~loc "expected `not`, not `%s`" not_
    )
# 1731 "src/Parser.ml"
     : (Ast.prop_literal))

let _menhir_action_085 =
  fun _endpos__4_ _startpos__1_ t ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 233 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.assert_ ~loc t
    )
# 1744 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_086 =
  fun _endpos__4_ _endpos_n_ _startpos__1_ _startpos_s_ n s ->
    let td =
      let _endpos = _endpos_n_ in
      let _startpos = _startpos_s_ in
      
# 145 "src/Parser.mly"
                     (
      let loc = Loc.mk_pos _startpos _endpos in
      try
        let n = int_of_string n in
        s, n
      with Failure _ ->
        Ast.parse_errorf ~loc "expected arity to be an integer, not `%s`" n
  )
# 1762 "src/Parser.ml"
      
    in
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 238 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      let s, n = td in
      Ast.decl_sort ~loc s ~arity:n
    )
# 1774 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_087 =
  fun _endpos__9_ _startpos__1_ l tys ->
    let _endpos = _endpos__9_ in
    let _startpos = _startpos__1_ in
    (
# 247 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.data_zip ~loc tys l
    )
# 1787 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_088 =
  fun _endpos__5_ _startpos__1_ l s ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 255 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.data_zip ~loc [(s, 0)] [l]
    )
# 1800 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_089 =
  fun _endpos__4_ _startpos__1_ tup ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 260 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      let tyvars, f, args, ret = tup in
      Ast.decl_fun ~loc ~tyvars f args ret
    )
# 1814 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_090 =
  fun _endpos__5_ _startpos__1_ f ty ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 266 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.decl_fun ~loc ~tyvars:[] f [] ty
    )
# 1827 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_091 =
  fun _endpos__4_ _startpos__1_ f ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 271 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.fun_def ~loc f
    )
# 1840 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_092 =
  fun _endpos__4_ _startpos__1_ f ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 279 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.fun_rec ~loc f
    )
# 1853 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_093 =
  fun _endpos__9_ _startpos__1_ bodies decls ->
    let _endpos = _endpos__9_ in
    let _startpos = _startpos__1_ in
    (
# 288 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.funs_rec ~loc decls bodies
    )
# 1866 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_094 =
  fun _endpos__3_ _startpos__1_ ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 293 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.check_sat ~loc ()
    )
# 1879 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_095 =
  fun _endpos__6_ _startpos__1_ l ->
    let _endpos = _endpos__6_ in
    let _startpos = _startpos__1_ in
    (
# 298 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.check_sat_assuming ~loc l
    )
# 1892 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_096 =
  fun _endpos__4_ _startpos__1_ l ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 303 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.get_value ~loc l
    )
# 1905 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_097 =
  fun _endpos__4_ _startpos__1_ args s ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 308 "src/Parser.mly"
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
# 1940 "src/Parser.ml"
     : (Ast.statement))

let _menhir_action_098 =
  fun _endpos__1_ _startpos__1_ ->
    let _ = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 335 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.parse_errorf ~loc "expected statement"
    )
# 1953 "src/Parser.ml"
     : (Ast.statement)) in
    prerr_string "Menhir: misuse: the semantic action associated with the production\nstmt -> error\nis expected to abort the parser, but does not do so.\n";
    assert false

let _menhir_action_099 =
  fun s ->
    (
# 394 "src/Parser.mly"
             ( Ast.const s )
# 1963 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_100 =
  fun _endpos_s_ _startpos_s_ s ->
    let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    (
# 395 "src/Parser.mly"
            (
    let loc = Loc.mk_pos _startpos _endpos in
    apply_const ~loc s []
    )
# 1976 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_101 =
  fun t ->
    (
# 399 "src/Parser.mly"
                     ( t )
# 1984 "src/Parser.ml"
     : (Ast.term))

let _menhir_action_102 =
  fun _endpos__1_ _startpos__1_ ->
    let _ = let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 401 "src/Parser.mly"
    (
      let loc = Loc.mk_pos _startpos _endpos in
      Ast.parse_errorf ~loc "expected term"
    )
# 1997 "src/Parser.ml"
     : (Ast.term)) in
    prerr_string "Menhir: misuse: the semantic action associated with the production\nterm -> error\nis expected to abort the parser, but does not do so.\n";
    assert false

let _menhir_action_103 =
  fun s ->
    (
# 347 "src/Parser.mly"
            (
    begin match s with
      | "Bool" -> Ast.ty_bool
      | "Real" -> Ast.ty_real
      | _ -> Ast.ty_const s
    end
    )
# 2013 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_104 =
  fun _endpos__5_ _startpos__1_ n ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 354 "src/Parser.mly"
                                                   (
    let loc = Loc.mk_pos _startpos _endpos in
    try (Ast.ty_bv (int_of_string n)) with _ -> 
      Ast.parse_errorf ~loc "expected an integer argument for BitVec, not %s" n )
# 2026 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_105 =
  fun i j ->
    (
# 359 "src/Parser.mly"
    ( (Ast.ty_array i j) )
# 2034 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_106 =
  fun args s ->
    (
# 361 "src/Parser.mly"
    (Ast.ty_app s args )
# 2042 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_107 =
  fun tup ->
    (
# 363 "src/Parser.mly"
    (
      let args, ret = tup in
      Ast.ty_arrow_l args ret )
# 2052 "src/Parser.ml"
     : (Ast.ty))

let _menhir_action_108 =
  fun a ret ->
    (
# 368 "src/Parser.mly"
                ( [a], ret )
# 2060 "src/Parser.ml"
     : (Ast.ty list * Ast.ty))

let _menhir_action_109 =
  fun a tup ->
    (
# 369 "src/Parser.mly"
                           ( a :: fst tup, snd tup )
# 2068 "src/Parser.ml"
     : (Ast.ty list * Ast.ty))

let _menhir_action_110 =
  fun _endpos_n_ _startpos_s_ n s ->
    let ty =
      let _endpos = _endpos_n_ in
      let _startpos = _startpos_s_ in
      
# 145 "src/Parser.mly"
                     (
      let loc = Loc.mk_pos _startpos _endpos in
      try
        let n = int_of_string n in
        s, n
      with Failure _ ->
        Ast.parse_errorf ~loc "expected arity to be an integer, not `%s`" n
  )
# 2086 "src/Parser.ml"
      
    in
    (
# 155 "src/Parser.mly"
                                      ( ty )
# 2092 "src/Parser.ml"
     : (string * int))

let _menhir_action_111 =
  fun s ty ->
    (
# 372 "src/Parser.mly"
                                       ( s, ty )
# 2100 "src/Parser.ml"
     : (Ast.typed_var))

let _menhir_action_112 =
  fun s ->
    (
# 344 "src/Parser.mly"
            ( s )
# 2108 "src/Parser.ml"
     : (string))

let _menhir_action_113 =
  fun () ->
    (
# 341 "src/Parser.mly"
             ( "_" )
# 2116 "src/Parser.ml"
     : (string))

let _menhir_action_114 =
  fun s ->
    (
# 342 "src/Parser.mly"
            ( s )
# 2124 "src/Parser.ml"
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
  
  let _menhir_run_484 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_term =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOI ->
          let t = _v in
          let _v = _menhir_action_081 t in
          MenhirBox_parse_term _v
      | _ ->
          _eRR ()
  
  let _menhir_error_goto_fun_rec : type  ttv_stack ttv_result. ttv_stack -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_s ->
      match _menhir_s with
      | MenhirState442 ->
          _eRR ()
      | MenhirState431 ->
          _eRR ()
      | MenhirState328 ->
          _eRR ()
      | MenhirState261 ->
          _eRR ()
      | _ ->
          _menhir_fail ()
  
  let _menhir_error_run_301 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_fun_def_mono -> _ -> ttv_result =
    fun _menhir_stack _v ->
      let MenhirCell1_fun_def_mono (_menhir_stack, _menhir_s, tup) = _menhir_stack in
      let body = _v in
      let _ = _menhir_action_039 body tup in
      _menhir_error_goto_fun_rec _menhir_stack _menhir_s
  
  let rec _menhir_error_run_014 : type  ttv_stack ttv_result. ttv_stack -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
      let _v = _menhir_action_102 _endpos__1_ _startpos__1_ in
      _menhir_error_goto_term _menhir_stack _menhir_lexbuf _v _menhir_s
  
  and _menhir_error_goto_term : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      match _menhir_s with
      | MenhirState483 ->
          _eRR ()
      | MenhirState475 ->
          _eRR ()
      | MenhirState416 ->
          _eRR ()
      | MenhirState300 ->
          _menhir_error_run_301 _menhir_stack _v
      | MenhirState294 ->
          _eRR ()
      | MenhirState016 ->
          _eRR ()
      | MenhirState017 ->
          _eRR ()
      | MenhirState246 ->
          _eRR ()
      | MenhirState245 ->
          _menhir_error_run_246 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState241 ->
          _eRR ()
      | MenhirState238 ->
          _eRR ()
      | MenhirState237 ->
          _menhir_error_run_238 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState233 ->
          _eRR ()
      | MenhirState227 ->
          _eRR ()
      | MenhirState226 ->
          _menhir_error_run_227 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState223 ->
          _eRR ()
      | MenhirState217 ->
          _eRR ()
      | MenhirState211 ->
          _eRR ()
      | MenhirState202 ->
          _eRR ()
      | MenhirState201 ->
          _menhir_error_run_202 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState200 ->
          _menhir_error_run_201 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState013 ->
          _eRR ()
      | MenhirState059 ->
          _eRR ()
      | MenhirState092 ->
          _eRR ()
      | MenhirState192 ->
          _eRR ()
      | MenhirState191 ->
          _menhir_error_run_192 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState187 ->
          _eRR ()
      | MenhirState184 ->
          _eRR ()
      | MenhirState183 ->
          _menhir_error_run_184 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState175 ->
          _eRR ()
      | MenhirState169 ->
          _eRR ()
      | MenhirState168 ->
          _menhir_error_run_169 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState165 ->
          _eRR ()
      | MenhirState159 ->
          _eRR ()
      | MenhirState153 ->
          _eRR ()
      | MenhirState117 ->
          _eRR ()
      | MenhirState116 ->
          _menhir_error_run_117 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState115 ->
          _menhir_error_run_116 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState106 ->
          _eRR ()
      | MenhirState089 ->
          _eRR ()
      | MenhirState077 ->
          _eRR ()
      | MenhirState438 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState428 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState322 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState010 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState251 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState230 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState205 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState197 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState172 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState120 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState112 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState101 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState096 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState083 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState072 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState065 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState063 ->
          _menhir_error_run_065 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState054 ->
          _eRR ()
      | MenhirState050 ->
          _eRR ()
      | MenhirState037 ->
          _eRR ()
      | MenhirState034 ->
          _eRR ()
      | MenhirState023 ->
          _eRR ()
      | MenhirState018 ->
          _eRR ()
      | _ ->
          _menhir_fail ()
  
  and _menhir_error_run_246 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState246
  
  and _menhir_error_run_238 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState238
  
  and _menhir_error_run_227 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState227
  
  and _menhir_error_run_202 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState202
  
  and _menhir_error_run_201 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState201
  
  and _menhir_error_run_011 : type  ttv_stack ttv_result. ttv_stack -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
      let _v = _menhir_action_102 _endpos__1_ _startpos__1_ in
      _menhir_error_goto_term _menhir_stack _menhir_lexbuf _v _menhir_s
  
  and _menhir_error_run_192 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState192
  
  and _menhir_error_run_184 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState184
  
  and _menhir_error_run_169 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState169
  
  and _menhir_error_run_117 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState117
  
  and _menhir_error_run_116 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState116
  
  and _menhir_error_run_065 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState065
  
  let _menhir_run_488 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_ty =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOI ->
          let t = _v in
          let _v = _menhir_action_082 t in
          MenhirBox_parse_ty _v
      | _ ->
          _eRR ()
  
  let _menhir_run_481 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _v ->
      let l = _v in
      let _v = _menhir_action_080 l in
      MenhirBox_parse_list _v
  
  let rec _menhir_run_479 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_stmt -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_050 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState422 ->
          _menhir_run_481 _menhir_stack _v
      | MenhirState478 ->
          _menhir_run_479 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_error_run_423 : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
      let _v = _menhir_action_098 _endpos__1_ _startpos__1_ in
      _menhir_error_goto_stmt _menhir_stack _menhir_lexbuf _v _menhir_s
  
  and _menhir_error_goto_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      match _menhir_s with
      | MenhirState478 ->
          _menhir_error_run_478 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState422 ->
          _menhir_error_run_478 _menhir_stack _menhir_lexbuf _v _menhir_s
      | MenhirState000 ->
          _eRR ()
      | _ ->
          _menhir_fail ()
  
  and _menhir_error_run_478 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _v _menhir_s ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      _menhir_error_run_423 _menhir_stack _menhir_lexbuf MenhirState478
  
  let _menhir_run_419 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOI ->
          let t = _v in
          let _v = _menhir_action_079 t in
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
      | MenhirState177 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState425 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_178 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, a, _, _) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_006 a b in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_attr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState181
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_057 x in
          _menhir_goto_nonempty_list_attr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_177 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      let _menhir_s = MenhirState177 in
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
      | MenhirState234 ->
          _menhir_run_235 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState181 ->
          _menhir_run_182 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState176 ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_235 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_BANG, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_term (_menhir_stack, _, t) = _menhir_stack in
      let MenhirCell1_BANG (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let attrs = _v in
      let _v = _menhir_action_022 attrs t in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_composite_term : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState017 ->
          _menhir_run_251 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_197 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_197 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_197 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState438 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState428 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState322 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState251 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState245 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState237 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState230 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState226 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState205 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState200 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState201 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState197 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState183 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState172 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState168 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState120 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState116 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState483 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState475 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState416 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState300 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState294 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState016 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState246 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState241 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState238 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState233 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState227 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState223 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState217 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState211 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState202 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState192 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState187 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState184 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState175 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState169 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState165 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState159 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState153 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState117 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState089 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_251 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState251
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState251
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState251
      | RIGHT_PAREN ->
          let t = _v in
          let _v = _menhir_action_101 t in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState251
  
  and _menhir_run_012 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_099 s in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_term : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState483 ->
          _menhir_run_484 _menhir_stack _v _tok
      | MenhirState475 ->
          _menhir_run_476 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState416 ->
          _menhir_run_417 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState300 ->
          _menhir_run_301 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState294 ->
          _menhir_run_295 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState016 ->
          _menhir_run_254 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_249 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState246 ->
          _menhir_run_247 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState245 ->
          _menhir_run_246 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState241 ->
          _menhir_run_242 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState238 ->
          _menhir_run_239 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState237 ->
          _menhir_run_238 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState233 ->
          _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState227 ->
          _menhir_run_228 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState226 ->
          _menhir_run_227 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState223 ->
          _menhir_run_224 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState217 ->
          _menhir_run_218 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState211 ->
          _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState202 ->
          _menhir_run_203 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState201 ->
          _menhir_run_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState200 ->
          _menhir_run_201 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState059 ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState092 ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState192 ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState191 ->
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState187 ->
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState184 ->
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState183 ->
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState175 ->
          _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState169 ->
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState168 ->
          _menhir_run_169 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState165 ->
          _menhir_run_166 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState159 ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState153 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState117 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState116 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState089 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState077 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState438 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState428 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState322 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState010 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState251 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState230 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState205 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState197 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState172 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState120 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState037 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState023 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState018 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_476 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, t) = (_endpos, _v) in
          let _v = _menhir_action_085 _endpos__4_ _startpos__1_ t in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState478 ->
          _menhir_run_478 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState422 ->
          _menhir_run_478 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_419 _menhir_stack _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_478 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_424 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState478
      | EOI ->
          let _v_0 = _menhir_action_049 () in
          _menhir_run_479 _menhir_stack _v_0
      | _ ->
          _menhir_error_run_423 _menhir_stack _menhir_lexbuf MenhirState478
  
  and _menhir_run_424 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
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
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState425
          | IDENT _v_2 ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState425
          | RIGHT_PAREN ->
              let _v_3 = _menhir_action_043 () in
              _menhir_run_426 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3
          | _ ->
              _eRR ())
      | GET_VALUE ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState428 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | DEFINE_FUN_REC ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState431 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_262 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_271 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | DEFINE_FUNS_REC ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState435 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_304 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DEFINE_FUN ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState442 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_262 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_271 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                      let _v = _menhir_action_086 _endpos__4_ _endpos_n_ _startpos__1_ _startpos_s_ n s in
                      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DECLARE_FUN ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState449 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_336 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_342 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
              let _menhir_s = MenhirState453 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
              let _menhir_s = MenhirState457 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_361 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
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
              let _menhir_s = MenhirState461 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_388 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
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
                  _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState469
              | LEFT_PAREN ->
                  _menhir_run_404 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState469
              | IDENT _v ->
                  _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState469
              | RIGHT_PAREN ->
                  let _v = _menhir_action_047 () in
                  _menhir_run_470 _menhir_stack _menhir_lexbuf _menhir_lexer _v
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
              let _v = _menhir_action_094 _endpos__3_ _startpos__1_ in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | ASSERT ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState475 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          _eRR ()
  
  and _menhir_run_426 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__4_, args) = (_endpos, _v) in
      let _v = _menhir_action_097 _endpos__4_ _startpos__1_ args s in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_013 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState013 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MATCH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LEFT_PAREN ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FORALL ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXISTS ->
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EQ ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DISTINCT ->
          _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BANG ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AT ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AS ->
          _menhir_run_187 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ARROW ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_015 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_099 s in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_016 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MATCH (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState016 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_017 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState017
      | MATCH ->
          let _menhir_stack = MenhirCell1_MATCH (_menhir_stack, MenhirState017) in
          let _menhir_s = MenhirState018 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | LET ->
          let _menhir_stack = MenhirCell1_LET (_menhir_stack, MenhirState017) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState046 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | LEFT_PAREN ->
          let _menhir_s = MenhirState017 in
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState059 in
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
                          let _menhir_s = MenhirState063 in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | QUOTED _v ->
                              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | LEFT_PAREN ->
                              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                          | IDENT _v ->
                              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                          let _menhir_s = MenhirState072 in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | QUOTED _v ->
                              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | LEFT_PAREN ->
                              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                          | IDENT _v ->
                              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                          let _menhir_s = MenhirState077 in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | QUOTED _v ->
                              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | LEFT_PAREN ->
                              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                          | IDENT _v ->
                              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                              let _menhir_s = MenhirState083 in
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | QUOTED _v ->
                                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                              | LEFT_PAREN ->
                                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                              | IDENT _v ->
                                  _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                              | _ ->
                                  _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | QUOTED _v ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | MATCH ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LET ->
              _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LEFT_PAREN ->
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FUN ->
              _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | FORALL ->
              _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXISTS ->
              _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EQ ->
              _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | DISTINCT ->
              _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BANG ->
              _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | AT ->
              _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | AS ->
              _menhir_run_187 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ARROW ->
              _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | IF ->
          let _menhir_stack = MenhirCell1_IF (_menhir_stack, MenhirState017) in
          let _menhir_s = MenhirState200 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | IDENT _v ->
          let _startpos_21 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v_22 ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState017, _v, _startpos_21, _endpos) in
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_22 MenhirState205
          | LEFT_PAREN ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState017, _v, _startpos_21, _endpos) in
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | IDENT _v_23 ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState017, _v, _startpos_21, _endpos) in
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v_23 MenhirState205
          | RIGHT_PAREN ->
              let _v =
                let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_21, _v) in
                _menhir_action_100 _endpos_s_ _startpos_s_ s
              in
              _menhir_run_249 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, MenhirState017, _v, _startpos_21, _endpos) in
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState205)
      | FUN ->
          let _menhir_stack = MenhirCell1_FUN (_menhir_stack, MenhirState017) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState209 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | FORALL ->
          let _menhir_stack = MenhirCell1_FORALL (_menhir_stack, MenhirState017) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState215 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | EXISTS ->
          let _menhir_stack = MenhirCell1_EXISTS (_menhir_stack, MenhirState017) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState221 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | EQ ->
          let _menhir_stack = MenhirCell1_EQ (_menhir_stack, MenhirState017) in
          let _menhir_s = MenhirState226 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | DISTINCT ->
          let _menhir_stack = MenhirCell1_DISTINCT (_menhir_stack, MenhirState017) in
          let _menhir_s = MenhirState230 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | BANG ->
          let _menhir_stack = MenhirCell1_BANG (_menhir_stack, MenhirState017) in
          let _menhir_s = MenhirState233 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | AT ->
          let _menhir_stack = MenhirCell1_AT (_menhir_stack, MenhirState017) in
          let _menhir_s = MenhirState237 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | AS ->
          let _menhir_stack = MenhirCell1_AS (_menhir_stack, MenhirState017) in
          let _menhir_s = MenhirState241 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | ARROW ->
          let _menhir_stack = MenhirCell1_ARROW (_menhir_stack, MenhirState017) in
          let _menhir_s = MenhirState245 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState017
  
  and _menhir_run_019 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_100 _endpos_s_ _startpos_s_ s in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_047 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_113 () in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v =
            let s = _v in
            _menhir_action_114 s
          in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState047 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState050
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState050
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState050
  
  and _menhir_run_064 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_100 _endpos_s_ _startpos_s_ s in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_086 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState087 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState092 in
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
                      let _menhir_s = MenhirState096 in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | QUOTED _v ->
                          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | LEFT_PAREN ->
                          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | IDENT _v ->
                          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                      let _menhir_s = MenhirState101 in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | QUOTED _v ->
                          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | LEFT_PAREN ->
                          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | IDENT _v ->
                          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                      let _menhir_s = MenhirState106 in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | QUOTED _v ->
                          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                      | LEFT_PAREN ->
                          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                      | IDENT _v ->
                          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                          let _menhir_s = MenhirState112 in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | QUOTED _v ->
                              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | LEFT_PAREN ->
                              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                          | IDENT _v ->
                              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                          | _ ->
                              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MATCH ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LEFT_PAREN ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUN ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FORALL ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXISTS ->
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EQ ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DISTINCT ->
          _menhir_run_172 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BANG ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AT ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AS ->
          _menhir_run_187 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ARROW ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_115 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState115 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_120 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState120
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState120
      | RIGHT_PAREN ->
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_100 _endpos_s_ _startpos_s_ s in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState120
  
  and _menhir_run_123 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FUN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState124 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_125 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState125 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_113 () in
      _menhir_goto_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_var : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState469 ->
          _menhir_run_408 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState409 ->
          _menhir_run_408 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState403 ->
          _menhir_run_408 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState405 ->
          _menhir_run_406 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState125 ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState364 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_408 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let s = _v in
      let _v = _menhir_action_083 s in
      _menhir_goto_prop_lit _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_prop_lit : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_prop_lit (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState409
      | LEFT_PAREN ->
          _menhir_run_404 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState409
      | IDENT _v_0 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState409
      | RIGHT_PAREN ->
          let _v_1 = _menhir_action_047 () in
          _menhir_run_410 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_404 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
          let _menhir_s = MenhirState405 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WILDCARD ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_114 s in
      _menhir_goto_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_410 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_prop_lit -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_prop_lit (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_048 x xs in
      _menhir_goto_list_prop_lit_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_prop_lit_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState469 ->
          _menhir_run_470 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState403 ->
          _menhir_run_411 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState409 ->
          _menhir_run_410 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_470 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__6_) = (_v, _endpos_0) in
          let _v = _menhir_action_095 _endpos__6_ _startpos__1_ l in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_411 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__6_) = (_v, _endpos_0) in
          let _v = _menhir_action_095 _endpos__6_ _startpos__1_ l in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_406 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, not_, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (s, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_084 _endpos__4_ _startpos__1_ not_ s in
          _menhir_goto_prop_lit _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_126 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
      | IDENT _v_0 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState126
      | _ ->
          _eRR ()
  
  and _menhir_run_127 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
                      let _v = _menhir_action_104 _endpos__5_ _startpos__1_ n in
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
          let _menhir_s = MenhirState132 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ARROW ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState138 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | ARRAY ->
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState144 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_ty : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState487 ->
          _menhir_run_488 _menhir_stack _v _tok
      | MenhirState453 ->
          _menhir_run_454 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState370 ->
          _menhir_run_371 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState356 ->
          _menhir_run_357 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState347 ->
          _menhir_run_348 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState344 ->
          _menhir_run_344 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState343 ->
          _menhir_run_344 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState313 ->
          _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState276 ->
          _menhir_run_293 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState289 ->
          _menhir_run_290 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState288 ->
          _menhir_run_289 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState242 ->
          _menhir_run_243 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState188 ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState126 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState145 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState144 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState143 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState141 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState285 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState282 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState134 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState132 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_454 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, f, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__5_, ty) = (_endpos, _v) in
          let _v = _menhir_action_090 _endpos__5_ _startpos__1_ f ty in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_371 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, name, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ty = _v in
          let _v = _menhir_action_032 name ty in
          let _menhir_stack = MenhirCell1_cstor_arg (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_369 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState375
          | RIGHT_PAREN ->
              let _v_0 = _menhir_action_045 () in
              _menhir_run_376 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_369 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
          let _menhir_s = MenhirState370 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_133 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_103 s in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_376 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_cstor_arg -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_cstor_arg (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_046 x xs in
      _menhir_goto_list_cstor_arg_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_cstor_arg_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState375 ->
          _menhir_run_376 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState368 ->
          _menhir_run_373 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_373 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENT (_menhir_stack, c, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_033 c l in
      _menhir_goto_cstor_dec _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_cstor_dec : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState382 ->
          _menhir_run_381 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState361 ->
          _menhir_run_381 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState366 ->
          _menhir_run_377 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_381 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let dec = _v in
      let _v = _menhir_action_030 dec in
      _menhir_goto_cstor _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_cstor : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_cstor (_menhir_stack, _menhir_s, _v) in
          _menhir_run_362 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState382
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_063 x in
          _menhir_goto_nonempty_list_cstor_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_362 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
              let _menhir_s = MenhirState364 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WILDCARD ->
                  _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENT _v ->
          _menhir_run_368 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_368 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_369 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | RIGHT_PAREN ->
          let _v_0 = _menhir_action_045 () in
          _menhir_run_373 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_cstor_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState382 ->
          _menhir_run_383 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState361 ->
          _menhir_run_379 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_383 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_cstor -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_cstor (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_064 x xs in
      _menhir_goto_nonempty_list_cstor_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_379 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_034 l in
      _menhir_goto_cstors _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_cstors : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState457 ->
          _menhir_run_458 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState464 ->
          _menhir_run_400 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState400 ->
          _menhir_run_400 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState396 ->
          _menhir_run_400 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState360 ->
          _menhir_run_384 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_458 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__5_) = (_v, _endpos) in
          let _v = _menhir_action_088 _endpos__5_ _startpos__1_ l s in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_400 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_cstors (_menhir_stack, _menhir_s, _v) in
          _menhir_run_361 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState400
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_065 x in
          _menhir_goto_nonempty_list_cstors_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_361 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState361 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_362 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_cstors_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState464 ->
          _menhir_run_465 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState400 ->
          _menhir_run_401 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState396 ->
          _menhir_run_397 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_465 : type  ttv_stack. ((ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_cell1_nonempty_list_ty_decl_paren_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse_list =
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
          let _v = _menhir_action_087 _endpos__9_ _startpos__1_ l tys in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_401 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_cstors -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_cstors (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_066 x xs in
      _menhir_goto_nonempty_list_cstors_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_397 : type  ttv_stack. ((ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_cell1_nonempty_list_ty_decl_paren_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse =
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
          let _v = _menhir_action_087 _endpos__9_ _startpos__1_ l tys in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_384 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (l, _endpos__5_) = (_v, _endpos) in
          let _v = _menhir_action_088 _endpos__5_ _startpos__1_ l s in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_377 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_var_ (_menhir_stack, _, vars) = _menhir_stack in
          let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let dec = _v in
          let _v = _menhir_action_031 dec vars in
          _menhir_goto_cstor _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_357 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, f, _, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__5_, ty) = (_endpos, _v) in
          let _v = _menhir_action_090 _endpos__5_ _startpos__1_ f ty in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_348 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_ty_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_list_ty_ (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, f, _, _) = _menhir_stack in
      let ret = _v in
      let _v = _menhir_action_037 args f ret in
      _menhir_goto_fun_decl_mono _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_fun_decl_mono : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState449 ->
          _menhir_run_352 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState335 ->
          _menhir_run_352 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState341 ->
          _menhir_run_349 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_352 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let tup = _v in
      let _v = _menhir_action_035 tup in
      _menhir_goto_fun_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_fun_decl : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState449 ->
          _menhir_run_450 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState335 ->
          _menhir_run_353 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_450 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (tup, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_089 _endpos__4_ _startpos__1_ tup in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_353 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (tup, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_089 _endpos__4_ _startpos__1_ tup in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_349 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
              let _v = _menhir_action_036 tup tyvars in
              _menhir_goto_fun_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_344 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState344
      | IDENT _v_0 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState344
      | RIGHT_PAREN ->
          let _v_1 = _menhir_action_051 () in
          _menhir_run_345 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_345 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ty (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_052 x xs in
      _menhir_goto_list_ty_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_ty_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState343 ->
          _menhir_run_346 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState344 ->
          _menhir_run_345 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_346 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_ty_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState347 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_314 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_list_typed_var_ (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, f, _, _) = _menhir_stack in
      let ret = _v in
      let _v = _menhir_action_038 args f ret in
      _menhir_goto_fun_def_mono _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_fun_def_mono : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState304 ->
          _menhir_run_318 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState309 ->
          _menhir_run_315 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState442 ->
          _menhir_run_300 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState431 ->
          _menhir_run_300 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState328 ->
          _menhir_run_300 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState261 ->
          _menhir_run_300 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState270 ->
          _menhir_run_294 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_318 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let tup = _v in
          let _v = _menhir_action_041 tup in
          _menhir_goto_funs_rec_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_funs_rec_decl : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_funs_rec_decl (_menhir_stack, _menhir_s, _v) in
          _menhir_run_304 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState326
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_067 x in
          _menhir_goto_nonempty_list_funs_rec_decl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_304 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | PAR ->
          let _menhir_stack = MenhirCell1_PAR (_menhir_stack, MenhirState304) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos_0) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENT _v ->
                  _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState306
              | RIGHT_PAREN ->
                  let _v = _menhir_action_055 () in
                  _menhir_run_307 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState306
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENT _v ->
          _menhir_run_310 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState304
      | _ ->
          _eRR ()
  
  and _menhir_run_265 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_112 s in
      let _menhir_stack = MenhirCell1_tyvar (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState266
      | RIGHT_PAREN ->
          let _v_1 = _menhir_action_055 () in
          _menhir_run_267 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
      | _ ->
          _eRR ()
  
  and _menhir_run_267 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_tyvar -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_tyvar (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_056 x xs in
      _menhir_goto_list_tyvar_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_tyvar_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState338 ->
          _menhir_run_339 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState306 ->
          _menhir_run_307 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState264 ->
          _menhir_run_268 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState266 ->
          _menhir_run_267 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_339 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_tyvar_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState341 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_342 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_342 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
              _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState343
          | IDENT _v_1 ->
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState343
          | RIGHT_PAREN ->
              let _v_2 = _menhir_action_051 () in
              _menhir_run_346 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState343
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_307 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_PAR _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_tyvar_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState309 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_310 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_310 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState311
          | RIGHT_PAREN ->
              let _v_1 = _menhir_action_053 () in
              _menhir_run_312 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState311
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_312 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState313 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_268 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_tyvar_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState270 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_271 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_271 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState272
          | RIGHT_PAREN ->
              let _v_1 = _menhir_action_053 () in
              _menhir_run_275 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState272
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_275 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
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
                            _menhir_action_104 _endpos__5_ _startpos__1_ n
                          in
                          _menhir_run_293 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | IDENT _v_5 ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState276, _startpos) in
              let _v = _v_5 in
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
              let _menhir_s = MenhirState282 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | ARROW ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState276, _startpos) in
              let _menhir_s = MenhirState285 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | ARRAY ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState276, _startpos) in
              let _menhir_s = MenhirState288 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENT _v_11 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v_13 =
            let s = _v_11 in
            _menhir_action_103 s
          in
          _menhir_run_293 _menhir_stack _menhir_lexbuf _menhir_lexer _v_13 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_293 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IDENT _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_list_typed_var_ (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LEFT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, f, _, _) = _menhir_stack in
      let ret = _v in
      let _v = _menhir_action_038 args f ret in
      _menhir_goto_fun_def_mono _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_nonempty_list_funs_rec_decl_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState435 ->
          _menhir_run_436 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState326 ->
          _menhir_run_327 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState303 ->
          _menhir_run_320 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_436 : type  ttv_stack. ((ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_funs_rec_decl_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState438 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          _eRR ()
  
  and _menhir_run_327 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_funs_rec_decl -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_funs_rec_decl (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_068 x xs in
      _menhir_goto_nonempty_list_funs_rec_decl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_320 : type  ttv_stack. ((ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_parse) _menhir_state -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_funs_rec_decl_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState322 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          _eRR ()
  
  and _menhir_run_315 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_PAR _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
              let _v = _menhir_action_042 l tup in
              _menhir_goto_funs_rec_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_300 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_fun_def_mono (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState300
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState300
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState300
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState300
  
  and _menhir_run_294 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_fun_def_mono (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState294
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState294
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState294
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState294
  
  and _menhir_run_290 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _, i) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let j = _v in
          let _v = _menhir_action_105 i j in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_289 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState289
      | IDENT _v_0 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState289
      | _ ->
          _eRR ()
  
  and _menhir_run_243 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AS, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_AS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ty = _v in
          let _v = _menhir_action_027 t ty in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_189 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AS, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_AS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ty = _v in
          let _v = _menhir_action_027 t ty in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_148 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_var -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_var (_menhir_stack, _, s) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ty = _v in
          let _v = _menhir_action_111 s ty in
          _menhir_goto_typed_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_typed_var : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState311 ->
          _menhir_run_273 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState273 ->
          _menhir_run_273 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState272 ->
          _menhir_run_273 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState221 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState209 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState163 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState157 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState150 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_273 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typed_var (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState273
      | RIGHT_PAREN ->
          let _v_0 = _menhir_action_053 () in
          _menhir_run_274 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_274 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_typed_var -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_typed_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_054 x xs in
      _menhir_goto_list_typed_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_typed_var_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState311 ->
          _menhir_run_312 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState272 ->
          _menhir_run_275 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState273 ->
          _menhir_run_274 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_150 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_typed_var (_menhir_stack, _menhir_s, _v) in
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState150
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_075 x in
          _menhir_goto_nonempty_list_typed_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_typed_var_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState221 ->
          _menhir_run_222 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState215 ->
          _menhir_run_216 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState209 ->
          _menhir_run_210 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState163 ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState157 ->
          _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState124 ->
          _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState150 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_222 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState223 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_216 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState217 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_210 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState211 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_164 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState165 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_158 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState159 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_152 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_typed_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState153 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_151 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_typed_var -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_typed_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_076 x xs in
      _menhir_goto_nonempty_list_typed_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_146 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _, i) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let j = _v in
          let _v = _menhir_action_105 i j in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_145 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | IDENT _v_0 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState145
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_ty as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState143
      | RIGHT_PAREN ->
          let MenhirCell1_ty (_menhir_stack, _menhir_s, a) = _menhir_stack in
          let ret = _v in
          let _v = _menhir_action_108 a ret in
          _menhir_goto_ty_arrow_args _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_ty_arrow_args : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState285 ->
          _menhir_run_286 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState143 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState141 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState138 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_286 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let tup = _v in
      let _v = _menhir_action_107 tup in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_142 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ty (_menhir_stack, _menhir_s, a) = _menhir_stack in
      let tup = _v in
      let _v = _menhir_action_109 a tup in
      _menhir_goto_ty_arrow_args _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_139 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let tup = _v in
      let _v = _menhir_action_107 tup in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_141 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | IDENT _v_0 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState141
      | _ ->
          _eRR ()
  
  and _menhir_run_134 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v) in
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState134
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_071 x in
          _menhir_goto_nonempty_list_ty_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_ty_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState282 ->
          _menhir_run_283 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState132 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState134 ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_283 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_106 args s in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_136 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENT (_menhir_stack, s, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_106 args s in
      _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_135 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ty (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_072 x xs in
      _menhir_goto_nonempty_list_ty_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_031 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | IDENT _v_0 ->
          let _menhir_stack = MenhirCell1_var (_menhir_stack, _menhir_s, _v) in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState031
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_077 x in
          _menhir_goto_nonempty_list_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_var_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState364 ->
          _menhir_run_365 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState028 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState031 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_365 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState366 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              _menhir_run_368 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState034 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_032 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_var -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_078 x xs in
      _menhir_goto_nonempty_list_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_156 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FORALL (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState157 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_162 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXISTS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState163 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_168 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState168 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_172 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DISTINCT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState172 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_175 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BANG (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState175 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_183 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState183 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_187 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState187 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_191 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ARROW (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState191 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_249 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_262 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
                  _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState264
              | RIGHT_PAREN ->
                  let _v = _menhir_action_055 () in
                  _menhir_run_268 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState264
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_336 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
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
                  _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState338
              | RIGHT_PAREN ->
                  let _v = _menhir_action_055 () in
                  _menhir_run_339 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState338
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_388 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
                  let _v = _menhir_action_110 _endpos_n_ _startpos_s_ n s in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      let _menhir_stack = MenhirCell1_ty_decl_paren (_menhir_stack, _menhir_s, _v) in
                      _menhir_run_388 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState392
                  | RIGHT_PAREN ->
                      let x = _v in
                      let _v = _menhir_action_073 x in
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
      | MenhirState461 ->
          _menhir_run_462 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState387 ->
          _menhir_run_394 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState392 ->
          _menhir_run_393 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_462 : type  ttv_stack. ((ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_parse_list) _menhir_state -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_ty_decl_paren_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState464 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_361 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_394 : type  ttv_stack. ((ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_parse) _menhir_state -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_ty_decl_paren_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState396 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_361 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_393 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ty_decl_paren -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ty_decl_paren (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_074 x xs in
      _menhir_goto_nonempty_list_ty_decl_paren_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_417 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, t) = (_endpos, _v) in
          let _v = _menhir_action_085 _endpos__4_ _startpos__1_ t in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_301 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_fun_def_mono -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_fun_def_mono (_menhir_stack, _menhir_s, tup) = _menhir_stack in
      let body = _v in
      let _v = _menhir_action_039 body tup in
      _menhir_goto_fun_rec _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_fun_rec : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState442 ->
          _menhir_run_443 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState431 ->
          _menhir_run_432 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState328 ->
          _menhir_run_329 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState261 ->
          _menhir_run_298 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_443 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, f) = (_endpos, _v) in
          let _v = _menhir_action_091 _endpos__4_ _startpos__1_ f in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_432 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, f) = (_endpos, _v) in
          let _v = _menhir_action_092 _endpos__4_ _startpos__1_ f in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_329 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, f) = (_endpos, _v) in
          let _v = _menhir_action_091 _endpos__4_ _startpos__1_ f in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_298 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__4_, f) = (_endpos, _v) in
          let _v = _menhir_action_092 _endpos__4_ _startpos__1_ f in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_295 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_list_tyvar_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_fun_def_mono -> _ -> _ -> _ -> _ -> ttv_result =
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
              let _v = _menhir_action_040 body l tup in
              _menhir_goto_fun_rec _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_254 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_MATCH as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState255 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WILDCARD ->
          let _menhir_s = MenhirState023 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
              let _menhir_s = MenhirState028 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WILDCARD ->
                  _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos, _endpos) in
          let _menhir_s = MenhirState037 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | QUOTED _v ->
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LEFT_PAREN ->
              _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
      | _ ->
          _eRR ()
  
  and _menhir_run_247 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_246 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState246
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState246
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState246
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState246
  
  and _menhir_run_242 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState242
      | IDENT _v_0 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState242
      | _ ->
          _eRR ()
  
  and _menhir_run_239 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, f) = _menhir_stack in
          let MenhirCell1_AT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let arg = _v in
          let _v = _menhir_action_021 arg f in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_238 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState238
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState238
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState238
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState238
  
  and _menhir_run_234 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState234
      | _ ->
          _eRR ()
  
  and _menhir_run_228 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_227 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState227
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState227
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState227
  
  and _menhir_run_224 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_029 f vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_218 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_028 f vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_212 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_024 body vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_203 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_202 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState202
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState202
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState202
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState202
  
  and _menhir_run_201 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState201
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState201
      | IDENT _v_1 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState201
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState201
  
  and _menhir_run_195 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_193 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_192 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_ARROW as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState192
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState192
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState192
  
  and _menhir_run_188 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
      | IDENT _v_0 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState188
      | _ ->
          _eRR ()
  
  and _menhir_run_185 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RIGHT_PAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_term (_menhir_stack, _, f) = _menhir_stack in
          let MenhirCell1_AT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let arg = _v in
          let _v = _menhir_action_021 arg f in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_184 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState184
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState184
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState184
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState184
  
  and _menhir_run_176 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | IDENT _v_0 ->
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState176
      | _ ->
          _eRR ()
  
  and _menhir_run_170 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_169 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EQ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState169
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState169
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState169
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState169
  
  and _menhir_run_166 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_029 f vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_160 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_028 f vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_154 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_FUN _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_typed_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_024 body vars in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_117 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_term as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState117
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState117
      | IDENT _v_1 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState117
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf MenhirState117
  
  and _menhir_run_116 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState116
      | LEFT_PAREN ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | IDENT _v_1 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState116
      | _ ->
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState116
  
  and _menhir_run_107 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_025 c t in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_090 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_binding_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_026 l r in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_025 c t in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState065
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState065
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_069 x in
          _menhir_goto_nonempty_list_term_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState065
  
  and _menhir_goto_nonempty_list_term_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState438 ->
          _menhir_run_439 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState428 ->
          _menhir_run_429 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState322 ->
          _menhir_run_323 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState010 ->
          _menhir_run_259 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState251 ->
          _menhir_run_252 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState230 ->
          _menhir_run_231 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState205 ->
          _menhir_run_206 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState197 ->
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState172 ->
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState120 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState112 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState101 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState083 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState063 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_439 : type  ttv_stack. ((ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse_list) _menhir_cell1_nonempty_list_funs_rec_decl_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse_list =
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
          let _v = _menhir_action_093 _endpos__9_ _startpos__1_ bodies decls in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_429 : type  ttv_stack. (ttv_stack, _menhir_box_parse_list) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (l, _endpos__4_) = (_v, _endpos) in
      let _v = _menhir_action_096 _endpos__4_ _startpos__1_ l in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_323 : type  ttv_stack. ((ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN, _menhir_box_parse) _menhir_cell1_nonempty_list_funs_rec_decl_ _menhir_cell0_RIGHT_PAREN _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse =
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
          let _v = _menhir_action_093 _endpos__9_ _startpos__1_ bodies decls in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_259 : type  ttv_stack. (ttv_stack, _menhir_box_parse) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _menhir_box_parse =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (l, _endpos__4_) = (_v, _endpos) in
      let _v = _menhir_action_096 _endpos__4_ _startpos__1_ l in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_252 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_composite_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_composite_term (_menhir_stack, _, f) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_020 args f in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_231 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_DISTINCT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_DISTINCT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_013 l in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_206 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _, f, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__4_, args) = (_endpos, _v) in
      let _v = _menhir_action_016 _endpos__4_ _startpos__1_ args f in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_198 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_composite_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_composite_term (_menhir_stack, _, f) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_020 args f in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_173 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_DISTINCT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_DISTINCT (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_013 l in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_121 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_IDENT -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_IDENT (_menhir_stack, _, f, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__4_, args) = (_endpos, _v) in
      let _v = _menhir_action_016 _endpos__4_ _startpos__1_ args f in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_113 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
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
      let _v = _menhir_action_019 _endpos__9_ _startpos__1_ args i j in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_102 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__8_) = (_v, _endpos) in
      let _v = _menhir_action_018 _endpos__8_ _startpos__1_ args i in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_097 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__8_) = (_v, _endpos) in
      let _v = _menhir_action_017 _endpos__8_ _startpos__1_ args i in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_084 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
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
      let _v = _menhir_action_019 _endpos__9_ _startpos__1_ args i j in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_073 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__8_) = (_v, _endpos) in
      let _v = _menhir_action_018 _endpos__8_ _startpos__1_ args i in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_068 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_WILDCARD _menhir_cell0_IDENT _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_RIGHT_PAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, i, _, _) = _menhir_stack in
      let MenhirCell1_WILDCARD (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (args, _endpos__8_) = (_v, _endpos) in
      let _v = _menhir_action_017 _endpos__8_ _startpos__1_ args i in
      _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_066 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_term (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_070 x xs in
      _menhir_goto_nonempty_list_term_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_055 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN, ttv_result) _menhir_cell1_nonempty_list_binding_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_026 l r in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_var -> _ -> _ -> _ -> _ -> ttv_result =
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
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | RIGHT_PAREN ->
              let x = _v in
              let _v = _menhir_action_059 x in
              _menhir_goto_nonempty_list_binding_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_binding_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState087 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState046 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_088 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_binding_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState089 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_058 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_binding -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_binding (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_060 x xs in
      _menhir_goto_nonempty_list_binding_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_053 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_binding_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RIGHT_PAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState054 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  and _menhir_run_038 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
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
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | RIGHT_PAREN ->
          let x = _v in
          let _v = _menhir_action_061 x in
          _menhir_goto_nonempty_list_case_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_case_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState255 ->
          _menhir_run_256 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState043 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState021 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_256 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_MATCH, ttv_result) _menhir_cell1_term _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_023 l lhs in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_case -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_case (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_062 x xs in
      _menhir_goto_nonempty_list_case_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_040 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_MATCH, ttv_result) _menhir_cell1_term _menhir_cell0_LEFT_PAREN -> _ -> _ -> _ -> ttv_result =
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
          let _v = _menhir_action_023 l lhs in
          _menhir_goto_composite_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN _menhir_cell0_LEFT_PAREN _menhir_cell0_IDENT, ttv_result) _menhir_cell1_nonempty_list_var_ _menhir_cell0_RIGHT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_024 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN -> _ -> _ -> _ -> _ -> ttv_result =
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
  
  and _menhir_run_020 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_MATCH as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState021 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LEFT_PAREN ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_197 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | QUOTED _v_0 ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState197
      | LEFT_PAREN ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState197
      | IDENT _v_1 ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState197
      | RIGHT_PAREN ->
          let t = _v in
          let _v = _menhir_action_101 t in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          let _menhir_stack = MenhirCell1_composite_term (_menhir_stack, _menhir_s, _v) in
          _menhir_error_run_011 _menhir_stack _menhir_lexbuf MenhirState197
  
  and _menhir_run_067 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let t = _v in
      let _v = _menhir_action_101 t in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_026 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let t = _v in
      let _v = _menhir_action_101 t in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_182 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_attr -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_attr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_058 x xs in
      _menhir_goto_nonempty_list_attr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_179 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LEFT_PAREN, ttv_result) _menhir_cell1_BANG, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_term (_menhir_stack, _, t) = _menhir_stack in
      let MenhirCell1_BANG (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LEFT_PAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let attrs = _v in
      let _v = _menhir_action_022 attrs t in
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
          let _v_2 = _menhir_action_043 () in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_anystr -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_anystr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_044 x xs in
      _menhir_goto_list_anystr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_anystr_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState425 ->
          _menhir_run_426 _menhir_stack _menhir_lexbuf _menhir_lexer _v
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
      let _v = _menhir_action_097 _endpos__4_ _startpos__1_ args s in
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
                  let _v_3 = _menhir_action_043 () in
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
                  _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _menhir_error_run_011 _menhir_stack _menhir_lexbuf _menhir_s)
          | DEFINE_FUN_REC ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _menhir_s = MenhirState261 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_262 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_271 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | DEFINE_FUNS_REC ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
                  let _menhir_stack = MenhirCell0_LEFT_PAREN (_menhir_stack, _startpos) in
                  let _menhir_s = MenhirState303 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      _menhir_run_304 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | DEFINE_FUN ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _menhir_s = MenhirState328 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_262 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_271 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                            _menhir_action_086 _endpos__4_ _endpos_n_ _startpos__1_ _startpos_s_ n s
                          in
                          _menhir_run_419 _menhir_stack _v _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | DECLARE_FUN ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _menhir_s = MenhirState335 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LEFT_PAREN ->
                  _menhir_run_336 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_342 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                  let _menhir_s = MenhirState356 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | IDENT _v ->
                      _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
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
                  let _menhir_s = MenhirState360 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      _menhir_run_361 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
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
                  let _menhir_s = MenhirState387 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LEFT_PAREN ->
                      _menhir_run_388 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
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
                      _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState403
                  | LEFT_PAREN ->
                      _menhir_run_404 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState403
                  | IDENT _v ->
                      _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState403
                  | RIGHT_PAREN ->
                      let _v = _menhir_action_047 () in
                      _menhir_run_411 _menhir_stack _menhir_lexbuf _menhir_lexer _v
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
                    _menhir_action_094 _endpos__3_ _startpos__1_
                  in
                  _menhir_run_419 _menhir_stack _v _tok
              | _ ->
                  _eRR ())
          | ASSERT ->
              let _menhir_stack = MenhirCell1_LEFT_PAREN (_menhir_stack, MenhirState000, _startpos) in
              let _menhir_s = MenhirState416 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | QUOTED _v ->
                  _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LEFT_PAREN ->
                  _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s)
          | _ ->
              _eRR ())
      | _ ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _ =
            let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
            _menhir_action_098 _endpos__1_ _startpos__1_
          in
          _eRR ()
  
  let _menhir_run_422 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_list =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_424 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState422
      | EOI ->
          let _v = _menhir_action_049 () in
          _menhir_run_481 _menhir_stack _v
      | _ ->
          _menhir_error_run_423 _menhir_stack _menhir_lexbuf MenhirState422
  
  let _menhir_run_483 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState483 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | QUOTED _v ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LEFT_PAREN ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_error_run_014 _menhir_stack _menhir_lexbuf _menhir_s
  
  let _menhir_run_487 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_parse_ty =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState487 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LEFT_PAREN ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
end

let parse_ty =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_parse_ty v = _menhir_run_487 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let parse_term =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_parse_term v = _menhir_run_483 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let parse_list =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_parse_list v = _menhir_run_422 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let parse =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_parse v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

# 472 "src/Parser.mly"
  

# 7322 "src/Parser.ml"
