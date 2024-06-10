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


(declare-datatypes ((Heap!1018 0)) (((Leaf!1019) (Node!1020 (rk!1021 (_ BitVec 32)) (value!1022 (_ BitVec 32)) (left!1023 Heap!1018) (right!1024 Heap!1018)))
))
(declare-fun error_value!1025 () Bool)
(declare-fun error_value!1026 () (_ BitVec 32))
(declare-fun hasLeftistProperty!208 (Heap!1018) Bool)
(declare-fun rightHeight!206 (Heap!1018) (_ BitVec 32))
(declare-fun error_value!1027 () (_ BitVec 32))
(declare-fun size!210 (Heap!1018) (_ BitVec 32))
(declare-fun error_value!1028 () Heap!1018)
(declare-fun error_value!1029 () Heap!1018)
(declare-fun makeT!219 ((_ BitVec 32) Heap!1018 Heap!1018) Heap!1018)
(declare-fun merge!215 (Heap!1018 Heap!1018) Heap!1018)
(assert (forall ((h!207 Heap!1018)) (= (hasLeftistProperty!208 h!207) (ite ((_ is Leaf!1019) h!207) true (ite ((_ is Node!1020) h!207) (and (and (and (hasLeftistProperty!208 (left!1023 h!207)) (hasLeftistProperty!208 (left!1023 h!207))) (hasLeftistProperty!208 (right!1024 h!207))) (bvsge (rightHeight!206 (left!1023 h!207)) (rightHeight!206 (right!1024 h!207)))) error_value!1025))) ))
(assert (forall ((h!205 Heap!1018)) (= (rightHeight!206 h!205) (ite ((_ is Leaf!1019) h!205) (_ bv0 32) (ite ((_ is Node!1020) h!205) (bvadd (rightHeight!206 (right!1024 h!205)) (_ bv1 32)) error_value!1026))) ))
(assert (forall ((t!209 Heap!1018)) (= (size!210 t!209) (ite ((_ is Leaf!1019) t!209) (_ bv0 32) (ite ((_ is Node!1020) t!209) (bvadd (bvadd (size!210 (left!1023 t!209)) (_ bv1 32)) (size!210 (right!1024 t!209))) error_value!1027))) ))
(assert (forall ((value!216 (_ BitVec 32)) (left!217 Heap!1018) (right!218 Heap!1018)) (= (makeT!219 value!216 left!217 right!218) (ite (bvsge (rightHeight!206 left!217) (rightHeight!206 right!218)) (Node!1020 (bvadd (rightHeight!206 right!218) (_ bv1 32)) value!216 left!217 right!218) (Node!1020 (bvadd (rightHeight!206 left!217) (_ bv1 32)) value!216 right!218 left!217))) ))
(assert (forall ((h1!213 Heap!1018) (h2!214 Heap!1018)) (= (merge!215 h1!213 h2!214) (ite ((_ is Leaf!1019) h1!213) h2!214 (ite ((_ is Node!1020) h1!213) (ite ((_ is Leaf!1019) h2!214) h1!213 (ite ((_ is Node!1020) h2!214) (ite (bvsgt (value!1022 h1!213) (value!1022 h2!214)) (makeT!219 (value!1022 h1!213) (left!1023 h1!213) (merge!215 (right!1024 h1!213) h2!214)) (makeT!219 (value!1022 h2!214) (left!1023 h2!214) (merge!215 h1!213 (right!1024 h2!214)))) error_value!1028)) error_value!1029))) ))
(assert (not (forall ((heap!221 Heap!1018) (element!220 (_ BitVec 32))) (or (hasLeftistProperty!208 heap!221) (= (bvadd (size!210 heap!221) (_ bv1 32)) (size!210 (merge!215 (Node!1020 (_ bv1 32) element!220 Leaf!1019 Leaf!1019) heap!221)))) )))
(check-sat)
(exit)
