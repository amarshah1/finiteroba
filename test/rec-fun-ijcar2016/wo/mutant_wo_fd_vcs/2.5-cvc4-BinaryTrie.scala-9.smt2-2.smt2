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
(assert (forall ((t!208 Tree!986)) (= (height!209 t!208) (ite ((_ is Leaf!987) t!208) (_ bv0 32) (ite ((_ is Node!988) t!208) (ite (bvsgt (height!209 (left!990 t!208)) (height!209 (right!991 t!208))) (bvadd (height!209 (left!990 t!208)) (_ bv1 32)) (bvadd (height!209 (right!991 t!208)) (_ bv1 32))) error_value!992))) ))
(assert (forall ((inp!210 IList!981) (t!211 Tree!986)) (= (insert!212 inp!210 t!211) (ite ((_ is Leaf!987) t!211) (ite ((_ is Nil!985) inp!210) t!211 (ite ((_ is Cons!982) inp!210) (ite ((_ is Leaf!987) (insert!212 (tail!984 inp!210) Leaf!987)) (Node!988 (head!983 inp!210) Leaf!987 Leaf!987) (ite ((_ is Node!988) (insert!212 (tail!984 inp!210) Leaf!987)) (ite (bvsgt (nvalue!989 (insert!212 (tail!984 inp!210) Leaf!987)) (_ bv0 32)) (Node!988 (head!983 inp!210) (insert!212 (tail!984 inp!210) Leaf!987) Leaf!987) (Node!988 (nvalue!989 (insert!212 (tail!984 inp!210) Leaf!987)) Leaf!987 (insert!212 (tail!984 inp!210) Leaf!987))) error_value!993)) error_value!994)) (ite ((_ is Node!988) t!211) (ite ((_ is Nil!985) inp!210) t!211 (ite (and (and ((_ is Cons!982) inp!210) ((_ is Cons!982) inp!210)) ((_ is Nil!985) (tail!984 inp!210))) t!211 (ite (and (and ((_ is Cons!982) inp!210) ((_ is Cons!982) inp!210)) ((_ is Cons!982) (tail!984 inp!210))) (ite (bvsgt (head!983 (tail!984 inp!210)) (_ bv0 32)) (Node!988 (nvalue!989 t!211) (insert!212 (tail!984 inp!210) (ite (bvsgt (head!983 (tail!984 inp!210)) (_ bv0 32)) (left!990 t!211) (right!991 t!211))) (right!991 t!211)) (Node!988 (nvalue!989 t!211) (left!990 t!211) (insert!212 (tail!984 inp!210) (ite (bvsgt (head!983 (tail!984 inp!210)) (_ bv0 32)) (left!990 t!211) (right!991 t!211))))) t!211))) error_value!995))) ))
(assert (forall ((l!205 IList!981)) (= (listSize!206 l!205) (ite ((_ is Nil!985) l!205) (_ bv0 32) (ite ((_ is Cons!982) l!205) (bvadd (_ bv1 32) (listSize!206 (tail!984 l!205))) error_value!996))) ))
(assert (not (forall ((inp!213 IList!981)) (bvslt (height!209 (insert!212 inp!213 Leaf!987)) (listSize!206 inp!213)) )))
(check-sat)
(exit)
