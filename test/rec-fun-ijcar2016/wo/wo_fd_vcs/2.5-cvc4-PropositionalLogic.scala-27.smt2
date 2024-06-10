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
(assert (forall ((f!207 Formula!1352)) (= (isSimplified!208 f!207) (ite ((_ is And!1353) f!207) (and (and (isSimplified!208 (lhs!1354 f!207)) (isSimplified!208 (lhs!1354 f!207))) (isSimplified!208 (rhs!1355 f!207))) (ite ((_ is Or!1363) f!207) (and (and (isSimplified!208 (lhs!1364 f!207)) (isSimplified!208 (lhs!1364 f!207))) (isSimplified!208 (rhs!1365 f!207))) (ite ((_ is Implies!1356) f!207) false (ite ((_ is Not!1361) f!207) (isSimplified!208 (f!1362 f!207)) (ite ((_ is Literal!1359) f!207) true error_value!1366)))))) ))
(assert (forall ((f!205 Formula!1352)) (= (simplify!206 f!205) (ite ((_ is And!1353) f!205) (And!1353 (simplify!206 (lhs!1354 f!205)) (simplify!206 (rhs!1355 f!205))) (ite ((_ is Or!1363) f!205) (Or!1363 (simplify!206 (lhs!1364 f!205)) (simplify!206 (rhs!1365 f!205))) (ite ((_ is Implies!1356) f!205) (Or!1363 (Not!1361 (simplify!206 (lhs!1357 f!205))) (simplify!206 (rhs!1358 f!205))) (ite ((_ is Not!1361) f!205) (Not!1361 (simplify!206 (f!1362 f!205))) (ite ((_ is Literal!1359) f!205) f!205 error_value!1367)))))) ))
(assert (exists ((f!221 Formula!1352)) (not (=> (and (and ((_ is Literal!1359) f!221) ((_ is Literal!1359) f!221)) (isSimplified!208 f!221)) (= (simplify!206 f!221) f!221))) ))
(check-sat)
(exit)

