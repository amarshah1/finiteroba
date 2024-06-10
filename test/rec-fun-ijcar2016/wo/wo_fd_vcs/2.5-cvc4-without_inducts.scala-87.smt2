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


(declare-datatypes ((Nat!2324 0)) (((succ!2325 (pred!2326 Nat!2324)) (zero!2327))
))
(declare-datatypes ((Lst!2328 0)) (((cons!2329 (head!2330 Nat!2324) (tail!2331 Lst!2328)) (nil!2332))
))
(declare-fun error_value!2333 () Lst!2328)
(declare-fun drop!257 (Nat!2324 Lst!2328) Lst!2328)
(declare-fun error_value!2334 () Lst!2328)
(declare-fun append!252 (Lst!2328 Lst!2328) Lst!2328)
(declare-fun error_value!2335 () Nat!2324)
(declare-fun minus!240 (Nat!2324 Nat!2324) Nat!2324)
(declare-fun error_value!2336 () Nat!2324)
(declare-fun len!254 (Lst!2328) Nat!2324)
(assert (forall ((n!255 Nat!2324) (l!256 Lst!2328)) (= (drop!257 n!255 l!256) (ite ((_ is nil!2332) l!256) nil!2332 (ite ((_ is zero!2327) n!255) l!256 (ite (and (and ((_ is succ!2325) n!255) ((_ is succ!2325) n!255)) ((_ is cons!2329) l!256)) (drop!257 (pred!2326 n!255) (tail!2331 l!256)) error_value!2333)))) ))
(assert (forall ((l1!250 Lst!2328) (l2!251 Lst!2328)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!2332) l1!250) l2!251 (ite ((_ is cons!2329) l1!250) (cons!2329 (head!2330 l1!250) (append!252 (tail!2331 l1!250) l2!251)) error_value!2334))) ))
(assert (forall ((x!238 Nat!2324) (y!239 Nat!2324)) (= (minus!240 x!238 y!239) (ite ((_ is zero!2327) x!238) zero!2327 (ite ((_ is zero!2327) y!239) x!238 (ite (and (and ((_ is succ!2325) x!238) ((_ is succ!2325) x!238)) ((_ is succ!2325) y!239)) (minus!240 (pred!2326 x!238) (pred!2326 y!239)) error_value!2335)))) ))
(assert (forall ((l!253 Lst!2328)) (= (len!254 l!253) (ite ((_ is nil!2332) l!253) zero!2327 (ite ((_ is cons!2329) l!253) (succ!2325 (len!254 (tail!2331 l!253))) error_value!2336))) ))
(assert (exists ((n!458 Nat!2324) (xs!459 Lst!2328) (ys!460 Lst!2328)) (not (= (drop!257 n!458 (append!252 xs!459 ys!460)) (append!252 (drop!257 n!458 xs!459) (drop!257 (minus!240 n!458 (len!254 xs!459)) ys!460)))) ))
(check-sat)
(exit)

