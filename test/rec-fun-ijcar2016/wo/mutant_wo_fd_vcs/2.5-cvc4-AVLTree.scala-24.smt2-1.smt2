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


(declare-datatypes ((Tree!1262 0)) (((Leaf!1263) (Node!1264 (left!1265 Tree!1262) (value!1266 (_ BitVec 32)) (right!1267 Tree!1262) (rank!1268 (_ BitVec 32))))
))
(declare-fun error_value!1269 () (_ BitVec 32))
(declare-fun error_value!1270 () Bool)
(declare-fun error_value!1271 () Bool)
(declare-fun error_value!1272 () (_ BitVec 32))
(declare-fun error_value!1273 () (_ BitVec 32))
(declare-fun rank!222 (Tree!1262) (_ BitVec 32))
(declare-fun rankHeight!234 (Tree!1262) Bool)
(declare-fun isAVL!238 (Tree!1262) Bool)
(declare-fun height!226 (Tree!1262) (_ BitVec 32))
(declare-fun balanceFactor!236 (Tree!1262) (_ BitVec 32))
(declare-fun error_value!1274 () Bool)
(declare-fun error_value!1275 () Tree!1262)
(declare-fun rotateRight!254 (Tree!1262) Tree!1262)
(declare-fun offByOne!244 (Tree!1262) Bool)
(declare-fun max!219 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun rotateLeft!256 (Tree!1262) Tree!1262)
(declare-fun balance!252 (Tree!1262) Tree!1262)
(declare-fun error_value!1276 () (_ BitVec 32))
(declare-fun error_value!1277 () Tree!1262)
(declare-fun size!224 (Tree!1262) (_ BitVec 32))
(declare-fun avlInsert!250 (Tree!1262 (_ BitVec 32)) Tree!1262)
(declare-fun unbalancedInsert!247 (Tree!1262 (_ BitVec 32)) Tree!1262)
(assert (forall ((t!221 Tree!1262)) (= (rank!222 t!221) (ite ((_ is Leaf!1263) t!221) (_ bv0 32) (ite ((_ is Node!1264) t!221) (rank!1268 t!221) error_value!1269))) ))
(assert (forall ((t!233 Tree!1262)) (= (rankHeight!234 t!233) (ite ((_ is Leaf!1263) t!233) true (ite ((_ is Node!1264) t!233) (and (and (and (rankHeight!234 (left!1265 t!233)) (rankHeight!234 (left!1265 t!233))) (rankHeight!234 (right!1267 t!233))) (= (rank!1268 t!233) (height!226 t!233))) error_value!1270))) ))
(assert (forall ((t!237 Tree!1262)) (= (isAVL!238 t!237) (ite ((_ is Leaf!1263) t!237) true (ite ((_ is Node!1264) t!237) (and (and (and (and (and (isAVL!238 (left!1265 t!237)) (isAVL!238 (left!1265 t!237))) (isAVL!238 (right!1267 t!237))) (bvsge (balanceFactor!236 t!237) (_ bv4294967295 32))) (bvsle (balanceFactor!236 t!237) (_ bv1 32))) (rankHeight!234 t!237)) error_value!1271))) ))
(assert (forall ((t!225 Tree!1262)) (= (height!226 t!225) (ite ((_ is Leaf!1263) t!225) (_ bv0 32) (ite ((_ is Node!1264) t!225) (ite (bvsgt (height!226 (left!1265 t!225)) (height!226 (right!1267 t!225))) (bvadd (height!226 (left!1265 t!225)) (_ bv1 32)) (bvadd (height!226 (right!1267 t!225)) (_ bv1 32))) error_value!1272))) ))
(assert (forall ((t!235 Tree!1262)) (= (balanceFactor!236 t!235) (ite ((_ is Leaf!1263) t!235) (_ bv0 32) (ite ((_ is Node!1264) t!235) (bvsub (rank!222 (left!1265 t!235)) (rank!222 (right!1267 t!235))) error_value!1273))) ))
(assert (forall ((t!253 Tree!1262)) (= (rotateRight!254 t!253) (ite (and (and ((_ is Node!1264) t!253) ((_ is Node!1264) t!253)) ((_ is Node!1264) (left!1265 t!253))) (Node!1264 (left!1265 (left!1265 t!253)) (value!1266 (left!1265 t!253)) (Node!1264 (right!1267 (left!1265 t!253)) (value!1266 t!253) (right!1267 t!253) (bvadd (max!219 (rank!222 (right!1267 (left!1265 t!253))) (rank!222 (right!1267 t!253))) (_ bv1 32))) (bvadd (max!219 (rank!222 (left!1265 (left!1265 t!253))) (bvadd (max!219 (rank!222 (right!1267 (left!1265 t!253))) (rank!222 (right!1267 t!253))) (_ bv1 32))) (_ bv1 32))) t!253)) ))
(assert (forall ((t!243 Tree!1262)) (= (offByOne!244 t!243) (ite ((_ is Leaf!1263) t!243) true (ite ((_ is Node!1264) t!243) (and (and (and (and (isAVL!238 (left!1265 t!243)) (isAVL!238 (left!1265 t!243))) (isAVL!238 (right!1267 t!243))) (bvsge (balanceFactor!236 t!243) (_ bv4294967294 32))) (bvsle (balanceFactor!236 t!243) (_ bv2 32))) error_value!1274))) ))
(assert (forall ((i1!217 (_ BitVec 32)) (i2!218 (_ BitVec 32))) (= (max!219 i1!217 i2!218) (ite (bvsge i1!217 i2!218) i1!217 i2!218)) ))
(assert (forall ((t!255 Tree!1262)) (= (rotateLeft!256 t!255) (ite (and (and ((_ is Node!1264) t!255) ((_ is Node!1264) t!255)) ((_ is Node!1264) (right!1267 t!255))) (Node!1264 (Node!1264 (left!1265 t!255) (value!1266 t!255) (left!1265 (right!1267 t!255)) (bvadd (max!219 (rank!222 (left!1265 t!255)) (rank!222 (left!1265 (right!1267 t!255)))) (_ bv1 32))) (value!1266 (right!1267 t!255)) (right!1267 (right!1267 t!255)) (bvadd (max!219 (bvadd (max!219 (rank!222 (left!1265 t!255)) (rank!222 (left!1265 (right!1267 t!255)))) (_ bv1 32)) (rank!222 (right!1267 (right!1267 t!255)))) (_ bv1 32))) t!255)) ))
(assert (forall ((t!251 Tree!1262)) (= (balance!252 t!251) (ite ((_ is Leaf!1263) t!251) Leaf!1263 (ite ((_ is Node!1264) t!251) (ite (bvsgt (balanceFactor!236 t!251) (_ bv1 32)) (rotateRight!254 (Node!1264 (ite (bvslt (balanceFactor!236 (left!1265 t!251)) (_ bv0 32)) (rotateLeft!256 (left!1265 t!251)) (left!1265 t!251)) (value!1266 t!251) (right!1267 t!251) (bvadd (max!219 (rank!222 (ite (bvslt (balanceFactor!236 (left!1265 t!251)) (_ bv0 32)) (rotateLeft!256 (left!1265 t!251)) (left!1265 t!251))) (rank!222 (right!1267 t!251))) (_ bv1 32)))) (ite (bvslt (balanceFactor!236 t!251) (_ bv4294967295 32)) (rotateLeft!256 (Node!1264 (left!1265 t!251) (value!1266 t!251) (ite (bvsgt (balanceFactor!236 (right!1267 t!251)) (_ bv0 32)) (rotateRight!254 (right!1267 t!251)) (right!1267 t!251)) (bvadd (max!219 (rank!222 (ite (bvsgt (balanceFactor!236 (right!1267 t!251)) (_ bv0 32)) (rotateRight!254 (right!1267 t!251)) (right!1267 t!251))) (rank!222 (left!1265 t!251))) (_ bv1 32)))) t!251)) error_value!1275))) ))
(assert (forall ((t!223 Tree!1262)) (= (size!224 t!223) (ite ((_ is Leaf!1263) t!223) (_ bv0 32) (ite ((_ is Node!1264) t!223) (bvadd (bvadd (size!224 (left!1265 t!223)) (_ bv1 32)) (size!224 (right!1267 t!223))) error_value!1276))) ))
(assert (forall ((t!248 Tree!1262) (e!249 (_ BitVec 32))) (= (avlInsert!250 t!248 e!249) (balance!252 (unbalancedInsert!247 t!248 e!249))) ))
(assert (forall ((t!245 Tree!1262) (e!246 (_ BitVec 32))) (= (unbalancedInsert!247 t!245 e!246) (ite ((_ is Leaf!1263) t!245) (Node!1264 Leaf!1263 e!246 Leaf!1263 (_ bv1 32)) (ite ((_ is Node!1264) t!245) (ite (= e!246 (value!1266 t!245)) t!245 (ite (bvslt e!246 (value!1266 t!245)) (Node!1264 (avlInsert!250 (left!1265 t!245) e!246) (value!1266 t!245) (right!1267 t!245) (bvadd (max!219 (rank!222 (avlInsert!250 (left!1265 t!245) e!246)) (rank!222 (right!1267 t!245))) (_ bv1 32))) (Node!1264 (left!1265 t!245) (value!1266 t!245) (avlInsert!250 (right!1267 t!245) e!246) (bvadd (max!219 (rank!222 (left!1265 t!245)) (rank!222 (avlInsert!250 (right!1267 t!245) e!246))) (_ bv1 32))))) error_value!1277))) ))
(assert (not (forall ((t!248 Tree!1262) (e!249 (_ BitVec 32))) (or (isAVL!238 t!248) (and (not (bvslt (bvadd (size!224 t!248) (_ bv1 32)) (size!224 (balance!252 (unbalancedInsert!247 t!248 e!249))))) (not (bvslt (bvadd (rank!222 t!248) (_ bv1 32)) (rank!222 (balance!252 (unbalancedInsert!247 t!248 e!249))))) (not (bvslt (rank!222 (balance!252 (unbalancedInsert!247 t!248 e!249))) (rank!222 t!248))) (isAVL!238 (balance!252 (unbalancedInsert!247 t!248 e!249))))) )))
(check-sat)
(exit)

