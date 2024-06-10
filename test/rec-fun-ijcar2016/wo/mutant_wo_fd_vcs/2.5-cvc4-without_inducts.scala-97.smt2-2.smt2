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


(declare-datatypes ((Nat!2448 0)) (((succ!2449 (pred!2450 Nat!2448)) (zero!2451))
))
(declare-fun error_value!2452 () Bool)
(declare-fun less!231 (Nat!2448 Nat!2448) Bool)
(declare-fun error_value!2453 () Nat!2448)
(declare-fun plus!237 (Nat!2448 Nat!2448) Nat!2448)
(assert (forall ((x!229 Nat!2448) (y!230 Nat!2448)) (= (less!231 x!229 y!230) (ite ((_ is zero!2451) y!230) false (ite (and (and ((_ is zero!2451) x!229) ((_ is zero!2451) x!229)) ((_ is succ!2449) y!230)) true (ite (and (and ((_ is succ!2449) x!229) ((_ is succ!2449) x!229)) ((_ is succ!2449) y!230)) (less!231 (pred!2450 x!229) (pred!2450 y!230)) error_value!2452)))) ))
(assert (forall ((x!235 Nat!2448) (y!236 Nat!2448)) (= (plus!237 x!235 y!236) (ite ((_ is zero!2451) x!235) y!236 (ite ((_ is succ!2449) x!235) (succ!2449 (plus!237 (pred!2450 x!235) y!236)) error_value!2453))) ))
(assert (not (forall ((i!492 Nat!2448) (m!493 Nat!2448)) (less!231 i!492 (plus!237 m!493 i!492)) )))
(check-sat)
(exit)

