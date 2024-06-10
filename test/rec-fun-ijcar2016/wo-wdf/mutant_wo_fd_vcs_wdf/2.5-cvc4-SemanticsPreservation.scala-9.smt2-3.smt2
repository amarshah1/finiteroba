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


(declare-datatypes ((Formula!1022 0)) (((And!1023 (lhs!1024 Formula!1022) (rhs!1025 Formula!1022)) (Not!1026 (f!1027 Formula!1022)) (Or!1028 (lhs!1029 Formula!1022) (rhs!1030 Formula!1022)) (Variable!1031 (id!1032 (_ BitVec 32))))
))
(declare-fun error_value!1033 () Bool)
(declare-fun error_value!1034 () Formula!1022)
(declare-fun error_value!1035 () Bool)
(declare-fun eval!210 (Formula!1022) Bool)
(declare-fun nnf!206 (Formula!1022) Formula!1022)
(declare-fun isNNF!208 (Formula!1022) Bool)
(declare-fun error_value!1036 () Bool)
(declare-fun error_value!1037 () Bool)
(declare-fun error_value!1038 () Bool)
(declare-sort I_eval!210 0)
(declare-fun eval!210_arg_0_1 (I_eval!210) Formula!1022)
(declare-sort I_nnf!206 0)
(declare-fun nnf!206_arg_0_2 (I_nnf!206) Formula!1022)
(declare-sort I_isNNF!208 0)
(declare-fun isNNF!208_arg_0_3 (I_isNNF!208) Formula!1022)
(assert (forall ((?i I_eval!210)) (and (= (eval!210 (eval!210_arg_0_1 ?i)) (ite ((_ is And!1023) (eval!210_arg_0_1 ?i)) (and (eval!210 (rhs!1025 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1024 (eval!210_arg_0_1 ?i)))) (ite ((_ is Or!1028) (eval!210_arg_0_1 ?i)) (or (eval!210 (rhs!1030 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!1029 (eval!210_arg_0_1 ?i)))) (ite ((_ is Not!1026) (eval!210_arg_0_1 ?i)) (not (eval!210 (f!1027 (eval!210_arg_0_1 ?i)))) (ite ((_ is Variable!1031) (eval!210_arg_0_1 ?i)) (bvslt (_ bv42 32) (id!1032 (eval!210_arg_0_1 ?i))) error_value!1033))))) (ite ((_ is And!1023) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1025 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1024 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Or!1028) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1030 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1029 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Not!1026) (eval!210_arg_0_1 ?i)) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!1027 (eval!210_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_nnf!206)) (and (= (nnf!206 (nnf!206_arg_0_2 ?i)) (ite ((_ is And!1023) (nnf!206_arg_0_2 ?i)) (And!1023 (nnf!206 (lhs!1024 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1025 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Or!1028) (nnf!206_arg_0_2 ?i)) (Or!1028 (nnf!206 (lhs!1029 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!1030 (nnf!206_arg_0_2 ?i)))) (ite (and ((_ is And!1023) (f!1027 (nnf!206_arg_0_2 ?i))) ((_ is Not!1026) (nnf!206_arg_0_2 ?i))) (Or!1028 (nnf!206 (Not!1026 (lhs!1024 (f!1027 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1026 (rhs!1025 (f!1027 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Or!1028) (f!1027 (nnf!206_arg_0_2 ?i))) ((_ is Not!1026) (nnf!206_arg_0_2 ?i))) (And!1023 (nnf!206 (Not!1026 (lhs!1029 (f!1027 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!1026 (rhs!1030 (f!1027 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Not!1026) (f!1027 (nnf!206_arg_0_2 ?i))) ((_ is Not!1026) (nnf!206_arg_0_2 ?i))) (nnf!206 (f!1027 (f!1027 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Not!1026) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) (ite ((_ is Variable!1031) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) error_value!1034)))))))) (ite ((_ is And!1023) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1024 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1025 (nnf!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!1028) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!1029 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!1030 (nnf!206_arg_0_2 ?i)))) ))) (ite (and ((_ is And!1023) (f!1027 (nnf!206_arg_0_2 ?i))) ((_ is Not!1026) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1026 (lhs!1024 (f!1027 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1026 (rhs!1025 (f!1027 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!1028) (f!1027 (nnf!206_arg_0_2 ?i))) ((_ is Not!1026) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1026 (lhs!1029 (f!1027 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!1026 (rhs!1030 (f!1027 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!1026) (f!1027 (nnf!206_arg_0_2 ?i))) ((_ is Not!1026) (nnf!206_arg_0_2 ?i))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!1027 (f!1027 (nnf!206_arg_0_2 ?i))))) )) true)))))) ))
(assert (forall ((?i I_isNNF!208)) (and (= (isNNF!208 (isNNF!208_arg_0_3 ?i)) (ite ((_ is And!1023) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1025 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1024 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Or!1028) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!1030 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!1029 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Not!1026) (isNNF!208_arg_0_3 ?i)) false (ite ((_ is Variable!1031) (isNNF!208_arg_0_3 ?i)) true error_value!1035))))) (ite ((_ is And!1023) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1025 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1024 (isNNF!208_arg_0_3 ?i)))) ))) (ite ((_ is Or!1028) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!1030 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!1029 (isNNF!208_arg_0_3 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_682 Formula!1022) (BOUND_VARIABLE_683 Formula!1022)) (or (or (= (ite ((_ is And!1023) BOUND_VARIABLE_683) (and (eval!210 (rhs!1025 BOUND_VARIABLE_683)) (eval!210 (lhs!1024 BOUND_VARIABLE_683))) (ite ((_ is Or!1028) BOUND_VARIABLE_683) (or (eval!210 (rhs!1030 BOUND_VARIABLE_683)) (eval!210 (lhs!1029 BOUND_VARIABLE_683))) (ite ((_ is Not!1026) BOUND_VARIABLE_683) (not (eval!210 (f!1027 BOUND_VARIABLE_683))) (ite ((_ is Variable!1031) BOUND_VARIABLE_683) (eval!210 (lhs!1024 BOUND_VARIABLE_682)) error_value!1037)))) (not (eval!210 (nnf!206 BOUND_VARIABLE_683)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1025 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1024 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1030 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1029 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!1027 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1024 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 BOUND_VARIABLE_683))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) BOUND_VARIABLE_683)) )) (or (= (ite ((_ is And!1023) BOUND_VARIABLE_682) (and (eval!210 (rhs!1025 BOUND_VARIABLE_682)) (bvslt (_ bv42 32) (id!1032 BOUND_VARIABLE_683))) (ite ((_ is Or!1028) BOUND_VARIABLE_682) (or (eval!210 (rhs!1030 BOUND_VARIABLE_682)) (eval!210 (lhs!1029 BOUND_VARIABLE_682))) (ite ((_ is Not!1026) BOUND_VARIABLE_682) (not (eval!210 (f!1027 BOUND_VARIABLE_682))) (ite ((_ is Variable!1031) BOUND_VARIABLE_682) (bvslt (_ bv42 32) (id!1032 BOUND_VARIABLE_682)) error_value!1036)))) (not (eval!210 (nnf!206 BOUND_VARIABLE_682)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1025 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!1030 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!1029 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!1027 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 BOUND_VARIABLE_682))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) BOUND_VARIABLE_682)) )) (or (= (or (eval!210 BOUND_VARIABLE_683) (eval!210 BOUND_VARIABLE_682)) (eval!210 (nnf!206 (Or!1028 BOUND_VARIABLE_682 BOUND_VARIABLE_683)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) BOUND_VARIABLE_683)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) BOUND_VARIABLE_682)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 (Or!1028 BOUND_VARIABLE_682 BOUND_VARIABLE_683)))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Or!1028 BOUND_VARIABLE_682 BOUND_VARIABLE_683))) ))) )))
(check-sat)
(exit)
