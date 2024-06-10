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
(assert (exists ((formula!205 Formula!922)) (not (=> (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) (and (isNNF!208 (ite ((_ is And!923) (f!927 formula!205)) (And!923 (nnf!206 (lhs!924 (f!927 formula!205))) (nnf!206 (rhs!925 (f!927 formula!205)))) (ite ((_ is Or!928) (f!927 formula!205)) (Or!928 (nnf!206 (lhs!929 (f!927 formula!205))) (nnf!206 (rhs!930 (f!927 formula!205)))) (ite (and (and ((_ is Not!926) (f!927 formula!205)) ((_ is Not!926) (f!927 formula!205))) ((_ is And!923) (f!927 (f!927 formula!205)))) (Or!928 (nnf!206 (Not!926 (lhs!924 (f!927 (f!927 formula!205))))) (nnf!206 (Not!926 (rhs!925 (f!927 (f!927 formula!205)))))) (ite (and (and ((_ is Not!926) (f!927 formula!205)) ((_ is Not!926) (f!927 formula!205))) ((_ is Or!928) (f!927 (f!927 formula!205)))) (And!923 (nnf!206 (Not!926 (lhs!929 (f!927 (f!927 formula!205))))) (nnf!206 (Not!926 (rhs!930 (f!927 (f!927 formula!205)))))) (ite (and (and ((_ is Not!926) (f!927 formula!205)) ((_ is Not!926) (f!927 formula!205))) ((_ is Not!926) (f!927 (f!927 formula!205)))) (nnf!206 (f!927 (f!927 (f!927 formula!205)))) (ite ((_ is Not!926) (f!927 formula!205)) (f!927 formula!205) (ite ((_ is Variable!931) (f!927 formula!205)) (f!927 formula!205) error_value!935)))))))) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (ite ((_ is And!923) (f!927 formula!205)) (And!923 (nnf!206 (lhs!924 (f!927 formula!205))) (nnf!206 (rhs!925 (f!927 formula!205)))) (ite ((_ is Or!928) (f!927 formula!205)) (Or!928 (nnf!206 (lhs!929 (f!927 formula!205))) (nnf!206 (rhs!930 (f!927 formula!205)))) (ite (and (and ((_ is Not!926) (f!927 formula!205)) ((_ is Not!926) (f!927 formula!205))) ((_ is And!923) (f!927 (f!927 formula!205)))) (Or!928 (nnf!206 (Not!926 (lhs!924 (f!927 (f!927 formula!205))))) (nnf!206 (Not!926 (rhs!925 (f!927 (f!927 formula!205)))))) (ite (and (and ((_ is Not!926) (f!927 formula!205)) ((_ is Not!926) (f!927 formula!205))) ((_ is Or!928) (f!927 (f!927 formula!205)))) (And!923 (nnf!206 (Not!926 (lhs!929 (f!927 (f!927 formula!205))))) (nnf!206 (Not!926 (rhs!930 (f!927 (f!927 formula!205)))))) (ite (and (and ((_ is Not!926) (f!927 formula!205)) ((_ is Not!926) (f!927 formula!205))) ((_ is Not!926) (f!927 (f!927 formula!205)))) (nnf!206 (f!927 (f!927 (f!927 formula!205)))) (ite ((_ is Not!926) (f!927 formula!205)) (f!927 formula!205) (ite ((_ is Variable!931) (f!927 formula!205)) (f!927 formula!205) error_value!935))))))))) )) (ite ((_ is And!923) (f!927 formula!205)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!924 (f!927 formula!205)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!925 (f!927 formula!205)))) ))) (ite ((_ is Or!928) (f!927 formula!205)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!929 (f!927 formula!205)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!930 (f!927 formula!205)))) ))) (ite (and (and ((_ is Not!926) (f!927 formula!205)) ((_ is Not!926) (f!927 formula!205))) ((_ is And!923) (f!927 (f!927 formula!205)))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (lhs!924 (f!927 (f!927 formula!205)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (rhs!925 (f!927 (f!927 formula!205)))))) ))) (ite (and (and ((_ is Not!926) (f!927 formula!205)) ((_ is Not!926) (f!927 formula!205))) ((_ is Or!928) (f!927 (f!927 formula!205)))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (lhs!929 (f!927 (f!927 formula!205)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (rhs!930 (f!927 (f!927 formula!205)))))) ))) (ite (and (and ((_ is Not!926) (f!927 formula!205)) ((_ is Not!926) (f!927 formula!205))) ((_ is Not!926) (f!927 (f!927 formula!205)))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!927 (f!927 (f!927 formula!205))))) )) true))))))) (or (isNNF!208 (ite ((_ is And!923) formula!205) (And!923 (nnf!206 (lhs!924 formula!205)) (nnf!206 (rhs!925 formula!205))) (ite ((_ is Or!928) formula!205) (Or!928 (nnf!206 (lhs!929 formula!205)) (nnf!206 (rhs!930 formula!205))) (ite (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) ((_ is And!923) (f!927 formula!205))) (Or!928 (nnf!206 (Not!926 (lhs!924 (f!927 formula!205)))) (nnf!206 (Not!926 (rhs!925 (f!927 formula!205))))) (ite (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) ((_ is Or!928) (f!927 formula!205))) (And!923 (nnf!206 (Not!926 (lhs!929 (f!927 formula!205)))) (nnf!206 (Not!926 (rhs!930 (f!927 formula!205))))) (ite (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) ((_ is Not!926) (f!927 formula!205))) (nnf!206 (f!927 (f!927 formula!205))) (ite ((_ is Not!926) formula!205) formula!205 (ite ((_ is Variable!931) formula!205) formula!205 error_value!936)))))))) (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_1 ?z) (ite ((_ is And!923) formula!205) (And!923 (nnf!206 (lhs!924 formula!205)) (nnf!206 (rhs!925 formula!205))) (ite ((_ is Or!928) formula!205) (Or!928 (nnf!206 (lhs!929 formula!205)) (nnf!206 (rhs!930 formula!205))) (ite (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) ((_ is And!923) (f!927 formula!205))) (Or!928 (nnf!206 (Not!926 (lhs!924 (f!927 formula!205)))) (nnf!206 (Not!926 (rhs!925 (f!927 formula!205))))) (ite (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) ((_ is Or!928) (f!927 formula!205))) (And!923 (nnf!206 (Not!926 (lhs!929 (f!927 formula!205)))) (nnf!206 (Not!926 (rhs!930 (f!927 formula!205))))) (ite (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) ((_ is Not!926) (f!927 formula!205))) (nnf!206 (f!927 (f!927 formula!205))) (ite ((_ is Not!926) formula!205) formula!205 (ite ((_ is Variable!931) formula!205) formula!205 error_value!936))))))))) ) (not (ite ((_ is And!923) formula!205) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!924 formula!205))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!925 formula!205))) ))) (ite ((_ is Or!928) formula!205) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!929 formula!205))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!930 formula!205))) ))) (ite (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) ((_ is And!923) (f!927 formula!205))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (lhs!924 (f!927 formula!205))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (rhs!925 (f!927 formula!205))))) ))) (ite (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) ((_ is Or!928) (f!927 formula!205))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (lhs!929 (f!927 formula!205))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!926 (rhs!930 (f!927 formula!205))))) ))) (ite (and (and ((_ is Not!926) formula!205) ((_ is Not!926) formula!205)) ((_ is Not!926) (f!927 formula!205))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!927 (f!927 formula!205)))) )) true))))))))) ))
(check-sat)
(exit)

