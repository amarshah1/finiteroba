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


(declare-datatypes ((Nat!2543 0)) (((succ!2544 (pred!2545 Nat!2543)) (zero!2546))
))
(declare-datatypes ((Lst!2547 0)) (((cons!2548 (head!2549 Nat!2543) (tail!2550 Lst!2547)) (nil!2551))
))
(declare-fun error_value!2552 () Nat!2543)
(declare-fun count!263 (Nat!2543 Lst!2547) Nat!2543)
(declare-fun error_value!2553 () Lst!2547)
(declare-fun append!252 (Lst!2547 Lst!2547) Lst!2547)
(declare-sort I_count!263 0)
(declare-fun count!263_arg_0_1 (I_count!263) Nat!2543)
(declare-fun count!263_arg_1_2 (I_count!263) Lst!2547)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_3 (I_append!252) Lst!2547)
(declare-fun append!252_arg_1_4 (I_append!252) Lst!2547)
(assert (forall ((?i I_count!263)) (and (= (count!263 (count!263_arg_0_1 ?i) (count!263_arg_1_2 ?i)) (ite ((_ is nil!2551) (count!263_arg_1_2 ?i)) zero!2546 (ite ((_ is cons!2548) (count!263_arg_1_2 ?i)) (ite (= (count!263_arg_0_1 ?i) (head!2549 (count!263_arg_1_2 ?i))) (succ!2544 (count!263 (count!263_arg_0_1 ?i) (tail!2550 (count!263_arg_1_2 ?i)))) (count!263 (count!263_arg_0_1 ?i) (tail!2550 (count!263_arg_1_2 ?i)))) error_value!2552))) (ite ((_ is nil!2551) (count!263_arg_1_2 ?i)) true (ite ((_ is cons!2548) (count!263_arg_1_2 ?i)) (ite (= (count!263_arg_0_1 ?i) (head!2549 (count!263_arg_1_2 ?i))) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) (count!263_arg_0_1 ?i)) (= (count!263_arg_1_2 ?z) (tail!2550 (count!263_arg_1_2 ?i))))) )) (not (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) (count!263_arg_0_1 ?i)) (= (count!263_arg_1_2 ?z) (tail!2550 (count!263_arg_1_2 ?i))))) ))) true))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_3 ?i) (append!252_arg_1_4 ?i)) (ite ((_ is nil!2551) (append!252_arg_0_3 ?i)) (append!252_arg_1_4 ?i) (ite ((_ is cons!2548) (append!252_arg_0_3 ?i)) (cons!2548 (head!2549 (append!252_arg_0_3 ?i)) (append!252 (tail!2550 (append!252_arg_0_3 ?i)) (append!252_arg_1_4 ?i))) error_value!2553))) (ite ((_ is nil!2551) (append!252_arg_0_3 ?i)) true (ite ((_ is cons!2548) (append!252_arg_0_3 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_3 ?z) (tail!2550 (append!252_arg_0_3 ?i))) (= (append!252_arg_1_4 ?z) (append!252_arg_1_4 ?i)))) )) true))) ))
(assert (not (forall ((n!520 Nat!2543) (h!521 Nat!2543) (x!522 Lst!2547)) (or (or (= (count!263 n!520 x!522) (count!263 n!520 (append!252 x!522 (cons!2548 h!521 nil!2551)))) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) n!520) (= (count!263_arg_1_2 ?z) x!522))) ) (forall ((?z I_count!263)) (not (and (= (count!263_arg_0_1 ?z) n!520) (= (count!263_arg_1_2 ?z) (append!252 x!522 (cons!2548 h!521 nil!2551))))) ) (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_3 ?z) x!522) (= (append!252_arg_1_4 ?z) (cons!2548 h!521 nil!2551)))) )) (= n!520 h!521)) )))
(check-sat)
(exit)
