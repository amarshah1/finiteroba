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


(declare-datatypes ((List!1153 0)) (((Cons!1154 (head!1155 (_ BitVec 32)) (tail!1156 List!1153)) (Nil!1157))
))
(declare-datatypes ((OptInt!1158 0)) (((None!1159) (Some!1160 (i!1161 (_ BitVec 32))))
))
(declare-fun error_value!1162 () OptInt!1158)
(declare-fun error_value!1163 () OptInt!1158)
(declare-fun max!216 (List!1153) OptInt!1158)
(declare-fun error_value!1164 () List!1153)
(declare-fun equals!239 ((_ BitVec 32) List!1153) List!1153)
(declare-fun error_value!1165 () Bool)
(declare-fun error_value!1166 () Bool)
(assert (forall ((l!215 List!1153)) (= (max!216 l!215) (ite ((_ is Nil!1157) l!215) None!1159 (ite ((_ is Cons!1154) l!215) (ite ((_ is Some!1160) (max!216 (tail!1156 l!215))) (ite (bvsge (head!1155 l!215) (i!1161 (max!216 (tail!1156 l!215)))) (Some!1160 (head!1155 l!215)) (Some!1160 (i!1161 (max!216 (tail!1156 l!215))))) (ite ((_ is None!1159) (max!216 (tail!1156 l!215))) (Some!1160 (head!1155 l!215)) error_value!1162)) error_value!1163))) ))
(assert (forall ((n!237 (_ BitVec 32)) (list!238 List!1153)) (= (equals!239 n!237 list!238) (ite ((_ is Nil!1157) list!238) Nil!1157 (ite ((_ is Cons!1154) list!238) (ite (= n!237 (head!1155 list!238)) (Cons!1154 (head!1155 list!238) (equals!239 n!237 (tail!1156 list!238))) (equals!239 n!237 (tail!1156 list!238))) error_value!1164))) ))
(assert (not (forall ((n!240 (_ BitVec 32)) (BOUND_VARIABLE_396 (_ BitVec 32)) (BOUND_VARIABLE_397 List!1153)) (or (ite ((_ is Some!1160) (max!216 (equals!239 n!240 (Cons!1154 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) (not (= (i!1161 (max!216 (equals!239 n!240 BOUND_VARIABLE_397))) n!240)) (ite ((_ is None!1159) (max!216 (equals!239 n!240 BOUND_VARIABLE_397))) false (not error_value!1165))) (ite ((_ is Some!1160) (max!216 (equals!239 n!240 BOUND_VARIABLE_397))) (= (i!1161 (max!216 (equals!239 n!240 (Cons!1154 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) n!240) (ite ((_ is None!1159) (max!216 (equals!239 n!240 (Cons!1154 BOUND_VARIABLE_396 BOUND_VARIABLE_397)))) true error_value!1166))) )))
(check-sat)
(exit)

