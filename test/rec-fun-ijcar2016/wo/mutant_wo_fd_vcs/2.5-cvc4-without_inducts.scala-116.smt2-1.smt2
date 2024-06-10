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
(assert (forall ((l!253 Lst!2689)) (= (len!254 l!253) (ite ((_ is nil!2693) l!253) zero!2697 (ite ((_ is cons!2690) l!253) (succ!2695 (len!254 (tail!2692 l!253))) error_value!2698))) ))
(assert (forall ((l1!286 Lst!2689) (l2!287 Lst!2689)) (= (zip!288 l1!286 l2!287) (ite ((_ is nil!2693) l1!286) znil!2703 (ite ((_ is nil!2693) l2!287) znil!2703 (ite (and (and ((_ is cons!2690) l1!286) ((_ is cons!2690) l1!286)) ((_ is cons!2690) l2!287)) (zcons!2700 (mkpair!2705 (head!2691 l1!286) (head!2691 l2!287)) (zip!288 (tail!2692 l1!286) (tail!2692 l2!287))) error_value!2708)))) ))
(assert (forall ((l!274 Lst!2689)) (= (rev!275 l!274) (ite ((_ is nil!2693) l!274) nil!2693 (ite ((_ is cons!2690) l!274) (append!252 (rev!275 (tail!2692 l!274)) (cons!2690 (head!2691 l!274) nil!2693)) error_value!2709))) ))
(assert (forall ((l1!250 Lst!2689) (l2!251 Lst!2689)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!2693) l1!250) l2!251 (ite ((_ is cons!2690) l1!250) (cons!2690 (head!2691 l1!250) (append!252 (tail!2692 l1!250) l2!251)) error_value!2710))) ))
(assert (forall ((l!298 ZLst!2699)) (= (zrev!299 l!298) (ite ((_ is znil!2703) l!298) znil!2703 (ite ((_ is zcons!2700) l!298) (zappend!291 (zrev!299 (ztail!2702 l!298)) (zcons!2700 (zhead!2701 l!298) znil!2703)) error_value!2711))) ))
(assert (forall ((l1!289 ZLst!2699) (l2!290 ZLst!2699)) (= (zappend!291 l1!289 l2!290) (ite ((_ is znil!2703) l1!289) l2!290 (ite ((_ is zcons!2700) l1!289) (zcons!2700 (zhead!2701 l1!289) (zappend!291 (ztail!2702 l1!289) l2!290)) error_value!2712))) ))
(assert (not (forall ((xs!557 Lst!2689) (ys!558 Lst!2689)) (or (= (zrev!299 (zip!288 xs!557 ys!558)) (zip!288 (rev!275 xs!557) (rev!275 ys!558))) (not (= (len!254 xs!557) (len!254 ys!558)))) )))
(check-sat)
(exit)
