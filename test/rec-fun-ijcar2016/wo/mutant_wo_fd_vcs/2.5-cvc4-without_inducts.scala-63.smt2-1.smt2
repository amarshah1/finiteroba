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


(declare-datatypes ((Nat!2066 0)) (((succ!2067 (pred!2068 Nat!2066)) (zero!2069))
))
(declare-datatypes ((Lst!2070 0)) (((cons!2071 (head!2072 Nat!2066) (tail!2073 Lst!2070)) (nil!2074))
))
(declare-fun error_value!2075 () Bool)
(declare-fun mem!270 (Nat!2066 Lst!2070) Bool)
(declare-fun error_value!2076 () Lst!2070)
(declare-fun error_value!2077 () Bool)
(declare-fun insort!281 (Nat!2066 Lst!2070) Lst!2070)
(declare-fun less!231 (Nat!2066 Nat!2066) Bool)
(assert (forall ((n!268 Nat!2066) (l!269 Lst!2070)) (= (mem!270 n!268 l!269) (ite ((_ is nil!2074) l!269) false (ite ((_ is cons!2071) l!269) (or (or (= n!268 (head!2072 l!269)) (= n!268 (head!2072 l!269))) (mem!270 n!268 (tail!2073 l!269))) error_value!2075))) ))
(assert (forall ((n!279 Nat!2066) (l!280 Lst!2070)) (= (insort!281 n!279 l!280) (ite ((_ is nil!2074) l!280) (cons!2071 n!279 nil!2074) (ite ((_ is cons!2071) l!280) (ite (less!231 n!279 (head!2072 l!280)) (cons!2071 n!279 (cons!2071 (head!2072 l!280) (tail!2073 l!280))) (cons!2071 (head!2072 l!280) (insort!281 n!279 (tail!2073 l!280)))) error_value!2076))) ))
(assert (forall ((x!229 Nat!2066) (y!230 Nat!2066)) (= (less!231 x!229 y!230) (ite ((_ is zero!2069) y!230) false (ite (and (and ((_ is zero!2069) x!229) ((_ is zero!2069) x!229)) ((_ is succ!2067) y!230)) true (ite (and (and ((_ is succ!2067) x!229) ((_ is succ!2067) x!229)) ((_ is succ!2067) y!230)) (less!231 (pred!2068 x!229) (pred!2068 y!230)) error_value!2077)))) ))
(assert (not (forall ((x!390 Nat!2066) (l!391 Lst!2070)) (mem!270 x!390 l!391) )))
(check-sat)
(exit)
