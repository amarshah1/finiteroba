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


(declare-datatypes ((Formula!1384 0)) (((And!1385 (lhs!1386 Formula!1384) (rhs!1387 Formula!1384)) (Implies!1388 (lhs!1389 Formula!1384) (rhs!1390 Formula!1384)) (Literal!1391 (id!1392 (_ BitVec 32))) (Not!1393 (f!1394 Formula!1384)) (Or!1395 (lhs!1396 Formula!1384) (rhs!1397 Formula!1384)))
))
(declare-fun error_value!1398 () Bool)
(declare-fun isSimplified!208 (Formula!1384) Bool)
(declare-fun error_value!1399 () Formula!1384)
(declare-fun simplify!206 (Formula!1384) Formula!1384)
(declare-sort I_isSimplified!208 0)
(declare-fun isSimplified!208_arg_0_1 (I_isSimplified!208) Formula!1384)
(declare-sort I_simplify!206 0)
(declare-fun simplify!206_arg_0_2 (I_simplify!206) Formula!1384)
(assert (forall ((?i I_isSimplified!208)) (and (= (isSimplified!208 (isSimplified!208_arg_0_1 ?i)) (ite ((_ is And!1385) (isSimplified!208_arg_0_1 ?i)) (and (isSimplified!208 (rhs!1387 (isSimplified!208_arg_0_1 ?i))) (isSimplified!208 (lhs!1386 (isSimplified!208_arg_0_1 ?i)))) (ite ((_ is Or!1395) (isSimplified!208_arg_0_1 ?i)) (and (isSimplified!208 (rhs!1397 (isSimplified!208_arg_0_1 ?i))) (isSimplified!208 (lhs!1396 (isSimplified!208_arg_0_1 ?i)))) (ite ((_ is Implies!1388) (isSimplified!208_arg_0_1 ?i)) false (ite ((_ is Not!1393) (isSimplified!208_arg_0_1 ?i)) (isSimplified!208 (f!1394 (isSimplified!208_arg_0_1 ?i))) (ite ((_ is Literal!1391) (isSimplified!208_arg_0_1 ?i)) true error_value!1398)))))) (ite ((_ is And!1385) (isSimplified!208_arg_0_1 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (rhs!1387 (isSimplified!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (lhs!1386 (isSimplified!208_arg_0_1 ?i)))) ))) (ite ((_ is Or!1395) (isSimplified!208_arg_0_1 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (rhs!1397 (isSimplified!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (lhs!1396 (isSimplified!208_arg_0_1 ?i)))) ))) (ite ((_ is Implies!1388) (isSimplified!208_arg_0_1 ?i)) true (ite ((_ is Not!1393) (isSimplified!208_arg_0_1 ?i)) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (f!1394 (isSimplified!208_arg_0_1 ?i)))) )) true))))) ))
(assert (forall ((?i I_simplify!206)) (and (= (simplify!206 (simplify!206_arg_0_2 ?i)) (ite ((_ is And!1385) (simplify!206_arg_0_2 ?i)) (And!1385 (simplify!206 (lhs!1386 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1387 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Or!1395) (simplify!206_arg_0_2 ?i)) (Or!1395 (simplify!206 (lhs!1396 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1397 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Implies!1388) (simplify!206_arg_0_2 ?i)) (Or!1395 (Not!1393 (simplify!206 (lhs!1389 (simplify!206_arg_0_2 ?i)))) (simplify!206 (rhs!1390 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Not!1393) (simplify!206_arg_0_2 ?i)) (Not!1393 (simplify!206 (f!1394 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Literal!1391) (simplify!206_arg_0_2 ?i)) (simplify!206_arg_0_2 ?i) error_value!1399)))))) (ite ((_ is And!1385) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1386 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1387 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1395) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1396 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1397 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Implies!1388) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1389 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1390 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Not!1393) (simplify!206_arg_0_2 ?i)) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (f!1394 (simplify!206_arg_0_2 ?i)))) )) true))))) ))
(assert (not (forall ((BOUND_VARIABLE_433 Formula!1384) (BOUND_VARIABLE_434 Formula!1384)) (or (and (or (isSimplified!208 BOUND_VARIABLE_433) (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) BOUND_VARIABLE_433)) )) (not (and (= (simplify!206 BOUND_VARIABLE_433) BOUND_VARIABLE_433) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) BOUND_VARIABLE_433)) ))))) (not (and (isSimplified!208 (Or!1395 BOUND_VARIABLE_433 BOUND_VARIABLE_434)) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (Or!1395 BOUND_VARIABLE_433 BOUND_VARIABLE_434))) )))) (or (= (simplify!206 (Or!1395 BOUND_VARIABLE_433 BOUND_VARIABLE_434)) (Or!1395 BOUND_VARIABLE_433 (simplify!206 BOUND_VARIABLE_434))) (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (Or!1395 BOUND_VARIABLE_433 BOUND_VARIABLE_434))) ) (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) BOUND_VARIABLE_434)) ))) )))
(check-sat)
(exit)

