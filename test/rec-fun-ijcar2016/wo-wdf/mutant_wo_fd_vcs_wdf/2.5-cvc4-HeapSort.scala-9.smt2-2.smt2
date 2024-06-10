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


(declare-datatypes ((Heap!1014 0)) (((Leaf!1015) (Node!1016 (rk!1017 (_ BitVec 32)) (value!1018 (_ BitVec 32)) (left!1019 Heap!1014) (right!1020 Heap!1014)))
))
(declare-fun error_value!1021 () Bool)
(declare-fun error_value!1022 () (_ BitVec 32))
(declare-fun error_value!1023 () (_ BitVec 32))
(declare-fun hasLeftistProperty!210 (Heap!1014) Bool)
(declare-fun rightHeight!206 (Heap!1014) (_ BitVec 32))
(declare-fun rank!208 (Heap!1014) (_ BitVec 32))
(declare-fun makeT!219 ((_ BitVec 32) Heap!1014 Heap!1014) Heap!1014)
(declare-fun error_value!1024 () (_ BitVec 32))
(declare-fun error_value!1025 () Heap!1014)
(declare-fun error_value!1026 () Heap!1014)
(declare-fun heapSize!212 (Heap!1014) (_ BitVec 32))
(declare-fun merge!215 (Heap!1014 Heap!1014) Heap!1014)
(declare-fun error_value!1027 () Heap!1014)
(declare-fun error_value!1028 () Heap!1014)
(declare-sort I_hasLeftistProperty!210 0)
(declare-fun hasLeftistProperty!210_arg_0_1 (I_hasLeftistProperty!210) Heap!1014)
(declare-sort I_rightHeight!206 0)
(declare-fun rightHeight!206_arg_0_2 (I_rightHeight!206) Heap!1014)
(declare-sort I_rank!208 0)
(declare-fun rank!208_arg_0_3 (I_rank!208) Heap!1014)
(declare-sort I_makeT!219 0)
(declare-fun makeT!219_arg_0_4 (I_makeT!219) (_ BitVec 32))
(declare-fun makeT!219_arg_1_5 (I_makeT!219) Heap!1014)
(declare-fun makeT!219_arg_2_6 (I_makeT!219) Heap!1014)
(declare-sort I_heapSize!212 0)
(declare-fun heapSize!212_arg_0_7 (I_heapSize!212) Heap!1014)
(declare-sort I_merge!215 0)
(declare-fun merge!215_arg_0_8 (I_merge!215) Heap!1014)
(declare-fun merge!215_arg_1_9 (I_merge!215) Heap!1014)
(assert (forall ((?i I_hasLeftistProperty!210)) (and (= (hasLeftistProperty!210 (hasLeftistProperty!210_arg_0_1 ?i)) (ite ((_ is Leaf!1015) (hasLeftistProperty!210_arg_0_1 ?i)) true (ite ((_ is Node!1016) (hasLeftistProperty!210_arg_0_1 ?i)) (and (= (rightHeight!206 (hasLeftistProperty!210_arg_0_1 ?i)) (rank!208 (hasLeftistProperty!210_arg_0_1 ?i))) (not (bvslt (rightHeight!206 (left!1019 (hasLeftistProperty!210_arg_0_1 ?i))) (rightHeight!206 (right!1020 (hasLeftistProperty!210_arg_0_1 ?i))))) (hasLeftistProperty!210 (right!1020 (hasLeftistProperty!210_arg_0_1 ?i))) (hasLeftistProperty!210 (left!1019 (hasLeftistProperty!210_arg_0_1 ?i)))) error_value!1021))) (ite ((_ is Leaf!1015) (hasLeftistProperty!210_arg_0_1 ?i)) true (ite ((_ is Node!1016) (hasLeftistProperty!210_arg_0_1 ?i)) (and (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (hasLeftistProperty!210_arg_0_1 ?i))) )) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (hasLeftistProperty!210_arg_0_1 ?i))) )) (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (left!1019 (hasLeftistProperty!210_arg_0_1 ?i)))) )) (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (right!1020 (hasLeftistProperty!210_arg_0_1 ?i)))) )) (not (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) (right!1020 (hasLeftistProperty!210_arg_0_1 ?i)))) )) (not (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) (left!1019 (hasLeftistProperty!210_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_rightHeight!206)) (and (= (ite ((_ is Leaf!1015) (rightHeight!206_arg_0_2 ?i)) (_ bv0 32) (ite ((_ is Node!1016) (rightHeight!206_arg_0_2 ?i)) (bvadd (rightHeight!206 (right!1020 (rightHeight!206_arg_0_2 ?i))) (_ bv1 32)) error_value!1022)) (rightHeight!206 (rightHeight!206_arg_0_2 ?i))) (ite ((_ is Leaf!1015) (rightHeight!206_arg_0_2 ?i)) true (ite ((_ is Node!1016) (rightHeight!206_arg_0_2 ?i)) (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (right!1020 (rightHeight!206_arg_0_2 ?i)))) )) true))) ))
(assert (forall ((?i I_rank!208)) (= (ite ((_ is Leaf!1015) (rank!208_arg_0_3 ?i)) (_ bv0 32) (ite ((_ is Node!1016) (rank!208_arg_0_3 ?i)) (rk!1017 (rank!208_arg_0_3 ?i)) error_value!1023)) (rank!208 (rank!208_arg_0_3 ?i))) ))
(assert (forall ((?i I_makeT!219)) (and (= (makeT!219 (makeT!219_arg_0_4 ?i) (makeT!219_arg_1_5 ?i) (makeT!219_arg_2_6 ?i)) (ite (not (bvslt (rank!208 (makeT!219_arg_1_5 ?i)) (rank!208 (makeT!219_arg_2_6 ?i)))) (Node!1016 (bvadd (rank!208 (makeT!219_arg_2_6 ?i)) (_ bv1 32)) (makeT!219_arg_0_4 ?i) (makeT!219_arg_1_5 ?i) (makeT!219_arg_2_6 ?i)) (Node!1016 (bvadd (rank!208 (makeT!219_arg_1_5 ?i)) (_ bv1 32)) (makeT!219_arg_0_4 ?i) (makeT!219_arg_2_6 ?i) (makeT!219_arg_1_5 ?i)))) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (makeT!219_arg_1_5 ?i))) )) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (makeT!219_arg_2_6 ?i))) )) (ite (not (bvslt (rank!208 (makeT!219_arg_1_5 ?i)) (rank!208 (makeT!219_arg_2_6 ?i)))) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (makeT!219_arg_2_6 ?i))) )) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (makeT!219_arg_1_5 ?i))) )))) ))
(assert (forall ((?i I_heapSize!212)) (and (= (ite ((_ is Leaf!1015) (heapSize!212_arg_0_7 ?i)) (_ bv0 32) (ite ((_ is Node!1016) (heapSize!212_arg_0_7 ?i)) (bvadd (heapSize!212 (left!1019 (heapSize!212_arg_0_7 ?i))) (bvadd (heapSize!212 (right!1020 (heapSize!212_arg_0_7 ?i))) (_ bv1 32))) error_value!1024)) (heapSize!212 (heapSize!212_arg_0_7 ?i))) (ite ((_ is Leaf!1015) (heapSize!212_arg_0_7 ?i)) true (ite ((_ is Node!1016) (heapSize!212_arg_0_7 ?i)) (and (not (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_7 ?z) (left!1019 (heapSize!212_arg_0_7 ?i)))) )) (not (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_7 ?z) (right!1020 (heapSize!212_arg_0_7 ?i)))) ))) true))) ))
(assert (forall ((?i I_merge!215)) (and (= (merge!215 (merge!215_arg_0_8 ?i) (merge!215_arg_1_9 ?i)) (ite ((_ is Leaf!1015) (merge!215_arg_0_8 ?i)) (merge!215_arg_1_9 ?i) (ite ((_ is Node!1016) (merge!215_arg_0_8 ?i)) (ite ((_ is Leaf!1015) (merge!215_arg_1_9 ?i)) (merge!215_arg_0_8 ?i) (ite ((_ is Node!1016) (merge!215_arg_1_9 ?i)) (ite (bvslt (value!1018 (merge!215_arg_1_9 ?i)) (value!1018 (merge!215_arg_0_8 ?i))) (makeT!219 (value!1018 (merge!215_arg_0_8 ?i)) (left!1019 (merge!215_arg_0_8 ?i)) (merge!215 (right!1020 (merge!215_arg_0_8 ?i)) (merge!215_arg_1_9 ?i))) (makeT!219 (value!1018 (merge!215_arg_1_9 ?i)) (left!1019 (merge!215_arg_1_9 ?i)) (merge!215 (merge!215_arg_0_8 ?i) (right!1020 (merge!215_arg_1_9 ?i))))) error_value!1025)) error_value!1026))) (ite ((_ is Leaf!1015) (merge!215_arg_0_8 ?i)) true (ite ((_ is Node!1016) (merge!215_arg_0_8 ?i)) (ite ((_ is Leaf!1015) (merge!215_arg_1_9 ?i)) true (ite ((_ is Node!1016) (merge!215_arg_1_9 ?i)) (ite (bvslt (value!1018 (merge!215_arg_1_9 ?i)) (value!1018 (merge!215_arg_0_8 ?i))) (and (not (forall ((?z I_makeT!219)) (not (and (= (makeT!219_arg_0_4 ?z) (value!1018 (merge!215_arg_0_8 ?i))) (= (makeT!219_arg_1_5 ?z) (left!1019 (merge!215_arg_0_8 ?i))) (= (makeT!219_arg_2_6 ?z) (merge!215 (right!1020 (merge!215_arg_0_8 ?i)) (merge!215_arg_1_9 ?i))))) )) (not (forall ((?z I_merge!215)) (not (and (= (merge!215_arg_0_8 ?z) (right!1020 (merge!215_arg_0_8 ?i))) (= (merge!215_arg_1_9 ?z) (merge!215_arg_1_9 ?i)))) ))) (and (not (forall ((?z I_makeT!219)) (not (and (= (makeT!219_arg_0_4 ?z) (value!1018 (merge!215_arg_1_9 ?i))) (= (makeT!219_arg_1_5 ?z) (left!1019 (merge!215_arg_1_9 ?i))) (= (makeT!219_arg_2_6 ?z) (merge!215 (merge!215_arg_0_8 ?i) (right!1020 (merge!215_arg_1_9 ?i)))))) )) (not (forall ((?z I_merge!215)) (not (and (= (merge!215_arg_0_8 ?z) (merge!215_arg_0_8 ?i)) (= (merge!215_arg_1_9 ?z) (right!1020 (merge!215_arg_1_9 ?i))))) )))) true)) true))) ))
(assert (not (forall ((h1!213 Heap!1014) (h2!214 Heap!1014)) (or (not (and (hasLeftistProperty!210 h2!214) (not (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) h2!214)) )))) (not (and (hasLeftistProperty!210 h1!213) (not (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) h1!213)) )))) (and (or (= (heapSize!212 (ite ((_ is Leaf!1015) h1!213) h2!214 (ite ((_ is Node!1016) h1!213) (ite ((_ is Leaf!1015) h2!214) h1!213 (left!1019 h2!214)) error_value!1028))) (bvadd (heapSize!212 h1!213) (heapSize!212 h2!214))) (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_7 ?z) (ite ((_ is Leaf!1015) h1!213) h2!214 (ite ((_ is Node!1016) h1!213) (ite ((_ is Leaf!1015) h2!214) h1!213 (left!1019 h2!214)) error_value!1028)))) ) (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_7 ?z) h1!213)) ) (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_7 ?z) h2!214)) )) (or (hasLeftistProperty!210 (ite ((_ is Leaf!1015) h1!213) h2!214 (ite ((_ is Node!1016) h1!213) (ite ((_ is Leaf!1015) h2!214) h1!213 (ite ((_ is Node!1016) h2!214) (ite (bvslt (value!1018 h2!214) (value!1018 h1!213)) (makeT!219 (value!1018 h1!213) (left!1019 h1!213) (merge!215 (right!1020 h1!213) h2!214)) (makeT!219 (value!1018 h2!214) (ite ((_ is Node!1016) h2!214) (ite (bvslt (value!1018 h2!214) (value!1018 h1!213)) (makeT!219 (value!1018 h1!213) (left!1019 h1!213) (merge!215 (right!1020 h1!213) h2!214)) (makeT!219 (value!1018 h2!214) (left!1019 h2!214) (merge!215 h1!213 (right!1020 h2!214)))) error_value!1027) (merge!215 h1!213 (right!1020 h2!214)))) error_value!1027)) error_value!1028))) (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) (ite ((_ is Leaf!1015) h1!213) h2!214 (ite ((_ is Node!1016) h1!213) (ite ((_ is Leaf!1015) h2!214) h1!213 (ite ((_ is Node!1016) h2!214) (ite (bvslt (value!1018 h2!214) (value!1018 h1!213)) (makeT!219 (value!1018 h1!213) (left!1019 h1!213) (merge!215 (right!1020 h1!213) h2!214)) (makeT!219 (value!1018 h2!214) (ite ((_ is Node!1016) h2!214) (ite (bvslt (value!1018 h2!214) (value!1018 h1!213)) (makeT!219 (value!1018 h1!213) (left!1019 h1!213) (merge!215 (right!1020 h1!213) h2!214)) (makeT!219 (value!1018 h2!214) (left!1019 h2!214) (merge!215 h1!213 (right!1020 h2!214)))) error_value!1027) (merge!215 h1!213 (right!1020 h2!214)))) error_value!1027)) error_value!1028)))) ) (not (ite ((_ is Leaf!1015) h1!213) true (ite ((_ is Node!1016) h1!213) (ite ((_ is Leaf!1015) h2!214) true (ite ((_ is Node!1016) h2!214) (ite (bvslt (value!1018 h2!214) (value!1018 h1!213)) (and (not (forall ((?z I_makeT!219)) (not (and (= (makeT!219_arg_0_4 ?z) (value!1018 h1!213)) (= (makeT!219_arg_1_5 ?z) (left!1019 h1!213)) (= (makeT!219_arg_2_6 ?z) (merge!215 (right!1020 h1!213) h2!214)))) )) (not (forall ((?z I_merge!215)) (not (and (= (merge!215_arg_0_8 ?z) (right!1020 h1!213)) (= (merge!215_arg_1_9 ?z) h2!214))) ))) (and (not (forall ((?z I_makeT!219)) (not (and (= (makeT!219_arg_0_4 ?z) (value!1018 h2!214)) (= (makeT!219_arg_1_5 ?z) (ite ((_ is Node!1016) h2!214) (ite (bvslt (value!1018 h2!214) (value!1018 h1!213)) (makeT!219 (value!1018 h1!213) (left!1019 h1!213) (merge!215 (right!1020 h1!213) h2!214)) (makeT!219 (value!1018 h2!214) (left!1019 h2!214) (merge!215 h1!213 (right!1020 h2!214)))) error_value!1027)) (= (makeT!219_arg_2_6 ?z) (merge!215 h1!213 (right!1020 h2!214))))) )) (ite ((_ is Node!1016) h2!214) (ite (bvslt (value!1018 h2!214) (value!1018 h1!213)) (and (not (forall ((?z I_makeT!219)) (not (and (= (makeT!219_arg_0_4 ?z) (value!1018 h1!213)) (= (makeT!219_arg_1_5 ?z) (left!1019 h1!213)) (= (makeT!219_arg_2_6 ?z) (merge!215 (right!1020 h1!213) h2!214)))) )) (not (forall ((?z I_merge!215)) (not (and (= (merge!215_arg_0_8 ?z) (right!1020 h1!213)) (= (merge!215_arg_1_9 ?z) h2!214))) ))) (and (not (forall ((?z I_makeT!219)) (not (and (= (makeT!219_arg_0_4 ?z) (value!1018 h2!214)) (= (makeT!219_arg_1_5 ?z) (left!1019 h2!214)) (= (makeT!219_arg_2_6 ?z) (merge!215 h1!213 (right!1020 h2!214))))) )) (not (forall ((?z I_merge!215)) (not (and (= (merge!215_arg_0_8 ?z) h1!213) (= (merge!215_arg_1_9 ?z) (right!1020 h2!214)))) )))) true) (not (forall ((?z I_merge!215)) (not (and (= (merge!215_arg_0_8 ?z) h1!213) (= (merge!215_arg_1_9 ?z) (right!1020 h2!214)))) )))) true)) true)))))) )))
(check-sat)
(exit)
