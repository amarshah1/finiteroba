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
(assert (forall ((formula!209 Formula!1065)) (= (eval!210 formula!209) (ite ((_ is And!1066) formula!209) (and (and (eval!210 (lhs!1067 formula!209)) (eval!210 (lhs!1067 formula!209))) (eval!210 (rhs!1068 formula!209))) (ite ((_ is Or!1071) formula!209) (or (or (eval!210 (lhs!1072 formula!209)) (eval!210 (lhs!1072 formula!209))) (eval!210 (rhs!1073 formula!209))) (ite ((_ is Not!1069) formula!209) (not (eval!210 (f!1070 formula!209))) (ite ((_ is Variable!1074) formula!209) (bvsgt (id!1075 formula!209) (_ bv42 32)) error_value!1076))))) ))
(assert (forall ((formula!205 Formula!1065)) (= (nnf!206 formula!205) (ite ((_ is And!1066) formula!205) (And!1066 (nnf!206 (lhs!1067 formula!205)) (nnf!206 (rhs!1068 formula!205))) (ite ((_ is Or!1071) formula!205) (Or!1071 (nnf!206 (lhs!1072 formula!205)) (nnf!206 (rhs!1073 formula!205))) (ite (and (and ((_ is Not!1069) formula!205) ((_ is Not!1069) formula!205)) ((_ is And!1066) (f!1070 formula!205))) (Or!1071 (nnf!206 (Not!1069 (lhs!1067 (f!1070 formula!205)))) (nnf!206 (Not!1069 (rhs!1068 (f!1070 formula!205))))) (ite (and (and ((_ is Not!1069) formula!205) ((_ is Not!1069) formula!205)) ((_ is Or!1071) (f!1070 formula!205))) (And!1066 (nnf!206 (Not!1069 (lhs!1072 (f!1070 formula!205)))) (nnf!206 (Not!1069 (rhs!1073 (f!1070 formula!205))))) (ite (and (and ((_ is Not!1069) formula!205) ((_ is Not!1069) formula!205)) ((_ is Not!1069) (f!1070 formula!205))) (nnf!206 (f!1070 (f!1070 formula!205))) (ite ((_ is Not!1069) formula!205) formula!205 (ite ((_ is Variable!1074) formula!205) formula!205 error_value!1077)))))))) ))
(assert (forall ((f!207 Formula!1065)) (= (isNNF!208 f!207) (ite ((_ is And!1066) f!207) (and (and (isNNF!208 (lhs!1067 f!207)) (isNNF!208 (lhs!1067 f!207))) (isNNF!208 (rhs!1068 f!207))) (ite ((_ is Or!1071) f!207) (and (and (isNNF!208 (lhs!1072 f!207)) (isNNF!208 (lhs!1072 f!207))) (isNNF!208 (rhs!1073 f!207))) (ite ((_ is Not!1069) f!207) false (ite ((_ is Variable!1074) f!207) true error_value!1078))))) ))
(assert (exists ((f!211 Formula!1065)) (not (=> (and (and (and ((_ is And!1066) f!211) ((_ is And!1066) f!211)) (= (eval!210 (lhs!1067 f!211)) (eval!210 (nnf!206 (lhs!1067 f!211))))) (= (eval!210 (rhs!1068 f!211)) (eval!210 (nnf!206 (rhs!1068 f!211))))) (= (eval!210 f!211) (eval!210 (nnf!206 f!211))))) ))
(check-sat)
(exit)

