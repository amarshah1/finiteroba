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


(declare-datatypes ((Nat!2033 0)) (((succ!2034 (pred!2035 Nat!2033)) (zero!2036))
))
(declare-datatypes ((Lst!2037 0)) (((cons!2038 (head!2039 Nat!2033) (tail!2040 Lst!2037)) (nil!2041))
))
(declare-fun error_value!2042 () Bool)
(declare-fun mem!270 (Nat!2033 Lst!2037) Bool)
(declare-fun error_value!2043 () Lst!2037)
(declare-fun append!252 (Lst!2037 Lst!2037) Lst!2037)
(assert (forall ((n!268 Nat!2033) (l!269 Lst!2037)) (= (mem!270 n!268 l!269) (ite ((_ is nil!2041) l!269) false (ite ((_ is cons!2038) l!269) (or (or (= n!268 (head!2039 l!269)) (= n!268 (head!2039 l!269))) (mem!270 n!268 (tail!2040 l!269))) error_value!2042))) ))
(assert (forall ((l1!250 Lst!2037) (l2!251 Lst!2037)) (= (append!252 l1!250 l2!251) (ite ((_ is nil!2041) l1!250) l2!251 (ite ((_ is cons!2038) l1!250) (cons!2038 (head!2039 l1!250) (append!252 (tail!2040 l1!250) l2!251)) error_value!2043))) ))
(assert (not (forall ((x!380 Nat!2033) (t!382 Lst!2037) (l!381 Lst!2037)) (or (not (mem!270 x!380 t!382)) (mem!270 x!380 (append!252 l!381 t!382))) )))
(check-sat)
(exit)
