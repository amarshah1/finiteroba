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


(declare-datatypes ((Heap!1134 0)) (((Leaf!1135) (Node!1136 (rk!1137 (_ BitVec 32)) (value!1138 (_ BitVec 32)) (left!1139 Heap!1134) (right!1140 Heap!1134)))
))
(declare-datatypes ((List!1141 0)) (((Cons!1142 (head!1143 (_ BitVec 32)) (tail!1144 List!1141)) (Nil!1145))
))
(declare-fun error_value!1146 () Bool)
(declare-fun error_value!1147 () (_ BitVec 32))
(declare-fun error_value!1148 () (_ BitVec 32))
(declare-fun hasLeftistProperty!210 (Heap!1134) Bool)
(declare-fun rightHeight!206 (Heap!1134) (_ BitVec 32))
(declare-fun rank!208 (Heap!1134) (_ BitVec 32))
(declare-fun error_value!1149 () (_ BitVec 32))
(declare-fun heapSize!212 (Heap!1134) (_ BitVec 32))
(declare-fun error_value!1150 () (_ BitVec 32))
(declare-fun listSize!229 (List!1141) (_ BitVec 32))
(declare-fun error_value!1151 () (_ BitVec 32))
(declare-fun error_value!1152 () Heap!1134)
(declare-fun error_value!1153 () Heap!1134)
(declare-fun error_value!1154 () Heap!1134)
(declare-fun findMax!224 (Heap!1134) (_ BitVec 32))
(declare-fun makeT!219 ((_ BitVec 32) Heap!1134 Heap!1134) Heap!1134)
(declare-fun removeMax!226 (Heap!1134) Heap!1134)
(declare-fun removeElements!232 (Heap!1134 List!1141) List!1141)
(declare-fun merge!215 (Heap!1134 Heap!1134) Heap!1134)
(assert (forall ((h!209 Heap!1134)) (= (hasLeftistProperty!210 h!209) (ite ((_ is Leaf!1135) h!209) true (ite ((_ is Node!1136) h!209) (and (and (and (and (hasLeftistProperty!210 (left!1139 h!209)) (hasLeftistProperty!210 (left!1139 h!209))) (hasLeftistProperty!210 (right!1140 h!209))) (bvsge (rightHeight!206 (left!1139 h!209)) (rightHeight!206 (right!1140 h!209)))) (= (rank!208 h!209) (rightHeight!206 h!209))) error_value!1146))) ))
(assert (forall ((h!205 Heap!1134)) (= (rightHeight!206 h!205) (ite ((_ is Leaf!1135) h!205) (_ bv0 32) (ite ((_ is Node!1136) h!205) (bvadd (rightHeight!206 (right!1140 h!205)) (_ bv1 32)) error_value!1147))) ))
(assert (forall ((h!207 Heap!1134)) (= (rank!208 h!207) (ite ((_ is Leaf!1135) h!207) (_ bv0 32) (ite ((_ is Node!1136) h!207) (rk!1137 h!207) error_value!1148))) ))
(assert (forall ((t!211 Heap!1134)) (= (heapSize!212 t!211) (ite ((_ is Leaf!1135) t!211) (_ bv0 32) (ite ((_ is Node!1136) t!211) (bvadd (bvadd (heapSize!212 (left!1139 t!211)) (_ bv1 32)) (heapSize!212 (right!1140 t!211))) error_value!1149))) ))
(assert (forall ((l!228 List!1141)) (= (listSize!229 l!228) (ite ((_ is Nil!1145) l!228) (_ bv0 32) (ite ((_ is Cons!1142) l!228) (bvadd (_ bv1 32) (listSize!229 (tail!1144 l!228))) error_value!1150))) ))
(assert (forall ((h!223 Heap!1134)) (= (findMax!224 h!223) (ite ((_ is Node!1136) h!223) (value!1138 h!223) (ite ((_ is Leaf!1135) h!223) (_ bv4294966296 32) error_value!1151))) ))
(assert (forall ((value!216 (_ BitVec 32)) (left!217 Heap!1134) (right!218 Heap!1134)) (= (makeT!219 value!216 left!217 right!218) (ite (bvsge (rank!208 left!217) (rank!208 right!218)) (Node!1136 (bvadd (rank!208 right!218) (_ bv1 32)) value!216 left!217 right!218) (Node!1136 (bvadd (rank!208 left!217) (_ bv1 32)) value!216 right!218 left!217))) ))
(assert (forall ((h!225 Heap!1134)) (= (removeMax!226 h!225) (ite ((_ is Node!1136) h!225) (merge!215 (left!1139 h!225) (right!1140 h!225)) (ite ((_ is Leaf!1135) h!225) h!225 error_value!1152))) ))
(assert (forall ((h!230 Heap!1134) (l!231 List!1141)) (= (removeElements!232 h!230 l!231) (ite ((_ is Leaf!1135) h!230) l!231 (removeElements!232 (removeMax!226 h!230) (Cons!1142 (findMax!224 h!230) l!231)))) ))
(assert (forall ((h1!213 Heap!1134) (h2!214 Heap!1134)) (= (merge!215 h1!213 h2!214) (ite ((_ is Leaf!1135) h1!213) h2!214 (ite ((_ is Node!1136) h1!213) (ite ((_ is Leaf!1135) h2!214) h1!213 (ite ((_ is Node!1136) h2!214) (ite (bvsgt (value!1138 h1!213) (value!1138 h2!214)) (makeT!219 (value!1138 h1!213) (left!1139 h1!213) (merge!215 (right!1140 h1!213) h2!214)) (makeT!219 (value!1138 h2!214) (left!1139 h2!214) (merge!215 h1!213 (right!1140 h2!214)))) error_value!1153)) error_value!1154))) ))
(assert (not (forall ((h!230 Heap!1134) (l!231 List!1141)) (or ((_ is Leaf!1135) h!230) (= (listSize!229 (ite (not (hasLeftistProperty!210 h!230)) l!231 (removeElements!232 (removeMax!226 h!230) (Cons!1142 (findMax!224 h!230) l!231)))) (bvadd (heapSize!212 h!230) (listSize!229 l!231)))) )))
(check-sat)
(exit)

