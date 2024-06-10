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


(declare-datatypes ((Tree!929 0)) (((Leaf!930) (Node!931 (nvalue!932 (_ BitVec 32)) (left!933 Tree!929) (right!934 Tree!929)))
))
(declare-datatypes ((IList!935 0)) (((Cons!936 (head!937 (_ BitVec 32)) (tail!938 IList!935)) (Nil!939))
))
(declare-fun error_value!940 () (_ BitVec 32))
(declare-fun height!209 (Tree!929) (_ BitVec 32))
(declare-fun error_value!941 () Tree!929)
(declare-fun error_value!942 () Tree!929)
(declare-fun error_value!943 () Tree!929)
(declare-fun error_value!944 () (_ BitVec 32))
(declare-fun insert!212 (IList!935 Tree!929) Tree!929)
(declare-fun listSize!206 (IList!935) (_ BitVec 32))
(declare-fun error_value!945 () Tree!929)
(declare-fun error_value!946 () Tree!929)
(declare-fun error_value!947 () Tree!929)
(assert (forall ((t!208 Tree!929)) (= (height!209 t!208) (ite ((_ is Leaf!930) t!208) (_ bv0 32) (ite ((_ is Node!931) t!208) (ite (bvsgt (height!209 (left!933 t!208)) (height!209 (right!934 t!208))) (bvadd (height!209 (left!933 t!208)) (_ bv1 32)) (bvadd (height!209 (right!934 t!208)) (_ bv1 32))) error_value!940))) ))
(assert (forall ((inp!210 IList!935) (t!211 Tree!929)) (= (insert!212 inp!210 t!211) (ite ((_ is Leaf!930) t!211) (ite ((_ is Nil!939) inp!210) t!211 (ite ((_ is Cons!936) inp!210) (ite ((_ is Leaf!930) (insert!212 (tail!938 inp!210) Leaf!930)) (Node!931 (head!937 inp!210) Leaf!930 Leaf!930) (ite ((_ is Node!931) (insert!212 (tail!938 inp!210) Leaf!930)) (ite (bvsgt (nvalue!932 (insert!212 (tail!938 inp!210) Leaf!930)) (_ bv0 32)) (Node!931 (head!937 inp!210) (insert!212 (tail!938 inp!210) Leaf!930) Leaf!930) (Node!931 (nvalue!932 (insert!212 (tail!938 inp!210) Leaf!930)) Leaf!930 (insert!212 (tail!938 inp!210) Leaf!930))) error_value!941)) error_value!942)) (ite ((_ is Node!931) t!211) (ite ((_ is Nil!939) inp!210) t!211 (ite (and (and ((_ is Cons!936) inp!210) ((_ is Cons!936) inp!210)) ((_ is Nil!939) (tail!938 inp!210))) t!211 (ite (and (and ((_ is Cons!936) inp!210) ((_ is Cons!936) inp!210)) ((_ is Cons!936) (tail!938 inp!210))) (ite (bvsgt (head!937 (tail!938 inp!210)) (_ bv0 32)) (Node!931 (nvalue!932 t!211) (insert!212 (tail!938 inp!210) (ite (bvsgt (head!937 (tail!938 inp!210)) (_ bv0 32)) (left!933 t!211) (right!934 t!211))) (right!934 t!211)) (Node!931 (nvalue!932 t!211) (left!933 t!211) (insert!212 (tail!938 inp!210) (ite (bvsgt (head!937 (tail!938 inp!210)) (_ bv0 32)) (left!933 t!211) (right!934 t!211))))) t!211))) error_value!943))) ))
(assert (forall ((l!205 IList!935)) (= (listSize!206 l!205) (ite ((_ is Nil!939) l!205) (_ bv0 32) (ite ((_ is Cons!936) l!205) (bvadd (_ bv1 32) (listSize!206 (tail!938 l!205))) error_value!944))) ))
(assert (not (forall ((t!211 Tree!929) (inp!210 IList!935)) (not (bvslt (bvadd (height!209 t!211) (height!209 (ite ((_ is Leaf!930) t!211) (ite ((_ is Nil!939) inp!210) t!211 (ite ((_ is Cons!936) inp!210) (ite ((_ is Leaf!930) (ite ((_ is Nil!939) inp!210) t!211 (ite (and ((_ is Nil!939) (tail!938 inp!210)) ((_ is Cons!936) inp!210)) t!211 (ite (and ((_ is Cons!936) (tail!938 inp!210)) ((_ is Cons!936) inp!210)) (ite (bvslt (_ bv0 32) (head!937 (tail!938 inp!210))) (Node!931 (nvalue!932 t!211) (insert!212 (tail!938 inp!210) (ite (bvslt (_ bv0 32) (head!937 (tail!938 inp!210))) (left!933 t!211) (right!934 t!211))) (right!934 t!211)) (Node!931 (nvalue!932 t!211) (left!933 t!211) (insert!212 (tail!938 inp!210) (ite (bvslt (_ bv0 32) (head!937 (tail!938 inp!210))) (left!933 t!211) (right!934 t!211))))) t!211)))) (Node!931 (head!937 inp!210) Leaf!930 Leaf!930) (ite ((_ is Node!931) (insert!212 (tail!938 inp!210) Leaf!930)) (ite (bvslt (_ bv0 32) (nvalue!932 (insert!212 (tail!938 inp!210) Leaf!930))) (Node!931 (head!937 inp!210) (insert!212 (tail!938 inp!210) Leaf!930) Leaf!930) (Node!931 (nvalue!932 (insert!212 (tail!938 inp!210) Leaf!930)) Leaf!930 (insert!212 (tail!938 inp!210) Leaf!930))) error_value!945)) error_value!946)) (ite ((_ is Node!931) t!211) (insert!212 (tail!938 inp!210) Leaf!930) error_value!947)))) (listSize!206 inp!210))) )))
(check-sat)
(exit)

