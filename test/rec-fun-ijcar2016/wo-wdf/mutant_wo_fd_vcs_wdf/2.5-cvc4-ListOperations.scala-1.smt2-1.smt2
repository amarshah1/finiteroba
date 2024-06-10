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


(declare-datatypes ((List!974 0)) (((Cons!975 (head!976 (_ BitVec 32)) (tail!977 List!974)) (Nil!978))
))
(declare-fun error_value!979 () Int)
(declare-fun size!206 (List!974) Int)
(declare-fun error_value!980 () Int)
(declare-sort I_size!206 0)
(declare-fun size!206_arg_0_1 (I_size!206) List!974)
(assert (forall ((?i I_size!206)) (and (= (size!206 (size!206_arg_0_1 ?i)) (ite ((_ is Nil!978) (size!206_arg_0_1 ?i)) 0 (ite ((_ is Cons!975) (size!206_arg_0_1 ?i)) (+ 1 (size!206 (tail!977 (size!206_arg_0_1 ?i)))) error_value!979))) (ite ((_ is Nil!978) (size!206_arg_0_1 ?i)) true (ite ((_ is Cons!975) (size!206_arg_0_1 ?i)) (not (forall ((?z I_size!206)) (not (= (size!206_arg_0_1 ?z) (tail!977 (size!206_arg_0_1 ?i)))) )) true))) ))
(assert (not (forall ((l!205 List!974)) (or (>= (ite ((_ is Cons!975) l!205) 0 (ite ((_ is Nil!978) l!205) (+ 1 (size!206 (tail!977 l!205))) error_value!980)) 0) (not (ite ((_ is Cons!975) l!205) true (ite ((_ is Nil!978) l!205) (not (forall ((?z I_size!206)) (not (= (size!206_arg_0_1 ?z) (tail!977 l!205))) )) true)))) )))
(check-sat)
(exit)

