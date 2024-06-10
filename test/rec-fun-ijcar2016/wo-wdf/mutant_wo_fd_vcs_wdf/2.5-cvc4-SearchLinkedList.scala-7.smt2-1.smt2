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


(declare-datatypes ((List!929 0)) (((Cons!930 (head!931 (_ BitVec 32)) (tail!932 List!929)) (Nil!933))
))
(declare-fun error_value!934 () Int)
(declare-fun error_value!935 () Bool)
(declare-fun error_value!936 () Bool)
(declare-fun error_value!937 () Int)
(declare-fun firstZero!211 (List!929) Int)
(declare-fun contains!209 (List!929 (_ BitVec 32)) Bool)
(declare-fun firstZeroAtPos!214 (List!929 Int) Bool)
(declare-fun size!206 (List!929) Int)
(declare-sort I_firstZero!211 0)
(declare-fun firstZero!211_arg_0_1 (I_firstZero!211) List!929)
(declare-sort I_contains!209 0)
(declare-fun contains!209_arg_0_2 (I_contains!209) List!929)
(declare-fun contains!209_arg_1_3 (I_contains!209) (_ BitVec 32))
(declare-sort I_firstZeroAtPos!214 0)
(declare-fun firstZeroAtPos!214_arg_0_4 (I_firstZeroAtPos!214) List!929)
(declare-fun firstZeroAtPos!214_arg_1_5 (I_firstZeroAtPos!214) Int)
(declare-sort I_size!206 0)
(declare-fun size!206_arg_0_6 (I_size!206) List!929)
(assert (forall ((?i I_firstZero!211)) (and (= (firstZero!211 (firstZero!211_arg_0_1 ?i)) (ite ((_ is Nil!933) (firstZero!211_arg_0_1 ?i)) 0 (ite ((_ is Cons!930) (firstZero!211_arg_0_1 ?i)) (ite (= (head!931 (firstZero!211_arg_0_1 ?i)) (_ bv0 32)) 0 (+ 1 (firstZero!211 (tail!932 (firstZero!211_arg_0_1 ?i))))) error_value!934))) (ite ((_ is Nil!933) (firstZero!211_arg_0_1 ?i)) true (ite ((_ is Cons!930) (firstZero!211_arg_0_1 ?i)) (ite (= (head!931 (firstZero!211_arg_0_1 ?i)) (_ bv0 32)) true (not (forall ((?z I_firstZero!211)) (not (= (firstZero!211_arg_0_1 ?z) (tail!932 (firstZero!211_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_contains!209)) (and (= (contains!209 (contains!209_arg_0_2 ?i) (contains!209_arg_1_3 ?i)) (ite ((_ is Nil!933) (contains!209_arg_0_2 ?i)) false (ite ((_ is Cons!930) (contains!209_arg_0_2 ?i)) (or (contains!209 (tail!932 (contains!209_arg_0_2 ?i)) (contains!209_arg_1_3 ?i)) (= (head!931 (contains!209_arg_0_2 ?i)) (contains!209_arg_1_3 ?i))) error_value!935))) (ite ((_ is Nil!933) (contains!209_arg_0_2 ?i)) true (ite ((_ is Cons!930) (contains!209_arg_0_2 ?i)) (not (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_2 ?z) (tail!932 (contains!209_arg_0_2 ?i))) (= (contains!209_arg_1_3 ?z) (contains!209_arg_1_3 ?i)))) )) true))) ))
(assert (forall ((?i I_firstZeroAtPos!214)) (and (= (firstZeroAtPos!214 (firstZeroAtPos!214_arg_0_4 ?i) (firstZeroAtPos!214_arg_1_5 ?i)) (ite ((_ is Nil!933) (firstZeroAtPos!214_arg_0_4 ?i)) false (ite ((_ is Cons!930) (firstZeroAtPos!214_arg_0_4 ?i)) (ite (= (firstZeroAtPos!214_arg_1_5 ?i) 0) (= (head!931 (firstZeroAtPos!214_arg_0_4 ?i)) (_ bv0 32)) (and (firstZeroAtPos!214 (tail!932 (firstZeroAtPos!214_arg_0_4 ?i)) (+ (- 1) (firstZeroAtPos!214_arg_1_5 ?i))) (not (= (head!931 (firstZeroAtPos!214_arg_0_4 ?i)) (_ bv0 32))))) error_value!936))) (ite ((_ is Nil!933) (firstZeroAtPos!214_arg_0_4 ?i)) true (ite ((_ is Cons!930) (firstZeroAtPos!214_arg_0_4 ?i)) (ite (= (firstZeroAtPos!214_arg_1_5 ?i) 0) true (not (forall ((?z I_firstZeroAtPos!214)) (not (and (= (firstZeroAtPos!214_arg_0_4 ?z) (tail!932 (firstZeroAtPos!214_arg_0_4 ?i))) (= (firstZeroAtPos!214_arg_1_5 ?z) (+ (- 1) (firstZeroAtPos!214_arg_1_5 ?i))))) ))) true))) ))
(assert (forall ((?i I_size!206)) (and (= (size!206 (size!206_arg_0_6 ?i)) (ite ((_ is Nil!933) (size!206_arg_0_6 ?i)) 0 (ite ((_ is Cons!930) (size!206_arg_0_6 ?i)) (+ 1 (size!206 (tail!932 (size!206_arg_0_6 ?i)))) error_value!937))) (ite ((_ is Nil!933) (size!206_arg_0_6 ?i)) true (ite ((_ is Cons!930) (size!206_arg_0_6 ?i)) (not (forall ((?z I_size!206)) (not (= (size!206_arg_0_6 ?z) (tail!932 (size!206_arg_0_6 ?i)))) )) true))) ))
(assert (not (forall ((list!215 List!929)) (or (ite (firstZeroAtPos!214 list!215 (firstZero!211 list!215)) (or (contains!209 list!215 (_ bv0 32)) (forall ((?z I_contains!209)) (not (and (= (contains!209_arg_0_2 ?z) list!215) (= (contains!209_arg_1_3 ?z) (_ bv0 32)))) )) (or (= (firstZero!211 list!215) (size!206 list!215)) (forall ((?z I_firstZero!211)) (not (= (firstZero!211_arg_0_1 ?z) list!215)) ) (forall ((?z I_size!206)) (not (= (size!206_arg_0_6 ?z) list!215)) ))) (forall ((?z I_firstZeroAtPos!214)) (not (and (= (firstZeroAtPos!214_arg_0_4 ?z) list!215) (= (firstZeroAtPos!214_arg_1_5 ?z) (firstZero!211 list!215)))) ) (forall ((?z I_firstZero!211)) (not (= (firstZero!211_arg_0_1 ?z) list!215)) )) )))
(check-sat)
(exit)

