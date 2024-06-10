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


(declare-datatypes ((List!1206 0)) (((Cons!1207 (head!1208 (_ BitVec 32)) (tail!1209 List!1206)) (Nil!1210))
))
(declare-datatypes ((OptInt!1211 0)) (((None!1212) (Some!1213 (i!1214 (_ BitVec 32))))
))
(declare-fun error_value!1215 () OptInt!1211)
(declare-fun error_value!1216 () OptInt!1211)
(declare-fun min!214 (List!1206) OptInt!1211)
(declare-fun error_value!1217 () List!1206)
(declare-fun equals!239 ((_ BitVec 32) List!1206) List!1206)
(declare-fun error_value!1218 () Bool)
(declare-sort I_min!214 0)
(declare-fun min!214_arg_0_1 (I_min!214) List!1206)
(declare-sort I_equals!239 0)
(declare-fun equals!239_arg_0_2 (I_equals!239) (_ BitVec 32))
(declare-fun equals!239_arg_1_3 (I_equals!239) List!1206)
(assert (forall ((?i I_min!214)) (and (= (min!214 (min!214_arg_0_1 ?i)) (ite ((_ is Nil!1210) (min!214_arg_0_1 ?i)) None!1212 (ite ((_ is Cons!1207) (min!214_arg_0_1 ?i)) (ite ((_ is Some!1213) (min!214 (tail!1209 (min!214_arg_0_1 ?i)))) (ite (not (bvslt (i!1214 (min!214 (tail!1209 (min!214_arg_0_1 ?i)))) (head!1208 (min!214_arg_0_1 ?i)))) (Some!1213 (head!1208 (min!214_arg_0_1 ?i))) (Some!1213 (i!1214 (min!214 (tail!1209 (min!214_arg_0_1 ?i)))))) (ite ((_ is None!1212) (min!214 (tail!1209 (min!214_arg_0_1 ?i)))) (Some!1213 (head!1208 (min!214_arg_0_1 ?i))) error_value!1215)) error_value!1216))) (ite ((_ is Nil!1210) (min!214_arg_0_1 ?i)) true (ite ((_ is Cons!1207) (min!214_arg_0_1 ?i)) (and (not (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (tail!1209 (min!214_arg_0_1 ?i)))) )) (ite ((_ is Some!1213) (min!214 (tail!1209 (min!214_arg_0_1 ?i)))) (and (not (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (tail!1209 (min!214_arg_0_1 ?i)))) )) (ite (not (bvslt (i!1214 (min!214 (tail!1209 (min!214_arg_0_1 ?i)))) (head!1208 (min!214_arg_0_1 ?i)))) true (not (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (tail!1209 (min!214_arg_0_1 ?i)))) )))) (not (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (tail!1209 (min!214_arg_0_1 ?i)))) )))) true))) ))
(assert (forall ((?i I_equals!239)) (and (= (equals!239 (equals!239_arg_0_2 ?i) (equals!239_arg_1_3 ?i)) (ite ((_ is Nil!1210) (equals!239_arg_1_3 ?i)) Nil!1210 (ite ((_ is Cons!1207) (equals!239_arg_1_3 ?i)) (ite (= (head!1208 (equals!239_arg_1_3 ?i)) (equals!239_arg_0_2 ?i)) (Cons!1207 (head!1208 (equals!239_arg_1_3 ?i)) (equals!239 (equals!239_arg_0_2 ?i) (tail!1209 (equals!239_arg_1_3 ?i)))) (equals!239 (equals!239_arg_0_2 ?i) (tail!1209 (equals!239_arg_1_3 ?i)))) error_value!1217))) (ite ((_ is Nil!1210) (equals!239_arg_1_3 ?i)) true (ite ((_ is Cons!1207) (equals!239_arg_1_3 ?i)) (ite (= (head!1208 (equals!239_arg_1_3 ?i)) (equals!239_arg_0_2 ?i)) (not (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) (equals!239_arg_0_2 ?i)) (= (equals!239_arg_1_3 ?z) (tail!1209 (equals!239_arg_1_3 ?i))))) )) (not (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) (equals!239_arg_0_2 ?i)) (= (equals!239_arg_1_3 ?z) (tail!1209 (equals!239_arg_1_3 ?i))))) ))) true))) ))
(assert (exists ((list!244 List!1206) (n!243 (_ BitVec 32))) (not (=> ((_ is Nil!1210) list!244) (or (ite ((_ is Some!1213) (min!214 (equals!239 n!243 list!244))) (or (= n!243 (i!1214 (min!214 (equals!239 n!243 list!244)))) (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (equals!239 n!243 list!244))) ) (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) n!243) (= (equals!239_arg_1_3 ?z) list!244))) )) (or (ite ((_ is None!1212) (min!214 (equals!239 n!243 list!244))) true error_value!1218) (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (equals!239 n!243 list!244))) ) (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) n!243) (= (equals!239_arg_1_3 ?z) list!244))) ))) (forall ((?z I_min!214)) (not (= (min!214_arg_0_1 ?z) (equals!239 n!243 list!244))) ) (forall ((?z I_equals!239)) (not (and (= (equals!239_arg_0_2 ?z) n!243) (= (equals!239_arg_1_3 ?z) list!244))) )))) ))
(check-sat)
(exit)

