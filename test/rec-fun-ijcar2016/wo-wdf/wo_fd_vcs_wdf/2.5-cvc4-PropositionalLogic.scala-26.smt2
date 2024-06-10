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


(declare-datatypes ((Formula!1336 0)) (((And!1337 (lhs!1338 Formula!1336) (rhs!1339 Formula!1336)) (Implies!1340 (lhs!1341 Formula!1336) (rhs!1342 Formula!1336)) (Literal!1343 (id!1344 (_ BitVec 32))) (Not!1345 (f!1346 Formula!1336)) (Or!1347 (lhs!1348 Formula!1336) (rhs!1349 Formula!1336)))
))
(declare-fun error_value!1350 () Bool)
(declare-fun isSimplified!208 (Formula!1336) Bool)
(declare-fun error_value!1351 () Formula!1336)
(declare-fun simplify!206 (Formula!1336) Formula!1336)
(declare-sort I_isSimplified!208 0)
(declare-fun isSimplified!208_arg_0_1 (I_isSimplified!208) Formula!1336)
(declare-sort I_simplify!206 0)
(declare-fun simplify!206_arg_0_2 (I_simplify!206) Formula!1336)
(assert (forall ((?i I_isSimplified!208)) (and (= (isSimplified!208 (isSimplified!208_arg_0_1 ?i)) (ite ((_ is And!1337) (isSimplified!208_arg_0_1 ?i)) (and (isSimplified!208 (rhs!1339 (isSimplified!208_arg_0_1 ?i))) (isSimplified!208 (lhs!1338 (isSimplified!208_arg_0_1 ?i)))) (ite ((_ is Or!1347) (isSimplified!208_arg_0_1 ?i)) (and (isSimplified!208 (rhs!1349 (isSimplified!208_arg_0_1 ?i))) (isSimplified!208 (lhs!1348 (isSimplified!208_arg_0_1 ?i)))) (ite ((_ is Implies!1340) (isSimplified!208_arg_0_1 ?i)) false (ite ((_ is Not!1345) (isSimplified!208_arg_0_1 ?i)) (isSimplified!208 (f!1346 (isSimplified!208_arg_0_1 ?i))) (ite ((_ is Literal!1343) (isSimplified!208_arg_0_1 ?i)) true error_value!1350)))))) (ite ((_ is And!1337) (isSimplified!208_arg_0_1 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (rhs!1339 (isSimplified!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (lhs!1338 (isSimplified!208_arg_0_1 ?i)))) ))) (ite ((_ is Or!1347) (isSimplified!208_arg_0_1 ?i)) (and (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (rhs!1349 (isSimplified!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (lhs!1348 (isSimplified!208_arg_0_1 ?i)))) ))) (ite ((_ is Implies!1340) (isSimplified!208_arg_0_1 ?i)) true (ite ((_ is Not!1345) (isSimplified!208_arg_0_1 ?i)) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (f!1346 (isSimplified!208_arg_0_1 ?i)))) )) true))))) ))
(assert (forall ((?i I_simplify!206)) (and (= (simplify!206 (simplify!206_arg_0_2 ?i)) (ite ((_ is And!1337) (simplify!206_arg_0_2 ?i)) (And!1337 (simplify!206 (lhs!1338 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1339 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Or!1347) (simplify!206_arg_0_2 ?i)) (Or!1347 (simplify!206 (lhs!1348 (simplify!206_arg_0_2 ?i))) (simplify!206 (rhs!1349 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Implies!1340) (simplify!206_arg_0_2 ?i)) (Or!1347 (Not!1345 (simplify!206 (lhs!1341 (simplify!206_arg_0_2 ?i)))) (simplify!206 (rhs!1342 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Not!1345) (simplify!206_arg_0_2 ?i)) (Not!1345 (simplify!206 (f!1346 (simplify!206_arg_0_2 ?i)))) (ite ((_ is Literal!1343) (simplify!206_arg_0_2 ?i)) (simplify!206_arg_0_2 ?i) error_value!1351)))))) (ite ((_ is And!1337) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1338 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1339 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1347) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1348 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1349 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Implies!1340) (simplify!206_arg_0_2 ?i)) (and (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1341 (simplify!206_arg_0_2 ?i)))) )) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1342 (simplify!206_arg_0_2 ?i)))) ))) (ite ((_ is Not!1345) (simplify!206_arg_0_2 ?i)) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (f!1346 (simplify!206_arg_0_2 ?i)))) )) true))))) ))
(assert (exists ((f!221 Formula!1336)) (not (=> (and (and (and (and ((_ is Implies!1340) f!221) ((_ is Implies!1340) f!221)) (and (isSimplified!208 f!221) (not (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) f!221)) )))) (=> (or (isSimplified!208 (lhs!1341 f!221)) (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (lhs!1341 f!221))) )) (and (= (simplify!206 (lhs!1341 f!221)) (lhs!1341 f!221)) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (lhs!1341 f!221))) ))))) (=> (or (isSimplified!208 (rhs!1342 f!221)) (forall ((?z I_isSimplified!208)) (not (= (isSimplified!208_arg_0_1 ?z) (rhs!1342 f!221))) )) (and (= (simplify!206 (rhs!1342 f!221)) (rhs!1342 f!221)) (not (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) (rhs!1342 f!221))) ))))) (or (= (simplify!206 f!221) f!221) (forall ((?z I_simplify!206)) (not (= (simplify!206_arg_0_2 ?z) f!221)) )))) ))
(check-sat)
(exit)

