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


(declare-datatypes ((Nat!2484 0)) (((succ!2485 (pred!2486 Nat!2484)) (zero!2487))
))
(declare-fun error_value!2488 () Bool)
(declare-fun leq!234 (Nat!2484 Nat!2484) Bool)
(declare-fun less!231 (Nat!2484 Nat!2484) Bool)
(assert (forall ((x!232 Nat!2484) (y!233 Nat!2484)) (= (leq!234 x!232 y!233) (or (or (= x!232 y!233) (= x!232 y!233)) (less!231 x!232 y!233))) ))
(assert (forall ((x!229 Nat!2484) (y!230 Nat!2484)) (= (less!231 x!229 y!230) (ite ((_ is zero!2487) y!230) false (ite (and (and ((_ is zero!2487) x!229) ((_ is zero!2487) x!229)) ((_ is succ!2485) y!230)) true (ite (and (and ((_ is succ!2485) x!229) ((_ is succ!2485) x!229)) ((_ is succ!2485) y!230)) (less!231 (pred!2486 x!229) (pred!2486 y!230)) error_value!2488)))) ))
(assert (exists ((m!504 Nat!2484) (n!503 Nat!2484)) (not (or (or (not (leq!234 m!504 n!503)) (not (leq!234 m!504 n!503))) (leq!234 m!504 (succ!2485 n!503)))) ))
(check-sat)
(exit)

