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


(declare-datatypes ((Lst!2665 0)(Nat!2670 0)) (((cons!2666 (head!2667 Nat!2670) (tail!2668 Lst!2665)) (nil!2669))
((succ!2671 (pred!2672 Nat!2670)) (zero!2673))
))
(declare-datatypes ((ZLst!2674 0)(Pair!2679 0)) (((zcons!2675 (zhead!2676 Pair!2679) (ztail!2677 ZLst!2674)) (znil!2678))
((mkpair!2680 (first!2681 Nat!2670) (second!2682 Nat!2670)))
))
(declare-fun error_value!2683 () ZLst!2674)
(declare-fun zip!288 (Lst!2665 Lst!2665) ZLst!2674)
(declare-fun error_value!2684 () Lst!2665)
(declare-fun append!252 (Lst!2665 Lst!2665) Lst!2665)
(declare-fun error_value!2685 () ZLst!2674)
(declare-fun zappend!291 (ZLst!2674 ZLst!2674) ZLst!2674)
(declare-fun error_value!2686 () Lst!2665)
(declare-fun take!260 (Nat!2670 Lst!2665) Lst!2665)
(declare-fun error_value!2687 () Nat!2670)
(declare-fun len!254 (Lst!2665) Nat!2670)
(declare-fun error_value!2688 () Lst!2665)
(declare-fun drop!257 (Nat!2670 Lst!2665) Lst!2665)
(declare-sort I_zip!288 0)
(declare-fun zip!288_arg_0_1 (I_zip!288) Lst!2665)
(declare-fun zip!288_arg_1_2 (I_zip!288) Lst!2665)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_3 (I_append!252) Lst!2665)
(declare-fun append!252_arg_1_4 (I_append!252) Lst!2665)
(declare-sort I_zappend!291 0)
(declare-fun zappend!291_arg_0_5 (I_zappend!291) ZLst!2674)
(declare-fun zappend!291_arg_1_6 (I_zappend!291) ZLst!2674)
(declare-sort I_take!260 0)
(declare-fun take!260_arg_0_7 (I_take!260) Nat!2670)
(declare-fun take!260_arg_1_8 (I_take!260) Lst!2665)
(declare-sort I_len!254 0)
(declare-fun len!254_arg_0_9 (I_len!254) Lst!2665)
(declare-sort I_drop!257 0)
(declare-fun drop!257_arg_0_10 (I_drop!257) Nat!2670)
(declare-fun drop!257_arg_1_11 (I_drop!257) Lst!2665)
(assert (forall ((?i I_zip!288)) (and (= (zip!288 (zip!288_arg_0_1 ?i) (zip!288_arg_1_2 ?i)) (ite ((_ is nil!2669) (zip!288_arg_0_1 ?i)) znil!2678 (ite ((_ is nil!2669) (zip!288_arg_1_2 ?i)) znil!2678 (ite (and ((_ is cons!2666) (zip!288_arg_1_2 ?i)) ((_ is cons!2666) (zip!288_arg_0_1 ?i))) (zcons!2675 (mkpair!2680 (head!2667 (zip!288_arg_0_1 ?i)) (head!2667 (zip!288_arg_1_2 ?i))) (zip!288 (tail!2668 (zip!288_arg_0_1 ?i)) (tail!2668 (zip!288_arg_1_2 ?i)))) error_value!2683)))) (ite ((_ is nil!2669) (zip!288_arg_0_1 ?i)) true (ite ((_ is nil!2669) (zip!288_arg_1_2 ?i)) true (ite (and ((_ is cons!2666) (zip!288_arg_1_2 ?i)) ((_ is cons!2666) (zip!288_arg_0_1 ?i))) (not (forall ((?z I_zip!288)) (not (and (= (zip!288_arg_0_1 ?z) (tail!2668 (zip!288_arg_0_1 ?i))) (= (zip!288_arg_1_2 ?z) (tail!2668 (zip!288_arg_1_2 ?i))))) )) true)))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_3 ?i) (append!252_arg_1_4 ?i)) (ite ((_ is nil!2669) (append!252_arg_0_3 ?i)) (append!252_arg_1_4 ?i) (ite ((_ is cons!2666) (append!252_arg_0_3 ?i)) (cons!2666 (head!2667 (append!252_arg_0_3 ?i)) (append!252 (tail!2668 (append!252_arg_0_3 ?i)) (append!252_arg_1_4 ?i))) error_value!2684))) (ite ((_ is nil!2669) (append!252_arg_0_3 ?i)) true (ite ((_ is cons!2666) (append!252_arg_0_3 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_3 ?z) (tail!2668 (append!252_arg_0_3 ?i))) (= (append!252_arg_1_4 ?z) (append!252_arg_1_4 ?i)))) )) true))) ))
(assert (forall ((?i I_zappend!291)) (and (= (zappend!291 (zappend!291_arg_0_5 ?i) (zappend!291_arg_1_6 ?i)) (ite ((_ is znil!2678) (zappend!291_arg_0_5 ?i)) (zappend!291_arg_1_6 ?i) (ite ((_ is zcons!2675) (zappend!291_arg_0_5 ?i)) (zcons!2675 (zhead!2676 (zappend!291_arg_0_5 ?i)) (zappend!291 (ztail!2677 (zappend!291_arg_0_5 ?i)) (zappend!291_arg_1_6 ?i))) error_value!2685))) (ite ((_ is znil!2678) (zappend!291_arg_0_5 ?i)) true (ite ((_ is zcons!2675) (zappend!291_arg_0_5 ?i)) (not (forall ((?z I_zappend!291)) (not (and (= (zappend!291_arg_0_5 ?z) (ztail!2677 (zappend!291_arg_0_5 ?i))) (= (zappend!291_arg_1_6 ?z) (zappend!291_arg_1_6 ?i)))) )) true))) ))
(assert (forall ((?i I_take!260)) (and (= (take!260 (take!260_arg_0_7 ?i) (take!260_arg_1_8 ?i)) (ite ((_ is nil!2669) (take!260_arg_1_8 ?i)) nil!2669 (ite ((_ is zero!2673) (take!260_arg_0_7 ?i)) nil!2669 (ite (and ((_ is cons!2666) (take!260_arg_1_8 ?i)) ((_ is succ!2671) (take!260_arg_0_7 ?i))) (cons!2666 (head!2667 (take!260_arg_1_8 ?i)) (take!260 (pred!2672 (take!260_arg_0_7 ?i)) (tail!2668 (take!260_arg_1_8 ?i)))) error_value!2686)))) (ite ((_ is nil!2669) (take!260_arg_1_8 ?i)) true (ite ((_ is zero!2673) (take!260_arg_0_7 ?i)) true (ite (and ((_ is cons!2666) (take!260_arg_1_8 ?i)) ((_ is succ!2671) (take!260_arg_0_7 ?i))) (not (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_7 ?z) (pred!2672 (take!260_arg_0_7 ?i))) (= (take!260_arg_1_8 ?z) (tail!2668 (take!260_arg_1_8 ?i))))) )) true)))) ))
(assert (forall ((?i I_len!254)) (and (= (len!254 (len!254_arg_0_9 ?i)) (ite ((_ is nil!2669) (len!254_arg_0_9 ?i)) zero!2673 (ite ((_ is cons!2666) (len!254_arg_0_9 ?i)) (succ!2671 (len!254 (tail!2668 (len!254_arg_0_9 ?i)))) error_value!2687))) (ite ((_ is nil!2669) (len!254_arg_0_9 ?i)) true (ite ((_ is cons!2666) (len!254_arg_0_9 ?i)) (not (forall ((?z I_len!254)) (not (= (len!254_arg_0_9 ?z) (tail!2668 (len!254_arg_0_9 ?i)))) )) true))) ))
(assert (forall ((?i I_drop!257)) (and (= (drop!257 (drop!257_arg_0_10 ?i) (drop!257_arg_1_11 ?i)) (ite ((_ is nil!2669) (drop!257_arg_1_11 ?i)) nil!2669 (ite ((_ is zero!2673) (drop!257_arg_0_10 ?i)) (drop!257_arg_1_11 ?i) (ite (and ((_ is cons!2666) (drop!257_arg_1_11 ?i)) ((_ is succ!2671) (drop!257_arg_0_10 ?i))) (drop!257 (pred!2672 (drop!257_arg_0_10 ?i)) (tail!2668 (drop!257_arg_1_11 ?i))) error_value!2688)))) (ite ((_ is nil!2669) (drop!257_arg_1_11 ?i)) true (ite ((_ is zero!2673) (drop!257_arg_0_10 ?i)) true (ite (and ((_ is cons!2666) (drop!257_arg_1_11 ?i)) ((_ is succ!2671) (drop!257_arg_0_10 ?i))) (not (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_10 ?z) (pred!2672 (drop!257_arg_0_10 ?i))) (= (drop!257_arg_1_11 ?z) (tail!2668 (drop!257_arg_1_11 ?i))))) )) true)))) ))
(assert (exists ((xs!553 Lst!2665) (ys!554 Lst!2665) (zs!555 Lst!2665)) (not (or (= (zip!288 xs!553 (append!252 ys!554 zs!555)) (zappend!291 (zip!288 (take!260 (len!254 ys!554) xs!553) ys!554) (zip!288 (drop!257 (len!254 ys!554) xs!553) zs!555))) (forall ((?z I_zip!288)) (not (and (= (zip!288_arg_0_1 ?z) xs!553) (= (zip!288_arg_1_2 ?z) (append!252 ys!554 zs!555)))) ) (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_3 ?z) ys!554) (= (append!252_arg_1_4 ?z) zs!555))) ) (forall ((?z I_zappend!291)) (not (and (= (zappend!291_arg_0_5 ?z) (zip!288 (take!260 (len!254 ys!554) xs!553) ys!554)) (= (zappend!291_arg_1_6 ?z) (zip!288 (drop!257 (len!254 ys!554) xs!553) zs!555)))) ) (forall ((?z I_zip!288)) (not (and (= (zip!288_arg_0_1 ?z) (take!260 (len!254 ys!554) xs!553)) (= (zip!288_arg_1_2 ?z) ys!554))) ) (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_7 ?z) (len!254 ys!554)) (= (take!260_arg_1_8 ?z) xs!553))) ) (forall ((?z I_len!254)) (not (= (len!254_arg_0_9 ?z) ys!554)) ) (forall ((?z I_zip!288)) (not (and (= (zip!288_arg_0_1 ?z) (drop!257 (len!254 ys!554) xs!553)) (= (zip!288_arg_1_2 ?z) zs!555))) ) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_10 ?z) (len!254 ys!554)) (= (drop!257_arg_1_11 ?z) xs!553))) ) (forall ((?z I_len!254)) (not (= (len!254_arg_0_9 ?z) ys!554)) ))) ))
(check-sat)
(exit)

