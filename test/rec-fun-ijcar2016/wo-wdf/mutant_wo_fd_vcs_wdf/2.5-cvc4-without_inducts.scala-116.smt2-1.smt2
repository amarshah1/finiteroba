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


(declare-datatypes ((Lst!2689 0)(Nat!2694 0)) (((cons!2690 (head!2691 Nat!2694) (tail!2692 Lst!2689)) (nil!2693))
((succ!2695 (pred!2696 Nat!2694)) (zero!2697))
))
(declare-fun error_value!2698 () Nat!2694)
(declare-fun len!254 (Lst!2689) Nat!2694)
(declare-datatypes ((ZLst!2699 0)(Pair!2704 0)) (((zcons!2700 (zhead!2701 Pair!2704) (ztail!2702 ZLst!2699)) (znil!2703))
((mkpair!2705 (first!2706 Nat!2694) (second!2707 Nat!2694)))
))
(declare-fun error_value!2708 () ZLst!2699)
(declare-fun zip!288 (Lst!2689 Lst!2689) ZLst!2699)
(declare-fun error_value!2709 () Lst!2689)
(declare-fun error_value!2710 () Lst!2689)
(declare-fun rev!275 (Lst!2689) Lst!2689)
(declare-fun append!252 (Lst!2689 Lst!2689) Lst!2689)
(declare-fun error_value!2711 () ZLst!2699)
(declare-fun error_value!2712 () ZLst!2699)
(declare-fun zrev!299 (ZLst!2699) ZLst!2699)
(declare-fun zappend!291 (ZLst!2699 ZLst!2699) ZLst!2699)
(declare-sort I_len!254 0)
(declare-fun len!254_arg_0_1 (I_len!254) Lst!2689)
(declare-sort I_zip!288 0)
(declare-fun zip!288_arg_0_2 (I_zip!288) Lst!2689)
(declare-fun zip!288_arg_1_3 (I_zip!288) Lst!2689)
(declare-sort I_rev!275 0)
(declare-fun rev!275_arg_0_4 (I_rev!275) Lst!2689)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_5 (I_append!252) Lst!2689)
(declare-fun append!252_arg_1_6 (I_append!252) Lst!2689)
(declare-sort I_zrev!299 0)
(declare-fun zrev!299_arg_0_7 (I_zrev!299) ZLst!2699)
(declare-sort I_zappend!291 0)
(declare-fun zappend!291_arg_0_8 (I_zappend!291) ZLst!2699)
(declare-fun zappend!291_arg_1_9 (I_zappend!291) ZLst!2699)
(assert (forall ((?i I_len!254)) (and (= (len!254 (len!254_arg_0_1 ?i)) (ite ((_ is nil!2693) (len!254_arg_0_1 ?i)) zero!2697 (ite ((_ is cons!2690) (len!254_arg_0_1 ?i)) (succ!2695 (len!254 (tail!2692 (len!254_arg_0_1 ?i)))) error_value!2698))) (ite ((_ is nil!2693) (len!254_arg_0_1 ?i)) true (ite ((_ is cons!2690) (len!254_arg_0_1 ?i)) (not (forall ((?z I_len!254)) (not (= (len!254_arg_0_1 ?z) (tail!2692 (len!254_arg_0_1 ?i)))) )) true))) ))
(assert (forall ((?i I_zip!288)) (and (= (zip!288 (zip!288_arg_0_2 ?i) (zip!288_arg_1_3 ?i)) (ite ((_ is nil!2693) (zip!288_arg_0_2 ?i)) znil!2703 (ite ((_ is nil!2693) (zip!288_arg_1_3 ?i)) znil!2703 (ite (and ((_ is cons!2690) (zip!288_arg_1_3 ?i)) ((_ is cons!2690) (zip!288_arg_0_2 ?i))) (zcons!2700 (mkpair!2705 (head!2691 (zip!288_arg_0_2 ?i)) (head!2691 (zip!288_arg_1_3 ?i))) (zip!288 (tail!2692 (zip!288_arg_0_2 ?i)) (tail!2692 (zip!288_arg_1_3 ?i)))) error_value!2708)))) (ite ((_ is nil!2693) (zip!288_arg_0_2 ?i)) true (ite ((_ is nil!2693) (zip!288_arg_1_3 ?i)) true (ite (and ((_ is cons!2690) (zip!288_arg_1_3 ?i)) ((_ is cons!2690) (zip!288_arg_0_2 ?i))) (not (forall ((?z I_zip!288)) (not (and (= (zip!288_arg_0_2 ?z) (tail!2692 (zip!288_arg_0_2 ?i))) (= (zip!288_arg_1_3 ?z) (tail!2692 (zip!288_arg_1_3 ?i))))) )) true)))) ))
(assert (forall ((?i I_rev!275)) (and (= (rev!275 (rev!275_arg_0_4 ?i)) (ite ((_ is nil!2693) (rev!275_arg_0_4 ?i)) nil!2693 (ite ((_ is cons!2690) (rev!275_arg_0_4 ?i)) (append!252 (rev!275 (tail!2692 (rev!275_arg_0_4 ?i))) (cons!2690 (head!2691 (rev!275_arg_0_4 ?i)) nil!2693)) error_value!2709))) (ite ((_ is nil!2693) (rev!275_arg_0_4 ?i)) true (ite ((_ is cons!2690) (rev!275_arg_0_4 ?i)) (and (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_5 ?z) (rev!275 (tail!2692 (rev!275_arg_0_4 ?i)))) (= (append!252_arg_1_6 ?z) (cons!2690 (head!2691 (rev!275_arg_0_4 ?i)) nil!2693)))) )) (not (forall ((?z I_rev!275)) (not (= (rev!275_arg_0_4 ?z) (tail!2692 (rev!275_arg_0_4 ?i)))) ))) true))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_5 ?i) (append!252_arg_1_6 ?i)) (ite ((_ is nil!2693) (append!252_arg_0_5 ?i)) (append!252_arg_1_6 ?i) (ite ((_ is cons!2690) (append!252_arg_0_5 ?i)) (cons!2690 (head!2691 (append!252_arg_0_5 ?i)) (append!252 (tail!2692 (append!252_arg_0_5 ?i)) (append!252_arg_1_6 ?i))) error_value!2710))) (ite ((_ is nil!2693) (append!252_arg_0_5 ?i)) true (ite ((_ is cons!2690) (append!252_arg_0_5 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_5 ?z) (tail!2692 (append!252_arg_0_5 ?i))) (= (append!252_arg_1_6 ?z) (append!252_arg_1_6 ?i)))) )) true))) ))
(assert (forall ((?i I_zrev!299)) (and (= (zrev!299 (zrev!299_arg_0_7 ?i)) (ite ((_ is znil!2703) (zrev!299_arg_0_7 ?i)) znil!2703 (ite ((_ is zcons!2700) (zrev!299_arg_0_7 ?i)) (zappend!291 (zrev!299 (ztail!2702 (zrev!299_arg_0_7 ?i))) (zcons!2700 (zhead!2701 (zrev!299_arg_0_7 ?i)) znil!2703)) error_value!2711))) (ite ((_ is znil!2703) (zrev!299_arg_0_7 ?i)) true (ite ((_ is zcons!2700) (zrev!299_arg_0_7 ?i)) (and (not (forall ((?z I_zappend!291)) (not (and (= (zappend!291_arg_0_8 ?z) (zrev!299 (ztail!2702 (zrev!299_arg_0_7 ?i)))) (= (zappend!291_arg_1_9 ?z) (zcons!2700 (zhead!2701 (zrev!299_arg_0_7 ?i)) znil!2703)))) )) (not (forall ((?z I_zrev!299)) (not (= (zrev!299_arg_0_7 ?z) (ztail!2702 (zrev!299_arg_0_7 ?i)))) ))) true))) ))
(assert (forall ((?i I_zappend!291)) (and (= (zappend!291 (zappend!291_arg_0_8 ?i) (zappend!291_arg_1_9 ?i)) (ite ((_ is znil!2703) (zappend!291_arg_0_8 ?i)) (zappend!291_arg_1_9 ?i) (ite ((_ is zcons!2700) (zappend!291_arg_0_8 ?i)) (zcons!2700 (zhead!2701 (zappend!291_arg_0_8 ?i)) (zappend!291 (ztail!2702 (zappend!291_arg_0_8 ?i)) (zappend!291_arg_1_9 ?i))) error_value!2712))) (ite ((_ is znil!2703) (zappend!291_arg_0_8 ?i)) true (ite ((_ is zcons!2700) (zappend!291_arg_0_8 ?i)) (not (forall ((?z I_zappend!291)) (not (and (= (zappend!291_arg_0_8 ?z) (ztail!2702 (zappend!291_arg_0_8 ?i))) (= (zappend!291_arg_1_9 ?z) (zappend!291_arg_1_9 ?i)))) )) true))) ))
(assert (not (forall ((xs!557 Lst!2689) (ys!558 Lst!2689)) (or (or (= (zrev!299 (zip!288 xs!557 ys!558)) (zip!288 (rev!275 xs!557) (rev!275 ys!558))) (forall ((?z I_zrev!299)) (not (= (zrev!299_arg_0_7 ?z) (zip!288 xs!557 ys!558))) ) (forall ((?z I_zip!288)) (not (and (= (zip!288_arg_0_2 ?z) xs!557) (= (zip!288_arg_1_3 ?z) ys!558))) ) (forall ((?z I_zip!288)) (not (and (= (zip!288_arg_0_2 ?z) (rev!275 xs!557)) (= (zip!288_arg_1_3 ?z) (rev!275 ys!558)))) ) (forall ((?z I_rev!275)) (not (= (rev!275_arg_0_4 ?z) xs!557)) ) (forall ((?z I_rev!275)) (not (= (rev!275_arg_0_4 ?z) ys!558)) )) (not (and (= (len!254 xs!557) (len!254 ys!558)) (not (forall ((?z I_len!254)) (not (= (len!254_arg_0_1 ?z) xs!557)) )) (not (forall ((?z I_len!254)) (not (= (len!254_arg_0_1 ?z) ys!558)) ))))) )))
(check-sat)
(exit)

