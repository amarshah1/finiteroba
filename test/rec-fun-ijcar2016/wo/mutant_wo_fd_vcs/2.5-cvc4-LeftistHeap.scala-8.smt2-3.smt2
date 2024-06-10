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


(declare-datatypes ((Heap!968 0)) (((Leaf!969) (Node!970 (rk!971 (_ BitVec 32)) (value!972 (_ BitVec 32)) (left!973 Heap!968) (right!974 Heap!968)))
))
(declare-fun error_value!975 () Bool)
(declare-fun error_value!976 () (_ BitVec 32))
(declare-fun hasLeftistProperty!208 (Heap!968) Bool)
(declare-fun rightHeight!206 (Heap!968) (_ BitVec 32))
(declare-fun error_value!977 () (_ BitVec 32))
(declare-fun size!210 (Heap!968) (_ BitVec 32))
(declare-fun makeT!219 ((_ BitVec 32) Heap!968 Heap!968) Heap!968)
(declare-fun error_value!978 () Heap!968)
(declare-fun error_value!979 () Heap!968)
(declare-fun merge!215 (Heap!968 Heap!968) Heap!968)
(declare-fun error_value!980 () Heap!968)
(declare-fun error_value!981 () Heap!968)
(assert (forall ((h!207 Heap!968)) (= (hasLeftistProperty!208 h!207) (ite ((_ is Leaf!969) h!207) true (ite ((_ is Node!970) h!207) (and (and (and (hasLeftistProperty!208 (left!973 h!207)) (hasLeftistProperty!208 (left!973 h!207))) (hasLeftistProperty!208 (right!974 h!207))) (bvsge (rightHeight!206 (left!973 h!207)) (rightHeight!206 (right!974 h!207)))) error_value!975))) ))
(assert (forall ((h!205 Heap!968)) (= (rightHeight!206 h!205) (ite ((_ is Leaf!969) h!205) (_ bv0 32) (ite ((_ is Node!970) h!205) (bvadd (rightHeight!206 (right!974 h!205)) (_ bv1 32)) error_value!976))) ))
(assert (forall ((t!209 Heap!968)) (= (size!210 t!209) (ite ((_ is Leaf!969) t!209) (_ bv0 32) (ite ((_ is Node!970) t!209) (bvadd (bvadd (size!210 (left!973 t!209)) (_ bv1 32)) (size!210 (right!974 t!209))) error_value!977))) ))
(assert (forall ((value!216 (_ BitVec 32)) (left!217 Heap!968) (right!218 Heap!968)) (= (makeT!219 value!216 left!217 right!218) (ite (bvsge (rightHeight!206 left!217) (rightHeight!206 right!218)) (Node!970 (bvadd (rightHeight!206 right!218) (_ bv1 32)) value!216 left!217 right!218) (Node!970 (bvadd (rightHeight!206 left!217) (_ bv1 32)) value!216 right!218 left!217))) ))
(assert (forall ((h1!213 Heap!968) (h2!214 Heap!968)) (= (merge!215 h1!213 h2!214) (ite ((_ is Leaf!969) h1!213) h2!214 (ite ((_ is Node!970) h1!213) (ite ((_ is Leaf!969) h2!214) h1!213 (ite ((_ is Node!970) h2!214) (ite (bvsgt (value!972 h1!213) (value!972 h2!214)) (makeT!219 (value!972 h1!213) (left!973 h1!213) (merge!215 (right!974 h1!213) h2!214)) (makeT!219 (value!972 h2!214) (left!973 h2!214) (merge!215 h1!213 (right!974 h2!214)))) error_value!978)) error_value!979))) ))
(assert (not (forall ((h1!213 Heap!968) (h2!214 Heap!968)) (or (not (hasLeftistProperty!208 h2!214)) (not (hasLeftistProperty!208 h1!213)) (= (size!210 (ite ((_ is Leaf!969) h1!213) h2!214 (ite ((_ is Node!970) h1!213) (ite ((_ is Leaf!969) h2!214) h1!213 (ite ((_ is Node!970) h2!214) error_value!981 error_value!980)) (ite (bvslt (value!972 h2!214) (value!972 h1!213)) (makeT!219 (value!972 h1!213) (left!973 h1!213) (merge!215 (right!974 h1!213) h2!214)) (makeT!219 (value!972 h2!214) (left!973 h2!214) (merge!215 h1!213 (right!974 h2!214))))))) (bvadd (size!210 h1!213) (size!210 h2!214)))) )))
(check-sat)
(exit)
