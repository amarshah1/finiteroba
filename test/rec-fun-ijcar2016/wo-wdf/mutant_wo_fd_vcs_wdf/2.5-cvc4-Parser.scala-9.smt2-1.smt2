(set-info :smt-lib-version 2.6)
(set-logic AUFBVDTLIA)
(set-info :source |
Generated by: Andrew Reynolds
Generated on: 2017-04-28
Generator: Nunchaku, Leon, CVC4, converted to v2.6 by CVC4
Application: Counterexample generation for higher-order theorem provers
Target solver: CVC4, Z3
Publications: "Model Finding for Recursive Functions in SMT" by Andrew Reynolds, Jasmin Christian Blanchette, Simon Cruanes, and Cesare Tinelli, IJCAR 2016.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)


(declare-datatypes ((Tree!1062 0)) (((DivTree!1063 (left!1064 Tree!1062) (right!1065 Tree!1062)) (IntLitTree!1066 (value!1067 Bool)) (MinusTree!1068 (left!1069 Tree!1062) (right!1070 Tree!1062)) (PlusTree!1071 (left!1072 Tree!1062) (right!1073 Tree!1062)) (TimesTree!1074 (left!1075 Tree!1062) (right!1076 Tree!1062)))
))
(declare-datatypes ((TokenList!1077 0)(Token!1082 0)) (((Cons!1078 (head!1079 Token!1082) (tail!1080 TokenList!1077)) (Nil!1081))
((Div!1083) (IntLit!1084 (value!1085 Bool)) (LParen!1086) (Minus!1087) (Plus!1088) (RParen!1089) (Times!1090))
))
(declare-fun error_value!1091 () TokenList!1077)
(declare-fun error_value!1092 () TokenList!1077)
(declare-fun error_value!1093 () (_ BitVec 32))
(declare-fun print!216 (Tree!1062) TokenList!1077)
(declare-fun append!209 (TokenList!1077 TokenList!1077) TokenList!1077)
(declare-fun size!206 (TokenList!1077) (_ BitVec 32))
(declare-sort I_print!216 0)
(declare-fun print!216_arg_0_1 (I_print!216) Tree!1062)
(declare-sort I_append!209 0)
(declare-fun append!209_arg_0_2 (I_append!209) TokenList!1077)
(declare-fun append!209_arg_1_3 (I_append!209) TokenList!1077)
(declare-sort I_size!206 0)
(declare-fun size!206_arg_0_4 (I_size!206) TokenList!1077)
(assert (forall ((?i I_print!216)) (and (= (print!216 (print!216_arg_0_1 ?i)) (ite ((_ is IntLitTree!1066) (print!216_arg_0_1 ?i)) (Cons!1078 (IntLit!1084 (value!1067 (print!216_arg_0_1 ?i))) Nil!1081) (ite ((_ is PlusTree!1071) (print!216_arg_0_1 ?i)) (append!209 (print!216 (left!1072 (print!216_arg_0_1 ?i))) (Cons!1078 Plus!1088 (print!216 (right!1073 (print!216_arg_0_1 ?i))))) (ite ((_ is MinusTree!1068) (print!216_arg_0_1 ?i)) (append!209 (print!216 (left!1069 (print!216_arg_0_1 ?i))) (Cons!1078 Minus!1087 (print!216 (right!1070 (print!216_arg_0_1 ?i))))) (ite ((_ is TimesTree!1074) (print!216_arg_0_1 ?i)) (append!209 (print!216 (left!1075 (print!216_arg_0_1 ?i))) (Cons!1078 Times!1090 (print!216 (right!1076 (print!216_arg_0_1 ?i))))) (ite ((_ is DivTree!1063) (print!216_arg_0_1 ?i)) (append!209 (print!216 (left!1064 (print!216_arg_0_1 ?i))) (Cons!1078 Div!1083 (print!216 (right!1065 (print!216_arg_0_1 ?i))))) error_value!1091)))))) (ite ((_ is IntLitTree!1066) (print!216_arg_0_1 ?i)) true (ite ((_ is PlusTree!1071) (print!216_arg_0_1 ?i)) (and (not (forall ((?z I_append!209)) (not (and (= (append!209_arg_0_2 ?z) (print!216 (left!1072 (print!216_arg_0_1 ?i)))) (= (append!209_arg_1_3 ?z) (Cons!1078 Plus!1088 (print!216 (right!1073 (print!216_arg_0_1 ?i))))))) )) (not (forall ((?z I_print!216)) (not (= (print!216_arg_0_1 ?z) (left!1072 (print!216_arg_0_1 ?i)))) )) (not (forall ((?z I_print!216)) (not (= (print!216_arg_0_1 ?z) (right!1073 (print!216_arg_0_1 ?i)))) ))) (ite ((_ is MinusTree!1068) (print!216_arg_0_1 ?i)) (and (not (forall ((?z I_append!209)) (not (and (= (append!209_arg_0_2 ?z) (print!216 (left!1069 (print!216_arg_0_1 ?i)))) (= (append!209_arg_1_3 ?z) (Cons!1078 Minus!1087 (print!216 (right!1070 (print!216_arg_0_1 ?i))))))) )) (not (forall ((?z I_print!216)) (not (= (print!216_arg_0_1 ?z) (left!1069 (print!216_arg_0_1 ?i)))) )) (not (forall ((?z I_print!216)) (not (= (print!216_arg_0_1 ?z) (right!1070 (print!216_arg_0_1 ?i)))) ))) (ite ((_ is TimesTree!1074) (print!216_arg_0_1 ?i)) (and (not (forall ((?z I_append!209)) (not (and (= (append!209_arg_0_2 ?z) (print!216 (left!1075 (print!216_arg_0_1 ?i)))) (= (append!209_arg_1_3 ?z) (Cons!1078 Times!1090 (print!216 (right!1076 (print!216_arg_0_1 ?i))))))) )) (not (forall ((?z I_print!216)) (not (= (print!216_arg_0_1 ?z) (left!1075 (print!216_arg_0_1 ?i)))) )) (not (forall ((?z I_print!216)) (not (= (print!216_arg_0_1 ?z) (right!1076 (print!216_arg_0_1 ?i)))) ))) (ite ((_ is DivTree!1063) (print!216_arg_0_1 ?i)) (and (not (forall ((?z I_append!209)) (not (and (= (append!209_arg_0_2 ?z) (print!216 (left!1064 (print!216_arg_0_1 ?i)))) (= (append!209_arg_1_3 ?z) (Cons!1078 Div!1083 (print!216 (right!1065 (print!216_arg_0_1 ?i))))))) )) (not (forall ((?z I_print!216)) (not (= (print!216_arg_0_1 ?z) (left!1064 (print!216_arg_0_1 ?i)))) )) (not (forall ((?z I_print!216)) (not (= (print!216_arg_0_1 ?z) (right!1065 (print!216_arg_0_1 ?i)))) ))) true)))))) ))
(assert (forall ((?i I_append!209)) (and (= (append!209 (append!209_arg_0_2 ?i) (append!209_arg_1_3 ?i)) (ite ((_ is Nil!1081) (append!209_arg_0_2 ?i)) (append!209_arg_1_3 ?i) (ite ((_ is Cons!1078) (append!209_arg_0_2 ?i)) (Cons!1078 (head!1079 (append!209_arg_0_2 ?i)) (append!209 (tail!1080 (append!209_arg_0_2 ?i)) (append!209_arg_1_3 ?i))) error_value!1092))) (ite ((_ is Nil!1081) (append!209_arg_0_2 ?i)) true (ite ((_ is Cons!1078) (append!209_arg_0_2 ?i)) (not (forall ((?z I_append!209)) (not (and (= (append!209_arg_0_2 ?z) (tail!1080 (append!209_arg_0_2 ?i))) (= (append!209_arg_1_3 ?z) (append!209_arg_1_3 ?i)))) )) true))) ))
(assert (forall ((?i I_size!206)) (and (= (ite ((_ is Nil!1081) (size!206_arg_0_4 ?i)) (_ bv0 32) (ite ((_ is Cons!1078) (size!206_arg_0_4 ?i)) (bvadd (size!206 (tail!1080 (size!206_arg_0_4 ?i))) (_ bv1 32)) error_value!1093)) (size!206 (size!206_arg_0_4 ?i))) (ite ((_ is Nil!1081) (size!206_arg_0_4 ?i)) true (ite ((_ is Cons!1078) (size!206_arg_0_4 ?i)) (not (forall ((?z I_size!206)) (not (= (size!206_arg_0_4 ?z) (tail!1080 (size!206_arg_0_4 ?i)))) )) true))) ))
(assert (not (forall ((tree!220 Tree!1062)) (or (= (print!216 tree!220) (Cons!1078 (IntLit!1084 false) (Cons!1078 Plus!1088 (Cons!1078 (IntLit!1084 true) Nil!1081)))) (forall ((?z I_print!216)) (not (= (print!216_arg_0_1 ?z) tree!220)) )) )))
(check-sat)
(exit)

