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


(declare-datatypes ((List!926 0)) (((Cons!927 (head!928 Int) (tail!929 List!926)) (Nil!930))
))
(declare-fun error_value!931 () Bool)
(declare-fun allPos!212 (List!926) Bool)
(declare-fun error_value!932 () Int)
(declare-fun max!206 (List!926) Int)
(assert (forall ((list!211 List!926)) (= (allPos!212 list!211) (ite ((_ is Nil!930) list!211) true (ite ((_ is Cons!927) list!211) (and (and (>= (head!928 list!211) (- 0)) (>= (head!928 list!211) (- 0))) (allPos!212 (tail!929 list!211))) error_value!931))) ))
(assert (forall ((list!205 List!926)) (= (max!206 list!205) (ite (and (and ((_ is Cons!927) list!205) ((_ is Cons!927) list!205)) ((_ is Nil!930) (tail!929 list!205))) (head!928 list!205) (ite ((_ is Cons!927) list!205) (ite (> (max!206 (tail!929 list!205)) (head!928 list!205)) (max!206 (tail!929 list!205)) (head!928 list!205)) error_value!932))) ))
(assert (not (forall ((list!213 List!926)) (allPos!212 list!213) )))
(check-sat)
(exit)

