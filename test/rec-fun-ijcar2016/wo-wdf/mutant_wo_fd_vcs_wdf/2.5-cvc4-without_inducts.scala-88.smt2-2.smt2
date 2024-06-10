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


(declare-datatypes ((Nat!2337 0)) (((succ!2338 (pred!2339 Nat!2337)) (zero!2340))
))
(declare-datatypes ((Lst!2341 0)) (((cons!2342 (head!2343 Nat!2337) (tail!2344 Lst!2341)) (nil!2345))
))
(declare-fun error_value!2346 () Lst!2341)
(declare-fun drop!257 (Nat!2337 Lst!2341) Lst!2341)
(declare-fun error_value!2347 () Nat!2337)
(declare-fun plus!237 (Nat!2337 Nat!2337) Nat!2337)
(declare-sort I_drop!257 0)
(declare-fun drop!257_arg_0_1 (I_drop!257) Nat!2337)
(declare-fun drop!257_arg_1_2 (I_drop!257) Lst!2341)
(declare-sort I_plus!237 0)
(declare-fun plus!237_arg_0_3 (I_plus!237) Nat!2337)
(declare-fun plus!237_arg_1_4 (I_plus!237) Nat!2337)
(assert (forall ((?i I_drop!257)) (and (= (drop!257 (drop!257_arg_0_1 ?i) (drop!257_arg_1_2 ?i)) (ite ((_ is nil!2345) (drop!257_arg_1_2 ?i)) nil!2345 (ite ((_ is zero!2340) (drop!257_arg_0_1 ?i)) (drop!257_arg_1_2 ?i) (ite (and ((_ is cons!2342) (drop!257_arg_1_2 ?i)) ((_ is succ!2338) (drop!257_arg_0_1 ?i))) (drop!257 (pred!2339 (drop!257_arg_0_1 ?i)) (tail!2344 (drop!257_arg_1_2 ?i))) error_value!2346)))) (ite ((_ is nil!2345) (drop!257_arg_1_2 ?i)) true (ite ((_ is zero!2340) (drop!257_arg_0_1 ?i)) true (ite (and ((_ is cons!2342) (drop!257_arg_1_2 ?i)) ((_ is succ!2338) (drop!257_arg_0_1 ?i))) (not (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) (pred!2339 (drop!257_arg_0_1 ?i))) (= (drop!257_arg_1_2 ?z) (tail!2344 (drop!257_arg_1_2 ?i))))) )) true)))) ))
(assert (forall ((?i I_plus!237)) (and (= (plus!237 (plus!237_arg_0_3 ?i) (plus!237_arg_1_4 ?i)) (ite ((_ is zero!2340) (plus!237_arg_0_3 ?i)) (plus!237_arg_1_4 ?i) (ite ((_ is succ!2338) (plus!237_arg_0_3 ?i)) (succ!2338 (plus!237 (pred!2339 (plus!237_arg_0_3 ?i)) (plus!237_arg_1_4 ?i))) error_value!2347))) (ite ((_ is zero!2340) (plus!237_arg_0_3 ?i)) true (ite ((_ is succ!2338) (plus!237_arg_0_3 ?i)) (not (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_3 ?z) (pred!2339 (plus!237_arg_0_3 ?i))) (= (plus!237_arg_1_4 ?z) (plus!237_arg_1_4 ?i)))) )) true))) ))
(assert (not (forall ((n!462 Nat!2337) (m!463 Nat!2337) (xs!464 Lst!2341)) (or (= (drop!257 n!462 (drop!257 (plus!237 n!462 m!463) xs!464)) (drop!257 m!463 xs!464)) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) n!462) (= (drop!257_arg_1_2 ?z) (drop!257 (plus!237 n!462 m!463) xs!464)))) ) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) (plus!237 n!462 m!463)) (= (drop!257_arg_1_2 ?z) xs!464))) ) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_3 ?z) n!462) (= (plus!237_arg_1_4 ?z) m!463))) ) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) m!463) (= (drop!257_arg_1_2 ?z) xs!464))) )) )))
(check-sat)
(exit)

