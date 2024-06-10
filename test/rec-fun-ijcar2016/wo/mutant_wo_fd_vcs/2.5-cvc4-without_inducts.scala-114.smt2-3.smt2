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


(declare-datatypes ((Lst!2641 0)(Nat!2646 0)) (((cons!2642 (head!2643 Nat!2646) (tail!2644 Lst!2641)) (nil!2645))
((succ!2647 (pred!2648 Nat!2646)) (zero!2649))
))
(declare-datatypes ((ZLst!2650 0)(Pair!2655 0)) (((zcons!2651 (zhead!2652 Pair!2655) (ztail!2653 ZLst!2650)) (znil!2654))
((mkpair!2656 (first!2657 Nat!2646) (second!2658 Nat!2646)))
))
(declare-fun error_value!2659 () ZLst!2650)
(declare-fun zip!288 (Lst!2641 Lst!2641) ZLst!2650)
(declare-fun error_value!2660 () Lst!2641)
(declare-fun append!252 (Lst!2641 Lst!2641) Lst!2641)
(declare-fun error_value!2661 () ZLst!2650)
(declare-fun zappend!291 (ZLst!2650 ZLst!2650) ZLst!2650)
(declare-fun error_value!2662 () Lst!2641)
(declare-fun take!260 (Nat!2646 Lst!2641) Lst!2641)
(declare-fun error_value!2663 () Nat!2646)
(declare-fun len!254 (Lst!2641) Nat!2646)
(declare-fun error_value!2664 () Lst!2641)
(declare-fun drop!257 (Nat!2646 Lst!2641) Lst!2641)
(assert (forall ((l1!286 Lst!2641) (l2!287 Lst!2641)) (= (zip!288 l1!286 l2!287) (ite ((_ is nil!2645) l1!286) znil!2654 (ite ((_ is nil!2645) l2!287) znil!2654 (ite (and (and ((_ is cons!2642) l1!286) ((_ is cons!2642) l1!286)) ((_ is cons!2642) l2!287)) (zcons!2651 (mkpair!2656 (head!2643 l1!286) (head!2643 l2!287)) (zip!288 (tail!2644 l1!286) (tail!2644 l2!287))) error_value!2659)))) ))
(assert (forall ((l1!250 Lst!2641) (l2!251 Lst!2641)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!2645) l1!250) l2!251 (ite ((_ is cons!2642) l1!250) (cons!2642 (head!2643 l1!250) (append!252 (tail!2644 l1!250) l2!251)) error_value!2660))) ))
(assert (forall ((l1!289 ZLst!2650) (l2!290 ZLst!2650)) (= (zappend!291 l1!289 l2!290) (ite ((_ is znil!2654) l1!289) l2!290 (ite ((_ is zcons!2651) l1!289) (zcons!2651 (zhead!2652 l1!289) (zappend!291 (ztail!2653 l1!289) l2!290)) error_value!2661))) ))
(assert (forall ((n!258 Nat!2646) (l!259 Lst!2641)) (= (take!260 n!258 l!259) (ite ((_ is nil!2645) l!259) nil!2645 (ite ((_ is zero!2649) n!258) nil!2645 (ite (and (and ((_ is succ!2647) n!258) ((_ is succ!2647) n!258)) ((_ is cons!2642) l!259)) (cons!2642 (head!2643 l!259) (take!260 (pred!2648 n!258) (tail!2644 l!259))) error_value!2662)))) ))
(assert (forall ((l!253 Lst!2641)) (= (len!254 l!253) (ite ((_ is nil!2645) l!253) zero!2649 (ite ((_ is cons!2642) l!253) (succ!2647 (len!254 (tail!2644 l!253))) error_value!2663))) ))
(assert (forall ((n!255 Nat!2646) (l!256 Lst!2641)) (= (drop!257 n!255 l!256) (ite ((_ is nil!2645) l!256) nil!2645 (ite ((_ is zero!2649) n!255) l!256 (ite (and (and ((_ is succ!2647) n!255) ((_ is succ!2647) n!255)) ((_ is cons!2642) l!256)) (drop!257 (pred!2648 n!255) (tail!2644 l!256)) error_value!2664)))) ))
(assert (not (forall ((xs!549 Lst!2641) (ys!550 Lst!2641) (zs!551 Lst!2641)) (= (zip!288 (append!252 xs!549 zs!551) ys!550) (zappend!291 (zip!288 xs!549 (take!260 (len!254 xs!549) zs!551)) (zip!288 ys!550 (drop!257 (len!254 xs!549) zs!551)))) )))
(check-sat)
(exit)

