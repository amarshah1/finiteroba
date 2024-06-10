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


(declare-datatypes ((Formula!1065 0)) (((And!1066 (lhs!1067 Formula!1065) (rhs!1068 Formula!1065)) (Not!1069 (f!1070 Formula!1065)) (Or!1071 (lhs!1072 Formula!1065) (rhs!1073 Formula!1065)) (Variable!1074 (id!1075 (_ BitVec 32))))
))
(declare-fun error_value!1076 () Bool)
(declare-fun error_value!1077 () Formula!1065)
(declare-fun error_value!1078 () Bool)
(declare-fun eval!210 (Formula!1065) Bool)
(declare-fun nnf!206 (Formula!1065) Formula!1065)
(declare-fun isNNF!208 (Formula!1065) Bool)
(declare-sort I_eval!210 0)
(declare-fun eval!210_arg_0_1 (I_eval!210) Formula!1065)
(declare-sort I_nnf!206 0)
(declare-fun nnf!206_arg_0_2 (I_nnf!206) Formula!1065)
(declare-sort I_isNNF!208 0)
(declare-fun isNNF!208_arg_0_3 (I_isNNF!208) Formula!1065)
(assert (forall ((?i I_eval!210)) (and (= (eval!210 (eval!210_arg_0_1 ?i)) (ite ((_ is And!1066) (eval!210_arg_0_1 ?i)) (and (eval!210 (rhs!1068 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1067 (eval!210_arg_0_1 ?i)))) (ite ((_ is Or!1071) (eval!210_arg_0_1 ?i)) (or (eval!210 (rhs!1073 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1072 (eval!210_arg_0_1 ?i)))) (ite ((_ is Not!1069) (eval!210_arg_0_1 ?i)) (not (eval!210 (f!1070 (eval!210_arg_0_1 ?i)))) (ite ((_ is Variable!1074) (eval!210_arg_0_1 ?i)) (bvslt (_ bv42 32) (id!1075 (eval!210_arg_0_1 ?i))) error_value!1076))))) (ite ((_ is And!1066) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1068 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1067 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Or!1071) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1073 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1072 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Not!1069) (eval!210_arg_0_1 ?i)) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!1070 (eval!210_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_nnf!206)) (and (= (nnf!206 (nnf!206_arg_0_2 ?i)) (ite ((_ is And!1066) (nnf!206_arg_0_2 ?i)) (And!1066 (nnf!206 (lhs!1067 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1068 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Or!1071) (nnf!206_arg_0_2 ?i)) (Or!1071 (nnf!206 (lhs!1072 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1073 (nnf!206_arg_0_2 ?i)))) (ite (and ((_ is And!1066) (f!1070 (nnf!206_arg_0_2 ?i))) ((_ is Not!1069) (nnf!206_arg_0_2 ?i))) (Or!1071 (nnf!206 (Not!1069 (lhs!1067 (f!1070 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1069 (rhs!1068 (f!1070 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Or!1071) (f!1070 (nnf!206_arg_0_2 ?i))) ((_ is Not!1069) (nnf!206_arg_0_2 ?i))) (And!1066 (nnf!206 (Not!1069 (lhs!1072 (f!1070 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1069 (rhs!1073 (f!1070 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Not!1069) (f!1070 (nnf!206_arg_0_2 ?i))) ((_ is Not!1069) (nnf!206_arg_0_2 ?i))) (nnf!206 (f!1070 (f!1070 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Not!1069) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) (ite ((_ is Variable!1074) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) error_value!1077)))))))) (ite ((_ is And!1066) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1067 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1068 (nnf!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1071) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1072 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1073 (nnf!206_arg_0_2 ?i)))) ))) (ite (and ((_ is And!1066) (f!1070 (nnf!206_arg_0_2 ?i))) ((_ is Not!1069) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1069 (lhs!1067 (f!1070 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1069 (rhs!1068 (f!1070 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!1071) (f!1070 (nnf!206_arg_0_2 ?i))) ((_ is Not!1069) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1069 (lhs!1072 (f!1070 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1069 (rhs!1073 (f!1070 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!1069) (f!1070 (nnf!206_arg_0_2 ?i))) ((_ is Not!1069) (nnf!206_arg_0_2 ?i))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!1070 (f!1070 (nnf!206_arg_0_2 ?i))))) )) true)))))) ))
(assert (forall ((?i I_isNNF!208)) (and (= (isNNF!208 (isNNF!208_arg_0_3 ?i)) (ite ((_ is And!1066) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1068 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1067 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Or!1071) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1073 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1072 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Not!1069) (isNNF!208_arg_0_3 ?i)) false (ite ((_ is Variable!1074) (isNNF!208_arg_0_3 ?i)) true error_value!1078))))) (ite ((_ is And!1066) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1068 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1067 (isNNF!208_arg_0_3 ?i)))) ))) (ite ((_ is Or!1071) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1073 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1072 (isNNF!208_arg_0_3 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_505 Formula!1065) (BOUND_VARIABLE_506 Formula!1065)) (or (or (= (eval!210 BOUND_VARIABLE_506) (not (eval!210 (nnf!206 BOUND_VARIABLE_506)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) BOUND_VARIABLE_506)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 BOUND_VARIABLE_506))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) BOUND_VARIABLE_506)) )) (or (= (eval!210 BOUND_VARIABLE_505) (not (eval!210 (nnf!206 BOUND_VARIABLE_505)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) BOUND_VARIABLE_505)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 BOUND_VARIABLE_505))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) BOUND_VARIABLE_505)) )) (or (= (eval!210 BOUND_VARIABLE_505) (eval!210 (nnf!206 (And!1066 (And!1066 BOUND_VARIABLE_505 BOUND_VARIABLE_506) BOUND_VARIABLE_506)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) BOUND_VARIABLE_505)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 (And!1066 (And!1066 BOUND_VARIABLE_505 BOUND_VARIABLE_506) BOUND_VARIABLE_506)))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (And!1066 (And!1066 BOUND_VARIABLE_505 BOUND_VARIABLE_506) BOUND_VARIABLE_506))) ))) )))
(check-sat)
(exit)

