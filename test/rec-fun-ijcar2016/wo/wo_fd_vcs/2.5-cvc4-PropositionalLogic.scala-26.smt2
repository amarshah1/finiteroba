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
(assert (forall ((f!207 Formula!1336)) (= (isSimplified!208 f!207) (ite ((_ is And!1337) f!207) (and (and (isSimplified!208 (lhs!1338 f!207)) (isSimplified!208 (lhs!1338 f!207))) (isSimplified!208 (rhs!1339 f!207))) (ite ((_ is Or!1347) f!207) (and (and (isSimplified!208 (lhs!1348 f!207)) (isSimplified!208 (lhs!1348 f!207))) (isSimplified!208 (rhs!1349 f!207))) (ite ((_ is Implies!1340) f!207) false (ite ((_ is Not!1345) f!207) (isSimplified!208 (f!1346 f!207)) (ite ((_ is Literal!1343) f!207) true error_value!1350)))))) ))
(assert (forall ((f!205 Formula!1336)) (= (simplify!206 f!205) (ite ((_ is And!1337) f!205) (And!1337 (simplify!206 (lhs!1338 f!205)) (simplify!206 (rhs!1339 f!205))) (ite ((_ is Or!1347) f!205) (Or!1347 (simplify!206 (lhs!1348 f!205)) (simplify!206 (rhs!1349 f!205))) (ite ((_ is Implies!1340) f!205) (Or!1347 (Not!1345 (simplify!206 (lhs!1341 f!205))) (simplify!206 (rhs!1342 f!205))) (ite ((_ is Not!1345) f!205) (Not!1345 (simplify!206 (f!1346 f!205))) (ite ((_ is Literal!1343) f!205) f!205 error_value!1351)))))) ))
(assert (exists ((f!221 Formula!1336)) (not (=> (and (and (and (and ((_ is Implies!1340) f!221) ((_ is Implies!1340) f!221)) (isSimplified!208 f!221)) (=> (isSimplified!208 (lhs!1341 f!221)) (= (simplify!206 (lhs!1341 f!221)) (lhs!1341 f!221)))) (=> (isSimplified!208 (rhs!1342 f!221)) (= (simplify!206 (rhs!1342 f!221)) (rhs!1342 f!221)))) (= (simplify!206 f!221) f!221))) ))
(check-sat)
(exit)

