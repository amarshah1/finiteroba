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


(declare-datatypes ((List!1266 0)) (((Cons!1267 (head!1268 (_ BitVec 32)) (tail!1269 List!1266)) (Nil!1270))
))
(declare-fun error_value!1271 () Bool)
(declare-fun contains!209 (List!1266 (_ BitVec 32)) Bool)
(declare-fun error_value!1272 () List!1266)
(declare-fun equals!239 ((_ BitVec 32) List!1266) List!1266)
(assert (forall ((l!207 List!1266) (e!208 (_ BitVec 32))) (= (contains!209 l!207 e!208) (ite ((_ is Nil!1270) l!207) false (ite ((_ is Cons!1267) l!207) (or (or (= (head!1268 l!207) e!208) (= (head!1268 l!207) e!208)) (contains!209 (tail!1269 l!207) e!208)) error_value!1271))) ))
(assert (forall ((n!237 (_ BitVec 32)) (list!238 List!1266)) (= (equals!239 n!237 list!238) (ite ((_ is Nil!1270) list!238) Nil!1270 (ite ((_ is Cons!1267) list!238) (ite (= n!237 (head!1268 list!238)) (Cons!1267 (head!1268 list!238) (equals!239 n!237 (tail!1269 list!238))) (equals!239 n!237 (tail!1269 list!238))) error_value!1272))) ))
(assert (not (forall ((e!255 (_ BitVec 32))) (not (contains!209 Nil!1270 e!255)) )))
(check-sat)
(exit)

