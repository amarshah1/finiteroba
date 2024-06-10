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
(assert (forall ((formula!209 Formula!1006)) (= (eval!210 formula!209) (ite ((_ is And!1007) formula!209) (and (and (eval!210 (lhs!1008 formula!209)) (eval!210 (lhs!1008 formula!209))) (eval!210 (rhs!1009 formula!209))) (ite ((_ is Or!1012) formula!209) (or (or (eval!210 (lhs!1013 formula!209)) (eval!210 (lhs!1013 formula!209))) (eval!210 (rhs!1014 formula!209))) (ite ((_ is Not!1010) formula!209) (not (eval!210 (f!1011 formula!209))) (ite ((_ is Variable!1015) formula!209) (bvsgt (id!1016 formula!209) (_ bv42 32)) error_value!1017))))) ))
(assert (forall ((formula!205 Formula!1006)) (= (nnf!206 formula!205) (ite ((_ is And!1007) formula!205) (And!1007 (nnf!206 (lhs!1008 formula!205)) (nnf!206 (rhs!1009 formula!205))) (ite ((_ is Or!1012) formula!205) (Or!1012 (nnf!206 (lhs!1013 formula!205)) (nnf!206 (rhs!1014 formula!205))) (ite (and (and ((_ is Not!1010) formula!205) ((_ is Not!1010) formula!205)) ((_ is And!1007) (f!1011 formula!205))) (Or!1012 (nnf!206 (Not!1010 (lhs!1008 (f!1011 formula!205)))) (nnf!206 (Not!1010 (rhs!1009 (f!1011 formula!205))))) (ite (and (and ((_ is Not!1010) formula!205) ((_ is Not!1010) formula!205)) ((_ is Or!1012) (f!1011 formula!205))) (And!1007 (nnf!206 (Not!1010 (lhs!1013 (f!1011 formula!205)))) (nnf!206 (Not!1010 (rhs!1014 (f!1011 formula!205))))) (ite (and (and ((_ is Not!1010) formula!205) ((_ is Not!1010) formula!205)) ((_ is Not!1010) (f!1011 formula!205))) (nnf!206 (f!1011 (f!1011 formula!205))) (ite ((_ is Not!1010) formula!205) formula!205 (ite ((_ is Variable!1015) formula!205) formula!205 error_value!1018)))))))) ))
(assert (forall ((f!207 Formula!1006)) (= (isNNF!208 f!207) (ite ((_ is And!1007) f!207) (and (and (isNNF!208 (lhs!1008 f!207)) (isNNF!208 (lhs!1008 f!207))) (isNNF!208 (rhs!1009 f!207))) (ite ((_ is Or!1012) f!207) (and (and (isNNF!208 (lhs!1013 f!207)) (isNNF!208 (lhs!1013 f!207))) (isNNF!208 (rhs!1014 f!207))) (ite ((_ is Not!1010) f!207) false (ite ((_ is Variable!1015) f!207) true error_value!1019))))) ))
(assert (not (forall ((BOUND_VARIABLE_606 Formula!1006)) (or (= (ite ((_ is And!1007) BOUND_VARIABLE_606) (and (eval!210 (rhs!1009 BOUND_VARIABLE_606)) (eval!210 (lhs!1008 BOUND_VARIABLE_606))) (ite ((_ is Or!1012) BOUND_VARIABLE_606) (or (eval!210 (rhs!1014 BOUND_VARIABLE_606)) (eval!210 (lhs!1013 BOUND_VARIABLE_606))) (ite ((_ is Not!1010) BOUND_VARIABLE_606) (not (eval!210 (nnf!206 (Not!1010 BOUND_VARIABLE_606)))) (ite ((_ is Variable!1015) BOUND_VARIABLE_606) (bvslt (_ bv42 32) (id!1016 BOUND_VARIABLE_606)) error_value!1020)))) (not (eval!210 (nnf!206 BOUND_VARIABLE_606)))) (= (not (eval!210 BOUND_VARIABLE_606)) (eval!210 (f!1011 BOUND_VARIABLE_606)))) )))
(check-sat)
(exit)

