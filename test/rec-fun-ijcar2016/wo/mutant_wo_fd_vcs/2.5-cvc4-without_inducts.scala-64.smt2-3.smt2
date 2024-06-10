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


(declare-datatypes ((Nat!2078 0)) (((succ!2079 (pred!2080 Nat!2078)) (zero!2081))
))
(declare-fun error_value!2082 () Bool)
(declare-fun nmin!249 (Nat!2078 Nat!2078) Nat!2078)
(declare-fun less!231 (Nat!2078 Nat!2078) Bool)
(assert (forall ((n!247 Nat!2078) (m!248 Nat!2078)) (= (nmin!249 n!247 m!248) (ite (less!231 n!247 m!248) n!247 m!248)) ))
(assert (forall ((x!229 Nat!2078) (y!230 Nat!2078)) (= (less!231 x!229 y!230) (ite ((_ is zero!2081) y!230) false (ite (and (and ((_ is zero!2081) x!229) ((_ is zero!2081) x!229)) ((_ is succ!2079) y!230)) true (ite (and (and ((_ is succ!2079) x!229) ((_ is succ!2079) x!229)) ((_ is succ!2079) y!230)) (less!231 (pred!2080 x!229) (pred!2080 y!230)) error_value!2082)))) ))
(assert (not (forall ((a!393 Nat!2078) (b!394 Nat!2078) (c!395 Nat!2078)) (= (nmin!249 (nmin!249 a!393 b!394) c!395) (nmin!249 a!393 (nmin!249 c!395 b!394))) )))
(check-sat)
(exit)

