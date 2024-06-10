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


(declare-datatypes ((SortedNDList!896 0)) (((ListEnd!897) (ListNode!898 (node!899 (_ BitVec 32)) (dist!900 (_ BitVec 32)) (next!901 SortedNDList!896)))
))
(declare-fun error_value!902 () Bool)
(declare-fun sndInvariant!206 (SortedNDList!896) Bool)
(declare-fun invRec0!879 (SortedNDList!896 SortedNDList!896) Bool)
(declare-sort I_sndInvariant!206 0)
(declare-fun sndInvariant!206_arg_0_1 (I_sndInvariant!206) SortedNDList!896)
(declare-sort I_invRec0!879 0)
(declare-fun invRec0!879_arg_0_2 (I_invRec0!879) SortedNDList!896)
(declare-fun invRec0!879_arg_1_3 (I_invRec0!879) SortedNDList!896)
(assert (forall ((?i I_sndInvariant!206)) (and (= (sndInvariant!206 (sndInvariant!206_arg_0_1 ?i)) (invRec0!879 (sndInvariant!206_arg_0_1 ?i) (sndInvariant!206_arg_0_1 ?i))) (not (forall ((?z I_invRec0!879)) (not (and (= (invRec0!879_arg_0_2 ?z) (sndInvariant!206_arg_0_1 ?i)) (= (invRec0!879_arg_1_3 ?z) (sndInvariant!206_arg_0_1 ?i)))) ))) ))
(assert (forall ((?i I_invRec0!879)) (and (= (invRec0!879 (invRec0!879_arg_0_2 ?i) (invRec0!879_arg_1_3 ?i)) (ite ((_ is ListNode!898) (invRec0!879_arg_0_2 ?i)) (ite (and (not (bvslt (node!899 (invRec0!879_arg_0_2 ?i)) (_ bv0 32))) (not (bvslt (dist!900 (invRec0!879_arg_0_2 ?i)) (_ bv0 32)))) (invRec0!879 (next!901 (invRec0!879_arg_0_2 ?i)) (invRec0!879_arg_1_3 ?i)) false) (ite ((_ is ListEnd!897) (invRec0!879_arg_0_2 ?i)) true error_value!902))) (ite ((_ is ListNode!898) (invRec0!879_arg_0_2 ?i)) (ite (and (not (bvslt (node!899 (invRec0!879_arg_0_2 ?i)) (_ bv0 32))) (not (bvslt (dist!900 (invRec0!879_arg_0_2 ?i)) (_ bv0 32)))) (not (forall ((?z I_invRec0!879)) (not (and (= (invRec0!879_arg_0_2 ?z) (next!901 (invRec0!879_arg_0_2 ?i))) (= (invRec0!879_arg_1_3 ?z) (invRec0!879_arg_1_3 ?i)))) )) true) true)) ))
(assert (not (forall ((node!208 (_ BitVec 32)) (dist!209 (_ BitVec 32)) (BOUND_VARIABLE_351 (_ BitVec 32)) (BOUND_VARIABLE_352 (_ BitVec 32)) (BOUND_VARIABLE_353 SortedNDList!896)) (or (and (not (bvslt dist!209 (_ bv0 32))) (not (and (sndInvariant!206 (ListNode!898 BOUND_VARIABLE_351 BOUND_VARIABLE_352 BOUND_VARIABLE_353)) (not (forall ((?z I_sndInvariant!206)) (not (= (sndInvariant!206_arg_0_1 ?z) (ListNode!898 BOUND_VARIABLE_351 BOUND_VARIABLE_352 BOUND_VARIABLE_353))) )))) (or (sndInvariant!206 BOUND_VARIABLE_353) (forall ((?z I_sndInvariant!206)) (not (= (sndInvariant!206_arg_0_1 ?z) BOUND_VARIABLE_353)) )) (not (and (sndInvariant!206 (ListNode!898 node!208 dist!209 BOUND_VARIABLE_353)) (not (forall ((?z I_sndInvariant!206)) (not (= (sndInvariant!206_arg_0_1 ?z) (ListNode!898 node!208 dist!209 BOUND_VARIABLE_353))) ))))) (bvslt dist!209 (_ bv0 32)) (bvslt node!208 (_ bv0 32)) (not (bvslt node!208 (_ bv0 32))) (or (sndInvariant!206 (ListNode!898 node!208 dist!209 (ListNode!898 BOUND_VARIABLE_351 BOUND_VARIABLE_352 BOUND_VARIABLE_353))) (forall ((?z I_sndInvariant!206)) (not (= (sndInvariant!206_arg_0_1 ?z) (ListNode!898 node!208 dist!209 (ListNode!898 BOUND_VARIABLE_351 BOUND_VARIABLE_352 BOUND_VARIABLE_353)))) ))) )))
(check-sat)
(exit)

