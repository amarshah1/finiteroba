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


(declare-datatypes ((Nat!2313 0)) (((succ!2314 (pred!2315 Nat!2313)) (zero!2316))
))
(declare-fun error_value!2317 () Nat!2313)
(declare-fun minus!240 (Nat!2313 Nat!2313) Nat!2313)
(declare-fun error_value!2318 () Nat!2313)
(declare-fun plus!237 (Nat!2313 Nat!2313) Nat!2313)
(assert (forall ((x!238 Nat!2313) (y!239 Nat!2313)) (= (minus!240 x!238 y!239) (ite ((_ is zero!2316) x!238) zero!2316 (ite ((_ is zero!2316) y!239) x!238 (ite (and (and ((_ is succ!2314) x!238) ((_ is succ!2314) x!238)) ((_ is succ!2314) y!239)) (minus!240 (pred!2315 x!238) (pred!2315 y!239)) error_value!2317)))) ))
(assert (forall ((x!235 Nat!2313) (y!236 Nat!2313)) (= (plus!237 x!235 y!236) (ite ((_ is zero!2316) x!235) y!236 (ite ((_ is succ!2314) x!235) (succ!2314 (plus!237 (pred!2315 x!235) y!236)) error_value!2318))) ))
(assert (not (forall ((m!451 Nat!2313) (n!452 Nat!2313)) (= n!452 m!451) )))
(check-sat)
(exit)

