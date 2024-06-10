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


(declare-datatypes ((Formula!1107 0)) (((And!1108 (lhs!1109 Formula!1107) (rhs!1110 Formula!1107)) (Not!1111 (f!1112 Formula!1107)) (Or!1113 (lhs!1114 Formula!1107) (rhs!1115 Formula!1107)) (Variable!1116 (id!1117 (_ BitVec 32))))
))
(declare-fun error_value!1118 () Bool)
(declare-fun error_value!1119 () Formula!1107)
(declare-fun error_value!1120 () Bool)
(declare-fun eval!210 (Formula!1107) Bool)
(declare-fun nnf!206 (Formula!1107) Formula!1107)
(declare-fun isNNF!208 (Formula!1107) Bool)
(declare-sort I_eval!210 0)
(declare-fun eval!210_arg_0_1 (I_eval!210) Formula!1107)
(declare-sort I_nnf!206 0)
(declare-fun nnf!206_arg_0_2 (I_nnf!206) Formula!1107)
(declare-sort I_isNNF!208 0)
(declare-fun isNNF!208_arg_0_3 (I_isNNF!208) Formula!1107)
(assert (forall ((?i I_eval!210)) (and (= (eval!210 (eval!210_arg_0_1 ?i)) (ite ((_ is And!1108) (eval!210_arg_0_1 ?i)) (and (eval!210 (rhs!1110 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1109 (eval!210_arg_0_1 ?i)))) (ite ((_ is Or!1113) (eval!210_arg_0_1 ?i)) (or (eval!210 (rhs!1115 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1114 (eval!210_arg_0_1 ?i)))) (ite ((_ is Not!1111) (eval!210_arg_0_1 ?i)) (not (eval!210 (f!1112 (eval!210_arg_0_1 ?i)))) (ite ((_ is Variable!1116) (eval!210_arg_0_1 ?i)) (bvslt (_ bv42 32) (id!1117 (eval!210_arg_0_1 ?i))) error_value!1118))))) (ite ((_ is And!1108) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1110 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1109 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Or!1113) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1115 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1114 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Not!1111) (eval!210_arg_0_1 ?i)) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!1112 (eval!210_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_nnf!206)) (and (= (nnf!206 (nnf!206_arg_0_2 ?i)) (ite ((_ is And!1108) (nnf!206_arg_0_2 ?i)) (And!1108 (nnf!206 (lhs!1109 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1110 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Or!1113) (nnf!206_arg_0_2 ?i)) (Or!1113 (nnf!206 (lhs!1114 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1115 (nnf!206_arg_0_2 ?i)))) (ite (and ((_ is And!1108) (f!1112 (nnf!206_arg_0_2 ?i))) ((_ is Not!1111) (nnf!206_arg_0_2 ?i))) (Or!1113 (nnf!206 (Not!1111 (lhs!1109 (f!1112 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1111 (rhs!1110 (f!1112 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Or!1113) (f!1112 (nnf!206_arg_0_2 ?i))) ((_ is Not!1111) (nnf!206_arg_0_2 ?i))) (And!1108 (nnf!206 (Not!1111 (lhs!1114 (f!1112 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1111 (rhs!1115 (f!1112 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Not!1111) (f!1112 (nnf!206_arg_0_2 ?i))) ((_ is Not!1111) (nnf!206_arg_0_2 ?i))) (nnf!206 (f!1112 (f!1112 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Not!1111) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) (ite ((_ is Variable!1116) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) error_value!1119)))))))) (ite ((_ is And!1108) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1109 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1110 (nnf!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1113) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1114 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1115 (nnf!206_arg_0_2 ?i)))) ))) (ite (and ((_ is And!1108) (f!1112 (nnf!206_arg_0_2 ?i))) ((_ is Not!1111) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1111 (lhs!1109 (f!1112 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1111 (rhs!1110 (f!1112 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!1113) (f!1112 (nnf!206_arg_0_2 ?i))) ((_ is Not!1111) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1111 (lhs!1114 (f!1112 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1111 (rhs!1115 (f!1112 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!1111) (f!1112 (nnf!206_arg_0_2 ?i))) ((_ is Not!1111) (nnf!206_arg_0_2 ?i))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!1112 (f!1112 (nnf!206_arg_0_2 ?i))))) )) true)))))) ))
(assert (forall ((?i I_isNNF!208)) (and (= (isNNF!208 (isNNF!208_arg_0_3 ?i)) (ite ((_ is And!1108) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1110 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1109 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Or!1113) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1115 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1114 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Not!1111) (isNNF!208_arg_0_3 ?i)) false (ite ((_ is Variable!1116) (isNNF!208_arg_0_3 ?i)) true error_value!1120))))) (ite ((_ is And!1108) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1110 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1109 (isNNF!208_arg_0_3 ?i)))) ))) (ite ((_ is Or!1113) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1115 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1114 (isNNF!208_arg_0_3 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_463 (_ BitVec 32))) (or (eval!210 (nnf!206 (Variable!1116 BOUND_VARIABLE_463))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 (Variable!1116 BOUND_VARIABLE_463)))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Variable!1116 BOUND_VARIABLE_463))) )) )))
(check-sat)
(exit)

