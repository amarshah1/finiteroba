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


(declare-datatypes ((Heap!1189 0)) (((Leaf!1190) (Node!1191 (rk!1192 (_ BitVec 32)) (value!1193 (_ BitVec 32)) (left!1194 Heap!1189) (right!1195 Heap!1189)))
))
(declare-datatypes ((List!1196 0)) (((Cons!1197 (head!1198 (_ BitVec 32)) (tail!1199 List!1196)) (Nil!1200))
))
(declare-fun error_value!1201 () Bool)
(declare-fun error_value!1202 () (_ BitVec 32))
(declare-fun error_value!1203 () (_ BitVec 32))
(declare-fun hasLeftistProperty!210 (Heap!1189) Bool)
(declare-fun rightHeight!206 (Heap!1189) (_ BitVec 32))
(declare-fun rank!208 (Heap!1189) (_ BitVec 32))
(declare-fun error_value!1204 () (_ BitVec 32))
(declare-fun error_value!1205 () (_ BitVec 32))
(declare-fun error_value!1206 () Heap!1189)
(declare-fun error_value!1207 () Heap!1189)
(declare-fun error_value!1208 () Heap!1189)
(declare-fun insert!222 ((_ BitVec 32) Heap!1189) Heap!1189)
(declare-fun heapSize!212 (Heap!1189) (_ BitVec 32))
(declare-fun listSize!229 (List!1196) (_ BitVec 32))
(declare-fun makeT!219 ((_ BitVec 32) Heap!1189 Heap!1189) Heap!1189)
(declare-fun buildHeap!235 (List!1196 Heap!1189) Heap!1189)
(declare-fun merge!215 (Heap!1189 Heap!1189) Heap!1189)
(declare-fun error_value!1209 () Heap!1189)
(assert (forall ((h!209 Heap!1189)) (= (hasLeftistProperty!210 h!209) (ite ((_ is Leaf!1190) h!209) true (ite ((_ is Node!1191) h!209) (and (and (and (and (hasLeftistProperty!210 (left!1194 h!209)) (hasLeftistProperty!210 (left!1194 h!209))) (hasLeftistProperty!210 (right!1195 h!209))) (bvsge (rightHeight!206 (left!1194 h!209)) (rightHeight!206 (right!1195 h!209)))) (= (rank!208 h!209) (rightHeight!206 h!209))) error_value!1201))) ))
(assert (forall ((h!205 Heap!1189)) (= (rightHeight!206 h!205) (ite ((_ is Leaf!1190) h!205) (_ bv0 32) (ite ((_ is Node!1191) h!205) (bvadd (rightHeight!206 (right!1195 h!205)) (_ bv1 32)) error_value!1202))) ))
(assert (forall ((h!207 Heap!1189)) (= (rank!208 h!207) (ite ((_ is Leaf!1190) h!207) (_ bv0 32) (ite ((_ is Node!1191) h!207) (rk!1192 h!207) error_value!1203))) ))
(assert (forall ((element!220 (_ BitVec 32)) (heap!221 Heap!1189)) (= (insert!222 element!220 heap!221) (merge!215 (Node!1191 (_ bv1 32) element!220 Leaf!1190 Leaf!1190) heap!221)) ))
(assert (forall ((t!211 Heap!1189)) (= (heapSize!212 t!211) (ite ((_ is Leaf!1190) t!211) (_ bv0 32) (ite ((_ is Node!1191) t!211) (bvadd (bvadd (heapSize!212 (left!1194 t!211)) (_ bv1 32)) (heapSize!212 (right!1195 t!211))) error_value!1204))) ))
(assert (forall ((l!228 List!1196)) (= (listSize!229 l!228) (ite ((_ is Nil!1200) l!228) (_ bv0 32) (ite ((_ is Cons!1197) l!228) (bvadd (_ bv1 32) (listSize!229 (tail!1199 l!228))) error_value!1205))) ))
(assert (forall ((value!216 (_ BitVec 32)) (left!217 Heap!1189) (right!218 Heap!1189)) (= (makeT!219 value!216 left!217 right!218) (ite (bvsge (rank!208 left!217) (rank!208 right!218)) (Node!1191 (bvadd (rank!208 right!218) (_ bv1 32)) value!216 left!217 right!218) (Node!1191 (bvadd (rank!208 left!217) (_ bv1 32)) value!216 right!218 left!217))) ))
(assert (forall ((l!233 List!1196) (h!234 Heap!1189)) (= (buildHeap!235 l!233 h!234) (ite ((_ is Nil!1200) l!233) h!234 (ite ((_ is Cons!1197) l!233) (buildHeap!235 (tail!1199 l!233) (insert!222 (head!1198 l!233) h!234)) error_value!1206))) ))
(assert (forall ((h1!213 Heap!1189) (h2!214 Heap!1189)) (= (merge!215 h1!213 h2!214) (ite ((_ is Leaf!1190) h1!213) h2!214 (ite ((_ is Node!1191) h1!213) (ite ((_ is Leaf!1190) h2!214) h1!213 (ite ((_ is Node!1191) h2!214) (ite (bvsgt (value!1193 h1!213) (value!1193 h2!214)) (makeT!219 (value!1193 h1!213) (left!1194 h1!213) (merge!215 (right!1195 h1!213) h2!214)) (makeT!219 (value!1193 h2!214) (left!1194 h2!214) (merge!215 h1!213 (right!1195 h2!214)))) error_value!1207)) error_value!1208))) ))
(assert (not (forall ((h!234 Heap!1189) (l!233 List!1196)) (or (not (hasLeftistProperty!210 h!234)) (and (= (heapSize!212 (ite ((_ is Nil!1200) l!233) h!234 (ite ((_ is Cons!1197) l!233) (buildHeap!235 l!233 (insert!222 (head!1198 l!233) h!234)) error_value!1209))) (bvadd (heapSize!212 h!234) (listSize!229 (tail!1199 l!233)))) (hasLeftistProperty!210 (ite ((_ is Nil!1200) l!233) h!234 (ite ((_ is Cons!1197) l!233) (buildHeap!235 (tail!1199 l!233) (insert!222 (head!1198 l!233) h!234)) error_value!1209))))) )))
(check-sat)
(exit)
