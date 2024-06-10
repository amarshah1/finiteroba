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


(declare-datatypes ((List!1006 0)) (((Cons!1007 (head!1008 (_ BitVec 32)) (tail!1009 List!1006)) (Nil!1010))
))
(declare-fun error_value!1011 () Int)
(declare-fun size!206 (List!1006) Int)
(declare-datatypes ((IntPairList!1012 0)(IntPair!1017 0)) (((IPCons!1013 (head!1014 IntPair!1017) (tail!1015 IntPairList!1012)) (IPNil!1016))
((IP!1018 (fst!1019 (_ BitVec 32)) (snd!1020 (_ BitVec 32))))
))
(declare-fun error_value!1021 () Int)
(declare-fun iplSize!209 (IntPairList!1012) Int)
(declare-fun error_value!1022 () IntPairList!1012)
(declare-fun error_value!1023 () IntPairList!1012)
(declare-fun zip!212 (List!1006 List!1006) IntPairList!1012)
(declare-fun error_value!1024 () IntPairList!1012)
(declare-fun error_value!1025 () IntPairList!1012)
(declare-sort I_size!206 0)
(declare-fun size!206_arg_0_1 (I_size!206) List!1006)
(declare-sort I_iplSize!209 0)
(declare-fun iplSize!209_arg_0_2 (I_iplSize!209) IntPairList!1012)
(declare-sort I_zip!212 0)
(declare-fun zip!212_arg_0_3 (I_zip!212) List!1006)
(declare-fun zip!212_arg_1_4 (I_zip!212) List!1006)
(assert (forall ((?i I_size!206)) (and (= (size!206 (size!206_arg_0_1 ?i)) (ite ((_ is Nil!1010) (size!206_arg_0_1 ?i)) 0 (ite ((_ is Cons!1007) (size!206_arg_0_1 ?i)) (+ 1 (size!206 (tail!1009 (size!206_arg_0_1 ?i)))) error_value!1011))) (ite ((_ is Nil!1010) (size!206_arg_0_1 ?i)) true (ite ((_ is Cons!1007) (size!206_arg_0_1 ?i)) (not (forall ((?z I_size!206)) (not (= (size!206_arg_0_1 ?z) (tail!1009 (size!206_arg_0_1 ?i)))) )) true))) ))
(assert (forall ((?i I_iplSize!209)) (and (= (iplSize!209 (iplSize!209_arg_0_2 ?i)) (ite ((_ is IPNil!1016) (iplSize!209_arg_0_2 ?i)) 0 (ite ((_ is IPCons!1013) (iplSize!209_arg_0_2 ?i)) (+ 1 (iplSize!209 (tail!1015 (iplSize!209_arg_0_2 ?i)))) error_value!1021))) (ite ((_ is IPNil!1016) (iplSize!209_arg_0_2 ?i)) true (ite ((_ is IPCons!1013) (iplSize!209_arg_0_2 ?i)) (not (forall ((?z I_iplSize!209)) (not (= (iplSize!209_arg_0_2 ?z) (tail!1015 (iplSize!209_arg_0_2 ?i)))) )) true))) ))
(assert (forall ((?i I_zip!212)) (and (= (zip!212 (zip!212_arg_0_3 ?i) (zip!212_arg_1_4 ?i)) (ite ((_ is Nil!1010) (zip!212_arg_0_3 ?i)) IPNil!1016 (ite ((_ is Cons!1007) (zip!212_arg_0_3 ?i)) (ite ((_ is Cons!1007) (zip!212_arg_1_4 ?i)) (IPCons!1013 (IP!1018 (head!1008 (zip!212_arg_0_3 ?i)) (head!1008 (zip!212_arg_1_4 ?i))) (zip!212 (tail!1009 (zip!212_arg_0_3 ?i)) (tail!1009 (zip!212_arg_1_4 ?i)))) error_value!1022) error_value!1023))) (ite ((_ is Nil!1010) (zip!212_arg_0_3 ?i)) true (ite ((_ is Cons!1007) (zip!212_arg_0_3 ?i)) (ite ((_ is Cons!1007) (zip!212_arg_1_4 ?i)) (not (forall ((?z I_zip!212)) (not (and (= (zip!212_arg_0_3 ?z) (tail!1009 (zip!212_arg_0_3 ?i))) (= (zip!212_arg_1_4 ?z) (tail!1009 (zip!212_arg_1_4 ?i))))) )) true) true))) ))
(assert (not (forall ((l1!210 List!1006) (l2!211 List!1006)) (or (not (and (= (size!206 l1!210) (size!206 l2!211)) (not (forall ((?z I_size!206)) (not (= (size!206_arg_0_1 ?z) l1!210)) )) (not (forall ((?z I_size!206)) (not (= (size!206_arg_0_1 ?z) l2!211)) )))) (or (= (size!206 l1!210) (iplSize!209 (ite ((_ is Nil!1010) l2!211) IPNil!1016 (ite ((_ is Cons!1007) l1!210) (IPCons!1013 (IP!1018 (head!1008 l1!210) (head!1008 l2!211)) (zip!212 (tail!1009 l1!210) (tail!1009 l2!211))) error_value!1025)))) (forall ((?z I_size!206)) (not (= (size!206_arg_0_1 ?z) l1!210)) ) (forall ((?z I_iplSize!209)) (not (= (iplSize!209_arg_0_2 ?z) (ite ((_ is Nil!1010) l2!211) IPNil!1016 (ite ((_ is Cons!1007) l1!210) (IPCons!1013 (IP!1018 (head!1008 l1!210) (head!1008 l2!211)) (zip!212 (tail!1009 l1!210) (tail!1009 l2!211))) error_value!1025)))) ) (not (ite ((_ is Nil!1010) l2!211) true (ite ((_ is Cons!1007) l1!210) (not (forall ((?z I_zip!212)) (not (and (= (zip!212_arg_0_3 ?z) (tail!1009 l1!210)) (= (zip!212_arg_1_4 ?z) (tail!1009 l2!211)))) )) true))))) )))
(check-sat)
(exit)

