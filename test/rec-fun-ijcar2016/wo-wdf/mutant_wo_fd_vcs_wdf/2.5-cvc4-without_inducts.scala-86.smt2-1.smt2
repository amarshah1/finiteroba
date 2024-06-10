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


(declare-datatypes ((Nat!2319 0)) (((succ!2320 (pred!2321 Nat!2319)) (zero!2322))
))
(declare-fun error_value!2323 () Nat!2319)
(declare-fun minus!240 (Nat!2319 Nat!2319) Nat!2319)
(declare-sort I_minus!240 0)
(declare-fun minus!240_arg_0_1 (I_minus!240) Nat!2319)
(declare-fun minus!240_arg_1_2 (I_minus!240) Nat!2319)
(assert (forall ((?i I_minus!240)) (and (= (minus!240 (minus!240_arg_0_1 ?i) (minus!240_arg_1_2 ?i)) (ite ((_ is zero!2322) (minus!240_arg_0_1 ?i)) zero!2322 (ite ((_ is zero!2322) (minus!240_arg_1_2 ?i)) (minus!240_arg_0_1 ?i) (ite (and ((_ is succ!2320) (minus!240_arg_1_2 ?i)) ((_ is succ!2320) (minus!240_arg_0_1 ?i))) (minus!240 (pred!2321 (minus!240_arg_0_1 ?i)) (pred!2321 (minus!240_arg_1_2 ?i))) error_value!2323)))) (ite ((_ is zero!2322) (minus!240_arg_0_1 ?i)) true (ite ((_ is zero!2322) (minus!240_arg_1_2 ?i)) true (ite (and ((_ is succ!2320) (minus!240_arg_1_2 ?i)) ((_ is succ!2320) (minus!240_arg_0_1 ?i))) (not (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) (pred!2321 (minus!240_arg_0_1 ?i))) (= (minus!240_arg_1_2 ?z) (pred!2321 (minus!240_arg_1_2 ?i))))) )) true)))) ))
(assert (not (forall ((i!454 Nat!2319) (j!455 Nat!2319) (k!456 Nat!2319)) (or (= (minus!240 (minus!240 i!454 j!455) k!456) (minus!240 (minus!240 k!456 i!454) j!455)) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) (minus!240 i!454 j!455)) (= (minus!240_arg_1_2 ?z) k!456))) ) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) i!454) (= (minus!240_arg_1_2 ?z) j!455))) ) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) (minus!240 k!456 i!454)) (= (minus!240_arg_1_2 ?z) j!455))) ) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_1 ?z) k!456) (= (minus!240_arg_1_2 ?z) i!454))) )) )))
(check-sat)
(exit)
