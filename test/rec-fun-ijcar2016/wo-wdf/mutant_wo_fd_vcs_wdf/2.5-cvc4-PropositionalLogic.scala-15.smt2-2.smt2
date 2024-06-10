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


(declare-datatypes ((Formula!1155 0)) (((And!1156 (lhs!1157 Formula!1155) (rhs!1158 Formula!1155)) (Implies!1159 (lhs!1160 Formula!1155) (rhs!1161 Formula!1155)) (Literal!1162 (id!1163 (_ BitVec 32))) (Not!1164 (f!1165 Formula!1155)) (Or!1166 (lhs!1167 Formula!1155) (rhs!1168 Formula!1155)))
))
(declare-fun error_value!1169 () Bool)
(declare-fun isNNF!212 (Formula!1155) Bool)
(declare-fun error_value!1170 () Formula!1155)
(declare-fun error_value!1171 () Bool)
(declare-fun simplify!206 (Formula!1155) Formula!1155)
(declare-fun isSimplified!208 (Formula!1155) Bool)
(declare-sort I_isNNF!212 0)
(declare-fun isNNF!212_arg_0_1 (I_isNNF!212) Formula!1155)
(declare-sort I_simplify!206 0)
(declare-fun simplify!206_arg_0_2 (I_simplify!206) Formula!1155)
(declare-sort I_isSimplified!208 0)
(declare-fun isSimplified!208_arg_0_3 (I_isSimplified!208) Formula!1155)
(assert (forall ((?i I_isNNF!212)) (and (= (isNNF!212 (isNNF!212_arg_0_1 ?i)) (ite ((_ is And!1156) (isNNF!212_arg_0_1 ?i)) (and (isNNF!212 (rhs!1158 (isNNF!212_arg_0_1 ?i))) (isNNF!212 (lhs!1157 (isNNF!212_arg_0_1 ?i)))) (ite ((_ is Or!1166) (isNNF!212_arg_0_1 ?i)) (and (isNNF!212 (rhs!1168 (isNNF!212_arg_0_1 ?i))) (isNNF!212 (lhs!1167 (isNNF!212_arg_0_1 ?i)))) (ite ((_ is Implies!1159) (isNNF!212_arg_0_1 ?i)) (and (isNNF!212 (rhs!1161 (isNNF!212_arg_0_1 ?i))) (isNNF!212 (lhs!1160 (isNNF!212_arg_0_1 ?i)))) (ite (and ((_ is Literal!1162) (f!1165 (isNNF!212_arg_0_1 ?i))) ((_ is Not!1164) (isNNF!212_arg_0_1 ?i))) true (ite ((_ is Not!1164) (isNNF!212_arg_0_1 ?i)) false (ite ((_ is Literal!1162) (isNNF!212_arg_0_1 ?i)) true error_value!1169))))))) (ite ((_ is And!1156) (isNNF!212_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (rhs!1158 (isNNF!212_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (lhs!1157 (isNNF!212_arg_0_1 ?i)))) ))) (ite ((_ is Or!1166) (isNNF!212_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (rhs!1168 (isNNF!212_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (lhs!1167 (isNNF!212_arg_0_1 ?i)))) ))) (ite ((_ is Implies!1159) (isNNF!212_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (rhs!1161 (isNNF!212_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (lhs!1160 (isNNF!212_arg_0_1 ?i)))) ))) true)))) ))
(assert (forall ((?i I_simplify!206)) (and (= (simplify!206 (simplify!206_arg_0_2 ?i)) (ite ((_ is And!1156) (simplify!206_arg_0_2 ?i)) (And!1156 (simplify!206 (lhs!1157 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1158 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Or!1166) (simplify!206_arg_0_2 ?i)) (Or!1166 (simplify!206 (lhs!1167 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1168 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Implies!1159) (simplify!206_arg_0_2 ?i)) (Or!1166 (Not!1164 (simplify!206 (lhs!1160 (simplify!206_arg_0_2 ?i)))) (simplify!206 (rhs!1161 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Not!1164) (simplify!206_arg_0_2 ?i)) (Not!1164 (simplify!206 (f!1165 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Literal!1162) (simplify!206_arg_0_2 ?i)) (simplify!206_arg_0_2 ?i) error_value!1170)))))) (ite ((_ is And!1156) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1157 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1158 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1166) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1167 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1168 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Implies!1159) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1160 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1161 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Not!1164) (simplify!206_arg_0_2 ?i)) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (f!1165 (simplify!206_arg_0_2 ?i)))) )) true))))) ))
(assert (forall ((?i I_isSimplified!208)) (and (= (isSimplified!208 (isSimplified!208_arg_0_3 ?i)) (ite ((_ is And!1156) (isSimplified!208_arg_0_3 ?i)) (and (isSimplified!208 (rhs!1158 (isSimplified!208_arg_0_3 ?i))) (isSimplified!208 (lhs!1157 (isSimplified!208_arg_0_3 ?i)))) (ite ((_ is Or!1166) (isSimplified!208_arg_0_3 ?i)) (and (isSimplified!208 (rhs!1168 (isSimplified!208_arg_0_3 ?i))) (isSimplified!208 (lhs!1167 (isSimplified!208_arg_0_3 ?i)))) (ite ((_ is Implies!1159) (isSimplified!208_arg_0_3 ?i)) false (ite ((_ is Not!1164) (isSimplified!208_arg_0_3 ?i)) (isSimplified!208 (f!1165 (isSimplified!208_arg_0_3 ?i))) (ite ((_ is Literal!1162) (isSimplified!208_arg_0_3 ?i)) true error_value!1171)))))) (ite ((_ is And!1156) (isSimplified!208_arg_0_3 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (rhs!1158 (isSimplified!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (lhs!1157 (isSimplified!208_arg_0_3 ?i)))) ))) (ite ((_ is Or!1166) (isSimplified!208_arg_0_3 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (rhs!1168 (isSimplified!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (lhs!1167 (isSimplified!208_arg_0_3 ?i)))) ))) (ite ((_ is Implies!1159) (isSimplified!208_arg_0_3 ?i)) true (ite ((_ is Not!1164) (isSimplified!208_arg_0_3 ?i)) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (f!1165 (isSimplified!208_arg_0_3 ?i)))) )) true))))) ))
(assert (not (forall ((BOUND_VARIABLE_502 Formula!1155) (BOUND_VARIABLE_503 Formula!1155)) (or (or (isNNF!212 BOUND_VARIABLE_503) (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) BOUND_VARIABLE_503)) )) (and (or (isNNF!212 BOUND_VARIABLE_502) (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) BOUND_VARIABLE_502)) )) (not (and (isNNF!212 (simplify!206 BOUND_VARIABLE_502)) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (simplify!206 BOUND_VARIABLE_502))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) BOUND_VARIABLE_502)) ))))) (not (and (isNNF!212 (And!1156 BOUND_VARIABLE_502 BOUND_VARIABLE_503)) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (And!1156 BOUND_VARIABLE_502 BOUND_VARIABLE_503))) )))) (or (isNNF!212 (simplify!206 (And!1156 BOUND_VARIABLE_502 BOUND_VARIABLE_503))) (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (simplify!206 (And!1156 BOUND_VARIABLE_502 BOUND_VARIABLE_503)))) ) (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (And!1156 BOUND_VARIABLE_502 BOUND_VARIABLE_503))) ))) )))
(check-sat)
(exit)

