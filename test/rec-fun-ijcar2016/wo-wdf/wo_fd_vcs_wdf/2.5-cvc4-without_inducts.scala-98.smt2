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


(declare-datatypes ((Lst!2454 0)(Nat!2459 0)) (((cons!2455 (head!2456 Nat!2459) (tail!2457 Lst!2454)) (nil!2458))
((succ!2460 (pred!2461 Nat!2459)) (zero!2462))
))
(declare-fun error_value!2463 () Nat!2459)
(declare-fun len!254 (Lst!2454) Nat!2459)
(declare-fun error_value!2464 () Lst!2454)
(declare-fun butlast!267 (Lst!2454) Lst!2454)
(declare-fun error_value!2465 () Nat!2459)
(declare-fun minus!240 (Nat!2459 Nat!2459) Nat!2459)
(declare-sort I_len!254 0)
(declare-fun len!254_arg_0_1 (I_len!254) Lst!2454)
(declare-sort I_butlast!267 0)
(declare-fun butlast!267_arg_0_2 (I_butlast!267) Lst!2454)
(declare-sort I_minus!240 0)
(declare-fun minus!240_arg_0_3 (I_minus!240) Nat!2459)
(declare-fun minus!240_arg_1_4 (I_minus!240) Nat!2459)
(assert (forall ((?i I_len!254)) (and (= (len!254 (len!254_arg_0_1 ?i)) (ite ((_ is nil!2458) (len!254_arg_0_1 ?i)) zero!2462 (ite ((_ is cons!2455) (len!254_arg_0_1 ?i)) (succ!2460 (len!254 (tail!2457 (len!254_arg_0_1 ?i)))) error_value!2463))) (ite ((_ is nil!2458) (len!254_arg_0_1 ?i)) true (ite ((_ is cons!2455) (len!254_arg_0_1 ?i)) (not (forall ((?z I_len!254)) (not (= (len!254_arg_0_1 ?z) (tail!2457 (len!254_arg_0_1 ?i)))) )) true))) ))
(assert (forall ((?i I_butlast!267)) (and (= (butlast!267 (butlast!267_arg_0_2 ?i)) (ite ((_ is nil!2458) (butlast!267_arg_0_2 ?i)) nil!2458 (ite ((_ is cons!2455) (butlast!267_arg_0_2 ?i)) (ite (= (tail!2457 (butlast!267_arg_0_2 ?i)) nil!2458) nil!2458 (cons!2455 (head!2456 (butlast!267_arg_0_2 ?i)) (butlast!267 (tail!2457 (butlast!267_arg_0_2 ?i))))) error_value!2464))) (ite ((_ is nil!2458) (butlast!267_arg_0_2 ?i)) true (ite ((_ is cons!2455) (butlast!267_arg_0_2 ?i)) (ite (= (tail!2457 (butlast!267_arg_0_2 ?i)) nil!2458) true (not (forall ((?z I_butlast!267)) (not (= (butlast!267_arg_0_2 ?z) (tail!2457 (butlast!267_arg_0_2 ?i)))) ))) true))) ))
(assert (forall ((?i I_minus!240)) (and (= (minus!240 (minus!240_arg_0_3 ?i) (minus!240_arg_1_4 ?i)) (ite ((_ is zero!2462) (minus!240_arg_0_3 ?i)) zero!2462 (ite ((_ is zero!2462) (minus!240_arg_1_4 ?i)) (minus!240_arg_0_3 ?i) (ite (and ((_ is succ!2460) (minus!240_arg_1_4 ?i)) ((_ is succ!2460) (minus!240_arg_0_3 ?i))) (minus!240 (pred!2461 (minus!240_arg_0_3 ?i)) (pred!2461 (minus!240_arg_1_4 ?i))) error_value!2465)))) (ite ((_ is zero!2462) (minus!240_arg_0_3 ?i)) true (ite ((_ is zero!2462) (minus!240_arg_1_4 ?i)) true (ite (and ((_ is succ!2460) (minus!240_arg_1_4 ?i)) ((_ is succ!2460) (minus!240_arg_0_3 ?i))) (not (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_3 ?z) (pred!2461 (minus!240_arg_0_3 ?i))) (= (minus!240_arg_1_4 ?z) (pred!2461 (minus!240_arg_1_4 ?i))))) )) true)))) ))
(assert (exists ((xs!495 Lst!2454)) (not (or (= (len!254 (butlast!267 xs!495)) (minus!240 (len!254 xs!495) (succ!2460 zero!2462))) (forall ((?z I_len!254)) (not (= (len!254_arg_0_1 ?z) (butlast!267 xs!495))) ) (forall ((?z I_butlast!267)) (not (= (butlast!267_arg_0_2 ?z) xs!495)) ) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_3 ?z) (len!254 xs!495)) (= (minus!240_arg_1_4 ?z) (succ!2460 zero!2462)))) ) (forall ((?z I_len!254)) (not (= (len!254_arg_0_1 ?z) xs!495)) ))) ))
(check-sat)
(exit)

