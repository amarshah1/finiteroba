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


(declare-datatypes ((Formula!1039 0)) (((And!1040 (lhs!1041 Formula!1039) (rhs!1042 Formula!1039)) (Not!1043 (f!1044 Formula!1039)) (Or!1045 (lhs!1046 Formula!1039) (rhs!1047 Formula!1039)) (Variable!1048 (id!1049 (_ BitVec 32))))
))
(declare-fun error_value!1050 () Bool)
(declare-fun error_value!1051 () Formula!1039)
(declare-fun error_value!1052 () Bool)
(declare-fun eval!210 (Formula!1039) Bool)
(declare-fun nnf!206 (Formula!1039) Formula!1039)
(declare-fun isNNF!208 (Formula!1039) Bool)
(declare-fun error_value!1053 () Bool)
(declare-sort I_eval!210 0)
(declare-fun eval!210_arg_0_1 (I_eval!210) Formula!1039)
(declare-sort I_nnf!206 0)
(declare-fun nnf!206_arg_0_2 (I_nnf!206) Formula!1039)
(declare-sort I_isNNF!208 0)
(declare-fun isNNF!208_arg_0_3 (I_isNNF!208) Formula!1039)
(assert (forall ((?i I_eval!210)) (and (= (eval!210 (eval!210_arg_0_1 ?i)) (ite ((_ is And!1040) (eval!210_arg_0_1 ?i)) (and (eval!210 (rhs!1042 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1041 (eval!210_arg_0_1 ?i)))) (ite ((_ is Or!1045) (eval!210_arg_0_1 ?i)) (or (eval!210 (rhs!1047 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1046 (eval!210_arg_0_1 ?i)))) (ite ((_ is Not!1043) (eval!210_arg_0_1 ?i)) (not (eval!210 (f!1044 (eval!210_arg_0_1 ?i)))) (ite ((_ is Variable!1048) (eval!210_arg_0_1 ?i)) (bvslt (_ bv42 32) (id!1049 (eval!210_arg_0_1 ?i))) error_value!1050))))) (ite ((_ is And!1040) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1042 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1041 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Or!1045) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1047 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1046 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Not!1043) (eval!210_arg_0_1 ?i)) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!1044 (eval!210_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_nnf!206)) (and (= (nnf!206 (nnf!206_arg_0_2 ?i)) (ite ((_ is And!1040) (nnf!206_arg_0_2 ?i)) (And!1040 (nnf!206 (lhs!1041 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1042 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Or!1045) (nnf!206_arg_0_2 ?i)) (Or!1045 (nnf!206 (lhs!1046 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1047 (nnf!206_arg_0_2 ?i)))) (ite (and ((_ is And!1040) (f!1044 (nnf!206_arg_0_2 ?i))) ((_ is Not!1043) (nnf!206_arg_0_2 ?i))) (Or!1045 (nnf!206 (Not!1043 (lhs!1041 (f!1044 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1043 (rhs!1042 (f!1044 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Or!1045) (f!1044 (nnf!206_arg_0_2 ?i))) ((_ is Not!1043) (nnf!206_arg_0_2 ?i))) (And!1040 (nnf!206 (Not!1043 (lhs!1046 (f!1044 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1043 (rhs!1047 (f!1044 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Not!1043) (f!1044 (nnf!206_arg_0_2 ?i))) ((_ is Not!1043) (nnf!206_arg_0_2 ?i))) (nnf!206 (f!1044 (f!1044 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Not!1043) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) (ite ((_ is Variable!1048) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) error_value!1051)))))))) (ite ((_ is And!1040) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1041 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1042 (nnf!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1045) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1046 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1047 (nnf!206_arg_0_2 ?i)))) ))) (ite (and ((_ is And!1040) (f!1044 (nnf!206_arg_0_2 ?i))) ((_ is Not!1043) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1043 (lhs!1041 (f!1044 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1043 (rhs!1042 (f!1044 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!1045) (f!1044 (nnf!206_arg_0_2 ?i))) ((_ is Not!1043) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1043 (lhs!1046 (f!1044 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1043 (rhs!1047 (f!1044 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!1043) (f!1044 (nnf!206_arg_0_2 ?i))) ((_ is Not!1043) (nnf!206_arg_0_2 ?i))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!1044 (f!1044 (nnf!206_arg_0_2 ?i))))) )) true)))))) ))
(assert (forall ((?i I_isNNF!208)) (and (= (isNNF!208 (isNNF!208_arg_0_3 ?i)) (ite ((_ is And!1040) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1042 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1041 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Or!1045) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1047 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1046 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Not!1043) (isNNF!208_arg_0_3 ?i)) false (ite ((_ is Variable!1048) (isNNF!208_arg_0_3 ?i)) true error_value!1052))))) (ite ((_ is And!1040) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1042 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1041 (isNNF!208_arg_0_3 ?i)))) ))) (ite ((_ is Or!1045) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1047 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1046 (isNNF!208_arg_0_3 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_523 (_ BitVec 32))) (or (= (bvslt (_ bv42 32) BOUND_VARIABLE_523) (eval!210 (Variable!1048 BOUND_VARIABLE_523))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (Variable!1048 BOUND_VARIABLE_523))) )) )))
(check-sat)
(exit)

