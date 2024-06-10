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
(assert (forall ((store!214 List!1133) (key!215 (_ BitVec 32))) (= (contains!216 store!214 key!215) (ite ((_ is Nil!1137) store!214) false (ite (and (and ((_ is Cons!1134) store!214) ((_ is Cons!1134) store!214)) ((_ is BindingPair!1139) (head!1135 store!214))) (or (or (= (key!1140 (head!1135 store!214)) key!215) (= (key!1140 (head!1135 store!214)) key!215)) (contains!216 (tail!1136 store!214) key!215)) error_value!1163))) ))
(assert (forall ((store!212 List!1133)) (= (storeHasValues!213 store!212) (ite ((_ is Nil!1137) store!212) true (ite (and (and ((_ is Cons!1134) store!212) ((_ is Cons!1134) store!212)) ((_ is BindingPair!1139) (head!1135 store!212))) (and (and (isValue!206 (value!1141 (head!1135 store!212))) (isValue!206 (value!1141 (head!1135 store!212)))) (storeHasValues!213 (tail!1136 store!212))) error_value!1164))) ))
(assert (forall ((expr!205 Expr!1142)) (= (isValue!206 expr!205) (ite ((_ is Const!1146) expr!205) true (ite ((_ is Lam!1150) expr!205) true (ite ((_ is Pair!1153) expr!205) (and (and (isValue!206 (fst!1154 expr!205)) (isValue!206 (fst!1154 expr!205))) (isValue!206 (snd!1155 expr!205))) (ite ((_ is Var!1161) expr!205) false (ite ((_ is Plus!1156) expr!205) false (ite ((_ is App!1143) expr!205) false (ite ((_ is Fst!1148) expr!205) false (ite ((_ is Snd!1159) expr!205) false error_value!1165))))))))) ))
(assert (forall ((x!217 (_ BitVec 32)) (l!218 List!1133)) (= (find!219 x!217 l!218) (ite (and (and ((_ is Cons!1134) l!218) ((_ is Cons!1134) l!218)) ((_ is BindingPair!1139) (head!1135 l!218))) (ite (= (key!1140 (head!1135 l!218)) x!217) (value!1141 (head!1135 l!218)) (find!219 x!217 (tail!1136 l!218))) error_value!1166)) ))
(assert (not (forall ((l!218 List!1133) (x!217 (_ BitVec 32))) (or (not (storeHasValues!213 l!218)) ((_ is Cons!1134) l!218) (isValue!206 (ite (not (contains!216 l!218 x!217)) (ite (= (key!1140 (head!1135 l!218)) x!217) (value!1141 (head!1135 l!218)) (find!219 x!217 (tail!1136 l!218))) error_value!1167))) )))
(check-sat)
(exit)
