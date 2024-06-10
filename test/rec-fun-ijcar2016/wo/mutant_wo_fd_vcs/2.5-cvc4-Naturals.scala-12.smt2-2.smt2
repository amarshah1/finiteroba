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


(declare-datatypes ((Nat!955 0)) (((Succ!956 (x!957 Nat!955)) (Zero!958))
))
(declare-fun error_value!959 () Nat!955)
(declare-fun plus!207 (Nat!955 Nat!955) Nat!955)
(assert (forall ((x!205 Nat!955) (y!206 Nat!955)) (= (plus!207 x!205 y!206) (ite ((_ is Zero!958) x!205) y!206 (ite ((_ is Succ!956) x!205) (Succ!956 (plus!207 (x!957 x!205) y!206)) error_value!959))) ))
(assert (not (forall ((y!222 Nat!955)) (= (plus!207 (plus!207 y!222 Zero!958) Zero!958) (Succ!956 (Succ!956 y!222))) )))
(check-sat)
(exit)

