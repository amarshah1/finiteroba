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


(declare-datatypes ((List!880 0)) (((Cons!881 (head!882 (_ BitVec 32)) (tail!883 List!880)) (Nil!884))
))
(declare-fun error_value!885 () Bool)
(declare-fun positive!206 (List!880) Bool)
(declare-fun error_value!886 () List!880)
(declare-fun positiveMap_failling_1!209 ((Array (_ BitVec 32) (_ BitVec 32)) List!880) List!880)
(declare-fun error_value!887 () List!880)
(assert (forall ((list!205 List!880)) (= (positive!206 list!205) (ite ((_ is Cons!881) list!205) (ite (bvslt (head!882 list!205) (_ bv0 32)) false (positive!206 (tail!883 list!205))) (ite ((_ is Nil!884) list!205) true error_value!885))) ))
(assert (forall ((f!207 (Array (_ BitVec 32) (_ BitVec 32))) (list!208 List!880)) (= (positiveMap_failling_1!209 f!207 list!208) (ite ((_ is Cons!881) list!208) (Cons!881 (ite (bvslt (select f!207 (head!882 list!208)) (_ bv4294967295 32)) (_ bv0 32) (select f!207 (head!882 list!208))) (positiveMap_failling_1!209 f!207 (tail!883 list!208))) (ite ((_ is Nil!884) list!208) Nil!884 error_value!886))) ))
(assert (exists ((list!208 List!880) (f!207 (Array (_ BitVec 32) (_ BitVec 32)))) (not (positive!206 (ite ((_ is Cons!881) list!208) (Cons!881 (ite (bvslt (select f!207 (head!882 list!208)) (_ bv4294967295 32)) (_ bv0 32) (select f!207 (head!882 list!208))) (positiveMap_failling_1!209 f!207 (tail!883 list!208))) (ite ((_ is Nil!884) list!208) Nil!884 error_value!887)))) ))
(check-sat)
(exit)

