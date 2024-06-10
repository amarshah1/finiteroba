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


(declare-datatypes ((IList!981 0)) (((Cons!982 (head!983 (_ BitVec 32)) (tail!984 IList!981)) (Nil!985))
))
(declare-datatypes ((Tree!986 0)) (((Leaf!987) (Node!988 (nvalue!989 (_ BitVec 32)) (left!990 Tree!986) (right!991 Tree!986)))
))
(declare-fun error_value!992 () (_ BitVec 32))
(declare-fun height!209 (Tree!986) (_ BitVec 32))
(declare-fun error_value!993 () Tree!986)
(declare-fun error_value!994 () Tree!986)
(declare-fun error_value!995 () Tree!986)
(declare-fun error_value!996 () (_ BitVec 32))
(declare-fun insert!212 (IList!981 Tree!986) Tree!986)
(declare-fun listSize!206 (IList!981) (_ BitVec 32))
(declare-sort I_height!209 0)
(declare-fun height!209_arg_0_1 (I_height!209) Tree!986)
(declare-sort I_insert!212 0)
(declare-fun insert!212_arg_0_2 (I_insert!212) IList!981)
(declare-fun insert!212_arg_1_3 (I_insert!212) Tree!986)
(declare-sort I_listSize!206 0)
(declare-fun listSize!206_arg_0_4 (I_listSize!206) IList!981)
(assert (forall ((?i I_height!209)) (and (= (ite ((_ is Leaf!987) (height!209_arg_0_1 ?i)) (_ bv0 32) (ite ((_ is Node!988) (height!209_arg_0_1 ?i)) (ite (bvslt (height!209 (right!991 (height!209_arg_0_1 ?i))) (height!209 (left!990 (height!209_arg_0_1 ?i)))) (bvadd (height!209 (left!990 (height!209_arg_0_1 ?i))) (_ bv1 32)) (bvadd (height!209 (right!991 (height!209_arg_0_1 ?i))) (_ bv1 32))) error_value!992)) (height!209 (height!209_arg_0_1 ?i))) (ite ((_ is Leaf!987) (height!209_arg_0_1 ?i)) true (ite ((_ is Node!988) (height!209_arg_0_1 ?i)) (and (not (forall ((?z I_height!209)) (not (= (height!209_arg_0_1 ?z) (right!991 (height!209_arg_0_1 ?i)))) )) (not (forall ((?z I_height!209)) (not (= (height!209_arg_0_1 ?z) (left!990 (height!209_arg_0_1 ?i)))) )) (ite (bvslt (height!209 (right!991 (height!209_arg_0_1 ?i))) (height!209 (left!990 (height!209_arg_0_1 ?i)))) (not (forall ((?z I_height!209)) (not (= (height!209_arg_0_1 ?z) (left!990 (height!209_arg_0_1 ?i)))) )) (not (forall ((?z I_height!209)) (not (= (height!209_arg_0_1 ?z) (right!991 (height!209_arg_0_1 ?i)))) )))) true))) ))
(assert (forall ((?i I_insert!212)) (and (= (insert!212 (insert!212_arg_0_2 ?i) (insert!212_arg_1_3 ?i)) (ite ((_ is Leaf!987) (insert!212_arg_1_3 ?i)) (ite ((_ is Nil!985) (insert!212_arg_0_2 ?i)) (insert!212_arg_1_3 ?i) (ite ((_ is Cons!982) (insert!212_arg_0_2 ?i)) (ite ((_ is Leaf!987) (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) Leaf!987)) (Node!988 (head!983 (insert!212_arg_0_2 ?i)) Leaf!987 Leaf!987) (ite ((_ is Node!988) (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) Leaf!987)) (ite (bvslt (_ bv0 32) (nvalue!989 (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) Leaf!987))) (Node!988 (head!983 (insert!212_arg_0_2 ?i)) (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) Leaf!987) Leaf!987) (Node!988 (nvalue!989 (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) Leaf!987)) Leaf!987 (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) Leaf!987))) error_value!993)) error_value!994)) (ite ((_ is Node!988) (insert!212_arg_1_3 ?i)) (ite ((_ is Nil!985) (insert!212_arg_0_2 ?i)) (insert!212_arg_1_3 ?i) (ite (and ((_ is Nil!985) (tail!984 (insert!212_arg_0_2 ?i))) ((_ is Cons!982) (insert!212_arg_0_2 ?i))) (insert!212_arg_1_3 ?i) (ite (and ((_ is Cons!982) (tail!984 (insert!212_arg_0_2 ?i))) ((_ is Cons!982) (insert!212_arg_0_2 ?i))) (ite (bvslt (_ bv0 32) (head!983 (tail!984 (insert!212_arg_0_2 ?i)))) (Node!988 (nvalue!989 (insert!212_arg_1_3 ?i)) (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) (ite (bvslt (_ bv0 32) (head!983 (tail!984 (insert!212_arg_0_2 ?i)))) (left!990 (insert!212_arg_1_3 ?i)) (right!991 (insert!212_arg_1_3 ?i)))) (right!991 (insert!212_arg_1_3 ?i))) (Node!988 (nvalue!989 (insert!212_arg_1_3 ?i)) (left!990 (insert!212_arg_1_3 ?i)) (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) (ite (bvslt (_ bv0 32) (head!983 (tail!984 (insert!212_arg_0_2 ?i)))) (left!990 (insert!212_arg_1_3 ?i)) (right!991 (insert!212_arg_1_3 ?i)))))) (insert!212_arg_1_3 ?i)))) error_value!995))) (ite ((_ is Leaf!987) (insert!212_arg_1_3 ?i)) (ite ((_ is Nil!985) (insert!212_arg_0_2 ?i)) true (ite ((_ is Cons!982) (insert!212_arg_0_2 ?i)) (and (not (forall ((?z I_insert!212)) (not (and (= (insert!212_arg_0_2 ?z) (tail!984 (insert!212_arg_0_2 ?i))) (= (insert!212_arg_1_3 ?z) Leaf!987))) )) (ite ((_ is Leaf!987) (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) Leaf!987)) true (and (not (forall ((?z I_insert!212)) (not (and (= (insert!212_arg_0_2 ?z) (tail!984 (insert!212_arg_0_2 ?i))) (= (insert!212_arg_1_3 ?z) Leaf!987))) )) (ite ((_ is Node!988) (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) Leaf!987)) (and (not (forall ((?z I_insert!212)) (not (and (= (insert!212_arg_0_2 ?z) (tail!984 (insert!212_arg_0_2 ?i))) (= (insert!212_arg_1_3 ?z) Leaf!987))) )) (ite (bvslt (_ bv0 32) (nvalue!989 (insert!212 (tail!984 (insert!212_arg_0_2 ?i)) Leaf!987))) (not (forall ((?z I_insert!212)) (not (and (= (insert!212_arg_0_2 ?z) (tail!984 (insert!212_arg_0_2 ?i))) (= (insert!212_arg_1_3 ?z) Leaf!987))) )) (and (not (forall ((?z I_insert!212)) (not (and (= (insert!212_arg_0_2 ?z) (tail!984 (insert!212_arg_0_2 ?i))) (= (insert!212_arg_1_3 ?z) Leaf!987))) )) (not (forall ((?z I_insert!212)) (not (and (= (insert!212_arg_0_2 ?z) (tail!984 (insert!212_arg_0_2 ?i))) (= (insert!212_arg_1_3 ?z) Leaf!987))) ))))) true)))) true)) (ite ((_ is Node!988) (insert!212_arg_1_3 ?i)) (ite ((_ is Nil!985) (insert!212_arg_0_2 ?i)) true (ite (and ((_ is Nil!985) (tail!984 (insert!212_arg_0_2 ?i))) ((_ is Cons!982) (insert!212_arg_0_2 ?i))) true (ite (and ((_ is Cons!982) (tail!984 (insert!212_arg_0_2 ?i))) ((_ is Cons!982) (insert!212_arg_0_2 ?i))) (ite (bvslt (_ bv0 32) (head!983 (tail!984 (insert!212_arg_0_2 ?i)))) (not (forall ((?z I_insert!212)) (not (and (= (insert!212_arg_0_2 ?z) (tail!984 (insert!212_arg_0_2 ?i))) (= (insert!212_arg_1_3 ?z) (ite (bvslt (_ bv0 32) (head!983 (tail!984 (insert!212_arg_0_2 ?i)))) (left!990 (insert!212_arg_1_3 ?i)) (right!991 (insert!212_arg_1_3 ?i)))))) )) (not (forall ((?z I_insert!212)) (not (and (= (insert!212_arg_0_2 ?z) (tail!984 (insert!212_arg_0_2 ?i))) (= (insert!212_arg_1_3 ?z) (ite (bvslt (_ bv0 32) (head!983 (tail!984 (insert!212_arg_0_2 ?i)))) (left!990 (insert!212_arg_1_3 ?i)) (right!991 (insert!212_arg_1_3 ?i)))))) ))) true))) true))) ))
(assert (forall ((?i I_listSize!206)) (and (= (ite ((_ is Nil!985) (listSize!206_arg_0_4 ?i)) (_ bv0 32) (ite ((_ is Cons!982) (listSize!206_arg_0_4 ?i)) (bvadd (listSize!206 (tail!984 (listSize!206_arg_0_4 ?i))) (_ bv1 32)) error_value!996)) (listSize!206 (listSize!206_arg_0_4 ?i))) (ite ((_ is Nil!985) (listSize!206_arg_0_4 ?i)) true (ite ((_ is Cons!982) (listSize!206_arg_0_4 ?i)) (not (forall ((?z I_listSize!206)) (not (= (listSize!206_arg_0_4 ?z) (tail!984 (listSize!206_arg_0_4 ?i)))) )) true))) ))
(assert (not (forall ((inp!213 IList!981)) (or (bvslt (height!209 (insert!212 inp!213 Leaf!987)) (listSize!206 inp!213)) (forall ((?z I_height!209)) (not (= (height!209_arg_0_1 ?z) (insert!212 inp!213 Leaf!987))) ) (forall ((?z I_insert!212)) (not (and (= (insert!212_arg_0_2 ?z) inp!213) (= (insert!212_arg_1_3 ?z) Leaf!987))) ) (forall ((?z I_listSize!206)) (not (= (listSize!206_arg_0_4 ?z) inp!213)) )) )))
(check-sat)
(exit)

