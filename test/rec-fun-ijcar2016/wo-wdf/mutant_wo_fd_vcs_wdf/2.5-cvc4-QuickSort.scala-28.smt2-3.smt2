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
(declare-sort I_contains!209 0)
(declare-fun contains!209_arg_0_1 (I_contains!209) List!1238)
(declare-fun contains!209_arg_1_2 (I_contains!209) (_ BitVec 32))
(declare-sort I_smaller!233 0)
(declare-fun smaller!233_arg_0_3 (I_smaller!233) (_ BitVec 32))
(declare-fun smaller!233_arg_1_4 (I_smaller!233) List!1238)
(assert (forall ((?i I_contains!209)) (and (= (contains!209 (contains!209_arg_0_1 ?i) (contains!209_arg_1_2 ?i)) (ite ((_ is Nil!1242) (contains!209_arg_0_1 ?i)) false (ite ((_ is Cons!1239) (contains!209_arg_0_1 ?i)) (or (contains!209 (tail!1241 (contains!209_arg_0_1 ?i)) (contains!209_arg_1_2 ?i)) (= (head!1240 (contains!209_arg_0_1 ?i)) (contains!209_arg_1_2 ?i))) error_value!1243))) (ite ((_ is Nil!1242) (contains!209_arg_0_1 ?i)) true (ite ((_ is Cons!1239) (contains!209_arg_0_1 ?i)) (not (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (tail!1241 (contains!209_arg_0_1 ?i))) (= (contains!209_arg_1_2 ?z) (contains!209_arg_1_2 ?i)))) )) true))) ))
(assert (forall ((?i I_smaller!233)) (and (= (smaller!233 (smaller!233_arg_0_3 ?i) (smaller!233_arg_1_4 ?i)) (ite ((_ is Nil!1242) (smaller!233_arg_1_4 ?i)) Nil!1242 (ite ((_ is Cons!1239) (smaller!233_arg_1_4 ?i)) (ite (bvslt (head!1240 (smaller!233_arg_1_4 ?i)) (smaller!233_arg_0_3 ?i)) (Cons!1239 (head!1240 (smaller!233_arg_1_4 ?i)) (smaller!233 (smaller!233_arg_0_3 ?i) (tail!1241 (smaller!233_arg_1_4 ?i)))) (smaller!233 (smaller!233_arg_0_3 ?i) (tail!1241 (smaller!233_arg_1_4 ?i)))) error_value!1244))) (ite ((_ is Nil!1242) (smaller!233_arg_1_4 ?i)) true (ite ((_ is Cons!1239) (smaller!233_arg_1_4 ?i)) (ite (bvslt (head!1240 (smaller!233_arg_1_4 ?i)) (smaller!233_arg_0_3 ?i)) (not (forall ((?z I_smaller!233)) (not (and (= (smaller!233_arg_0_3 ?z) (smaller!233_arg_0_3 ?i)) (= (smaller!233_arg_1_4 ?z) (tail!1241 (smaller!233_arg_1_4 ?i))))) )) (not (forall ((?z I_smaller!233)) (not (and (= (smaller!233_arg_0_3 ?z) (smaller!233_arg_0_3 ?i)) (= (smaller!233_arg_1_4 ?z) (tail!1241 (smaller!233_arg_1_4 ?i))))) ))) true))) ))
(assert (not (forall ((e!247 (_ BitVec 32)) (n!246 (_ BitVec 32))) (or (or (contains!209 (smaller!233 e!247 Nil!1242) n!246) (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (smaller!233 e!247 Nil!1242)) (= (contains!209_arg_1_2 ?z) n!246))) ) (forall ((?z I_smaller!233)) (not (and (= (smaller!233_arg_0_3 ?z) e!247) (= (smaller!233_arg_1_4 ?z) Nil!1242))) )) (not (bvslt e!247 n!246)) (not (and (contains!209 Nil!1242 e!247) (not (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) Nil!1242) (= (contains!209_arg_1_2 ?z) e!247))) ))))) )))
(check-sat)
(exit)

