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


(declare-datatypes ((List!1245 0)) (((Cons!1246 (head!1247 (_ BitVec 32)) (tail!1248 List!1245)) (Nil!1249))
))
(declare-fun error_value!1250 () Bool)
(declare-fun contains!209 (List!1245 (_ BitVec 32)) Bool)
(declare-fun error_value!1251 () List!1245)
(declare-fun greater!227 ((_ BitVec 32) List!1245) List!1245)
(declare-sort I_contains!209 0)
(declare-fun contains!209_arg_0_1 (I_contains!209) List!1245)
(declare-fun contains!209_arg_1_2 (I_contains!209) (_ BitVec 32))
(declare-sort I_greater!227 0)
(declare-fun greater!227_arg_0_3 (I_greater!227) (_ BitVec 32))
(declare-fun greater!227_arg_1_4 (I_greater!227) List!1245)
(assert (forall ((?i I_contains!209)) (and (= (contains!209 (contains!209_arg_0_1 ?i) (contains!209_arg_1_2 ?i)) (ite ((_ is Nil!1249) (contains!209_arg_0_1 ?i)) false (ite ((_ is Cons!1246) (contains!209_arg_0_1 ?i)) (or (contains!209 (tail!1248 (contains!209_arg_0_1 ?i)) (contains!209_arg_1_2 ?i)) (= (head!1247 (contains!209_arg_0_1 ?i)) (contains!209_arg_1_2 ?i))) error_value!1250))) (ite ((_ is Nil!1249) (contains!209_arg_0_1 ?i)) true (ite ((_ is Cons!1246) (contains!209_arg_0_1 ?i)) (not (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (tail!1248 (contains!209_arg_0_1 ?i))) (= (contains!209_arg_1_2 ?z) (contains!209_arg_1_2 ?i)))) )) true))) ))
(assert (forall ((?i I_greater!227)) (and (= (greater!227 (greater!227_arg_0_3 ?i) (greater!227_arg_1_4 ?i)) (ite ((_ is Nil!1249) (greater!227_arg_1_4 ?i)) Nil!1249 (ite ((_ is Cons!1246) (greater!227_arg_1_4 ?i)) (ite (bvslt (greater!227_arg_0_3 ?i) (head!1247 (greater!227_arg_1_4 ?i))) (Cons!1246 (head!1247 (greater!227_arg_1_4 ?i)) (greater!227 (greater!227_arg_0_3 ?i) (tail!1248 (greater!227_arg_1_4 ?i)))) (greater!227 (greater!227_arg_0_3 ?i) (tail!1248 (greater!227_arg_1_4 ?i)))) error_value!1251))) (ite ((_ is Nil!1249) (greater!227_arg_1_4 ?i)) true (ite ((_ is Cons!1246) (greater!227_arg_1_4 ?i)) (ite (bvslt (greater!227_arg_0_3 ?i) (head!1247 (greater!227_arg_1_4 ?i))) (not (forall ((?z I_greater!227)) (not (and (= (greater!227_arg_0_3 ?z) (greater!227_arg_0_3 ?i)) (= (greater!227_arg_1_4 ?z) (tail!1248 (greater!227_arg_1_4 ?i))))) )) (not (forall ((?z I_greater!227)) (not (and (= (greater!227_arg_0_3 ?z) (greater!227_arg_0_3 ?i)) (= (greater!227_arg_1_4 ?z) (tail!1248 (greater!227_arg_1_4 ?i))))) ))) true))) ))
(assert (not (forall ((e!251 (_ BitVec 32)) (n!250 (_ BitVec 32)) (BOUND_VARIABLE_369 (_ BitVec 32)) (BOUND_VARIABLE_370 List!1245)) (or (and (not (and (contains!209 (greater!227 n!250 BOUND_VARIABLE_370) e!251) (not (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (greater!227 n!250 BOUND_VARIABLE_370)) (= (contains!209_arg_1_2 ?z) e!251))) )) (not (forall ((?z I_greater!227)) (not (and (= (greater!227_arg_0_3 ?z) n!250) (= (greater!227_arg_1_4 ?z) BOUND_VARIABLE_370))) )))) (bvslt n!250 e!251) (or (contains!209 BOUND_VARIABLE_370 e!251) (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) BOUND_VARIABLE_370) (= (contains!209_arg_1_2 ?z) e!251))) ))) (or (contains!209 (greater!227 e!251 (Cons!1246 BOUND_VARIABLE_369 BOUND_VARIABLE_370)) n!250) (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (greater!227 e!251 (Cons!1246 BOUND_VARIABLE_369 BOUND_VARIABLE_370))) (= (contains!209_arg_1_2 ?z) n!250))) ) (forall ((?z I_greater!227)) (not (and (= (greater!227_arg_0_3 ?z) e!251) (= (greater!227_arg_1_4 ?z) (Cons!1246 BOUND_VARIABLE_369 BOUND_VARIABLE_370)))) )) (not (bvslt n!250 e!251)) (not (and (contains!209 (Cons!1246 BOUND_VARIABLE_369 BOUND_VARIABLE_370) e!251) (not (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (Cons!1246 BOUND_VARIABLE_369 BOUND_VARIABLE_370)) (= (contains!209_arg_1_2 ?z) e!251))) ))))) )))
(check-sat)
(exit)

