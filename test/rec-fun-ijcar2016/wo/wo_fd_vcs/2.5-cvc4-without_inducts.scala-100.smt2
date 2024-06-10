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


(declare-datatypes ((Nat!2478 0)) (((succ!2479 (pred!2480 Nat!2478)) (zero!2481))
))
(declare-fun error_value!2482 () Bool)
(declare-fun leq!234 (Nat!2478 Nat!2478) Bool)
(declare-fun less!231 (Nat!2478 Nat!2478) Bool)
(declare-fun error_value!2483 () Nat!2478)
(declare-fun plus!237 (Nat!2478 Nat!2478) Nat!2478)
(assert (forall ((x!232 Nat!2478) (y!233 Nat!2478)) (= (leq!234 x!232 y!233) (or (or (= x!232 y!233) (= x!232 y!233)) (less!231 x!232 y!233))) ))
(assert (forall ((x!229 Nat!2478) (y!230 Nat!2478)) (= (less!231 x!229 y!230) (ite ((_ is zero!2481) y!230) false (ite (and (and ((_ is zero!2481) x!229) ((_ is zero!2481) x!229)) ((_ is succ!2479) y!230)) true (ite (and (and ((_ is succ!2479) x!229) ((_ is succ!2479) x!229)) ((_ is succ!2479) y!230)) (less!231 (pred!2480 x!229) (pred!2480 y!230)) error_value!2482)))) ))
(assert (forall ((x!235 Nat!2478) (y!236 Nat!2478)) (= (plus!237 x!235 y!236) (ite ((_ is zero!2481) x!235) y!236 (ite ((_ is succ!2479) x!235) (succ!2479 (plus!237 (pred!2480 x!235) y!236)) error_value!2483))) ))
(assert (exists ((n!500 Nat!2478) (m!501 Nat!2478)) (not (leq!234 n!500 (plus!237 m!501 n!500))) ))
(check-sat)
(exit)

