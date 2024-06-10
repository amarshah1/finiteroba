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


(declare-datatypes ((Lst!2241 0)(Nat!2246 0)) (((cons!2242 (head!2243 Nat!2246) (tail!2244 Lst!2241)) (nil!2245))
((succ!2247 (pred!2248 Nat!2246)) (zero!2249))
))
(declare-fun error_value!2250 () Lst!2241)
(declare-fun butlast!267 (Lst!2241) Lst!2241)
(declare-fun error_value!2251 () Lst!2241)
(declare-fun append!252 (Lst!2241 Lst!2241) Lst!2241)
(declare-fun error_value!2252 () Nat!2246)
(declare-fun last!265 (Lst!2241) Nat!2246)
(assert (forall ((l!266 Lst!2241)) (= (butlast!267 l!266) (ite ((_ is nil!2245) l!266) nil!2245 (ite ((_ is cons!2242) l!266) (ite (= (tail!2244 l!266) nil!2245) nil!2245 (cons!2242 (head!2243 l!266) (butlast!267 (tail!2244 l!266)))) error_value!2250))) ))
(assert (forall ((l1!250 Lst!2241) (l2!251 Lst!2241)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!2245) l1!250) l2!251 (ite ((_ is cons!2242) l1!250) (cons!2242 (head!2243 l1!250) (append!252 (tail!2244 l1!250) l2!251)) error_value!2251))) ))
(assert (forall ((l!264 Lst!2241)) (= (last!265 l!264) (ite ((_ is nil!2245) l!264) zero!2249 (ite ((_ is cons!2242) l!264) (ite (= (tail!2244 l!264) nil!2245) (head!2243 l!264) (last!265 (tail!2244 l!264))) error_value!2252))) ))
(assert (not (forall ((xs!435 Lst!2241)) (= xs!435 nil!2245) )))
(check-sat)
(exit)

