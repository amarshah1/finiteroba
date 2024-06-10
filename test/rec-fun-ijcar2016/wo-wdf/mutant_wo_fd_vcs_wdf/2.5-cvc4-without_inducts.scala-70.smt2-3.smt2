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


(declare-datatypes ((Nat!2120 0)) (((succ!2121 (pred!2122 Nat!2120)) (zero!2123))
))
(declare-datatypes ((Lst!2124 0)) (((cons!2125 (head!2126 Nat!2120) (tail!2127 Lst!2124)) (nil!2128))
))
(declare-fun error_value!2129 () Nat!2120)
(declare-fun plus!237 (Nat!2120 Nat!2120) Nat!2120)
(declare-fun error_value!2130 () Nat!2120)
(declare-fun count!263 (Nat!2120 Lst!2124) Nat!2120)
(declare-sort I_plus!237 0)
(declare-fun plus!237_arg_0_1 (I_plus!237) Nat!2120)
(declare-fun plus!237_arg_1_2 (I_plus!237) Nat!2120)
(declare-sort I_count!263 0)
(declare-fun count!263_arg_0_3 (I_count!263) Nat!2120)
(declare-fun count!263_arg_1_4 (I_count!263) Lst!2124)
(assert (forall ((?i I_plus!237)) (and (= (plus!237 (plus!237_arg_0_1 ?i) (plus!237_arg_1_2 ?i)) (ite ((_ is zero!2123) (plus!237_arg_0_1 ?i)) (plus!237_arg_1_2 ?i) (ite ((_ is succ!2121) (plus!237_arg_0_1 ?i)) (succ!2121 (plus!237 (pred!2122 (plus!237_arg_0_1 ?i)) (plus!237_arg_1_2 ?i))) error_value!2129))) (ite ((_ is zero!2123) (plus!237_arg_0_1 ?i)) true (ite ((_ is succ!2121) (plus!237_arg_0_1 ?i)) (not (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_1 ?z) (pred!2122 (plus!237_arg_0_1 ?i))) (= (plus!237_arg_1_2 ?z) (plus!237_arg_1_2 ?i)))) )) true))) ))
(assert (forall ((?i I_count!263)) (and (= (count!263 (count!263_arg_0_3 ?i) (count!263_arg_1_4 ?i)) (ite ((_ is nil!2128) (count!263_arg_1_4 ?i)) zero!2123 (ite ((_ is cons!2125) (count!263_arg_1_4 ?i)) (ite (= (count!263_arg_0_3 ?i) (head!2126 (count!263_arg_1_4 ?i))) (succ!2121 (count!263 (count!263_arg_0_3 ?i) (tail!2127 (count!263_arg_1_4 ?i)))) (count!263 (count!263_arg_0_3 ?i) (tail!2127 (count!263_arg_1_4 ?i)))) error_value!2130))) (ite ((_ is nil!2128) (count!263_arg_1_4 ?i)) true (ite ((_ is cons!2125) (count!263_arg_1_4 ?i)) (ite (= (count!263_arg_0_3 ?i) (head!2126 (count!263_arg_1_4 ?i))) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_3 ?z) (count!263_arg_0_3 ?i)) (= (count!263_arg_1_4 ?z) (tail!2127 (count!263_arg_1_4 ?i))))) )) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_3 ?z) (count!263_arg_0_3 ?i)) (= (count!263_arg_1_4 ?z) (tail!2127 (count!263_arg_1_4 ?i))))) ))) true))) ))
(assert (not (forall ((n!412 Nat!2120) (h!413 Nat!2120) (t!414 Lst!2124)) (or (= (plus!237 (count!263 n!412 (cons!2125 h!413 nil!2128)) n!412) (count!263 (count!263 n!412 t!414) (cons!2125 h!413 t!414))) (forall ((?z I_plus!237)) (not (and (= (plus!237_arg_0_1 ?z) (count!263 n!412 (cons!2125 h!413 nil!2128))) (= (plus!237_arg_1_2 ?z) n!412))) ) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_3 ?z) n!412) (= (count!263_arg_1_4 ?z) (cons!2125 h!413 nil!2128)))) ) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_3 ?z) (count!263 n!412 t!414)) (= (count!263_arg_1_4 ?z) (cons!2125 h!413 t!414)))) ) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_3 ?z) n!412) (= (count!263_arg_1_4 ?z) t!414))) )) )))
(check-sat)
(exit)

