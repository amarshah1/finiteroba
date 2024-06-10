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


(declare-datatypes ((Nat!910 0)) (((Succ!911 (x!912 Nat!910)) (Zero!913))
))
(declare-fun error_value!914 () Nat!910)
(declare-fun plus!207 (Nat!910 Nat!910) Nat!910)
(assert (forall ((x!205 Nat!910) (y!206 Nat!910)) (= (plus!207 x!205 y!206) (ite ((_ is Zero!913) x!205) y!206 (ite ((_ is Succ!911) x!205) (Succ!911 (plus!207 (x!912 x!205) y!206)) error_value!914))) ))
(assert (not (forall ((BOUND_VARIABLE_287 Nat!910)) (= (plus!207 BOUND_VARIABLE_287 Zero!913) BOUND_VARIABLE_287) )))
(check-sat)
(exit)

