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


(declare-datatypes ((Formula!922 0)) (((And!923 (lhs!924 Formula!922) (rhs!925 Formula!922)) (Not!926 (f!927 Formula!922)) (Or!928 (lhs!929 Formula!922) (rhs!930 Formula!922)) (Variable!931 (id!932 (_ BitVec 32))))
))
(declare-fun error_value!933 () Bool)
(declare-fun isNNF!208 (Formula!922) Bool)
(declare-fun error_value!934 () Formula!922)
(declare-fun nnf!206 (Formula!922) Formula!922)
(declare-fun error_value!935 () Formula!922)
(declare-fun error_value!936 () Formula!922)
(declare-sort I_isNNF!208 0)
(declare-fun isNNF!208_arg_0_1 (I_isNNF!208) Formula!922)
(declare-sort I_nnf!206 0)
(declare-fun nnf!206_arg_0_2 (I_nnf!206) Formula!922)
(assert (forall ((?i I_isNNF!208)) (and (= (isNNF!208 (isNNF!208_arg_0_1 ?i)) (ite ((_ is And!923) (isNNF!208_arg_0_1 ?i)) (and (isNNF!208 (rhs!925 (isNNF!208_arg_0_1 ?i))) (isNNF!208 (lhs!924 (isNNF!208_arg_0_1 ?i)))) (ite ((_ is Or!928) (isNNF!208_arg_0_1 ?i)) (and (isNNF!208 (rhs!930 (isNNF!208_arg_0_1 ?i))) (isNNF!208 (lhs!929 (isNNF!208_arg_0_1 ?i)))) (ite ((_ is Not!926) (isNNF!208_arg_0_1 ?i)) false (ite ((_ is Variable!931) (isNNF!208_arg_0_1 ?i)) true error_value!933))))) (ite ((_ is And!923) (isNNF!208_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (rhs!925 (isNNF!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (lhs!924 (isNNF!208_arg_0_1 ?i)))) ))) (ite ((_ is Or!928) (isNNF!208_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (rhs!930 (isNNF!208_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (lhs!929 (isNNF!208_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_nnf!206)) (and (= (nnf!206 (nnf!206_arg_0_2 ?i)) (ite ((_ is And!923) (nnf!206_arg_0_2 ?i)) (And!923 (nnf!206 (lhs!924 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!925 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Or!928) (nnf!206_arg_0_2 ?i)) (Or!928 (nnf!206 (lhs!929 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!930 (nnf!206_arg_0_2 ?i)))) (ite (and ((_ is And!923) (f!927 (nnf!206_arg_0_2 ?i))) ((_ is Not!926) (nnf!206_arg_0_2 ?i))) (Or!928 (nnf!206 (Not!926 (lhs!924 (f!927 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!926 (rhs!925 (f!927 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Or!928) (f!927 (nnf!206_arg_0_2 ?i))) ((_ is Not!926) (nnf!206_arg_0_2 ?i))) (And!923 (nnf!206 (Not!926 (lhs!929 (f!927 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!926 (rhs!930 (f!927 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Not!926) (f!927 (nnf!206_arg_0_2 ?i))) ((_ is Not!926) (nnf!206_arg_0_2 ?i))) (nnf!206 (f!927 (f!927 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Not!926) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) (ite ((_ is Variable!931) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) error_value!934)))))))) (ite ((_ is And!923) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!924 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!925 (nnf!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!928) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!929 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!930 (nnf!206_arg_0_2 ?i)))) ))) (ite (and ((_ is And!923) (f!927 (nnf!206_arg_0_2 ?i))) ((_ is Not!926) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (lhs!924 (f!927 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (rhs!925 (f!927 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!928) (f!927 (nnf!206_arg_0_2 ?i))) ((_ is Not!926) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (lhs!929 (f!927 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (rhs!930 (f!927 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!926) (f!927 (nnf!206_arg_0_2 ?i))) ((_ is Not!926) (nnf!206_arg_0_2 ?i))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!927 (f!927 (nnf!206_arg_0_2 ?i))))) )) true)))))) ))
(assert (not (forall ((BOUND_VARIABLE_606 Formula!922)) (or (not (and (isNNF!208 (ite ((_ is And!923) BOUND_VARIABLE_606) (And!923 (nnf!206 (lhs!924 BOUND_VARIABLE_606)) (nnf!206 (rhs!925 BOUND_VARIABLE_606))) (ite ((_ is Or!928) BOUND_VARIABLE_606) (Or!928 (nnf!206 (lhs!929 BOUND_VARIABLE_606)) (nnf!206 (rhs!930 BOUND_VARIABLE_606))) (ite (and ((_ is And!923) (f!927 BOUND_VARIABLE_606)) ((_ is Not!926) BOUND_VARIABLE_606)) (Or!928 (nnf!206 (Not!926 (lhs!924 (f!927 BOUND_VARIABLE_606)))) (nnf!206 (Not!926 (rhs!925 (f!927 BOUND_VARIABLE_606))))) (ite (and ((_ is Or!928) (f!927 BOUND_VARIABLE_606)) ((_ is Not!926) BOUND_VARIABLE_606)) (And!923 (nnf!206 (Not!926 (lhs!929 (f!927 BOUND_VARIABLE_606)))) (nnf!206 (Not!926 (rhs!930 (f!927 BOUND_VARIABLE_606))))) (ite (and ((_ is Not!926) (f!927 BOUND_VARIABLE_606)) ((_ is Not!926) BOUND_VARIABLE_606)) (nnf!206 (f!927 (f!927 BOUND_VARIABLE_606))) (ite ((_ is Not!926) BOUND_VARIABLE_606) BOUND_VARIABLE_606 (ite ((_ is Variable!931) BOUND_VARIABLE_606) BOUND_VARIABLE_606 error_value!935)))))))) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (ite ((_ is And!923) BOUND_VARIABLE_606) (And!923 (nnf!206 (lhs!924 BOUND_VARIABLE_606)) (nnf!206 (rhs!925 BOUND_VARIABLE_606))) (ite ((_ is Or!928) BOUND_VARIABLE_606) (Or!928 (nnf!206 (lhs!929 BOUND_VARIABLE_606)) (nnf!206 (rhs!930 BOUND_VARIABLE_606))) (ite (and ((_ is And!923) (f!927 BOUND_VARIABLE_606)) ((_ is Not!926) BOUND_VARIABLE_606)) (Or!928 (nnf!206 (Not!926 (lhs!924 (f!927 BOUND_VARIABLE_606)))) (nnf!206 (Not!926 (rhs!925 (f!927 BOUND_VARIABLE_606))))) (ite (and ((_ is Or!928) (f!927 BOUND_VARIABLE_606)) ((_ is Not!926) BOUND_VARIABLE_606)) (And!923 (nnf!206 (Not!926 (lhs!929 (f!927 BOUND_VARIABLE_606)))) (nnf!206 (Not!926 (rhs!930 (f!927 BOUND_VARIABLE_606))))) (ite (and ((_ is Not!926) (f!927 BOUND_VARIABLE_606)) ((_ is Not!926) BOUND_VARIABLE_606)) (nnf!206 (f!927 (f!927 BOUND_VARIABLE_606))) (ite ((_ is Not!926) BOUND_VARIABLE_606) BOUND_VARIABLE_606 (ite ((_ is Variable!931) BOUND_VARIABLE_606) BOUND_VARIABLE_606 error_value!935))))))))) )) (ite ((_ is And!923) BOUND_VARIABLE_606) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!924 BOUND_VARIABLE_606))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!925 BOUND_VARIABLE_606))) ))) (ite ((_ is Or!928) BOUND_VARIABLE_606) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!929 BOUND_VARIABLE_606))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!930 BOUND_VARIABLE_606))) ))) (ite (and ((_ is And!923) (f!927 BOUND_VARIABLE_606)) ((_ is Not!926) BOUND_VARIABLE_606)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (lhs!924 (f!927 BOUND_VARIABLE_606))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (rhs!925 (f!927 BOUND_VARIABLE_606))))) ))) (ite (and ((_ is Or!928) (f!927 BOUND_VARIABLE_606)) ((_ is Not!926) BOUND_VARIABLE_606)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (lhs!929 (f!927 BOUND_VARIABLE_606))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (rhs!930 (f!927 BOUND_VARIABLE_606))))) ))) (ite (and ((_ is Not!926) (f!927 BOUND_VARIABLE_606)) ((_ is Not!926) BOUND_VARIABLE_606)) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!927 (f!927 BOUND_VARIABLE_606)))) )) true))))))) (or (isNNF!208 (ite ((_ is And!923) BOUND_VARIABLE_606) (Or!928 (nnf!206 (Not!926 (lhs!924 BOUND_VARIABLE_606))) (nnf!206 (Not!926 (Not!926 (lhs!929 BOUND_VARIABLE_606))))) (ite ((_ is Or!928) BOUND_VARIABLE_606) (And!923 (nnf!206 (rhs!925 BOUND_VARIABLE_606)) (nnf!206 (Not!926 (rhs!930 BOUND_VARIABLE_606)))) (ite ((_ is Not!926) BOUND_VARIABLE_606) (nnf!206 (f!927 BOUND_VARIABLE_606)) (Not!926 BOUND_VARIABLE_606))))) (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (ite ((_ is And!923) BOUND_VARIABLE_606) (Or!928 (nnf!206 (Not!926 (lhs!924 BOUND_VARIABLE_606))) (nnf!206 (Not!926 (Not!926 (lhs!929 BOUND_VARIABLE_606))))) (ite ((_ is Or!928) BOUND_VARIABLE_606) (And!923 (nnf!206 (rhs!925 BOUND_VARIABLE_606)) (nnf!206 (Not!926 (rhs!930 BOUND_VARIABLE_606)))) (ite ((_ is Not!926) BOUND_VARIABLE_606) (nnf!206 (f!927 BOUND_VARIABLE_606)) (Not!926 BOUND_VARIABLE_606)))))) ) (not (ite ((_ is And!923) BOUND_VARIABLE_606) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (lhs!924 BOUND_VARIABLE_606)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (Not!926 (lhs!929 BOUND_VARIABLE_606))))) ))) (ite ((_ is Or!928) BOUND_VARIABLE_606) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!925 BOUND_VARIABLE_606))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (rhs!930 BOUND_VARIABLE_606)))) ))) (ite ((_ is Not!926) BOUND_VARIABLE_606) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!927 BOUND_VARIABLE_606))) )) true)))))) )))
(check-sat)
(exit)

