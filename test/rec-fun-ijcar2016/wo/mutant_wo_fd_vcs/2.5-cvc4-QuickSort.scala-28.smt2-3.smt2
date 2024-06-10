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


(declare-datatypes ((List!1238 0)) (((Cons!1239 (head!1240 (_ BitVec 32)) (tail!1241 List!1238)) (Nil!1242))
))
(declare-fun error_value!1243 () Bool)
(declare-fun contains!209 (List!1238 (_ BitVec 32)) Bool)
(declare-fun error_value!1244 () List!1238)
(declare-fun smaller!233 ((_ BitVec 32) List!1238) List!1238)
(assert (forall ((l!207 List!1238) (e!208 (_ BitVec 32))) (= (contains!209 l!207 e!208) (ite ((_ is Nil!1242) l!207) false (ite ((_ is Cons!1239) l!207) (or (or (= (head!1240 l!207) e!208) (= (head!1240 l!207) e!208)) (contains!209 (tail!1241 l!207) e!208)) error_value!1243))) ))
(assert (forall ((n!231 (_ BitVec 32)) (list!232 List!1238)) (= (smaller!233 n!231 list!232) (ite ((_ is Nil!1242) list!232) Nil!1242 (ite ((_ is Cons!1239) list!232) (ite (bvsgt n!231 (head!1240 list!232)) (Cons!1239 (head!1240 list!232) (smaller!233 n!231 (tail!1241 list!232))) (smaller!233 n!231 (tail!1241 list!232))) error_value!1244))) ))
(assert (not (forall ((e!247 (_ BitVec 32)) (n!246 (_ BitVec 32))) (or (contains!209 (smaller!233 e!247 Nil!1242) n!246) (not (bvslt e!247 n!246)) (not (contains!209 Nil!1242 e!247))) )))
(check-sat)
(exit)

