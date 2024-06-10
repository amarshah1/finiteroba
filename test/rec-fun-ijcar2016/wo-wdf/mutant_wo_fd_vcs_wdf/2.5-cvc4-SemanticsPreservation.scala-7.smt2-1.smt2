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


(declare-datatypes ((Formula!989 0)) (((And!990 (lhs!991 Formula!989) (rhs!992 Formula!989)) (Not!993 (f!994 Formula!989)) (Or!995 (lhs!996 Formula!989) (rhs!997 Formula!989)) (Variable!998 (id!999 (_ BitVec 32))))
))
(declare-fun error_value!1000 () Bool)
(declare-fun error_value!1001 () Formula!989)
(declare-fun error_value!1002 () Bool)
(declare-fun eval!210 (Formula!989) Bool)
(declare-fun nnf!206 (Formula!989) Formula!989)
(declare-fun isNNF!208 (Formula!989) Bool)
(declare-fun error_value!1003 () Bool)
(declare-fun error_value!1004 () Bool)
(declare-fun error_value!1005 () Bool)
(declare-sort I_eval!210 0)
(declare-fun eval!210_arg_0_1 (I_eval!210) Formula!989)
(declare-sort I_nnf!206 0)
(declare-fun nnf!206_arg_0_2 (I_nnf!206) Formula!989)
(declare-sort I_isNNF!208 0)
(declare-fun isNNF!208_arg_0_3 (I_isNNF!208) Formula!989)
(assert (forall ((?i I_eval!210)) (and (= (eval!210 (eval!210_arg_0_1 ?i)) (ite ((_ is And!990) (eval!210_arg_0_1 ?i)) (and (eval!210 (rhs!992 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!991 (eval!210_arg_0_1 ?i)))) (ite ((_ is Or!995) (eval!210_arg_0_1 ?i)) (or (eval!210 (rhs!997 (eval!210_arg_0_1 ?i))) (eval!210 (lhs!996 (eval!210_arg_0_1 ?i)))) (ite ((_ is Not!993) (eval!210_arg_0_1 ?i)) (not (eval!210 (f!994 (eval!210_arg_0_1 ?i)))) (ite ((_ is Variable!998) (eval!210_arg_0_1 ?i)) (bvslt (_ bv42 32) (id!999 (eval!210_arg_0_1 ?i))) error_value!1000))))) (ite ((_ is And!990) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!992 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!991 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Or!995) (eval!210_arg_0_1 ?i)) (and (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!997 (eval!210_arg_0_1 ?i)))) )) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!996 (eval!210_arg_0_1 ?i)))) ))) (ite ((_ is Not!993) (eval!210_arg_0_1 ?i)) (not (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!994 (eval!210_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_nnf!206)) (and (= (nnf!206 (nnf!206_arg_0_2 ?i)) (ite ((_ is And!990) (nnf!206_arg_0_2 ?i)) (And!990 (nnf!206 (lhs!991 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!992 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Or!995) (nnf!206_arg_0_2 ?i)) (Or!995 (nnf!206 (lhs!996 (nnf!206_arg_0_2 ?i))) (nnf!206 (rhs!997 (nnf!206_arg_0_2 ?i)))) (ite (and ((_ is And!990) (f!994 (nnf!206_arg_0_2 ?i))) ((_ is Not!993) (nnf!206_arg_0_2 ?i))) (Or!995 (nnf!206 (Not!993 (lhs!991 (f!994 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!993 (rhs!992 (f!994 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Or!995) (f!994 (nnf!206_arg_0_2 ?i))) ((_ is Not!993) (nnf!206_arg_0_2 ?i))) (And!990 (nnf!206 (Not!993 (lhs!996 (f!994 (nnf!206_arg_0_2 ?i))))) (nnf!206 (Not!993 (rhs!997 (f!994 (nnf!206_arg_0_2 ?i)))))) (ite (and ((_ is Not!993) (f!994 (nnf!206_arg_0_2 ?i))) ((_ is Not!993) (nnf!206_arg_0_2 ?i))) (nnf!206 (f!994 (f!994 (nnf!206_arg_0_2 ?i)))) (ite ((_ is Not!993) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) (ite ((_ is Variable!998) (nnf!206_arg_0_2 ?i)) (nnf!206_arg_0_2 ?i) error_value!1001)))))))) (ite ((_ is And!990) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!991 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!992 (nnf!206_arg_0_2 ?i)))) ))) (ite ((_ is Or!995) (nnf!206_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (lhs!996 (nnf!206_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (rhs!997 (nnf!206_arg_0_2 ?i)))) ))) (ite (and ((_ is And!990) (f!994 (nnf!206_arg_0_2 ?i))) ((_ is Not!993) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!993 (lhs!991 (f!994 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!993 (rhs!992 (f!994 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!995) (f!994 (nnf!206_arg_0_2 ?i))) ((_ is Not!993) (nnf!206_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!993 (lhs!996 (f!994 (nnf!206_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (Not!993 (rhs!997 (f!994 (nnf!206_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!993) (f!994 (nnf!206_arg_0_2 ?i))) ((_ is Not!993) (nnf!206_arg_0_2 ?i))) (not (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (f!994 (f!994 (nnf!206_arg_0_2 ?i))))) )) true)))))) ))
(assert (forall ((?i I_isNNF!208)) (and (= (isNNF!208 (isNNF!208_arg_0_3 ?i)) (ite ((_ is And!990) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!992 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!991 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Or!995) (isNNF!208_arg_0_3 ?i)) (and (isNNF!208 (rhs!997 (isNNF!208_arg_0_3 ?i))) (isNNF!208 (lhs!996 (isNNF!208_arg_0_3 ?i)))) (ite ((_ is Not!993) (isNNF!208_arg_0_3 ?i)) false (ite ((_ is Variable!998) (isNNF!208_arg_0_3 ?i)) true error_value!1002))))) (ite ((_ is And!990) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!992 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!991 (isNNF!208_arg_0_3 ?i)))) ))) (ite ((_ is Or!995) (isNNF!208_arg_0_3 ?i)) (and (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (rhs!997 (isNNF!208_arg_0_3 ?i)))) )) (not (forall ((?z I_isNNF!208)) (not (= (isNNF!208_arg_0_3 ?z) (lhs!996 (isNNF!208_arg_0_3 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_682 Formula!989) (BOUND_VARIABLE_683 Formula!989)) (or (or (= (ite ((_ is And!990) BOUND_VARIABLE_683) (and (eval!210 (rhs!992 BOUND_VARIABLE_683)) (eval!210 (lhs!991 BOUND_VARIABLE_683))) (ite ((_ is Or!995) BOUND_VARIABLE_683) (or (eval!210 (rhs!997 BOUND_VARIABLE_683)) (eval!210 (lhs!996 BOUND_VARIABLE_683))) (ite ((_ is Not!993) BOUND_VARIABLE_683) (not (eval!210 (f!994 BOUND_VARIABLE_683))) (ite ((_ is Variable!998) BOUND_VARIABLE_683) (bvslt (_ bv42 32) (id!999 BOUND_VARIABLE_683)) error_value!1004)))) (not (eval!210 (nnf!206 BOUND_VARIABLE_683)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!992 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!991 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!997 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!996 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!994 BOUND_VARIABLE_683))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 BOUND_VARIABLE_683))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) BOUND_VARIABLE_683)) )) (or (= (ite ((_ is And!990) BOUND_VARIABLE_682) (and (eval!210 (lhs!991 BOUND_VARIABLE_682)) (eval!210 BOUND_VARIABLE_683) (eval!210 BOUND_VARIABLE_682)) (ite ((_ is Or!995) BOUND_VARIABLE_682) (or (eval!210 (rhs!997 BOUND_VARIABLE_682)) (eval!210 (lhs!996 BOUND_VARIABLE_682))) (ite ((_ is Not!993) BOUND_VARIABLE_682) (not (eval!210 (f!994 BOUND_VARIABLE_682))) (ite ((_ is Variable!998) BOUND_VARIABLE_682) (bvslt (_ bv42 32) (id!999 BOUND_VARIABLE_682)) error_value!1003)))) (not (eval!210 (nnf!206 BOUND_VARIABLE_682)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!991 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) BOUND_VARIABLE_683)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) BOUND_VARIABLE_682)) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!997 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (lhs!996 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (f!994 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 BOUND_VARIABLE_682))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) BOUND_VARIABLE_682)) )) (or (= (eval!210 (rhs!992 BOUND_VARIABLE_682)) (eval!210 (nnf!206 (And!990 BOUND_VARIABLE_682 BOUND_VARIABLE_683)))) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (rhs!992 BOUND_VARIABLE_682))) ) (forall ((?z I_eval!210)) (not (= (eval!210_arg_0_1 ?z) (nnf!206 (And!990 BOUND_VARIABLE_682 BOUND_VARIABLE_683)))) ) (forall ((?z I_nnf!206)) (not (= (nnf!206_arg_0_2 ?z) (And!990 BOUND_VARIABLE_682 BOUND_VARIABLE_683))) ))) )))
(check-sat)
(exit)

