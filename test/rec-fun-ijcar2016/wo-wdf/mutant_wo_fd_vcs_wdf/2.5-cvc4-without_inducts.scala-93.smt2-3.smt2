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


(declare-datatypes ((Lst!2403 0)(Nat!2408 0)) (((cons!2404 (head!2405 Nat!2408) (tail!2406 Lst!2403)) (nil!2407))
((succ!2409 (pred!2410 Nat!2408)) (zero!2411))
))
(declare-fun error_value!2412 () Nat!2408)
(declare-fun last!265 (Lst!2403) Nat!2408)
(declare-fun error_value!2413 () Lst!2403)
(declare-fun append!252 (Lst!2403 Lst!2403) Lst!2403)
(declare-sort I_last!265 0)
(declare-fun last!265_arg_0_1 (I_last!265) Lst!2403)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_2 (I_append!252) Lst!2403)
(declare-fun append!252_arg_1_3 (I_append!252) Lst!2403)
(assert (forall ((?i I_last!265)) (and (= (last!265 (last!265_arg_0_1 ?i)) (ite ((_ is nil!2407) (last!265_arg_0_1 ?i)) zero!2411 (ite ((_ is cons!2404) (last!265_arg_0_1 ?i)) (ite (= (tail!2406 (last!265_arg_0_1 ?i)) nil!2407) (head!2405 (last!265_arg_0_1 ?i)) (last!265 (tail!2406 (last!265_arg_0_1 ?i)))) error_value!2412))) (ite ((_ is nil!2407) (last!265_arg_0_1 ?i)) true (ite ((_ is cons!2404) (last!265_arg_0_1 ?i)) (ite (= (tail!2406 (last!265_arg_0_1 ?i)) nil!2407) true (not (forall ((?z I_last!265)) (not (= (last!265_arg_0_1 ?z) (tail!2406 (last!265_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_2 ?i) (append!252_arg_1_3 ?i)) (ite ((_ is nil!2407) (append!252_arg_0_2 ?i)) (append!252_arg_1_3 ?i) (ite ((_ is cons!2404) (append!252_arg_0_2 ?i)) (cons!2404 (head!2405 (append!252_arg_0_2 ?i)) (append!252 (tail!2406 (append!252_arg_0_2 ?i)) (append!252_arg_1_3 ?i))) error_value!2413))) (ite ((_ is nil!2407) (append!252_arg_0_2 ?i)) true (ite ((_ is cons!2404) (append!252_arg_0_2 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_2 ?z) (tail!2406 (append!252_arg_0_2 ?i))) (= (append!252_arg_1_3 ?z) (append!252_arg_1_3 ?i)))) )) true))) ))
(assert (not (forall ((xs!480 Lst!2403) (ys!481 Lst!2403)) (or (ite (= (append!252 xs!480 ys!481) nil!2407) (or (= (last!265 ys!481) (last!265 xs!480)) (forall ((?z I_last!265)) (not (= (last!265_arg_0_1 ?z) ys!481)) ) (forall ((?z I_last!265)) (not (= (last!265_arg_0_1 ?z) xs!480)) )) true) (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_2 ?z) xs!480) (= (append!252_arg_1_3 ?z) ys!481))) )) )))
(check-sat)
(exit)

