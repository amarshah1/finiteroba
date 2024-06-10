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


(declare-datatypes ((Nat!2348 0)) (((succ!2349 (pred!2350 Nat!2348)) (zero!2351))
))
(declare-datatypes ((Lst!2352 0)) (((cons!2353 (head!2354 Nat!2348) (tail!2355 Lst!2352)) (nil!2356))
))
(declare-fun error_value!2357 () Lst!2352)
(declare-fun drop!257 (Nat!2348 Lst!2352) Lst!2352)
(declare-fun error_value!2358 () Lst!2352)
(declare-fun take!260 (Nat!2348 Lst!2352) Lst!2352)
(declare-fun error_value!2359 () Nat!2348)
(declare-fun minus!240 (Nat!2348 Nat!2348) Nat!2348)
(declare-sort I_drop!257 0)
(declare-fun drop!257_arg_0_1 (I_drop!257) Nat!2348)
(declare-fun drop!257_arg_1_2 (I_drop!257) Lst!2352)
(declare-sort I_take!260 0)
(declare-fun take!260_arg_0_3 (I_take!260) Nat!2348)
(declare-fun take!260_arg_1_4 (I_take!260) Lst!2352)
(declare-sort I_minus!240 0)
(declare-fun minus!240_arg_0_5 (I_minus!240) Nat!2348)
(declare-fun minus!240_arg_1_6 (I_minus!240) Nat!2348)
(assert (forall ((?i I_drop!257)) (and (= (drop!257 (drop!257_arg_0_1 ?i) (drop!257_arg_1_2 ?i)) (ite ((_ is nil!2356) (drop!257_arg_1_2 ?i)) nil!2356 (ite ((_ is zero!2351) (drop!257_arg_0_1 ?i)) (drop!257_arg_1_2 ?i) (ite (and ((_ is cons!2353) (drop!257_arg_1_2 ?i)) ((_ is succ!2349) (drop!257_arg_0_1 ?i))) (drop!257 (pred!2350 (drop!257_arg_0_1 ?i)) (tail!2355 (drop!257_arg_1_2 ?i))) error_value!2357)))) (ite ((_ is nil!2356) (drop!257_arg_1_2 ?i)) true (ite ((_ is zero!2351) (drop!257_arg_0_1 ?i)) true (ite (and ((_ is cons!2353) (drop!257_arg_1_2 ?i)) ((_ is succ!2349) (drop!257_arg_0_1 ?i))) (not (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) (pred!2350 (drop!257_arg_0_1 ?i))) (= (drop!257_arg_1_2 ?z) (tail!2355 (drop!257_arg_1_2 ?i))))) )) true)))) ))
(assert (forall ((?i I_take!260)) (and (= (take!260 (take!260_arg_0_3 ?i) (take!260_arg_1_4 ?i)) (ite ((_ is nil!2356) (take!260_arg_1_4 ?i)) nil!2356 (ite ((_ is zero!2351) (take!260_arg_0_3 ?i)) nil!2356 (ite (and ((_ is cons!2353) (take!260_arg_1_4 ?i)) ((_ is succ!2349) (take!260_arg_0_3 ?i))) (cons!2353 (head!2354 (take!260_arg_1_4 ?i)) (take!260 (pred!2350 (take!260_arg_0_3 ?i)) (tail!2355 (take!260_arg_1_4 ?i)))) error_value!2358)))) (ite ((_ is nil!2356) (take!260_arg_1_4 ?i)) true (ite ((_ is zero!2351) (take!260_arg_0_3 ?i)) true (ite (and ((_ is cons!2353) (take!260_arg_1_4 ?i)) ((_ is succ!2349) (take!260_arg_0_3 ?i))) (not (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_3 ?z) (pred!2350 (take!260_arg_0_3 ?i))) (= (take!260_arg_1_4 ?z) (tail!2355 (take!260_arg_1_4 ?i))))) )) true)))) ))
(assert (forall ((?i I_minus!240)) (and (= (minus!240 (minus!240_arg_0_5 ?i) (minus!240_arg_1_6 ?i)) (ite ((_ is zero!2351) (minus!240_arg_0_5 ?i)) zero!2351 (ite ((_ is zero!2351) (minus!240_arg_1_6 ?i)) (minus!240_arg_0_5 ?i) (ite (and ((_ is succ!2349) (minus!240_arg_1_6 ?i)) ((_ is succ!2349) (minus!240_arg_0_5 ?i))) (minus!240 (pred!2350 (minus!240_arg_0_5 ?i)) (pred!2350 (minus!240_arg_1_6 ?i))) error_value!2359)))) (ite ((_ is zero!2351) (minus!240_arg_0_5 ?i)) true (ite ((_ is zero!2351) (minus!240_arg_1_6 ?i)) true (ite (and ((_ is succ!2349) (minus!240_arg_1_6 ?i)) ((_ is succ!2349) (minus!240_arg_0_5 ?i))) (not (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_5 ?z) (pred!2350 (minus!240_arg_0_5 ?i))) (= (minus!240_arg_1_6 ?z) (pred!2350 (minus!240_arg_1_6 ?i))))) )) true)))) ))
(assert (not (forall ((n!466 Nat!2348) (m!467 Nat!2348) (xs!468 Lst!2352)) (or (= (drop!257 n!466 xs!468) (take!260 (minus!240 m!467 n!466) (drop!257 n!466 (take!260 m!467 xs!468)))) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) n!466) (= (drop!257_arg_1_2 ?z) xs!468))) ) (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_3 ?z) (minus!240 m!467 n!466)) (= (take!260_arg_1_4 ?z) (drop!257 n!466 (take!260 m!467 xs!468))))) ) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_5 ?z) m!467) (= (minus!240_arg_1_6 ?z) n!466))) ) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) n!466) (= (drop!257_arg_1_2 ?z) (take!260 m!467 xs!468)))) ) (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_3 ?z) m!467) (= (take!260_arg_1_4 ?z) xs!468))) )) )))
(check-sat)
(exit)

