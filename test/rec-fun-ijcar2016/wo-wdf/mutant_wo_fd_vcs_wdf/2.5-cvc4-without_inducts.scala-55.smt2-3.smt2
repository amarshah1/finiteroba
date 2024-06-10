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


(declare-datatypes ((Nat!2002 0)) (((succ!2003 (pred!2004 Nat!2002)) (zero!2005))
))
(declare-fun error_value!2006 () Bool)
(declare-fun nmax!246 (Nat!2002 Nat!2002) Nat!2002)
(declare-fun less!231 (Nat!2002 Nat!2002) Bool)
(declare-sort I_nmax!246 0)
(declare-fun nmax!246_arg_0_1 (I_nmax!246) Nat!2002)
(declare-fun nmax!246_arg_1_2 (I_nmax!246) Nat!2002)
(declare-sort I_less!231 0)
(declare-fun less!231_arg_0_3 (I_less!231) Nat!2002)
(declare-fun less!231_arg_1_4 (I_less!231) Nat!2002)
(assert (forall ((?i I_nmax!246)) (and (= (nmax!246 (nmax!246_arg_0_1 ?i) (nmax!246_arg_1_2 ?i)) (ite (less!231 (nmax!246_arg_0_1 ?i) (nmax!246_arg_1_2 ?i)) (nmax!246_arg_1_2 ?i) (nmax!246_arg_0_1 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (nmax!246_arg_0_1 ?i)) (= (less!231_arg_1_4 ?z) (nmax!246_arg_1_2 ?i)))) ))) ))
(assert (forall ((?i I_less!231)) (and (= (less!231 (less!231_arg_0_3 ?i) (less!231_arg_1_4 ?i)) (ite ((_ is zero!2005) (less!231_arg_1_4 ?i)) false (ite (and ((_ is succ!2003) (less!231_arg_1_4 ?i)) ((_ is zero!2005) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2003) (less!231_arg_1_4 ?i)) ((_ is succ!2003) (less!231_arg_0_3 ?i))) (less!231 (pred!2004 (less!231_arg_0_3 ?i)) (pred!2004 (less!231_arg_1_4 ?i))) error_value!2006)))) (ite ((_ is zero!2005) (less!231_arg_1_4 ?i)) true (ite (and ((_ is succ!2003) (less!231_arg_1_4 ?i)) ((_ is zero!2005) (less!231_arg_0_3 ?i))) true (ite (and ((_ is succ!2003) (less!231_arg_1_4 ?i)) ((_ is succ!2003) (less!231_arg_0_3 ?i))) (not (forall ((?z I_less!231)) (not (and (= (less!231_arg_0_3 ?z) (pred!2004 (less!231_arg_0_3 ?i))) (= (less!231_arg_1_4 ?z) (pred!2004 (less!231_arg_1_4 ?i))))) )) true)))) ))
(assert (not (forall ((a!363 Nat!2002) (b!364 Nat!2002) (c!365 Nat!2002)) (or (= (nmax!246 (nmax!246 a!363 b!364) c!365) (nmax!246 a!363 (nmax!246 c!365 b!364))) (forall ((?z I_nmax!246)) (not (and (= (nmax!246_arg_0_1 ?z) (nmax!246 a!363 b!364)) (= (nmax!246_arg_1_2 ?z) c!365))) ) (forall ((?z I_nmax!246)) (not (and (= (nmax!246_arg_0_1 ?z) a!363) (= (nmax!246_arg_1_2 ?z) b!364))) ) (forall ((?z I_nmax!246)) (not (and (= (nmax!246_arg_0_1 ?z) a!363) (= (nmax!246_arg_1_2 ?z) (nmax!246 c!365 b!364)))) ) (forall ((?z I_nmax!246)) (not (and (= (nmax!246_arg_0_1 ?z) c!365) (= (nmax!246_arg_1_2 ?z) b!364))) )) )))
(check-sat)
(exit)

