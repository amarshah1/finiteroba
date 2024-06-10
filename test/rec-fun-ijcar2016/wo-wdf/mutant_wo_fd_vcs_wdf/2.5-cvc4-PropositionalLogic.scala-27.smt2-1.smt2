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


(declare-datatypes ((Formula!1352 0)) (((And!1353 (lhs!1354 Formula!1352) (rhs!1355 Formula!1352)) (Implies!1356 (lhs!1357 Formula!1352) (rhs!1358 Formula!1352)) (Literal!1359 (id!1360 (_ BitVec 32))) (Not!1361 (f!1362 Formula!1352)) (Or!1363 (lhs!1364 Formula!1352) (rhs!1365 Formula!1352)))
))
(declare-fun error_value!1366 () Bool)
(declare-fun isSimplified!208 (Formula!1352) Bool)
(declare-fun error_value!1367 () Formula!1352)
(declare-fun simplify!206 (Formula!1352) Formula!1352)
(declare-sort I_isSimplified!208 0)
(declare-fun isSimplified!208_arg_0_1 (I_isSimplified!208) Formula!1352)
(declare-sort I_simplify!206 0)
(declare-fun simplify!206_arg_0_2 (I_simplify!206) Formula!1352)
(assert (forall ((?i I_isSimplified!208)) (and (= (isSimplified!208 (isSimplified!208_arg_0_1 ?i)) (ite ((_ is And!1353) (isSimplified!208_arg_0_1 ?i)) (and (isSimplified!208 (rhs!1355 (isSimplified!208_arg_0_1 ?i))) (isSimplified!208 (lhs!1354 (isSimplified!208_arg_0_1 ?i)))) (ite ((_ is Or!1363) (isSimplified!208_arg_0_1 ?i)) (and (isSimplified!208 (rhs!1365 (isSimplified!208_arg_0_1 ?i))) (isSimplified!208 (lhs!1364 (isSimplified!208_arg_0_1 ?i)))) (ite ((_ is Implies!1356) (isSimplified!208_arg_0_1 ?i)) false (ite ((_ is Not!1361) (isSimplified!208_arg_0_1 ?i)) (isSimplified!208 (f!1362 (isSimplified!208_arg_0_1 ?i))) (ite ((_ is Literal!1359) (isSimplified!208_arg_0_1 ?i)) true error_value!1366)))))) (ite ((_ is And!1353) (isSimplified!208_arg_0_1 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (rhs!1355 (isSimplified!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (lhs!1354 (isSimplified!208_arg_0_1 ?i)))) ))) (ite ((_ is Or!1363) (isSimplified!208_arg_0_1 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (rhs!1365 (isSimplified!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (lhs!1364 (isSimplified!208_arg_0_1 ?i)))) ))) (ite ((_ is Implies!1356) (isSimplified!208_arg_0_1 ?i)) true (ite ((_ is Not!1361) (isSimplified!208_arg_0_1 ?i)) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (f!1362 (isSimplified!208_arg_0_1 ?i)))) )) true))))) ))
(assert (forall ((?i I_simplify!206)) (and (= (simplify!206 (simplify!206_arg_0_2 ?i)) (ite ((_ is And!1353) (simplify!206_arg_0_2 ?i)) (And!1353 (simplify!206 (lhs!1354 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1355 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Or!1363) (simplify!206_arg_0_2 ?i)) (Or!1363 (simplify!206 (lhs!1364 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1365 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Implies!1356) (simplify!206_arg_0_2 ?i)) (Or!1363 (Not!1361 (simplify!206 (lhs!1357 (simplify!206_arg_0_2 ?i)))) (simplify!206 (rhs!1358 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Not!1361) (simplify!206_arg_0_2 ?i)) (Not!1361 (simplify!206 (f!1362 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Literal!1359) (simplify!206_arg_0_2 ?i)) (simplify!206_arg_0_2 ?i) error_value!1367)))))) (ite ((_ is And!1353) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1354 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1355 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1363) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1364 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1365 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Implies!1356) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1357 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1358 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Not!1361) (simplify!206_arg_0_2 ?i)) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (f!1362 (simplify!206_arg_0_2 ?i)))) )) true))))) ))
(assert (not (forall ((BOUND_VARIABLE_393 (_ BitVec 32))) (or (or (isSimplified!208 (Literal!1359 BOUND_VARIABLE_393)) (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (Literal!1359 BOUND_VARIABLE_393))) )) (or (= (simplify!206 (Literal!1359 BOUND_VARIABLE_393)) (Literal!1359 BOUND_VARIABLE_393)) (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (Literal!1359 BOUND_VARIABLE_393))) ))) )))
(check-sat)
(exit)
