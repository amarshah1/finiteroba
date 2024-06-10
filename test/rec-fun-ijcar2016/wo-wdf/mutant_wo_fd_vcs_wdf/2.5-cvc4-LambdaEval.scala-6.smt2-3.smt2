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


(declare-datatypes ((List!1133 0)(BindingPairAbs!1138 0)(Expr!1142 0)) (((Cons!1134 (head!1135 BindingPairAbs!1138) (tail!1136 List!1133)) (Nil!1137))
((BindingPair!1139 (key!1140 (_ BitVec 32)) (value!1141 Expr!1142)))
((App!1143 (lhs!1144 Expr!1142) (rhs!1145 Expr!1142)) (Const!1146 (value!1147 (_ BitVec 32))) (Fst!1148 (e!1149 Expr!1142)) (Lam!1150 (x!1151 (_ BitVec 32)) (body!1152 Expr!1142)) (Pair!1153 (fst!1154 Expr!1142) (snd!1155 Expr!1142)) (Plus!1156 (lhs!1157 Expr!1142) (rhs!1158 Expr!1142)) (Snd!1159 (e!1160 Expr!1142)) (Var!1161 (name!1162 (_ BitVec 32))))
))
(declare-fun error_value!1163 () Bool)
(declare-fun contains!216 (List!1133 (_ BitVec 32)) Bool)
(declare-fun error_value!1164 () Bool)
(declare-fun error_value!1165 () Bool)
(declare-fun storeHasValues!213 (List!1133) Bool)
(declare-fun isValue!206 (Expr!1142) Bool)
(declare-fun error_value!1166 () Expr!1142)
(declare-fun find!219 ((_ BitVec 32) List!1133) Expr!1142)
(declare-fun error_value!1167 () Expr!1142)
(declare-sort I_contains!216 0)
(declare-fun contains!216_arg_0_1 (I_contains!216) List!1133)
(declare-fun contains!216_arg_1_2 (I_contains!216) (_ BitVec 32))
(declare-sort I_storeHasValues!213 0)
(declare-fun storeHasValues!213_arg_0_3 (I_storeHasValues!213) List!1133)
(declare-sort I_isValue!206 0)
(declare-fun isValue!206_arg_0_4 (I_isValue!206) Expr!1142)
(declare-sort I_find!219 0)
(declare-fun find!219_arg_0_5 (I_find!219) (_ BitVec 32))
(declare-fun find!219_arg_1_6 (I_find!219) List!1133)
(assert (forall ((?i I_contains!216)) (and (= (contains!216 (contains!216_arg_0_1 ?i) (contains!216_arg_1_2 ?i)) (ite ((_ is Nil!1137) (contains!216_arg_0_1 ?i)) false (ite ((_ is Cons!1134) (contains!216_arg_0_1 ?i)) (or (contains!216 (tail!1136 (contains!216_arg_0_1 ?i)) (contains!216_arg_1_2 ?i)) (= (key!1140 (head!1135 (contains!216_arg_0_1 ?i))) (contains!216_arg_1_2 ?i))) error_value!1163))) (ite ((_ is Nil!1137) (contains!216_arg_0_1 ?i)) true (ite ((_ is Cons!1134) (contains!216_arg_0_1 ?i)) (not (forall ((?z I_contains!216)) (not (and (= (contains!216_arg_0_1 ?z) (tail!1136 (contains!216_arg_0_1 ?i))) (= (contains!216_arg_1_2 ?z) (contains!216_arg_1_2 ?i)))) )) true))) ))
(assert (forall ((?i I_storeHasValues!213)) (and (= (storeHasValues!213 (storeHasValues!213_arg_0_3 ?i)) (ite ((_ is Nil!1137) (storeHasValues!213_arg_0_3 ?i)) true (ite ((_ is Cons!1134) (storeHasValues!213_arg_0_3 ?i)) (and (storeHasValues!213 (tail!1136 (storeHasValues!213_arg_0_3 ?i))) (isValue!206 (value!1141 (head!1135 (storeHasValues!213_arg_0_3 ?i))))) error_value!1164))) (ite ((_ is Nil!1137) (storeHasValues!213_arg_0_3 ?i)) true (ite ((_ is Cons!1134) (storeHasValues!213_arg_0_3 ?i)) (and (not (forall ((?z I_storeHasValues!213)) (not (= (storeHasValues!213_arg_0_3 ?z) (tail!1136 (storeHasValues!213_arg_0_3 ?i)))) )) (not (forall ((?z I_isValue!206)) (not (= (isValue!206_arg_0_4 ?z) (value!1141 (head!1135 (storeHasValues!213_arg_0_3 ?i))))) ))) true))) ))
(assert (forall ((?i I_isValue!206)) (and (= (isValue!206 (isValue!206_arg_0_4 ?i)) (ite ((_ is Const!1146) (isValue!206_arg_0_4 ?i)) true (ite ((_ is Lam!1150) (isValue!206_arg_0_4 ?i)) true (ite ((_ is Pair!1153) (isValue!206_arg_0_4 ?i)) (and (isValue!206 (snd!1155 (isValue!206_arg_0_4 ?i))) (isValue!206 (fst!1154 (isValue!206_arg_0_4 ?i)))) (ite ((_ is Var!1161) (isValue!206_arg_0_4 ?i)) false (ite ((_ is Plus!1156) (isValue!206_arg_0_4 ?i)) false (ite ((_ is App!1143) (isValue!206_arg_0_4 ?i)) false (ite ((_ is Fst!1148) (isValue!206_arg_0_4 ?i)) false (ite ((_ is Snd!1159) (isValue!206_arg_0_4 ?i)) false error_value!1165))))))))) (ite ((_ is Const!1146) (isValue!206_arg_0_4 ?i)) true (ite ((_ is Lam!1150) (isValue!206_arg_0_4 ?i)) true (ite ((_ is Pair!1153) (isValue!206_arg_0_4 ?i)) (and (not (forall ((?z I_isValue!206)) (not (= (isValue!206_arg_0_4 ?z) (snd!1155 (isValue!206_arg_0_4 ?i)))) )) (not (forall ((?z I_isValue!206)) (not (= (isValue!206_arg_0_4 ?z) (fst!1154 (isValue!206_arg_0_4 ?i)))) ))) true)))) ))
(assert (forall ((?i I_find!219)) (and (= (find!219 (find!219_arg_0_5 ?i) (find!219_arg_1_6 ?i)) (ite ((_ is Cons!1134) (find!219_arg_1_6 ?i)) (ite (= (key!1140 (head!1135 (find!219_arg_1_6 ?i))) (find!219_arg_0_5 ?i)) (value!1141 (head!1135 (find!219_arg_1_6 ?i))) (find!219 (find!219_arg_0_5 ?i) (tail!1136 (find!219_arg_1_6 ?i)))) error_value!1166)) (ite ((_ is Cons!1134) (find!219_arg_1_6 ?i)) (ite (= (key!1140 (head!1135 (find!219_arg_1_6 ?i))) (find!219_arg_0_5 ?i)) true (not (forall ((?z I_find!219)) (not (and (= (find!219_arg_0_5 ?z) (find!219_arg_0_5 ?i)) (= (find!219_arg_1_6 ?z) (tail!1136 (find!219_arg_1_6 ?i))))) ))) true)) ))
(assert (not (forall ((l!218 List!1133) (x!217 (_ BitVec 32))) (or (not (and (storeHasValues!213 l!218) (not (forall ((?z I_storeHasValues!213)) (not (= (storeHasValues!213_arg_0_3 ?z) l!218)) )))) ((_ is Cons!1134) l!218) (or (isValue!206 (ite (not (contains!216 l!218 x!217)) (ite (= (key!1140 (head!1135 l!218)) x!217) (value!1141 (head!1135 l!218)) (find!219 x!217 (tail!1136 l!218))) error_value!1167)) (forall ((?z I_isValue!206)) (not (= (isValue!206_arg_0_4 ?z) (ite (not (contains!216 l!218 x!217)) (ite (= (key!1140 (head!1135 l!218)) x!217) (value!1141 (head!1135 l!218)) (find!219 x!217 (tail!1136 l!218))) error_value!1167))) ) (forall ((?z I_contains!216)) (not (and (= (contains!216_arg_0_1 ?z) l!218) (= (contains!216_arg_1_2 ?z) x!217))) ) (not (ite (not (contains!216 l!218 x!217)) (ite (= (key!1140 (head!1135 l!218)) x!217) true (not (forall ((?z I_find!219)) (not (and (= (find!219_arg_0_5 ?z) x!217) (= (find!219_arg_1_6 ?z) (tail!1136 l!218)))) ))) true)))) )))
(check-sat)
(exit)
