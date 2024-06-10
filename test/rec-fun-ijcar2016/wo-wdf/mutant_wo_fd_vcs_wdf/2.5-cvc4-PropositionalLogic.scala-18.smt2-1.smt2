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


(declare-datatypes ((Formula!1206 0)) (((And!1207 (lhs!1208 Formula!1206) (rhs!1209 Formula!1206)) (Implies!1210 (lhs!1211 Formula!1206) (rhs!1212 Formula!1206)) (Literal!1213 (id!1214 (_ BitVec 32))) (Not!1215 (f!1216 Formula!1206)) (Or!1217 (lhs!1218 Formula!1206) (rhs!1219 Formula!1206)))
))
(declare-fun error_value!1220 () Bool)
(declare-fun isNNF!212 (Formula!1206) Bool)
(declare-fun error_value!1221 () Formula!1206)
(declare-fun error_value!1222 () Bool)
(declare-fun simplify!206 (Formula!1206) Formula!1206)
(declare-fun isSimplified!208 (Formula!1206) Bool)
(declare-sort I_isNNF!212 0)
(declare-fun isNNF!212_arg_0_1 (I_isNNF!212) Formula!1206)
(declare-sort I_simplify!206 0)
(declare-fun simplify!206_arg_0_2 (I_simplify!206) Formula!1206)
(declare-sort I_isSimplified!208 0)
(declare-fun isSimplified!208_arg_0_3 (I_isSimplified!208) Formula!1206)
(assert (forall ((?i I_isNNF!212)) (and (= (isNNF!212 (isNNF!212_arg_0_1 ?i)) (ite ((_ is And!1207) (isNNF!212_arg_0_1 ?i)) (and (isNNF!212 (rhs!1209 (isNNF!212_arg_0_1 ?i))) (isNNF!212 (lhs!1208 (isNNF!212_arg_0_1 ?i)))) (ite ((_ is Or!1217) (isNNF!212_arg_0_1 ?i)) (and (isNNF!212 (rhs!1219 (isNNF!212_arg_0_1 ?i))) (isNNF!212 (lhs!1218 (isNNF!212_arg_0_1 ?i)))) (ite ((_ is Implies!1210) (isNNF!212_arg_0_1 ?i)) (and (isNNF!212 (rhs!1212 (isNNF!212_arg_0_1 ?i))) (isNNF!212 (lhs!1211 (isNNF!212_arg_0_1 ?i)))) (ite (and ((_ is Literal!1213) (f!1216 (isNNF!212_arg_0_1 ?i))) ((_ is Not!1215) (isNNF!212_arg_0_1 ?i))) true (ite ((_ is Not!1215) (isNNF!212_arg_0_1 ?i)) false (ite ((_ is Literal!1213) (isNNF!212_arg_0_1 ?i)) true error_value!1220))))))) (ite ((_ is And!1207) (isNNF!212_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (rhs!1209 (isNNF!212_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (lhs!1208 (isNNF!212_arg_0_1 ?i)))) ))) (ite ((_ is Or!1217) (isNNF!212_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (rhs!1219 (isNNF!212_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (lhs!1218 (isNNF!212_arg_0_1 ?i)))) ))) (ite ((_ is Implies!1210) (isNNF!212_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (rhs!1212 (isNNF!212_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (lhs!1211 (isNNF!212_arg_0_1 ?i)))) ))) true)))) ))
(assert (forall ((?i I_simplify!206)) (and (= (simplify!206 (simplify!206_arg_0_2 ?i)) (ite ((_ is And!1207) (simplify!206_arg_0_2 ?i)) (And!1207 (simplify!206 (lhs!1208 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1209 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Or!1217) (simplify!206_arg_0_2 ?i)) (Or!1217 (simplify!206 (lhs!1218 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1219 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Implies!1210) (simplify!206_arg_0_2 ?i)) (Or!1217 (Not!1215 (simplify!206 (lhs!1211 (simplify!206_arg_0_2 ?i)))) (simplify!206 (rhs!1212 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Not!1215) (simplify!206_arg_0_2 ?i)) (Not!1215 (simplify!206 (f!1216 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Literal!1213) (simplify!206_arg_0_2 ?i)) (simplify!206_arg_0_2 ?i) error_value!1221)))))) (ite ((_ is And!1207) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1208 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1209 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1217) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1218 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1219 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Implies!1210) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1211 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1212 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Not!1215) (simplify!206_arg_0_2 ?i)) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (f!1216 (simplify!206_arg_0_2 ?i)))) )) true))))) ))
(assert (forall ((?i I_isSimplified!208)) (and (= (isSimplified!208 (isSimplified!208_arg_0_3 ?i)) (ite ((_ is And!1207) (isSimplified!208_arg_0_3 ?i)) (and (isSimplified!208 (rhs!1209 (isSimplified!208_arg_0_3 ?i))) (isSimplified!208 (lhs!1208 (isSimplified!208_arg_0_3 ?i)))) (ite ((_ is Or!1217) (isSimplified!208_arg_0_3 ?i)) (and (isSimplified!208 (rhs!1219 (isSimplified!208_arg_0_3 ?i))) (isSimplified!208 (lhs!1218 (isSimplified!208_arg_0_3 ?i)))) (ite ((_ is Implies!1210) (isSimplified!208_arg_0_3 ?i)) false (ite ((_ is Not!1215) (isSimplified!208_arg_0_3 ?i)) (isSimplified!208 (f!1216 (isSimplified!208_arg_0_3 ?i))) (ite ((_ is Literal!1213) (isSimplified!208_arg_0_3 ?i)) true error_value!1222)))))) (ite ((_ is And!1207) (isSimplified!208_arg_0_3 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (rhs!1209 (isSimplified!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (lhs!1208 (isSimplified!208_arg_0_3 ?i)))) ))) (ite ((_ is Or!1217) (isSimplified!208_arg_0_3 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (rhs!1219 (isSimplified!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (lhs!1218 (isSimplified!208_arg_0_3 ?i)))) ))) (ite ((_ is Implies!1210) (isSimplified!208_arg_0_3 ?i)) true (ite ((_ is Not!1215) (isSimplified!208_arg_0_3 ?i)) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_3 ?z) (f!1216 (isSimplified!208_arg_0_3 ?i)))) )) true))))) ))
(assert (not (forall ((BOUND_VARIABLE_484 Formula!1206)) (or (and (or (isNNF!212 (simplify!206 BOUND_VARIABLE_484)) (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (simplify!206 BOUND_VARIABLE_484))) ) (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) BOUND_VARIABLE_484)) )) (not (and (isNNF!212 BOUND_VARIABLE_484) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) BOUND_VARIABLE_484)) ))))) (not (and (isNNF!212 (Not!1215 BOUND_VARIABLE_484)) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (Not!1215 BOUND_VARIABLE_484))) )))) (or (isNNF!212 (simplify!206 (Not!1215 BOUND_VARIABLE_484))) (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (simplify!206 (Not!1215 BOUND_VARIABLE_484)))) ) (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (Not!1215 BOUND_VARIABLE_484))) ))) )))
(check-sat)
(exit)

