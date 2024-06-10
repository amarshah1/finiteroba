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


(declare-datatypes ((Nat!2608 0)) (((succ!2609 (pred!2610 Nat!2608)) (zero!2611))
))
(declare-datatypes ((Lst!2612 0)) (((cons!2613 (head!2614 Nat!2608) (tail!2615 Lst!2612)) (nil!2616))
))
(declare-fun error_value!2617 () Lst!2612)
(declare-fun take!260 (Nat!2608 Lst!2612) Lst!2612)
(declare-fun error_value!2618 () Lst!2612)
(declare-fun drop!257 (Nat!2608 Lst!2612) Lst!2612)
(declare-fun error_value!2619 () Nat!2608)
(declare-fun plus!237 (Nat!2608 Nat!2608) Nat!2608)
(declare-sort I_take!260 0)
(declare-fun take!260_arg_0_1 (I_take!260) Nat!2608)
(declare-fun take!260_arg_1_2 (I_take!260) Lst!2612)
(declare-sort I_drop!257 0)
(declare-fun drop!257_arg_0_3 (I_drop!257) Nat!2608)
(declare-fun drop!257_arg_1_4 (I_drop!257) Lst!2612)
(declare-sort I_plus!237 0)
(declare-fun plus!237_arg_0_5 (I_plus!237) Nat!2608)
(declare-fun plus!237_arg_1_6 (I_plus!237) Nat!2608)
(assert (forall ((?i I_take!260)) (and (= (take!260 (take!260_arg_0_1 ?i) (take!260_arg_1_2 ?i)) (ite ((_ is nil!2616) (take!260_arg_1_2 ?i)) nil!2616 (ite ((_ is zero!2611) (take!260_arg_0_1 ?i)) nil!2616 (ite (and ((_ is cons!2613) (take!260_arg_1_2 ?i)) ((_ is succ!2609) (take!260_arg_0_1 ?i))) (cons!2613 (head!2614 (take!260_arg_1_2 ?i)) (take!260 (pred!2610 (take!260_arg_0_1 ?i)) (tail!2615 (take!260_arg_1_2 ?i)))) error_value!2617)))) (ite ((_ is nil!2616) (take!260_arg_1_2 ?i)) true (ite ((_ is zero!2611) (take!260_arg_0_1 ?i)) true (ite (and ((_ is cons!2613) (take!260_arg_1_2 ?i)) ((_ is succ!2609) (take!260_arg_0_1 ?i))) (not (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_1 ?z) (pred!2610 (take!260_arg_0_1 ?i))) (= (take!260_arg_1_2 ?z) (tail!2615 (take!260_arg_1_2 ?i))))) )) true)))) ))
(assert (forall ((?i I_drop!257)) (and (= (drop!257 (drop!257_arg_0_3 ?i) (drop!257_arg_1_4 ?i)) (ite ((_ is nil!2616) (drop!257_arg_1_4 ?i)) nil!2616 (ite ((_ is zero!2611) (drop!257_arg_0_3 ?i)) (drop!257_arg_1_4 ?i) (ite (and ((_ is cons!2613) (drop!257_arg_1_4 ?i)) ((_ is succ!2609) (drop!257_arg_0_3 ?i))) (drop!257 (pred!2610 (drop!257_arg_0_3 ?i)) (tail!2615 (drop!257_arg_1_4 ?i))) error_value!2618)))) (ite ((_ is nil!2616) (drop!257_arg_1_4 ?i)) true (ite ((_ is zero!2611) (drop!257_arg_0_3 ?i)) true (ite (and ((_ is cons!2613) (drop!257_arg_1_4 ?i)) ((_ is succ!2609) (drop!257_arg_0_3 ?i))) (not (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_3 ?z) (pred!2610 (drop!257_arg_0_3 ?i))) (= (drop!257_arg_1_4 ?z) (tail!2615 (drop!257_arg_1_4 ?i))))) )) true)))) ))
(assert (forall ((?i I_plus!237)) (and (= (plus!237 (plus!237_arg_0_5 ?i) (plus!237_arg_1_6 ?i)) (ite ((_ is zero!2611) (plus!237_arg_0_5 ?i)) (plus!237_arg_1_6 ?i) (ite ((_ is succ!2609) (plus!237_arg_0_5 ?i)) (succ!2609 (plus!237 (pred!2610 (plus!237_arg_0_5 ?i)) (plus!237_arg_1_6 ?i))) error_value!2619))) (ite ((_ is zero!2611) (plus!237_arg_0_5 ?i)) true (ite ((_ is succ!2609) (plus!237_arg_0_5 ?i)) (not (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_5 ?z) (pred!2610 (plus!237_arg_0_5 ?i))) (= (plus!237_arg_1_6 ?z) (plus!237_arg_1_6 ?i)))) )) true))) ))
(assert (not (forall ((n!541 Nat!2608) (m!542 Nat!2608) (xs!543 Lst!2612)) (or (= (drop!257 m!542 (take!260 (plus!237 n!541 m!542) xs!543)) (take!260 n!541 (drop!257 m!542 xs!543))) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_3 ?z) m!542) (= (drop!257_arg_1_4 ?z) (take!260 (plus!237 n!541 m!542) xs!543)))) ) (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_1 ?z) (plus!237 n!541 m!542)) (= (take!260_arg_1_2 ?z) xs!543))) ) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_5 ?z) n!541) (= (plus!237_arg_1_6 ?z) m!542))) ) (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_1 ?z) n!541) (= (take!260_arg_1_2 ?z) (drop!257 m!542 xs!543)))) ) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_3 ?z) m!542) (= (drop!257_arg_1_4 ?z) xs!543))) )) )))
(check-sat)
(exit)

