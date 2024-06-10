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


(declare-datatypes ((Formula!944 0)) (((And!945 (lhs!946 Formula!944) (rhs!947 Formula!944)) (Implies!948 (lhs!949 Formula!944) (rhs!950 Formula!944)) (Literal!951 (id!952 (_ BitVec 32))) (Not!953 (f!954 Formula!944)) (Or!955 (lhs!956 Formula!944) (rhs!957 Formula!944)))
))
(declare-fun error_value!958 () Bool)
(declare-fun isSimplified!208 (Formula!944) Bool)
(declare-fun error_value!959 () Formula!944)
(declare-fun simplify!206 (Formula!944) Formula!944)
(declare-fun error_value!960 () Formula!944)
(assert (forall ((f!207 Formula!944)) (= (isSimplified!208 f!207) (ite ((_ is And!945) f!207) (and (and (isSimplified!208 (lhs!946 f!207)) (isSimplified!208 (lhs!946 f!207))) (isSimplified!208 (rhs!947 f!207))) (ite ((_ is Or!955) f!207) (and (and (isSimplified!208 (lhs!956 f!207)) (isSimplified!208 (lhs!956 f!207))) (isSimplified!208 (rhs!957 f!207))) (ite ((_ is Implies!948) f!207) false (ite ((_ is Not!953) f!207) (isSimplified!208 (f!954 f!207)) (ite ((_ is Literal!951) f!207) true error_value!958)))))) ))
(assert (forall ((f!205 Formula!944)) (= (simplify!206 f!205) (ite ((_ is And!945) f!205) (And!945 (simplify!206 (lhs!946 f!205)) (simplify!206 (rhs!947 f!205))) (ite ((_ is Or!955) f!205) (Or!955 (simplify!206 (lhs!956 f!205)) (simplify!206 (rhs!957 f!205))) (ite ((_ is Implies!948) f!205) (Or!955 (Not!953 (simplify!206 (lhs!949 f!205))) (simplify!206 (rhs!950 f!205))) (ite ((_ is Not!953) f!205) (Not!953 (simplify!206 (f!954 f!205))) (ite ((_ is Literal!951) f!205) f!205 error_value!959)))))) ))
(assert (not (forall ((f!205 Formula!944)) (isSimplified!208 (ite ((_ is And!945) f!205) (And!945 (simplify!206 (lhs!946 f!205)) (simplify!206 (rhs!947 f!205))) (ite ((_ is Not!953) f!205) (Or!955 (simplify!206 (lhs!956 f!205)) (simplify!206 (rhs!957 f!205))) (ite ((_ is Implies!948) f!205) (Or!955 (Not!953 (simplify!206 (lhs!949 f!205))) (simplify!206 (rhs!950 f!205))) (ite ((_ is Or!955) f!205) (Not!953 (simplify!206 (f!954 f!205))) (ite ((_ is Literal!951) f!205) f!205 error_value!960)))))) )))
(check-sat)
(exit)

