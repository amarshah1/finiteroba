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
(assert (forall ((formula!209 Formula!989)) (= (eval!210 formula!209) (ite ((_ is And!990) formula!209) (and (and (eval!210 (lhs!991 formula!209)) (eval!210 (lhs!991 formula!209))) (eval!210 (rhs!992 formula!209))) (ite ((_ is Or!995) formula!209) (or (or (eval!210 (lhs!996 formula!209)) (eval!210 (lhs!996 formula!209))) (eval!210 (rhs!997 formula!209))) (ite ((_ is Not!993) formula!209) (not (eval!210 (f!994 formula!209))) (ite ((_ is Variable!998) formula!209) (bvsgt (id!999 formula!209) (_ bv42 32)) error_value!1000))))) ))
(assert (forall ((formula!205 Formula!989)) (= (nnf!206 formula!205) (ite ((_ is And!990) formula!205) (And!990 (nnf!206 (lhs!991 formula!205)) (nnf!206 (rhs!992 formula!205))) (ite ((_ is Or!995) formula!205) (Or!995 (nnf!206 (lhs!996 formula!205)) (nnf!206 (rhs!997 formula!205))) (ite (and (and ((_ is Not!993) formula!205) ((_ is Not!993) formula!205)) ((_ is And!990) (f!994 formula!205))) (Or!995 (nnf!206 (Not!993 (lhs!991 (f!994 formula!205)))) (nnf!206 (Not!993 (rhs!992 (f!994 formula!205))))) (ite (and (and ((_ is Not!993) formula!205) ((_ is Not!993) formula!205)) ((_ is Or!995) (f!994 formula!205))) (And!990 (nnf!206 (Not!993 (lhs!996 (f!994 formula!205)))) (nnf!206 (Not!993 (rhs!997 (f!994 formula!205))))) (ite (and (and ((_ is Not!993) formula!205) ((_ is Not!993) formula!205)) ((_ is Not!993) (f!994 formula!205))) (nnf!206 (f!994 (f!994 formula!205))) (ite ((_ is Not!993) formula!205) formula!205 (ite ((_ is Variable!998) formula!205) formula!205 error_value!1001)))))))) ))
(assert (forall ((f!207 Formula!989)) (= (isNNF!208 f!207) (ite ((_ is And!990) f!207) (and (and (isNNF!208 (lhs!991 f!207)) (isNNF!208 (lhs!991 f!207))) (isNNF!208 (rhs!992 f!207))) (ite ((_ is Or!995) f!207) (and (and (isNNF!208 (lhs!996 f!207)) (isNNF!208 (lhs!996 f!207))) (isNNF!208 (rhs!997 f!207))) (ite ((_ is Not!993) f!207) false (ite ((_ is Variable!998) f!207) true error_value!1002))))) ))
(assert (not (forall ((BOUND_VARIABLE_682 Formula!989) (BOUND_VARIABLE_683 Formula!989)) (or (= (ite ((_ is And!990) BOUND_VARIABLE_683) (and (eval!210 (rhs!992 BOUND_VARIABLE_683)) (eval!210 (lhs!991 BOUND_VARIABLE_683))) (ite ((_ is Or!995) BOUND_VARIABLE_683) (or (eval!210 (rhs!997 BOUND_VARIABLE_683)) (eval!210 (lhs!996 BOUND_VARIABLE_683))) (ite ((_ is Not!993) BOUND_VARIABLE_683) (not (eval!210 (f!994 BOUND_VARIABLE_683))) (ite ((_ is Variable!998) BOUND_VARIABLE_683) (bvslt (_ bv42 32) (id!999 BOUND_VARIABLE_682)) error_value!1004)))) (not (eval!210 (nnf!206 BOUND_VARIABLE_683)))) (= (ite ((_ is And!990) BOUND_VARIABLE_682) (and (eval!210 (rhs!992 BOUND_VARIABLE_682)) (eval!210 (lhs!991 BOUND_VARIABLE_682))) (ite ((_ is Or!995) BOUND_VARIABLE_682) (or (eval!210 (rhs!997 BOUND_VARIABLE_682)) (eval!210 (lhs!996 BOUND_VARIABLE_682))) (ite ((_ is Not!993) BOUND_VARIABLE_682) (not (eval!210 (f!994 BOUND_VARIABLE_682))) (ite ((_ is Variable!998) BOUND_VARIABLE_682) (bvslt (_ bv42 32) (id!999 BOUND_VARIABLE_683)) error_value!1003)))) (not (eval!210 (nnf!206 BOUND_VARIABLE_682)))) (= (and (eval!210 BOUND_VARIABLE_683) (eval!210 BOUND_VARIABLE_682)) (eval!210 (nnf!206 (And!990 BOUND_VARIABLE_682 BOUND_VARIABLE_683))))) )))
(check-sat)
(exit)

