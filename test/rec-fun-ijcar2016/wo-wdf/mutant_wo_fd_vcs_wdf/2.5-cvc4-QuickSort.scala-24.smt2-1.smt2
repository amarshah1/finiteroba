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


(declare-datatypes ((List!1192 0)) (((Cons!1193 (head!1194 (_ BitVec 32)) (tail!1195 List!1192)) (Nil!1196))
))
(declare-datatypes ((OptInt!1197 0)) (((None!1198) (Some!1199 (i!1200 (_ BitVec 32))))
))
(declare-fun error_value!1201 () OptInt!1197)
(declare-fun error_value!1202 () OptInt!1197)
(declare-fun min!214 (List!1192) OptInt!1197)
(declare-fun error_value!1203 () List!1192)
(declare-fun equals!239 ((_ BitVec 32) List!1192) List!1192)
(declare-fun error_value!1204 () Bool)
(declare-fun error_value!1205 () Bool)
(declare-sort I_min!214 0)
(declare-fun min!214_arg_0_1 (I_min!214) List!1192)
(declare-sort I_equals!239 0)
(declare-fun equals!239_arg_0_2 (I_equals!239) (_ BitVec 32))
(declare-fun equals!239_arg_1_3 (I_equals!239) List!1192)
(assert (forall ((?i I_min!214)) (and (= (min!214 (min!214_arg_0_1 ?i)) (ite ((_ is Nil!1196) (min!214_arg_0_1 ?i)) None!1198 (ite ((_ is Cons!1193) (min!214_arg_0_1 ?i)) (ite ((_ is Some!1199) (min!214 (tail!1195 (min!214_arg_0_1 ?i)))) (ite (not (bvslt (i!1200 (min!214 (tail!1195 (min!214_arg_0_1 ?i)))) (head!1194 (min!214_arg_0_1 ?i)))) (Some!1199 (head!1194 (min!214_arg_0_1 ?i))) (Some!1199 (i!1200 (min!214 (tail!1195 (min!214_arg_0_1 ?i)))))) (ite ((_ is None!1198) (min!214 (tail!1195 (min!214_arg_0_1 ?i)))) (Some!1199 (head!1194 (min!214_arg_0_1 ?i))) error_value!1201)) error_value!1202))) (ite ((_ is Nil!1196) (min!214_arg_0_1 ?i)) true (ite ((_ is Cons!1193) (min!214_arg_0_1 ?i)) (and (not (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (tail!1195 (min!214_arg_0_1 ?i)))) )) (ite ((_ is Some!1199) (min!214 (tail!1195 (min!214_arg_0_1 ?i)))) (and (not (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (tail!1195 (min!214_arg_0_1 ?i)))) )) (ite (not (bvslt (i!1200 (min!214 (tail!1195 (min!214_arg_0_1 ?i)))) (head!1194 (min!214_arg_0_1 ?i)))) true (not (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (tail!1195 (min!214_arg_0_1 ?i)))) )))) (not (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (tail!1195 (min!214_arg_0_1 ?i)))) )))) true))) ))
(assert (forall ((?i I_equals!239)) (and (= (equals!239 (equals!239_arg_0_2 ?i) (equals!239_arg_1_3 ?i)) (ite ((_ is Nil!1196) (equals!239_arg_1_3 ?i)) Nil!1196 (ite ((_ is Cons!1193) (equals!239_arg_1_3 ?i)) (ite (= (head!1194 (equals!239_arg_1_3 ?i)) (equals!239_arg_0_2 ?i)) (Cons!1193 (head!1194 (equals!239_arg_1_3 ?i)) (equals!239 (equals!239_arg_0_2 ?i) (tail!1195 (equals!239_arg_1_3 ?i)))) (equals!239 (equals!239_arg_0_2 ?i) (tail!1195 (equals!239_arg_1_3 ?i)))) error_value!1203))) (ite ((_ is Nil!1196) (equals!239_arg_1_3 ?i)) true (ite ((_ is Cons!1193) (equals!239_arg_1_3 ?i)) (ite (= (head!1194 (equals!239_arg_1_3 ?i)) (equals!239_arg_0_2 ?i)) (not (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) (equals!239_arg_0_2 ?i)) (= (equals!239_arg_1_3 ?z) (tail!1195 (equals!239_arg_1_3 ?i))))) )) (not (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) (equals!239_arg_0_2 ?i)) (= (equals!239_arg_1_3 ?z) (tail!1195 (equals!239_arg_1_3 ?i))))) ))) true))) ))
(assert (not (forall ((n!243 (_ BitVec 32)) (BOUND_VARIABLE_396 (_ BitVec 32)) (BOUND_VARIABLE_397 List!1192)) (or (or (ite ((_ is Some!1199) (min!214 (equals!239 n!243 (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) (not (and (= (i!1200 (min!214 (equals!239 n!243 BOUND_VARIABLE_397))) n!243) (not (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (equals!239 n!243 BOUND_VARIABLE_397))) )) (not (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) n!243) (= (equals!239_arg_1_3 ?z) BOUND_VARIABLE_397))) )))) (or (ite ((_ is None!1198) (min!214 (equals!239 n!243 BOUND_VARIABLE_397))) false (not error_value!1204)) (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (equals!239 n!243 BOUND_VARIABLE_397))) ) (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) n!243) (= (equals!239_arg_1_3 ?z) BOUND_VARIABLE_397))) ))) (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (equals!239 n!243 (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) ) (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) n!243) (= (equals!239_arg_1_3 ?z) (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) )) (or (ite ((_ is Some!1199) (min!214 (equals!239 n!243 (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) (or (= (i!1200 (min!214 (equals!239 n!243 BOUND_VARIABLE_397))) n!243) (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (equals!239 n!243 BOUND_VARIABLE_397))) ) (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) n!243) (= (equals!239_arg_1_3 ?z) BOUND_VARIABLE_397))) )) (or (ite ((_ is None!1198) (min!214 (equals!239 n!243 (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) true error_value!1205) (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (equals!239 n!243 (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) ) (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) n!243) (= (equals!239_arg_1_3 ?z) (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) ))) (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (equals!239 n!243 (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) ) (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) n!243) (= (equals!239_arg_1_3 ?z) (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) ))) )))
(check-sat)
(exit)
