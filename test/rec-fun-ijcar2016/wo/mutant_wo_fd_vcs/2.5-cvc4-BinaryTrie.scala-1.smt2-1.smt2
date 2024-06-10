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


(declare-datatypes ((IList!903 0)) (((Cons!904 (head!905 (_ BitVec 32)) (tail!906 IList!903)) (Nil!907))
))
(declare-fun error_value!908 () (_ BitVec 32))
(declare-fun listSize!206 (IList!903) (_ BitVec 32))
(declare-fun error_value!909 () (_ BitVec 32))
(assert (forall ((l!205 IList!903)) (= (listSize!206 l!205) (ite ((_ is Nil!907) l!205) (_ bv0 32) (ite ((_ is Cons!904) l!205) (bvadd (_ bv1 32) (listSize!206 (tail!906 l!205))) error_value!908))) ))
(check-sat)
(exit)

