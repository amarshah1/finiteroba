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
(assert (forall ((l1!286 Lst!2665) (l2!287 Lst!2665)) (= (zip!288 l1!286 l2!287) (ite ((_ is nil!2669) l1!286) znil!2678 (ite ((_ is nil!2669) l2!287) znil!2678 (ite (and (and ((_ is cons!2666) l1!286) ((_ is cons!2666) l1!286)) ((_ is cons!2666) l2!287)) (zcons!2675 (mkpair!2680 (head!2667 l1!286) (head!2667 l2!287)) (zip!288 (tail!2668 l1!286) (tail!2668 l2!287))) error_value!2683)))) ))
(assert (forall ((l1!250 Lst!2665) (l2!251 Lst!2665)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!2669) l1!250) l2!251 (ite ((_ is cons!2666) l1!250) (cons!2666 (head!2667 l1!250) (append!252 (tail!2668 l1!250) l2!251)) error_value!2684))) ))
(assert (forall ((l1!289 ZLst!2674) (l2!290 ZLst!2674)) (= (zappend!291 l1!289 l2!290) (ite ((_ is znil!2678) l1!289) l2!290 (ite ((_ is zcons!2675) l1!289) (zcons!2675 (zhead!2676 l1!289) (zappend!291 (ztail!2677 l1!289) l2!290)) error_value!2685))) ))
(assert (forall ((n!258 Nat!2670) (l!259 Lst!2665)) (= (take!260 n!258 l!259) (ite ((_ is nil!2669) l!259) nil!2669 (ite ((_ is zero!2673) n!258) nil!2669 (ite (and (and ((_ is succ!2671) n!258) ((_ is succ!2671) n!258)) ((_ is cons!2666) l!259)) (cons!2666 (head!2667 l!259) (take!260 (pred!2672 n!258) (tail!2668 l!259))) error_value!2686)))) ))
(assert (forall ((l!253 Lst!2665)) (= (len!254 l!253) (ite ((_ is nil!2669) l!253) zero!2673 (ite ((_ is cons!2666) l!253) (succ!2671 (len!254 (tail!2668 l!253))) error_value!2687))) ))
(assert (forall ((n!255 Nat!2670) (l!256 Lst!2665)) (= (drop!257 n!255 l!256) (ite ((_ is nil!2669) l!256) nil!2669 (ite ((_ is zero!2673) n!255) l!256 (ite (and (and ((_ is succ!2671) n!255) ((_ is succ!2671) n!255)) ((_ is cons!2666) l!256)) (drop!257 (pred!2672 n!255) (tail!2668 l!256)) error_value!2688)))) ))
(assert (not (forall ((xs!553 Lst!2665) (ys!554 Lst!2665) (zs!555 Lst!2665)) (= (zip!288 xs!553 (append!252 ys!554 zs!555)) (zappend!291 (zip!288 (drop!257 (len!254 ys!554) xs!553) zs!555) (zip!288 (take!260 (len!254 ys!554) xs!553) ys!554))) )))
(check-sat)
(exit)
