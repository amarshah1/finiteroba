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


(declare-datatypes ((List!1123 0)) (((Cons!1124 (head!1125 (_ BitVec 32)) (tail!1126 List!1123)) (Nil!1127))
))
(declare-datatypes ((OptInt!1128 0)) (((None!1129) (Some!1130 (i!1131 (_ BitVec 32))))
))
(declare-fun error_value!1132 () OptInt!1128)
(declare-fun error_value!1133 () OptInt!1128)
(declare-fun max!216 (List!1123) OptInt!1128)
(declare-fun error_value!1134 () List!1123)
(declare-fun smaller!233 ((_ BitVec 32) List!1123) List!1123)
(declare-fun error_value!1135 () Bool)
(assert (forall ((l!215 List!1123)) (= (max!216 l!215) (ite ((_ is Nil!1127) l!215) None!1129 (ite ((_ is Cons!1124) l!215) (ite ((_ is Some!1130) (max!216 (tail!1126 l!215))) (ite (bvsge (head!1125 l!215) (i!1131 (max!216 (tail!1126 l!215)))) (Some!1130 (head!1125 l!215)) (Some!1130 (i!1131 (max!216 (tail!1126 l!215))))) (ite ((_ is None!1129) (max!216 (tail!1126 l!215))) (Some!1130 (head!1125 l!215)) error_value!1132)) error_value!1133))) ))
(assert (forall ((n!231 (_ BitVec 32)) (list!232 List!1123)) (= (smaller!233 n!231 list!232) (ite ((_ is Nil!1127) list!232) Nil!1127 (ite ((_ is Cons!1124) list!232) (ite (bvsgt n!231 (head!1125 list!232)) (Cons!1124 (head!1125 list!232) (smaller!233 n!231 (tail!1126 list!232))) (smaller!233 n!231 (tail!1126 list!232))) error_value!1134))) ))
(assert (not (forall ((n!234 (_ BitVec 32))) (ite ((_ is None!1129) (max!216 (smaller!233 n!234 Nil!1127))) (bvslt (i!1131 (max!216 (smaller!233 n!234 Nil!1127))) n!234) (ite ((_ is Some!1130) (max!216 (smaller!233 n!234 Nil!1127))) true error_value!1135)) )))
(check-sat)
(exit)
