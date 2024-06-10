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
(assert (forall ((l!212 List!1192)) (= (min!214 l!212) (ite ((_ is Nil!1196) l!212) None!1198 (ite ((_ is Cons!1193) l!212) (ite ((_ is Some!1199) (min!214 (tail!1195 l!212))) (ite (bvsle (head!1194 l!212) (i!1200 (min!214 (tail!1195 l!212)))) (Some!1199 (head!1194 l!212)) (Some!1199 (i!1200 (min!214 (tail!1195 l!212))))) (ite ((_ is None!1198) (min!214 (tail!1195 l!212))) (Some!1199 (head!1194 l!212)) error_value!1201)) error_value!1202))) ))
(assert (forall ((n!237 (_ BitVec 32)) (list!238 List!1192)) (= (equals!239 n!237 list!238) (ite ((_ is Nil!1196) list!238) Nil!1196 (ite ((_ is Cons!1193) list!238) (ite (= n!237 (head!1194 list!238)) (Cons!1193 (head!1194 list!238) (equals!239 n!237 (tail!1195 list!238))) (equals!239 n!237 (tail!1195 list!238))) error_value!1203))) ))
(assert (not (forall ((n!243 (_ BitVec 32)) (BOUND_VARIABLE_396 (_ BitVec 32)) (BOUND_VARIABLE_397 List!1192)) (or (ite ((_ is Some!1199) (min!214 (equals!239 n!243 (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) (not (= (i!1200 (min!214 (equals!239 n!243 BOUND_VARIABLE_397))) n!243)) (ite ((_ is None!1198) (min!214 (equals!239 n!243 BOUND_VARIABLE_397))) false (not error_value!1204))) (ite ((_ is Some!1199) (min!214 (equals!239 n!243 (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) (= (i!1200 (min!214 (equals!239 n!243 BOUND_VARIABLE_397))) n!243) (ite ((_ is None!1198) (min!214 (equals!239 n!243 (Cons!1193 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) true error_value!1205))) )))
(check-sat)
(exit)

