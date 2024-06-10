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


(declare-datatypes ((Formula!937 0)) (((And!938 (lhs!939 Formula!937) (rhs!940 Formula!937)) (Not!941 (f!942 Formula!937)) (Or!943 (lhs!944 Formula!937) (rhs!945 Formula!937)) (Variable!946 (id!947 (_ BitVec 32))))
))
(declare-fun error_value!948 () Bool)
(declare-fun isNNF!208 (Formula!937) Bool)
(declare-fun error_value!949 () Formula!937)
(declare-fun nnf!206 (Formula!937) Formula!937)
(declare-fun error_value!950 () Formula!937)
(declare-fun error_value!951 () Formula!937)
(declare-fun error_value!952 () Formula!937)
(declare-sort I_isNNF!208 0)
(declare-fun isNNF!208_arg_0_1 (I_isNNF!208) Formula!937)
(declare-sort I_nnf!206 0)
(declare-fun nnf!206_arg_0_2 (I_nnf!206) Formula!937)
(assert (forall ((?i I_isNNF!208)) (and (= (isNNF!208 (isNNF!208_arg_0_1 ?i)) (ite ((_ is And!938) (isNNF!208_arg_0_1 ?i)) (and (isNNF!208 (rhs!940 (isNNF!208_arg_0_1 ?i))) (isNNF!208 (lhs!939 (isNNF!208_arg_0_1 ?i)))) (ite ((_ is Or!943) (isNNF!208_arg_0_1 ?i)) (and (isNNF!208 (rhs!945 (isNNF!208_arg_0_1 ?i))) (isNNF!208 (lhs!944 (isNNF!208_arg_0_1 ?i)))) (ite ((_ is Not!941) (isNNF!208_arg_0_1 ?i)) false (ite ((_ is Variable!946) (isNNF!208_arg_0_1 ?i)) true error_value!948))))) (ite ((_ is And!938) (isNNF!208_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (rhs!940 (isNNF!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (lhs!939 (isNNF!208_arg_0_1 ?i)))) ))) (ite ((_ is Or!943) (isNNF!208_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (rhs!945 (isNNF!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (lhs!944 (isNNF!208_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_nnf!206)) (and (= (nnf!206 (nnf!206_arg_0_2 ?i)) (ite ((_ is And!938) (nnf!206_arg_0_2 ?i)) (And!938 (nnf!206 (lhs!939 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!940 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Or!943) (nnf!206_arg_0_2 ?i)) (Or!943 (nnf!206 (lhs!944 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!945 (nnf!206_arg_0_2 ?i)))) (ite (and ((_ is And!938) (f!942 (nnf!206_arg_0_2 ?i))) ((_ is Not!941) (nnf!206_arg_0_2 ?i))) (Or!943 (nnf!206 (Not!941 (lhs!939 (f!942 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!941 (rhs!940 (f!942 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Or!943) (f!942 (nnf!206_arg_0_2 ?i))) ((_ is Not!941) (nnf!206_arg_0_2 ?i))) (And!938 (nnf!206 (Not!941 (lhs!944 (f!942 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!941 (rhs!945 (f!942 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Not!941) (f!942 (nnf!206_arg_0_2 ?i))) ((_ is Not!941) (nnf!206_arg_0_2 ?i))) (nnf!206 (f!942 (f!942 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Not!941) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) (ite ((_ is Variable!946) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) error_value!949)))))))) (ite ((_ is And!938) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!939 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!940 (nnf!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!943) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!944 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!945 (nnf!206_arg_0_2 ?i)))) ))) (ite (and ((_ is And!938) (f!942 (nnf!206_arg_0_2 ?i))) ((_ is Not!941) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (lhs!939 (f!942 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (rhs!940 (f!942 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!943) (f!942 (nnf!206_arg_0_2 ?i))) ((_ is Not!941) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (lhs!944 (f!942 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (rhs!945 (f!942 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!941) (f!942 (nnf!206_arg_0_2 ?i))) ((_ is Not!941) (nnf!206_arg_0_2 ?i))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!942 (f!942 (nnf!206_arg_0_2 ?i))))) )) true)))))) ))
(assert (not (forall ((BOUND_VARIABLE_743 Formula!937) (BOUND_VARIABLE_744 Formula!937)) (or (not (and (isNNF!208 (ite ((_ is And!938) BOUND_VARIABLE_743) (And!938 (nnf!206 (lhs!939 BOUND_VARIABLE_743)) (nnf!206 (rhs!940 BOUND_VARIABLE_743))) (ite ((_ is Or!943) BOUND_VARIABLE_743) (Or!943 (nnf!206 (lhs!944 BOUND_VARIABLE_743)) (nnf!206 (rhs!945 BOUND_VARIABLE_743))) (ite (and ((_ is And!938) (f!942 BOUND_VARIABLE_743)) ((_ is Not!941) BOUND_VARIABLE_743)) (Or!943 (nnf!206 (Not!941 (lhs!939 (f!942 BOUND_VARIABLE_743)))) (nnf!206 (Not!941 (rhs!940 (f!942 BOUND_VARIABLE_743))))) (ite (and ((_ is Or!943) (f!942 BOUND_VARIABLE_743)) ((_ is Not!941) BOUND_VARIABLE_743)) (And!938 (nnf!206 (Not!941 (lhs!944 (f!942 BOUND_VARIABLE_743)))) (nnf!206 (Not!941 (rhs!945 (f!942 BOUND_VARIABLE_743))))) (ite (and ((_ is Not!941) (f!942 BOUND_VARIABLE_743)) ((_ is Not!941) BOUND_VARIABLE_743)) (nnf!206 (f!942 (f!942 BOUND_VARIABLE_743))) (ite ((_ is Not!941) BOUND_VARIABLE_743) BOUND_VARIABLE_743 (ite ((_ is Variable!946) BOUND_VARIABLE_743) BOUND_VARIABLE_743 error_value!950)))))))) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (ite ((_ is And!938) BOUND_VARIABLE_743) (And!938 (nnf!206 (lhs!939 BOUND_VARIABLE_743)) (nnf!206 (rhs!940 BOUND_VARIABLE_743))) (ite ((_ is Or!943) BOUND_VARIABLE_743) (Or!943 (nnf!206 (lhs!944 BOUND_VARIABLE_743)) (nnf!206 (rhs!945 BOUND_VARIABLE_743))) (ite (and ((_ is And!938) (f!942 BOUND_VARIABLE_743)) ((_ is Not!941) BOUND_VARIABLE_743)) (Or!943 (nnf!206 (Not!941 (lhs!939 (f!942 BOUND_VARIABLE_743)))) (nnf!206 (Not!941 (rhs!940 (f!942 BOUND_VARIABLE_743))))) (ite (and ((_ is Or!943) (f!942 BOUND_VARIABLE_743)) ((_ is Not!941) BOUND_VARIABLE_743)) (And!938 (nnf!206 (Not!941 (lhs!944 (f!942 BOUND_VARIABLE_743)))) (nnf!206 (Not!941 (rhs!945 (f!942 BOUND_VARIABLE_743))))) (ite (and ((_ is Not!941) (f!942 BOUND_VARIABLE_743)) ((_ is Not!941) BOUND_VARIABLE_743)) (nnf!206 (f!942 (f!942 BOUND_VARIABLE_743))) (ite ((_ is Not!941) BOUND_VARIABLE_743) BOUND_VARIABLE_743 (ite ((_ is Variable!946) BOUND_VARIABLE_743) BOUND_VARIABLE_743 error_value!950))))))))) )) (ite ((_ is And!938) BOUND_VARIABLE_743) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!939 BOUND_VARIABLE_743))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!940 BOUND_VARIABLE_743))) ))) (ite ((_ is Or!943) BOUND_VARIABLE_743) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!944 BOUND_VARIABLE_743))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!945 BOUND_VARIABLE_743))) ))) (ite (and ((_ is And!938) (f!942 BOUND_VARIABLE_743)) ((_ is Not!941) BOUND_VARIABLE_743)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (lhs!939 (f!942 BOUND_VARIABLE_743))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (rhs!940 (f!942 BOUND_VARIABLE_743))))) ))) (ite (and ((_ is Or!943) (f!942 BOUND_VARIABLE_743)) ((_ is Not!941) BOUND_VARIABLE_743)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (lhs!944 (f!942 BOUND_VARIABLE_743))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (rhs!945 (f!942 BOUND_VARIABLE_743))))) ))) (ite (and ((_ is Not!941) (f!942 BOUND_VARIABLE_743)) ((_ is Not!941) BOUND_VARIABLE_743)) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!942 (f!942 BOUND_VARIABLE_743)))) )) true))))))) (not (and (isNNF!208 (ite ((_ is And!938) BOUND_VARIABLE_744) (And!938 (nnf!206 (lhs!939 BOUND_VARIABLE_744)) (nnf!206 (rhs!940 BOUND_VARIABLE_744))) (ite ((_ is Or!943) BOUND_VARIABLE_744) (Or!943 (nnf!206 (lhs!944 BOUND_VARIABLE_744)) (nnf!206 (rhs!945 BOUND_VARIABLE_744))) (ite (and ((_ is And!938) (f!942 BOUND_VARIABLE_744)) ((_ is Not!941) BOUND_VARIABLE_744)) (Or!943 (nnf!206 (Not!941 (lhs!939 (f!942 BOUND_VARIABLE_744)))) (nnf!206 (Not!941 (rhs!940 (f!942 BOUND_VARIABLE_744))))) (ite (and ((_ is Or!943) (f!942 BOUND_VARIABLE_744)) ((_ is Not!941) BOUND_VARIABLE_744)) (And!938 (nnf!206 (Not!941 (lhs!944 (f!942 BOUND_VARIABLE_744)))) (nnf!206 (Not!941 (rhs!945 (f!942 BOUND_VARIABLE_744))))) (ite (and ((_ is Not!941) (f!942 BOUND_VARIABLE_744)) ((_ is Not!941) BOUND_VARIABLE_744)) (nnf!206 (f!942 (f!942 BOUND_VARIABLE_744))) (ite ((_ is Not!941) BOUND_VARIABLE_744) BOUND_VARIABLE_744 (ite ((_ is Variable!946) BOUND_VARIABLE_744) BOUND_VARIABLE_744 error_value!951)))))))) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (ite ((_ is And!938) BOUND_VARIABLE_744) (And!938 (nnf!206 (lhs!939 BOUND_VARIABLE_744)) (nnf!206 (rhs!940 BOUND_VARIABLE_744))) (ite ((_ is Or!943) BOUND_VARIABLE_744) (Or!943 (nnf!206 (lhs!944 BOUND_VARIABLE_744)) (nnf!206 (rhs!945 BOUND_VARIABLE_744))) (ite (and ((_ is And!938) (f!942 BOUND_VARIABLE_744)) ((_ is Not!941) BOUND_VARIABLE_744)) (Or!943 (nnf!206 (Not!941 (lhs!939 (f!942 BOUND_VARIABLE_744)))) (nnf!206 (Not!941 (rhs!940 (f!942 BOUND_VARIABLE_744))))) (ite (and ((_ is Or!943) (f!942 BOUND_VARIABLE_744)) ((_ is Not!941) BOUND_VARIABLE_744)) (And!938 (nnf!206 (Not!941 (lhs!944 (f!942 BOUND_VARIABLE_744)))) (nnf!206 (Not!941 (rhs!945 (f!942 BOUND_VARIABLE_744))))) (ite (and ((_ is Not!941) (f!942 BOUND_VARIABLE_744)) ((_ is Not!941) BOUND_VARIABLE_744)) (nnf!206 (f!942 (f!942 BOUND_VARIABLE_744))) (ite ((_ is Not!941) BOUND_VARIABLE_744) BOUND_VARIABLE_744 (ite ((_ is Variable!946) BOUND_VARIABLE_744) BOUND_VARIABLE_744 error_value!951))))))))) )) (ite ((_ is And!938) BOUND_VARIABLE_744) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!939 BOUND_VARIABLE_744))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!940 BOUND_VARIABLE_744))) ))) (ite ((_ is Or!943) BOUND_VARIABLE_744) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!944 BOUND_VARIABLE_744))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!945 BOUND_VARIABLE_744))) ))) (ite (and ((_ is And!938) (f!942 BOUND_VARIABLE_744)) ((_ is Not!941) BOUND_VARIABLE_744)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (lhs!939 (f!942 BOUND_VARIABLE_744))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (rhs!940 (f!942 BOUND_VARIABLE_744))))) ))) (ite (and ((_ is Or!943) (f!942 BOUND_VARIABLE_744)) ((_ is Not!941) BOUND_VARIABLE_744)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (lhs!944 (f!942 BOUND_VARIABLE_744))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!941 (rhs!945 (f!942 BOUND_VARIABLE_744))))) ))) (ite (and ((_ is Not!941) (f!942 BOUND_VARIABLE_744)) ((_ is Not!941) BOUND_VARIABLE_744)) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!942 (f!942 BOUND_VARIABLE_744)))) )) true))))))) (or (isNNF!208 (Or!943 (nnf!206 BOUND_VARIABLE_743) (nnf!206 BOUND_VARIABLE_744))) (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (Or!943 (nnf!206 BOUND_VARIABLE_743) (nnf!206 BOUND_VARIABLE_744)))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) BOUND_VARIABLE_743)) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) BOUND_VARIABLE_744)) ))) )))
(check-sat)
(exit)

