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
(declare-sort I_hasLeftistProperty!210 0)
(declare-fun hasLeftistProperty!210_arg_0_1 (I_hasLeftistProperty!210) Heap!1134)
(declare-sort I_rightHeight!206 0)
(declare-fun rightHeight!206_arg_0_2 (I_rightHeight!206) Heap!1134)
(declare-sort I_rank!208 0)
(declare-fun rank!208_arg_0_3 (I_rank!208) Heap!1134)
(declare-sort I_heapSize!212 0)
(declare-fun heapSize!212_arg_0_4 (I_heapSize!212) Heap!1134)
(declare-sort I_listSize!229 0)
(declare-fun listSize!229_arg_0_5 (I_listSize!229) List!1141)
(declare-sort I_findMax!224 0)
(declare-fun findMax!224_arg_0_6 (I_findMax!224) Heap!1134)
(declare-sort I_makeT!219 0)
(declare-fun makeT!219_arg_0_7 (I_makeT!219) (_ BitVec 32))
(declare-fun makeT!219_arg_1_8 (I_makeT!219) Heap!1134)
(declare-fun makeT!219_arg_2_9 (I_makeT!219) Heap!1134)
(declare-sort I_removeMax!226 0)
(declare-fun removeMax!226_arg_0_10 (I_removeMax!226) Heap!1134)
(declare-sort I_removeElements!232 0)
(declare-fun removeElements!232_arg_0_11 (I_removeElements!232) Heap!1134)
(declare-fun removeElements!232_arg_1_12 (I_removeElements!232) List!1141)
(declare-sort I_merge!215 0)
(declare-fun merge!215_arg_0_13 (I_merge!215) Heap!1134)
(declare-fun merge!215_arg_1_14 (I_merge!215) Heap!1134)
(assert (forall ((?i I_hasLeftistProperty!210)) (and (= (hasLeftistProperty!210 (hasLeftistProperty!210_arg_0_1 ?i)) (ite ((_ is Leaf!1135) (hasLeftistProperty!210_arg_0_1 ?i)) true (ite ((_ is Node!1136) (hasLeftistProperty!210_arg_0_1 ?i)) (and (= (rightHeight!206 (hasLeftistProperty!210_arg_0_1 ?i)) (rank!208 (hasLeftistProperty!210_arg_0_1 ?i))) (not (bvslt (rightHeight!206 (left!1139 (hasLeftistProperty!210_arg_0_1 ?i))) (rightHeight!206 (right!1140 (hasLeftistProperty!210_arg_0_1 ?i))))) (hasLeftistProperty!210 (right!1140 (hasLeftistProperty!210_arg_0_1 ?i))) (hasLeftistProperty!210 (left!1139 (hasLeftistProperty!210_arg_0_1 ?i)))) error_value!1146))) (ite ((_ is Leaf!1135) (hasLeftistProperty!210_arg_0_1 ?i)) true (ite ((_ is Node!1136) (hasLeftistProperty!210_arg_0_1 ?i)) (and (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (hasLeftistProperty!210_arg_0_1 ?i))) )) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (hasLeftistProperty!210_arg_0_1 ?i))) )) (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (left!1139 (hasLeftistProperty!210_arg_0_1 ?i)))) )) (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (right!1140 (hasLeftistProperty!210_arg_0_1 ?i)))) )) (not (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) (right!1140 (hasLeftistProperty!210_arg_0_1 ?i)))) )) (not (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) (left!1139 (hasLeftistProperty!210_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_rightHeight!206)) (and (= (ite ((_ is Leaf!1135) (rightHeight!206_arg_0_2 ?i)) (_ bv0 32) (ite ((_ is Node!1136) (rightHeight!206_arg_0_2 ?i)) (bvadd (rightHeight!206 (right!1140 (rightHeight!206_arg_0_2 ?i))) (_ bv1 32)) error_value!1147)) (rightHeight!206 (rightHeight!206_arg_0_2 ?i))) (ite ((_ is Leaf!1135) (rightHeight!206_arg_0_2 ?i)) true (ite ((_ is Node!1136) (rightHeight!206_arg_0_2 ?i)) (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (right!1140 (rightHeight!206_arg_0_2 ?i)))) )) true))) ))
(assert (forall ((?i I_rank!208)) (= (ite ((_ is Leaf!1135) (rank!208_arg_0_3 ?i)) (_ bv0 32) (ite ((_ is Node!1136) (rank!208_arg_0_3 ?i)) (rk!1137 (rank!208_arg_0_3 ?i)) error_value!1148)) (rank!208 (rank!208_arg_0_3 ?i))) ))
(assert (forall ((?i I_heapSize!212)) (and (= (ite ((_ is Leaf!1135) (heapSize!212_arg_0_4 ?i)) (_ bv0 32) (ite ((_ is Node!1136) (heapSize!212_arg_0_4 ?i)) (bvadd (heapSize!212 (left!1139 (heapSize!212_arg_0_4 ?i))) (bvadd (heapSize!212 (right!1140 (heapSize!212_arg_0_4 ?i))) (_ bv1 32))) error_value!1149)) (heapSize!212 (heapSize!212_arg_0_4 ?i))) (ite ((_ is Leaf!1135) (heapSize!212_arg_0_4 ?i)) true (ite ((_ is Node!1136) (heapSize!212_arg_0_4 ?i)) (and (not (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_4 ?z) (left!1139 (heapSize!212_arg_0_4 ?i)))) )) (not (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_4 ?z) (right!1140 (heapSize!212_arg_0_4 ?i)))) ))) true))) ))
(assert (forall ((?i I_listSize!229)) (and (= (ite ((_ is Nil!1145) (listSize!229_arg_0_5 ?i)) (_ bv0 32) (ite ((_ is Cons!1142) (listSize!229_arg_0_5 ?i)) (bvadd (listSize!229 (tail!1144 (listSize!229_arg_0_5 ?i))) (_ bv1 32)) error_value!1150)) (listSize!229 (listSize!229_arg_0_5 ?i))) (ite ((_ is Nil!1145) (listSize!229_arg_0_5 ?i)) true (ite ((_ is Cons!1142) (listSize!229_arg_0_5 ?i)) (not (forall ((?z I_listSize!229)) (not (= (listSize!229_arg_0_5 ?z) (tail!1144 (listSize!229_arg_0_5 ?i)))) )) true))) ))
(assert (forall ((?i I_findMax!224)) (= (ite ((_ is Node!1136) (findMax!224_arg_0_6 ?i)) (value!1138 (findMax!224_arg_0_6 ?i)) (ite ((_ is Leaf!1135) (findMax!224_arg_0_6 ?i)) (_ bv4294966296 32) error_value!1151)) (findMax!224 (findMax!224_arg_0_6 ?i))) ))
(assert (forall ((?i I_makeT!219)) (and (= (makeT!219 (makeT!219_arg_0_7 ?i) (makeT!219_arg_1_8 ?i) (makeT!219_arg_2_9 ?i)) (ite (not (bvslt (rank!208 (makeT!219_arg_1_8 ?i)) (rank!208 (makeT!219_arg_2_9 ?i)))) (Node!1136 (bvadd (rank!208 (makeT!219_arg_2_9 ?i)) (_ bv1 32)) (makeT!219_arg_0_7 ?i) (makeT!219_arg_1_8 ?i) (makeT!219_arg_2_9 ?i)) (Node!1136 (bvadd (rank!208 (makeT!219_arg_1_8 ?i)) (_ bv1 32)) (makeT!219_arg_0_7 ?i) (makeT!219_arg_2_9 ?i) (makeT!219_arg_1_8 ?i)))) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (makeT!219_arg_1_8 ?i))) )) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (makeT!219_arg_2_9 ?i))) )) (ite (not (bvslt (rank!208 (makeT!219_arg_1_8 ?i)) (rank!208 (makeT!219_arg_2_9 ?i)))) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (makeT!219_arg_2_9 ?i))) )) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (makeT!219_arg_1_8 ?i))) )))) ))
(assert (forall ((?i I_removeMax!226)) (and (= (removeMax!226 (removeMax!226_arg_0_10 ?i)) (ite ((_ is Node!1136) (removeMax!226_arg_0_10 ?i)) (merge!215 (left!1139 (removeMax!226_arg_0_10 ?i)) (right!1140 (removeMax!226_arg_0_10 ?i))) (ite ((_ is Leaf!1135) (removeMax!226_arg_0_10 ?i)) (removeMax!226_arg_0_10 ?i) error_value!1152))) (ite ((_ is Node!1136) (removeMax!226_arg_0_10 ?i)) (not (forall ((?z I_merge!215)) (not (and (= (merge!215_arg_0_13 ?z) (left!1139 (removeMax!226_arg_0_10 ?i))) (= (merge!215_arg_1_14 ?z) (right!1140 (removeMax!226_arg_0_10 ?i))))) )) true)) ))
(assert (forall ((?i I_removeElements!232)) (and (= (removeElements!232 (removeElements!232_arg_0_11 ?i) (removeElements!232_arg_1_12 ?i)) (ite ((_ is Leaf!1135) (removeElements!232_arg_0_11 ?i)) (removeElements!232_arg_1_12 ?i) (removeElements!232 (removeMax!226 (removeElements!232_arg_0_11 ?i)) (Cons!1142 (findMax!224 (removeElements!232_arg_0_11 ?i)) (removeElements!232_arg_1_12 ?i))))) (ite ((_ is Leaf!1135) (removeElements!232_arg_0_11 ?i)) true (and (not (forall ((?z I_removeElements!232)) (not (and (= (removeElements!232_arg_0_11 ?z) (removeMax!226 (removeElements!232_arg_0_11 ?i))) (= (removeElements!232_arg_1_12 ?z) (Cons!1142 (findMax!224 (removeElements!232_arg_0_11 ?i)) (removeElements!232_arg_1_12 ?i))))) )) (not (forall ((?z I_removeMax!226)) (not (= (removeMax!226_arg_0_10 ?z) (removeElements!232_arg_0_11 ?i))) )) (not (forall ((?z I_findMax!224)) (not (= (findMax!224_arg_0_6 ?z) (removeElements!232_arg_0_11 ?i))) ))))) ))
(assert (forall ((?i I_merge!215)) (and (= (merge!215 (merge!215_arg_0_13 ?i) (merge!215_arg_1_14 ?i)) (ite ((_ is Leaf!1135) (merge!215_arg_0_13 ?i)) (merge!215_arg_1_14 ?i) (ite ((_ is Node!1136) (merge!215_arg_0_13 ?i)) (ite ((_ is Leaf!1135) (merge!215_arg_1_14 ?i)) (merge!215_arg_0_13 ?i) (ite ((_ is Node!1136) (merge!215_arg_1_14 ?i)) (ite (bvslt (value!1138 (merge!215_arg_1_14 ?i)) (value!1138 (merge!215_arg_0_13 ?i))) (makeT!219 (value!1138 (merge!215_arg_0_13 ?i)) (left!1139 (merge!215_arg_0_13 ?i)) (merge!215 (right!1140 (merge!215_arg_0_13 ?i)) (merge!215_arg_1_14 ?i))) (makeT!219 (value!1138 (merge!215_arg_1_14 ?i)) (left!1139 (merge!215_arg_1_14 ?i)) (merge!215 (merge!215_arg_0_13 ?i) (right!1140 (merge!215_arg_1_14 ?i))))) error_value!1153)) error_value!1154))) (ite ((_ is Leaf!1135) (merge!215_arg_0_13 ?i)) true (ite ((_ is Node!1136) (merge!215_arg_0_13 ?i)) (ite ((_ is Leaf!1135) (merge!215_arg_1_14 ?i)) true (ite ((_ is Node!1136) (merge!215_arg_1_14 ?i)) (ite (bvslt (value!1138 (merge!215_arg_1_14 ?i)) (value!1138 (merge!215_arg_0_13 ?i))) (and (not (forall ((?z I_makeT!219)) (not (and (= (makeT!219_arg_0_7 ?z) (value!1138 (merge!215_arg_0_13 ?i))) (= (makeT!219_arg_1_8 ?z) (left!1139 (merge!215_arg_0_13 ?i))) (= (makeT!219_arg_2_9 ?z) (merge!215 (right!1140 (merge!215_arg_0_13 ?i)) (merge!215_arg_1_14 ?i))))) )) (not (forall ((?z I_merge!215)) (not (and (= (merge!215_arg_0_13 ?z) (right!1140 (merge!215_arg_0_13 ?i))) (= (merge!215_arg_1_14 ?z) (merge!215_arg_1_14 ?i)))) ))) (and (not (forall ((?z I_makeT!219)) (not (and (= (makeT!219_arg_0_7 ?z) (value!1138 (merge!215_arg_1_14 ?i))) (= (makeT!219_arg_1_8 ?z) (left!1139 (merge!215_arg_1_14 ?i))) (= (makeT!219_arg_2_9 ?z) (merge!215 (merge!215_arg_0_13 ?i) (right!1140 (merge!215_arg_1_14 ?i)))))) )) (not (forall ((?z I_merge!215)) (not (and (= (merge!215_arg_0_13 ?z) (merge!215_arg_0_13 ?i)) (= (merge!215_arg_1_14 ?z) (right!1140 (merge!215_arg_1_14 ?i))))) )))) true)) true))) ))
(assert (not (forall ((h!230 Heap!1134) (l!231 List!1141)) (or (not (and (hasLeftistProperty!210 h!230) (not (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) h!230)) )))) (or (= (bvadd (listSize!229 l!231) (findMax!224 h!230)) (listSize!229 (ite ((_ is Leaf!1135) h!230) l!231 (removeElements!232 (removeMax!226 h!230) (Cons!1142 (heapSize!212 h!230) l!231))))) (forall ((?z I_listSize!229)) (not (= (listSize!229_arg_0_5 ?z) l!231)) ) (forall ((?z I_findMax!224)) (not (= (findMax!224_arg_0_6 ?z) h!230)) ) (forall ((?z I_listSize!229)) (not (= (listSize!229_arg_0_5 ?z) (ite ((_ is Leaf!1135) h!230) l!231 (removeElements!232 (removeMax!226 h!230) (Cons!1142 (heapSize!212 h!230) l!231))))) ) (not (ite ((_ is Leaf!1135) h!230) true (and (not (forall ((?z I_removeElements!232)) (not (and (= (removeElements!232_arg_0_11 ?z) (removeMax!226 h!230)) (= (removeElements!232_arg_1_12 ?z) (Cons!1142 (heapSize!212 h!230) l!231)))) )) (not (forall ((?z I_removeMax!226)) (not (= (removeMax!226_arg_0_10 ?z) h!230)) )) (not (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_4 ?z) h!230)) ))))))) )))
(check-sat)
(exit)
