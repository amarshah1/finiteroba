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


(declare-datatypes ((Nat!2620 0)) (((succ!2621 (pred!2622 Nat!2620)) (zero!2623))
))
(declare-datatypes ((Lst!2624 0)) (((cons!2625 (head!2626 Nat!2620) (tail!2627 Lst!2624)) (nil!2628))
))
(declare-datatypes ((ZLst!2629 0)(Pair!2634 0)) (((zcons!2630 (zhead!2631 Pair!2634) (ztail!2632 ZLst!2629)) (znil!2633))
((mkpair!2635 (first!2636 Nat!2620) (second!2637 Nat!2620)))
))
(declare-fun error_value!2638 () ZLst!2629)
(declare-fun ztake!297 (Nat!2620 ZLst!2629) ZLst!2629)
(declare-fun error_value!2639 () ZLst!2629)
(declare-fun zip!288 (Lst!2624 Lst!2624) ZLst!2629)
(declare-fun error_value!2640 () Lst!2624)
(declare-fun take!260 (Nat!2620 Lst!2624) Lst!2624)
(assert (forall ((n!295 Nat!2620) (l!296 ZLst!2629)) (= (ztake!297 n!295 l!296) (ite ((_ is znil!2633) l!296) znil!2633 (ite ((_ is zero!2623) n!295) znil!2633 (ite (and (and ((_ is succ!2621) n!295) ((_ is succ!2621) n!295)) ((_ is zcons!2630) l!296)) (zcons!2630 (zhead!2631 l!296) (ztake!297 (pred!2622 n!295) (ztail!2632 l!296))) error_value!2638)))) ))
(assert (forall ((l1!286 Lst!2624) (l2!287 Lst!2624)) (= (zip!288 l1!286 l2!287) (ite ((_ is nil!2628) l1!286) znil!2633 (ite ((_ is nil!2628) l2!287) znil!2633 (ite (and (and ((_ is cons!2625) l1!286) ((_ is cons!2625) l1!286)) ((_ is cons!2625) l2!287)) (zcons!2630 (mkpair!2635 (head!2626 l1!286) (head!2626 l2!287)) (zip!288 (tail!2627 l1!286) (tail!2627 l2!287))) error_value!2639)))) ))
(assert (forall ((n!258 Nat!2620) (l!259 Lst!2624)) (= (take!260 n!258 l!259) (ite ((_ is nil!2628) l!259) nil!2628 (ite ((_ is zero!2623) n!258) nil!2628 (ite (and (and ((_ is succ!2621) n!258) ((_ is succ!2621) n!258)) ((_ is cons!2625) l!259)) (cons!2625 (head!2626 l!259) (take!260 (pred!2622 n!258) (tail!2627 l!259))) error_value!2640)))) ))
(assert (not (forall ((n!545 Nat!2620) (xs!546 Lst!2624) (ys!547 Lst!2624)) (= (zip!288 (take!260 n!545 xs!546) (take!260 n!545 ys!547)) (ztake!297 n!545 (zip!288 xs!546 ys!547))) )))
(check-sat)
(exit)

