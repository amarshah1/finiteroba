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


(declare-datatypes ((Formula!1240 0)) (((And!1241 (lhs!1242 Formula!1240) (rhs!1243 Formula!1240)) (Implies!1244 (lhs!1245 Formula!1240) (rhs!1246 Formula!1240)) (Literal!1247 (id!1248 (_ BitVec 32))) (Not!1249 (f!1250 Formula!1240)) (Or!1251 (lhs!1252 Formula!1240) (rhs!1253 Formula!1240)))
))
(declare-fun error_value!1254 () Bool)
(declare-fun isNNF!212 (Formula!1240) Bool)
(declare-fun error_value!1255 () Formula!1240)
(declare-fun nnf!210 (Formula!1240) Formula!1240)
(assert (forall ((f!211 Formula!1240)) (= (isNNF!212 f!211) (ite ((_ is And!1241) f!211) (and (and (isNNF!212 (lhs!1242 f!211)) (isNNF!212 (lhs!1242 f!211))) (isNNF!212 (rhs!1243 f!211))) (ite ((_ is Or!1251) f!211) (and (and (isNNF!212 (lhs!1252 f!211)) (isNNF!212 (lhs!1252 f!211))) (isNNF!212 (rhs!1253 f!211))) (ite ((_ is Implies!1244) f!211) (and (and (isNNF!212 (lhs!1245 f!211)) (isNNF!212 (lhs!1245 f!211))) (isNNF!212 (rhs!1246 f!211))) (ite (and (and ((_ is Not!1249) f!211) ((_ is Not!1249) f!211)) ((_ is Literal!1247) (f!1250 f!211))) true (ite ((_ is Not!1249) f!211) false (ite ((_ is Literal!1247) f!211) true error_value!1254))))))) ))
(assert (forall ((formula!209 Formula!1240)) (= (nnf!210 formula!209) (ite ((_ is And!1241) formula!209) (And!1241 (nnf!210 (lhs!1242 formula!209)) (nnf!210 (rhs!1243 formula!209))) (ite ((_ is Or!1251) formula!209) (Or!1251 (nnf!210 (lhs!1252 formula!209)) (nnf!210 (rhs!1253 formula!209))) (ite ((_ is Implies!1244) formula!209) (Implies!1244 (nnf!210 (lhs!1245 formula!209)) (nnf!210 (rhs!1246 formula!209))) (ite (and (and ((_ is Not!1249) formula!209) ((_ is Not!1249) formula!209)) ((_ is And!1241) (f!1250 formula!209))) (Or!1251 (nnf!210 (Not!1249 (lhs!1242 (f!1250 formula!209)))) (nnf!210 (Not!1249 (rhs!1243 (f!1250 formula!209))))) (ite (and (and ((_ is Not!1249) formula!209) ((_ is Not!1249) formula!209)) ((_ is Or!1251) (f!1250 formula!209))) (And!1241 (nnf!210 (Not!1249 (lhs!1252 (f!1250 formula!209)))) (nnf!210 (Not!1249 (rhs!1253 (f!1250 formula!209))))) (ite (and (and ((_ is Not!1249) formula!209) ((_ is Not!1249) formula!209)) ((_ is Implies!1244) (f!1250 formula!209))) (And!1241 (nnf!210 (lhs!1245 (f!1250 formula!209))) (nnf!210 (Not!1249 (rhs!1246 (f!1250 formula!209))))) (ite (and (and ((_ is Not!1249) formula!209) ((_ is Not!1249) formula!209)) ((_ is Not!1249) (f!1250 formula!209))) (nnf!210 (f!1250 (f!1250 formula!209))) (ite (and (and ((_ is Not!1249) formula!209) ((_ is Not!1249) formula!209)) ((_ is Literal!1247) (f!1250 formula!209))) formula!209 (ite ((_ is Literal!1247) formula!209) formula!209 error_value!1255)))))))))) ))
(assert (not (forall ((BOUND_VARIABLE_523 Formula!1240) (BOUND_VARIABLE_524 Formula!1240)) (or (and (= (nnf!210 BOUND_VARIABLE_524) BOUND_VARIABLE_524) (not (isNNF!212 BOUND_VARIABLE_524))) (and (isNNF!212 BOUND_VARIABLE_523) (not (= (nnf!210 BOUND_VARIABLE_523) BOUND_VARIABLE_523))) (not (isNNF!212 (And!1241 BOUND_VARIABLE_523 BOUND_VARIABLE_524))) (= (nnf!210 (And!1241 BOUND_VARIABLE_523 BOUND_VARIABLE_524)) (And!1241 BOUND_VARIABLE_523 BOUND_VARIABLE_524))) )))
(check-sat)
(exit)
