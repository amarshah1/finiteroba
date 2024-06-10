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
(assert (forall ((l!253 Lst!2454)) (= (len!254 l!253) (ite ((_ is nil!2458) l!253) zero!2462 (ite ((_ is cons!2455) l!253) (succ!2460 (len!254 (tail!2457 l!253))) error_value!2463))) ))
(assert (forall ((l!266 Lst!2454)) (= (butlast!267 l!266) (ite ((_ is nil!2458) l!266) nil!2458 (ite ((_ is cons!2455) l!266) (ite (= (tail!2457 l!266) nil!2458) nil!2458 (cons!2455 (head!2456 l!266) (butlast!267 (tail!2457 l!266)))) error_value!2464))) ))
(assert (forall ((x!238 Nat!2459) (y!239 Nat!2459)) (= (minus!240 x!238 y!239) (ite ((_ is zero!2462) x!238) zero!2462 (ite ((_ is zero!2462) y!239) x!238 (ite (and (and ((_ is succ!2460) x!238) ((_ is succ!2460) x!238)) ((_ is succ!2460) y!239)) (minus!240 (pred!2461 x!238) (pred!2461 y!239)) error_value!2465)))) ))
(assert (not (forall ((xs!495 Lst!2454)) (= (minus!240 (len!254 xs!495) (succ!2460 zero!2462)) (len!254 (butlast!267 xs!495))) )))
(check-sat)
(exit)
