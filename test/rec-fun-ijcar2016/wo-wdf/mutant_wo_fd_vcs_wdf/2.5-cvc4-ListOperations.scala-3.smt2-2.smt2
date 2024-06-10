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


(declare-datatypes ((IntPairList!986 0)(IntPair!991 0)) (((IPCons!987 (head!988 IntPair!991) (tail!989 IntPairList!986)) (IPNil!990))
((IP!992 (fst!993 (_ BitVec 32)) (snd!994 (_ BitVec 32))))
))
(declare-fun error_value!995 () Int)
(declare-fun iplSize!209 (IntPairList!986) Int)
(declare-fun error_value!996 () Int)
(declare-sort I_iplSize!209 0)
(declare-fun iplSize!209_arg_0_1 (I_iplSize!209) IntPairList!986)
(assert (forall ((?i I_iplSize!209)) (and (= (iplSize!209 (iplSize!209_arg_0_1 ?i)) (ite ((_ is IPNil!990) (iplSize!209_arg_0_1 ?i)) 0 (ite ((_ is IPCons!987) (iplSize!209_arg_0_1 ?i)) (+ 1 (iplSize!209 (tail!989 (iplSize!209_arg_0_1 ?i)))) error_value!995))) (ite ((_ is IPNil!990) (iplSize!209_arg_0_1 ?i)) true (ite ((_ is IPCons!987) (iplSize!209_arg_0_1 ?i)) (not (forall ((?z I_iplSize!209)) (not (= (iplSize!209_arg_0_1 ?z) (tail!989 (iplSize!209_arg_0_1 ?i)))) )) true))) ))
(assert (not (forall ((l!208 IntPairList!986)) ((_ is IPCons!987) l!208) )))
(check-sat)
(exit)

