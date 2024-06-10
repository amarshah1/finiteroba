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


(declare-datatypes ((Nat!2055 0)) (((succ!2056 (pred!2057 Nat!2055)) (zero!2058))
))
(declare-datatypes ((Lst!2059 0)) (((cons!2060 (head!2061 Nat!2055) (tail!2062 Lst!2059)) (nil!2063))
))
(declare-fun error_value!2064 () Bool)
(declare-fun mem!270 (Nat!2055 Lst!2059) Bool)
(declare-fun error_value!2065 () Lst!2059)
(declare-fun ins1!278 (Nat!2055 Lst!2059) Lst!2059)
(declare-sort I_mem!270 0)
(declare-fun mem!270_arg_0_1 (I_mem!270) Nat!2055)
(declare-fun mem!270_arg_1_2 (I_mem!270) Lst!2059)
(declare-sort I_ins1!278 0)
(declare-fun ins1!278_arg_0_3 (I_ins1!278) Nat!2055)
(declare-fun ins1!278_arg_1_4 (I_ins1!278) Lst!2059)
(assert (forall ((?i I_mem!270)) (and (= (mem!270 (mem!270_arg_0_1 ?i) (mem!270_arg_1_2 ?i)) (ite ((_ is nil!2063) (mem!270_arg_1_2 ?i)) false (ite ((_ is cons!2060) (mem!270_arg_1_2 ?i)) (or (mem!270 (mem!270_arg_0_1 ?i) (tail!2062 (mem!270_arg_1_2 ?i))) (= (mem!270_arg_0_1 ?i) (head!2061 (mem!270_arg_1_2 ?i)))) error_value!2064))) (ite ((_ is nil!2063) (mem!270_arg_1_2 ?i)) true (ite ((_ is cons!2060) (mem!270_arg_1_2 ?i)) (not (forall ((?z I_mem!270)) (not (and (= (mem!270_arg_0_1 ?z) (mem!270_arg_0_1 ?i)) (= (mem!270_arg_1_2 ?z) (tail!2062 (mem!270_arg_1_2 ?i))))) )) true))) ))
(assert (forall ((?i I_ins1!278)) (and (= (ins1!278 (ins1!278_arg_0_3 ?i) (ins1!278_arg_1_4 ?i)) (ite ((_ is nil!2063) (ins1!278_arg_1_4 ?i)) (cons!2060 (ins1!278_arg_0_3 ?i) nil!2063) (ite ((_ is cons!2060) (ins1!278_arg_1_4 ?i)) (ite (= (ins1!278_arg_0_3 ?i) (head!2061 (ins1!278_arg_1_4 ?i))) (cons!2060 (head!2061 (ins1!278_arg_1_4 ?i)) (tail!2062 (ins1!278_arg_1_4 ?i))) (cons!2060 (head!2061 (ins1!278_arg_1_4 ?i)) (ins1!278 (ins1!278_arg_0_3 ?i) (tail!2062 (ins1!278_arg_1_4 ?i))))) error_value!2065))) (ite ((_ is nil!2063) (ins1!278_arg_1_4 ?i)) true (ite ((_ is cons!2060) (ins1!278_arg_1_4 ?i)) (ite (= (ins1!278_arg_0_3 ?i) (head!2061 (ins1!278_arg_1_4 ?i))) true (not (forall ((?z I_ins1!278)) (not (and (= (ins1!278_arg_0_3 ?z) (ins1!278_arg_0_3 ?i)) (= (ins1!278_arg_1_4 ?z) (tail!2062 (ins1!278_arg_1_4 ?i))))) ))) true))) ))
(assert (not (forall ((x!387 Nat!2055) (l!388 Lst!2059)) (or (mem!270 x!387 l!388) (forall ((?z I_mem!270)) (not (and (= (mem!270_arg_0_1 ?z) x!387) (= (mem!270_arg_1_2 ?z) l!388))) )) )))
(check-sat)
(exit)
