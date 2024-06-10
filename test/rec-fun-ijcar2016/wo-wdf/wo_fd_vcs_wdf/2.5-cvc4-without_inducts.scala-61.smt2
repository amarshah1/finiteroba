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


(declare-datatypes ((Nat!2044 0)) (((succ!2045 (pred!2046 Nat!2044)) (zero!2047))
))
(declare-datatypes ((Lst!2048 0)) (((cons!2049 (head!2050 Nat!2044) (tail!2051 Lst!2048)) (nil!2052))
))
(declare-fun error_value!2053 () Bool)
(declare-fun mem!270 (Nat!2044 Lst!2048) Bool)
(declare-fun error_value!2054 () Lst!2048)
(declare-fun append!252 (Lst!2048 Lst!2048) Lst!2048)
(declare-sort I_mem!270 0)
(declare-fun mem!270_arg_0_1 (I_mem!270) Nat!2044)
(declare-fun mem!270_arg_1_2 (I_mem!270) Lst!2048)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_3 (I_append!252) Lst!2048)
(declare-fun append!252_arg_1_4 (I_append!252) Lst!2048)
(assert (forall ((?i I_mem!270)) (and (= (mem!270 (mem!270_arg_0_1 ?i) (mem!270_arg_1_2 ?i)) (ite ((_ is nil!2052) (mem!270_arg_1_2 ?i)) false (ite ((_ is cons!2049) (mem!270_arg_1_2 ?i)) (or (mem!270 (mem!270_arg_0_1 ?i) (tail!2051 (mem!270_arg_1_2 ?i))) (= (mem!270_arg_0_1 ?i) (head!2050 (mem!270_arg_1_2 ?i)))) error_value!2053))) (ite ((_ is nil!2052) (mem!270_arg_1_2 ?i)) true (ite ((_ is cons!2049) (mem!270_arg_1_2 ?i)) (not (forall ((?z I_mem!270)) (not (and (= (mem!270_arg_0_1 ?z) (mem!270_arg_0_1 ?i)) (= (mem!270_arg_1_2 ?z) (tail!2051 (mem!270_arg_1_2 ?i))))) )) true))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_3 ?i) (append!252_arg_1_4 ?i)) (ite ((_ is nil!2052) (append!252_arg_0_3 ?i)) (append!252_arg_1_4 ?i) (ite ((_ is cons!2049) (append!252_arg_0_3 ?i)) (cons!2049 (head!2050 (append!252_arg_0_3 ?i)) (append!252 (tail!2051 (append!252_arg_0_3 ?i)) (append!252_arg_1_4 ?i))) error_value!2054))) (ite ((_ is nil!2052) (append!252_arg_0_3 ?i)) true (ite ((_ is cons!2049) (append!252_arg_0_3 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_3 ?z) (tail!2051 (append!252_arg_0_3 ?i))) (= (append!252_arg_1_4 ?z) (append!252_arg_1_4 ?i)))) )) true))) ))
(assert (exists ((x!384 Nat!2044) (l!385 Lst!2048)) (not (or (mem!270 x!384 (append!252 l!385 (cons!2049 x!384 nil!2052))) (forall ((?z I_mem!270)) (not (and (= (mem!270_arg_0_1 ?z) x!384) (= (mem!270_arg_1_2 ?z) (append!252 l!385 (cons!2049 x!384 nil!2052))))) ) (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_3 ?z) l!385) (= (append!252_arg_1_4 ?z) (cons!2049 x!384 nil!2052)))) ))) ))
(check-sat)
(exit)

