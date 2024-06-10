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


(declare-datatypes ((Formula!1093 0)) (((And!1094 (lhs!1095 Formula!1093) (rhs!1096 Formula!1093)) (Not!1097 (f!1098 Formula!1093)) (Or!1099 (lhs!1100 Formula!1093) (rhs!1101 Formula!1093)) (Variable!1102 (id!1103 (_ BitVec 32))))
))
(declare-fun error_value!1104 () Bool)
(declare-fun error_value!1105 () Formula!1093)
(declare-fun error_value!1106 () Bool)
(declare-fun eval!210 (Formula!1093) Bool)
(declare-fun nnf!206 (Formula!1093) Formula!1093)
(declare-fun isNNF!208 (Formula!1093) Bool)
(declare-sort I_eval!210 0)
(declare-fun eval!210_arg_0_1 (I_eval!210) Formula!1093)
(declare-sort I_nnf!206 0)
(declare-fun nnf!206_arg_0_2 (I_nnf!206) Formula!1093)
(declare-sort I_isNNF!208 0)
(declare-fun isNNF!208_arg_0_3 (I_isNNF!208) Formula!1093)
(assert (forall ((?i I_eval!210)) (and (= (eval!210 (eval!210_arg_0_1 ?i)) (ite ((_ is And!1094) (eval!210_arg_0_1 ?i)) (and (eval!210 (rhs!1096 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1095 (eval!210_arg_0_1 ?i)))) (ite ((_ is Or!1099) (eval!210_arg_0_1 ?i)) (or (eval!210 (rhs!1101 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1100 (eval!210_arg_0_1 ?i)))) (ite ((_ is Not!1097) (eval!210_arg_0_1 ?i)) (not (eval!210 (f!1098 (eval!210_arg_0_1 ?i)))) (ite ((_ is Variable!1102) (eval!210_arg_0_1 ?i)) (bvslt (_ bv42 32) (id!1103 (eval!210_arg_0_1 ?i))) error_value!1104))))) (ite ((_ is And!1094) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1096 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1095 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Or!1099) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1101 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1100 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Not!1097) (eval!210_arg_0_1 ?i)) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!1098 (eval!210_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_nnf!206)) (and (= (nnf!206 (nnf!206_arg_0_2 ?i)) (ite ((_ is And!1094) (nnf!206_arg_0_2 ?i)) (And!1094 (nnf!206 (lhs!1095 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1096 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Or!1099) (nnf!206_arg_0_2 ?i)) (Or!1099 (nnf!206 (lhs!1100 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1101 (nnf!206_arg_0_2 ?i)))) (ite (and ((_ is And!1094) (f!1098 (nnf!206_arg_0_2 ?i))) ((_ is Not!1097) (nnf!206_arg_0_2 ?i))) (Or!1099 (nnf!206 (Not!1097 (lhs!1095 (f!1098 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1097 (rhs!1096 (f!1098 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Or!1099) (f!1098 (nnf!206_arg_0_2 ?i))) ((_ is Not!1097) (nnf!206_arg_0_2 ?i))) (And!1094 (nnf!206 (Not!1097 (lhs!1100 (f!1098 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1097 (rhs!1101 (f!1098 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Not!1097) (f!1098 (nnf!206_arg_0_2 ?i))) ((_ is Not!1097) (nnf!206_arg_0_2 ?i))) (nnf!206 (f!1098 (f!1098 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Not!1097) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) (ite ((_ is Variable!1102) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) error_value!1105)))))))) (ite ((_ is And!1094) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1095 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1096 (nnf!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1099) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1100 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1101 (nnf!206_arg_0_2 ?i)))) ))) (ite (and ((_ is And!1094) (f!1098 (nnf!206_arg_0_2 ?i))) ((_ is Not!1097) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1097 (lhs!1095 (f!1098 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1097 (rhs!1096 (f!1098 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!1099) (f!1098 (nnf!206_arg_0_2 ?i))) ((_ is Not!1097) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1097 (lhs!1100 (f!1098 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1097 (rhs!1101 (f!1098 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!1097) (f!1098 (nnf!206_arg_0_2 ?i))) ((_ is Not!1097) (nnf!206_arg_0_2 ?i))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!1098 (f!1098 (nnf!206_arg_0_2 ?i))))) )) true)))))) ))
(assert (forall ((?i I_isNNF!208)) (and (= (isNNF!208 (isNNF!208_arg_0_3 ?i)) (ite ((_ is And!1094) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1096 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1095 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Or!1099) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1101 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1100 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Not!1097) (isNNF!208_arg_0_3 ?i)) false (ite ((_ is Variable!1102) (isNNF!208_arg_0_3 ?i)) true error_value!1106))))) (ite ((_ is And!1094) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1096 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1095 (isNNF!208_arg_0_3 ?i)))) ))) (ite ((_ is Or!1099) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1101 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1100 (isNNF!208_arg_0_3 ?i)))) ))) true))) ))
(assert (exists ((f!211 Formula!1093)) (not (=> (and (and (and ((_ is Or!1099) f!211) ((_ is Or!1099) f!211)) (and (= (eval!210 (lhs!1100 f!211)) (eval!210 (nnf!206 (lhs!1100 f!211)))) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1100 f!211))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 (lhs!1100 f!211)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1100 f!211))) )))) (and (= (eval!210 (rhs!1101 f!211)) (eval!210 (nnf!206 (rhs!1101 f!211)))) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1101 f!211))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 (rhs!1101 f!211)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1101 f!211))) )))) (or (= (eval!210 f!211) (eval!210 (nnf!206 f!211))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) f!211)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 f!211))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) f!211)) )))) ))
(check-sat)
(exit)

