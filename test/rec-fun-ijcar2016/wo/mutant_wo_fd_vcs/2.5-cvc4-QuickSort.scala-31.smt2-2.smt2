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


(declare-datatypes ((List!1259 0)) (((Cons!1260 (head!1261 (_ BitVec 32)) (tail!1262 List!1259)) (Nil!1263))
))
(declare-fun error_value!1264 () Bool)
(declare-fun contains!209 (List!1259 (_ BitVec 32)) Bool)
(declare-fun error_value!1265 () List!1259)
(declare-fun equals!239 ((_ BitVec 32) List!1259) List!1259)
(assert (forall ((l!207 List!1259) (e!208 (_ BitVec 32))) (= (contains!209 l!207 e!208) (ite ((_ is Nil!1263) l!207) false (ite ((_ is Cons!1260) l!207) (or (or (= (head!1261 l!207) e!208) (= (head!1261 l!207) e!208)) (contains!209 (tail!1262 l!207) e!208)) error_value!1264))) ))
(assert (forall ((n!237 (_ BitVec 32)) (list!238 List!1259)) (= (equals!239 n!237 list!238) (ite ((_ is Nil!1263) list!238) Nil!1263 (ite ((_ is Cons!1260) list!238) (ite (= n!237 (head!1261 list!238)) (Cons!1260 (head!1261 list!238) (equals!239 n!237 (tail!1262 list!238))) (equals!239 n!237 (tail!1262 list!238))) error_value!1265))) ))
(assert (not (forall ((e!255 (_ BitVec 32)) (BOUND_VARIABLE_369 (_ BitVec 32)) (BOUND_VARIABLE_370 List!1259)) (or (not (contains!209 (Cons!1260 BOUND_VARIABLE_369 BOUND_VARIABLE_370) e!255)) (contains!209 (equals!239 e!255 (Cons!1260 BOUND_VARIABLE_369 BOUND_VARIABLE_370)) e!255) (and (not (contains!209 (equals!239 e!255 BOUND_VARIABLE_370) e!255)) (contains!209 BOUND_VARIABLE_370 e!255))) )))
(check-sat)
(exit)
