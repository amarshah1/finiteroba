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


(declare-datatypes ((SortedNDList!889 0)) (((ListEnd!890) (ListNode!891 (node!892 (_ BitVec 32)) (dist!893 (_ BitVec 32)) (next!894 SortedNDList!889)))
))
(declare-fun error_value!895 () Bool)
(declare-fun sndInvariant!206 (SortedNDList!889) Bool)
(declare-fun invRec0!879 (SortedNDList!889 SortedNDList!889) Bool)
(assert (forall ((list!205 SortedNDList!889)) (= (sndInvariant!206 list!205) (invRec0!879 list!205 list!205)) ))
(assert (forall ((list!422 SortedNDList!889) (list!878 SortedNDList!889)) (= (invRec0!879 list!422 list!878) (ite ((_ is ListNode!891) list!422) (ite (and (and (bvsge (dist!893 list!422) (_ bv0 32)) (bvsge (dist!893 list!422) (_ bv0 32))) (bvsge (node!892 list!422) (_ bv0 32))) (invRec0!879 (next!894 list!422) list!878) false) (ite ((_ is ListEnd!890) list!422) true error_value!895))) ))
(assert (not (forall ((node!208 (_ BitVec 32)) (dist!209 (_ BitVec 32))) (or (not (sndInvariant!206 ListEnd!890)) (bvslt node!208 (_ bv0 32)) (bvslt dist!209 (_ bv0 32)) (sndInvariant!206 (ListNode!891 node!208 dist!209 ListEnd!890))) )))
(check-sat)
(exit)

