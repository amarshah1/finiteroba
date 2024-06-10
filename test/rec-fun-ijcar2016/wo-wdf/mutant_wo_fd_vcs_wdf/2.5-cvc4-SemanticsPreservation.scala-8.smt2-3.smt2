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


(declare-datatypes ((Formula!1006 0)) (((And!1007 (lhs!1008 Formula!1006) (rhs!1009 Formula!1006)) (Not!1010 (f!1011 Formula!1006)) (Or!1012 (lhs!1013 Formula!1006) (rhs!1014 Formula!1006)) (Variable!1015 (id!1016 (_ BitVec 32))))
))
(declare-fun error_value!1017 () Bool)
(declare-fun error_value!1018 () Formula!1006)
(declare-fun error_value!1019 () Bool)
(declare-fun eval!210 (Formula!1006) Bool)
(declare-fun nnf!206 (Formula!1006) Formula!1006)
(declare-fun isNNF!208 (Formula!1006) Bool)
(declare-fun error_value!1020 () Bool)
(declare-fun error_value!1021 () Bool)
(declare-sort I_eval!210 0)
(declare-fun eval!210_arg_0_1 (I_eval!210) Formula!1006)
(declare-sort I_nnf!206 0)
(declare-fun nnf!206_arg_0_2 (I_nnf!206) Formula!1006)
(declare-sort I_isNNF!208 0)
(declare-fun isNNF!208_arg_0_3 (I_isNNF!208) Formula!1006)
(assert (forall ((?i I_eval!210)) (and (= (eval!210 (eval!210_arg_0_1 ?i)) (ite ((_ is And!1007) (eval!210_arg_0_1 ?i)) (and (eval!210 (rhs!1009 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1008 (eval!210_arg_0_1 ?i)))) (ite ((_ is Or!1012) (eval!210_arg_0_1 ?i)) (or (eval!210 (rhs!1014 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1013 (eval!210_arg_0_1 ?i)))) (ite ((_ is Not!1010) (eval!210_arg_0_1 ?i)) (not (eval!210 (f!1011 (eval!210_arg_0_1 ?i)))) (ite ((_ is Variable!1015) (eval!210_arg_0_1 ?i)) (bvslt (_ bv42 32) (id!1016 (eval!210_arg_0_1 ?i))) error_value!1017))))) (ite ((_ is And!1007) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1009 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1008 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Or!1012) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1014 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1013 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Not!1010) (eval!210_arg_0_1 ?i)) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!1011 (eval!210_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_nnf!206)) (and (= (nnf!206 (nnf!206_arg_0_2 ?i)) (ite ((_ is And!1007) (nnf!206_arg_0_2 ?i)) (And!1007 (nnf!206 (lhs!1008 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1009 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Or!1012) (nnf!206_arg_0_2 ?i)) (Or!1012 (nnf!206 (lhs!1013 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1014 (nnf!206_arg_0_2 ?i)))) (ite (and ((_ is And!1007) (f!1011 (nnf!206_arg_0_2 ?i))) ((_ is Not!1010) (nnf!206_arg_0_2 ?i))) (Or!1012 (nnf!206 (Not!1010 (lhs!1008 (f!1011 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1010 (rhs!1009 (f!1011 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Or!1012) (f!1011 (nnf!206_arg_0_2 ?i))) ((_ is Not!1010) (nnf!206_arg_0_2 ?i))) (And!1007 (nnf!206 (Not!1010 (lhs!1013 (f!1011 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1010 (rhs!1014 (f!1011 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Not!1010) (f!1011 (nnf!206_arg_0_2 ?i))) ((_ is Not!1010) (nnf!206_arg_0_2 ?i))) (nnf!206 (f!1011 (f!1011 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Not!1010) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) (ite ((_ is Variable!1015) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) error_value!1018)))))))) (ite ((_ is And!1007) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1008 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1009 (nnf!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1012) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1013 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1014 (nnf!206_arg_0_2 ?i)))) ))) (ite (and ((_ is And!1007) (f!1011 (nnf!206_arg_0_2 ?i))) ((_ is Not!1010) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1010 (lhs!1008 (f!1011 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1010 (rhs!1009 (f!1011 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!1012) (f!1011 (nnf!206_arg_0_2 ?i))) ((_ is Not!1010) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1010 (lhs!1013 (f!1011 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1010 (rhs!1014 (f!1011 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!1010) (f!1011 (nnf!206_arg_0_2 ?i))) ((_ is Not!1010) (nnf!206_arg_0_2 ?i))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!1011 (f!1011 (nnf!206_arg_0_2 ?i))))) )) true)))))) ))
(assert (forall ((?i I_isNNF!208)) (and (= (isNNF!208 (isNNF!208_arg_0_3 ?i)) (ite ((_ is And!1007) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1009 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1008 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Or!1012) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1014 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1013 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Not!1010) (isNNF!208_arg_0_3 ?i)) false (ite ((_ is Variable!1015) (isNNF!208_arg_0_3 ?i)) true error_value!1019))))) (ite ((_ is And!1007) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1009 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1008 (isNNF!208_arg_0_3 ?i)))) ))) (ite ((_ is Or!1012) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1014 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1013 (isNNF!208_arg_0_3 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_606 Formula!1006)) (or (or (= (ite ((_ is And!1007) BOUND_VARIABLE_606) (and (eval!210 (rhs!1009 BOUND_VARIABLE_606)) (eval!210 (lhs!1008 BOUND_VARIABLE_606))) (ite ((_ is Or!1012) BOUND_VARIABLE_606) (or (eval!210 (rhs!1014 BOUND_VARIABLE_606)) (eval!210 (lhs!1013 BOUND_VARIABLE_606))) (ite ((_ is Not!1010) BOUND_VARIABLE_606) (not (eval!210 (nnf!206 BOUND_VARIABLE_606))) (ite ((_ is Variable!1015) BOUND_VARIABLE_606) (bvslt (_ bv42 32) (id!1016 BOUND_VARIABLE_606)) error_value!1020)))) (not (eval!210 (f!1011 BOUND_VARIABLE_606)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1009 BOUND_VARIABLE_606))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1008 BOUND_VARIABLE_606))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1014 BOUND_VARIABLE_606))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1013 BOUND_VARIABLE_606))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 BOUND_VARIABLE_606))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) BOUND_VARIABLE_606)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!1011 BOUND_VARIABLE_606))) )) (or (= (not (eval!210 BOUND_VARIABLE_606)) (eval!210 (nnf!206 (Not!1010 BOUND_VARIABLE_606)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) BOUND_VARIABLE_606)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 (Not!1010 BOUND_VARIABLE_606)))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1010 BOUND_VARIABLE_606))) ))) )))
(check-sat)
(exit)

