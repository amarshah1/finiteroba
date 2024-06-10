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


(declare-datatypes ((Nat!2513 0)) (((succ!2514 (pred!2515 Nat!2513)) (zero!2516))
))
(declare-datatypes ((Lst!2517 0)) (((cons!2518 (head!2519 Nat!2513) (tail!2520 Lst!2517)) (nil!2521))
))
(declare-fun error_value!2522 () Lst!2517)
(declare-fun error_value!2523 () Lst!2517)
(declare-fun rev!275 (Lst!2517) Lst!2517)
(declare-fun append!252 (Lst!2517 Lst!2517) Lst!2517)
(declare-fun error_value!2524 () Lst!2517)
(declare-fun drop!257 (Nat!2513 Lst!2517) Lst!2517)
(declare-fun error_value!2525 () Lst!2517)
(declare-fun take!260 (Nat!2513 Lst!2517) Lst!2517)
(declare-fun error_value!2526 () Nat!2513)
(declare-fun minus!240 (Nat!2513 Nat!2513) Nat!2513)
(declare-fun error_value!2527 () Nat!2513)
(declare-fun len!254 (Lst!2517) Nat!2513)
(assert (forall ((l!274 Lst!2517)) (= (rev!275 l!274) (ite ((_ is nil!2521) l!274) nil!2521 (ite ((_ is cons!2518) l!274) (append!252 (rev!275 (tail!2520 l!274)) (cons!2518 (head!2519 l!274) nil!2521)) error_value!2522))) ))
(assert (forall ((l1!250 Lst!2517) (l2!251 Lst!2517)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!2521) l1!250) l2!251 (ite ((_ is cons!2518) l1!250) (cons!2518 (head!2519 l1!250) (append!252 (tail!2520 l1!250) l2!251)) error_value!2523))) ))
(assert (forall ((n!255 Nat!2513) (l!256 Lst!2517)) (= (drop!257 n!255 l!256) (ite ((_ is nil!2521) l!256) nil!2521 (ite ((_ is zero!2516) n!255) l!256 (ite (and (and ((_ is succ!2514) n!255) ((_ is succ!2514) n!255)) ((_ is cons!2518) l!256)) (drop!257 (pred!2515 n!255) (tail!2520 l!256)) error_value!2524)))) ))
(assert (forall ((n!258 Nat!2513) (l!259 Lst!2517)) (= (take!260 n!258 l!259) (ite ((_ is nil!2521) l!259) nil!2521 (ite ((_ is zero!2516) n!258) nil!2521 (ite (and (and ((_ is succ!2514) n!258) ((_ is succ!2514) n!258)) ((_ is cons!2518) l!259)) (cons!2518 (head!2519 l!259) (take!260 (pred!2515 n!258) (tail!2520 l!259))) error_value!2525)))) ))
(assert (forall ((x!238 Nat!2513) (y!239 Nat!2513)) (= (minus!240 x!238 y!239) (ite ((_ is zero!2516) x!238) zero!2516 (ite ((_ is zero!2516) y!239) x!238 (ite (and (and ((_ is succ!2514) x!238) ((_ is succ!2514) x!238)) ((_ is succ!2514) y!239)) (minus!240 (pred!2515 x!238) (pred!2515 y!239)) error_value!2526)))) ))
(assert (forall ((l!253 Lst!2517)) (= (len!254 l!253) (ite ((_ is nil!2521) l!253) zero!2516 (ite ((_ is cons!2518) l!253) (succ!2514 (len!254 (tail!2520 l!253))) error_value!2527))) ))
(assert (not (forall ((i!514 Nat!2513) (xs!515 Lst!2517)) (= (drop!257 i!514 xs!515) (take!260 (minus!240 (len!254 xs!515) i!514) (rev!275 xs!515))) )))
(check-sat)
(exit)
