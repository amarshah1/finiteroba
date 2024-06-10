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
(declare-sort I_contains!209 0)
(declare-fun contains!209_arg_0_1 (I_contains!209) List!1259)
(declare-fun contains!209_arg_1_2 (I_contains!209) (_ BitVec 32))
(declare-sort I_equals!239 0)
(declare-fun equals!239_arg_0_3 (I_equals!239) (_ BitVec 32))
(declare-fun equals!239_arg_1_4 (I_equals!239) List!1259)
(assert (forall ((?i I_contains!209)) (and (= (contains!209 (contains!209_arg_0_1 ?i) (contains!209_arg_1_2 ?i)) (ite ((_ is Nil!1263) (contains!209_arg_0_1 ?i)) false (ite ((_ is Cons!1260) (contains!209_arg_0_1 ?i)) (or (contains!209 (tail!1262 (contains!209_arg_0_1 ?i)) (contains!209_arg_1_2 ?i)) (= (head!1261 (contains!209_arg_0_1 ?i)) (contains!209_arg_1_2 ?i))) error_value!1264))) (ite ((_ is Nil!1263) (contains!209_arg_0_1 ?i)) true (ite ((_ is Cons!1260) (contains!209_arg_0_1 ?i)) (not (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (tail!1262 (contains!209_arg_0_1 ?i))) (= (contains!209_arg_1_2 ?z) (contains!209_arg_1_2 ?i)))) )) true))) ))
(assert (forall ((?i I_equals!239)) (and (= (equals!239 (equals!239_arg_0_3 ?i) (equals!239_arg_1_4 ?i)) (ite ((_ is Nil!1263) (equals!239_arg_1_4 ?i)) Nil!1263 (ite ((_ is Cons!1260) (equals!239_arg_1_4 ?i)) (ite (= (head!1261 (equals!239_arg_1_4 ?i)) (equals!239_arg_0_3 ?i)) (Cons!1260 (head!1261 (equals!239_arg_1_4 ?i)) (equals!239 (equals!239_arg_0_3 ?i) (tail!1262 (equals!239_arg_1_4 ?i)))) (equals!239 (equals!239_arg_0_3 ?i) (tail!1262 (equals!239_arg_1_4 ?i)))) error_value!1265))) (ite ((_ is Nil!1263) (equals!239_arg_1_4 ?i)) true (ite ((_ is Cons!1260) (equals!239_arg_1_4 ?i)) (ite (= (head!1261 (equals!239_arg_1_4 ?i)) (equals!239_arg_0_3 ?i)) (not (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_3 ?z) (equals!239_arg_0_3 ?i)) (= (equals!239_arg_1_4 ?z) (tail!1262 (equals!239_arg_1_4 ?i))))) )) (not (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_3 ?z) (equals!239_arg_0_3 ?i)) (= (equals!239_arg_1_4 ?z) (tail!1262 (equals!239_arg_1_4 ?i))))) ))) true))) ))
(assert (not (forall ((e!255 (_ BitVec 32)) (BOUND_VARIABLE_369 (_ BitVec 32)) (BOUND_VARIABLE_370 List!1259)) (or (and (not (and (contains!209 (equals!239 e!255 BOUND_VARIABLE_370) e!255) (not (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (equals!239 e!255 BOUND_VARIABLE_370)) (= (contains!209_arg_1_2 ?z) e!255))) )) (not (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_3 ?z) e!255) (= (equals!239_arg_1_4 ?z) BOUND_VARIABLE_370))) )))) (or (contains!209 BOUND_VARIABLE_370 BOUND_VARIABLE_369) (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) BOUND_VARIABLE_370) (= (contains!209_arg_1_2 ?z) BOUND_VARIABLE_369))) ))) (or (contains!209 (equals!239 e!255 (Cons!1260 e!255 BOUND_VARIABLE_370)) e!255) (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (equals!239 e!255 (Cons!1260 e!255 BOUND_VARIABLE_370))) (= (contains!209_arg_1_2 ?z) e!255))) ) (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_3 ?z) e!255) (= (equals!239_arg_1_4 ?z) (Cons!1260 e!255 BOUND_VARIABLE_370)))) )) (not (and (contains!209 (Cons!1260 BOUND_VARIABLE_369 BOUND_VARIABLE_370) e!255) (not (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_1 ?z) (Cons!1260 BOUND_VARIABLE_369 BOUND_VARIABLE_370)) (= (contains!209_arg_1_2 ?z) e!255))) ))))) )))
(check-sat)
(exit)

