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


(declare-datatypes ((Heap!972 0)) (((Leaf!973) (Node!974 (rk!975 (_ BitVec 32)) (value!976 (_ BitVec 32)) (left!977 Heap!972) (right!978 Heap!972)))
))
(declare-fun error_value!979 () Bool)
(declare-fun error_value!980 () (_ BitVec 32))
(declare-fun error_value!981 () (_ BitVec 32))
(declare-fun hasLeftistProperty!210 (Heap!972) Bool)
(declare-fun rightHeight!206 (Heap!972) (_ BitVec 32))
(declare-fun rank!208 (Heap!972) (_ BitVec 32))
(declare-fun error_value!982 () (_ BitVec 32))
(declare-fun heapSize!212 (Heap!972) (_ BitVec 32))
(declare-fun error_value!983 () (_ BitVec 32))
(declare-sort I_hasLeftistProperty!210 0)
(declare-fun hasLeftistProperty!210_arg_0_1 (I_hasLeftistProperty!210) Heap!972)
(declare-sort I_rightHeight!206 0)
(declare-fun rightHeight!206_arg_0_2 (I_rightHeight!206) Heap!972)
(declare-sort I_rank!208 0)
(declare-fun rank!208_arg_0_3 (I_rank!208) Heap!972)
(declare-sort I_heapSize!212 0)
(declare-fun heapSize!212_arg_0_4 (I_heapSize!212) Heap!972)
(assert (forall ((?i I_hasLeftistProperty!210)) (and (= (hasLeftistProperty!210 (hasLeftistProperty!210_arg_0_1 ?i)) (ite ((_ is Leaf!973) (hasLeftistProperty!210_arg_0_1 ?i)) true (ite ((_ is Node!974) (hasLeftistProperty!210_arg_0_1 ?i)) (and (= (rightHeight!206 (hasLeftistProperty!210_arg_0_1 ?i)) (rank!208 (hasLeftistProperty!210_arg_0_1 ?i))) (not (bvslt (rightHeight!206 (left!977 (hasLeftistProperty!210_arg_0_1 ?i))) (rightHeight!206 (right!978 (hasLeftistProperty!210_arg_0_1 ?i))))) (hasLeftistProperty!210 (right!978 (hasLeftistProperty!210_arg_0_1 ?i))) (hasLeftistProperty!210 (left!977 (hasLeftistProperty!210_arg_0_1 ?i)))) error_value!979))) (ite ((_ is Leaf!973) (hasLeftistProperty!210_arg_0_1 ?i)) true (ite ((_ is Node!974) (hasLeftistProperty!210_arg_0_1 ?i)) (and (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (hasLeftistProperty!210_arg_0_1 ?i))) )) (not (forall ((?z I_rank!208)) (not (= (rank!208_arg_0_3 ?z) (hasLeftistProperty!210_arg_0_1 ?i))) )) (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (left!977 (hasLeftistProperty!210_arg_0_1 ?i)))) )) (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (right!978 (hasLeftistProperty!210_arg_0_1 ?i)))) )) (not (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) (right!978 (hasLeftistProperty!210_arg_0_1 ?i)))) )) (not (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) (left!977 (hasLeftistProperty!210_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_rightHeight!206)) (and (= (ite ((_ is Leaf!973) (rightHeight!206_arg_0_2 ?i)) (_ bv0 32) (ite ((_ is Node!974) (rightHeight!206_arg_0_2 ?i)) (bvadd (rightHeight!206 (right!978 (rightHeight!206_arg_0_2 ?i))) (_ bv1 32)) error_value!980)) (rightHeight!206 (rightHeight!206_arg_0_2 ?i))) (ite ((_ is Leaf!973) (rightHeight!206_arg_0_2 ?i)) true (ite ((_ is Node!974) (rightHeight!206_arg_0_2 ?i)) (not (forall ((?z I_rightHeight!206)) (not (= (rightHeight!206_arg_0_2 ?z) (right!978 (rightHeight!206_arg_0_2 ?i)))) )) true))) ))
(assert (forall ((?i I_rank!208)) (= (ite ((_ is Leaf!973) (rank!208_arg_0_3 ?i)) (_ bv0 32) (ite ((_ is Node!974) (rank!208_arg_0_3 ?i)) (rk!975 (rank!208_arg_0_3 ?i)) error_value!981)) (rank!208 (rank!208_arg_0_3 ?i))) ))
(assert (forall ((?i I_heapSize!212)) (and (= (ite ((_ is Leaf!973) (heapSize!212_arg_0_4 ?i)) (_ bv0 32) (ite ((_ is Node!974) (heapSize!212_arg_0_4 ?i)) (bvadd (heapSize!212 (left!977 (heapSize!212_arg_0_4 ?i))) (bvadd (heapSize!212 (right!978 (heapSize!212_arg_0_4 ?i))) (_ bv1 32))) error_value!982)) (heapSize!212 (heapSize!212_arg_0_4 ?i))) (ite ((_ is Leaf!973) (heapSize!212_arg_0_4 ?i)) true (ite ((_ is Node!974) (heapSize!212_arg_0_4 ?i)) (and (not (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_4 ?z) (left!977 (heapSize!212_arg_0_4 ?i)))) )) (not (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_4 ?z) (right!978 (heapSize!212_arg_0_4 ?i)))) ))) true))) ))
(assert (not (forall ((t!211 Heap!972)) (or (or (hasLeftistProperty!210 t!211) (forall ((?z I_hasLeftistProperty!210)) (not (= (hasLeftistProperty!210_arg_0_1 ?z) t!211)) )) (not (and (bvslt (ite ((_ is Leaf!973) t!211) (_ bv0 32) (ite ((_ is Node!974) t!211) (bvadd (heapSize!212 (right!978 t!211)) (bvadd (heapSize!212 (left!977 t!211)) (_ bv1 32))) error_value!983)) (_ bv0 32)) (ite ((_ is Leaf!973) t!211) true (ite ((_ is Node!974) t!211) (and (not (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_4 ?z) (right!978 t!211))) )) (not (forall ((?z I_heapSize!212)) (not (= (heapSize!212_arg_0_4 ?z) (left!977 t!211))) ))) true))))) )))
(check-sat)
(exit)

