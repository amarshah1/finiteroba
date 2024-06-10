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


(declare-datatypes ((Formula!1304 0)) (((And!1305 (lhs!1306 Formula!1304) (rhs!1307 Formula!1304)) (Implies!1308 (lhs!1309 Formula!1304) (rhs!1310 Formula!1304)) (Literal!1311 (id!1312 (_ BitVec 32))) (Not!1313 (f!1314 Formula!1304)) (Or!1315 (lhs!1316 Formula!1304) (rhs!1317 Formula!1304)))
))
(declare-fun error_value!1318 () Bool)
(declare-fun isNNF!212 (Formula!1304) Bool)
(declare-fun error_value!1319 () Formula!1304)
(declare-fun nnf!210 (Formula!1304) Formula!1304)
(declare-sort I_isNNF!212 0)
(declare-fun isNNF!212_arg_0_1 (I_isNNF!212) Formula!1304)
(declare-sort I_nnf!210 0)
(declare-fun nnf!210_arg_0_2 (I_nnf!210) Formula!1304)
(assert (forall ((?i I_isNNF!212)) (and (= (isNNF!212 (isNNF!212_arg_0_1 ?i)) (ite ((_ is And!1305) (isNNF!212_arg_0_1 ?i)) (and (isNNF!212 (rhs!1307 (isNNF!212_arg_0_1 ?i))) (isNNF!212 (lhs!1306 (isNNF!212_arg_0_1 ?i)))) (ite ((_ is Or!1315) (isNNF!212_arg_0_1 ?i)) (and (isNNF!212 (rhs!1317 (isNNF!212_arg_0_1 ?i))) (isNNF!212 (lhs!1316 (isNNF!212_arg_0_1 ?i)))) (ite ((_ is Implies!1308) (isNNF!212_arg_0_1 ?i)) (and (isNNF!212 (rhs!1310 (isNNF!212_arg_0_1 ?i))) (isNNF!212 (lhs!1309 (isNNF!212_arg_0_1 ?i)))) (ite (and ((_ is Literal!1311) (f!1314 (isNNF!212_arg_0_1 ?i))) ((_ is Not!1313) (isNNF!212_arg_0_1 ?i))) true (ite ((_ is Not!1313) (isNNF!212_arg_0_1 ?i)) false (ite ((_ is Literal!1311) (isNNF!212_arg_0_1 ?i)) true error_value!1318))))))) (ite ((_ is And!1305) (isNNF!212_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (rhs!1307 (isNNF!212_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (lhs!1306 (isNNF!212_arg_0_1 ?i)))) ))) (ite ((_ is Or!1315) (isNNF!212_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (rhs!1317 (isNNF!212_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (lhs!1316 (isNNF!212_arg_0_1 ?i)))) ))) (ite ((_ is Implies!1308) (isNNF!212_arg_0_1 ?i)) (and (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (rhs!1310 (isNNF!212_arg_0_1 ?i)))) )) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (lhs!1309 (isNNF!212_arg_0_1 ?i)))) ))) true)))) ))
(assert (forall ((?i I_nnf!210)) (and (= (nnf!210 (nnf!210_arg_0_2 ?i)) (ite ((_ is And!1305) (nnf!210_arg_0_2 ?i)) (And!1305 (nnf!210 (lhs!1306 (nnf!210_arg_0_2 ?i))) (nnf!210 (rhs!1307 (nnf!210_arg_0_2 ?i)))) (ite ((_ is Or!1315) (nnf!210_arg_0_2 ?i)) (Or!1315 (nnf!210 (lhs!1316 (nnf!210_arg_0_2 ?i))) (nnf!210 (rhs!1317 (nnf!210_arg_0_2 ?i)))) (ite ((_ is Implies!1308) (nnf!210_arg_0_2 ?i)) (Implies!1308 (nnf!210 (lhs!1309 (nnf!210_arg_0_2 ?i))) (nnf!210 (rhs!1310 (nnf!210_arg_0_2 ?i)))) (ite (and ((_ is And!1305) (f!1314 (nnf!210_arg_0_2 ?i))) ((_ is Not!1313) (nnf!210_arg_0_2 ?i))) (Or!1315 (nnf!210 (Not!1313 (lhs!1306 (f!1314 (nnf!210_arg_0_2 ?i))))) (nnf!210 (Not!1313 (rhs!1307 (f!1314 (nnf!210_arg_0_2 ?i)))))) (ite (and ((_ is Or!1315) (f!1314 (nnf!210_arg_0_2 ?i))) ((_ is Not!1313) (nnf!210_arg_0_2 ?i))) (And!1305 (nnf!210 (Not!1313 (lhs!1316 (f!1314 (nnf!210_arg_0_2 ?i))))) (nnf!210 (Not!1313 (rhs!1317 (f!1314 (nnf!210_arg_0_2 ?i)))))) (ite (and ((_ is Implies!1308) (f!1314 (nnf!210_arg_0_2 ?i))) ((_ is Not!1313) (nnf!210_arg_0_2 ?i))) (And!1305 (nnf!210 (lhs!1309 (f!1314 (nnf!210_arg_0_2 ?i)))) (nnf!210 (Not!1313 (rhs!1310 (f!1314 (nnf!210_arg_0_2 ?i)))))) (ite (and ((_ is Not!1313) (f!1314 (nnf!210_arg_0_2 ?i))) ((_ is Not!1313) (nnf!210_arg_0_2 ?i))) (nnf!210 (f!1314 (f!1314 (nnf!210_arg_0_2 ?i)))) (ite (and ((_ is Literal!1311) (f!1314 (nnf!210_arg_0_2 ?i))) ((_ is Not!1313) (nnf!210_arg_0_2 ?i))) (nnf!210_arg_0_2 ?i) (ite ((_ is Literal!1311) (nnf!210_arg_0_2 ?i)) (nnf!210_arg_0_2 ?i) error_value!1319)))))))))) (ite ((_ is And!1305) (nnf!210_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (lhs!1306 (nnf!210_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (rhs!1307 (nnf!210_arg_0_2 ?i)))) ))) (ite ((_ is Or!1315) (nnf!210_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (lhs!1316 (nnf!210_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (rhs!1317 (nnf!210_arg_0_2 ?i)))) ))) (ite ((_ is Implies!1308) (nnf!210_arg_0_2 ?i)) (and (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (lhs!1309 (nnf!210_arg_0_2 ?i)))) )) (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (rhs!1310 (nnf!210_arg_0_2 ?i)))) ))) (ite (and ((_ is And!1305) (f!1314 (nnf!210_arg_0_2 ?i))) ((_ is Not!1313) (nnf!210_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (Not!1313 (lhs!1306 (f!1314 (nnf!210_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (Not!1313 (rhs!1307 (f!1314 (nnf!210_arg_0_2 ?i)))))) ))) (ite (and ((_ is Or!1315) (f!1314 (nnf!210_arg_0_2 ?i))) ((_ is Not!1313) (nnf!210_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (Not!1313 (lhs!1316 (f!1314 (nnf!210_arg_0_2 ?i)))))) )) (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (Not!1313 (rhs!1317 (f!1314 (nnf!210_arg_0_2 ?i)))))) ))) (ite (and ((_ is Implies!1308) (f!1314 (nnf!210_arg_0_2 ?i))) ((_ is Not!1313) (nnf!210_arg_0_2 ?i))) (and (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (lhs!1309 (f!1314 (nnf!210_arg_0_2 ?i))))) )) (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (Not!1313 (rhs!1310 (f!1314 (nnf!210_arg_0_2 ?i)))))) ))) (ite (and ((_ is Not!1313) (f!1314 (nnf!210_arg_0_2 ?i))) ((_ is Not!1313) (nnf!210_arg_0_2 ?i))) (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (f!1314 (f!1314 (nnf!210_arg_0_2 ?i))))) )) true)))))))) ))
(assert (not (forall ((BOUND_VARIABLE_523 Formula!1304) (BOUND_VARIABLE_524 Formula!1304)) (or (and (or (isNNF!212 BOUND_VARIABLE_523) (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) BOUND_VARIABLE_523)) )) (not (and (= (nnf!210 BOUND_VARIABLE_523) BOUND_VARIABLE_523) (not (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) BOUND_VARIABLE_523)) ))))) (not (and (isNNF!212 (Or!1315 BOUND_VARIABLE_523 BOUND_VARIABLE_524)) (not (forall ((?z I_isNNF!212)) (not (= (isNNF!212_arg_0_1 ?z) (Or!1315 BOUND_VARIABLE_523 BOUND_VARIABLE_524))) )))) (or (= (nnf!210 (Or!1315 BOUND_VARIABLE_523 BOUND_VARIABLE_524)) (Or!1315 BOUND_VARIABLE_523 (nnf!210 BOUND_VARIABLE_524))) (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) (Or!1315 BOUND_VARIABLE_523 BOUND_VARIABLE_524))) ) (forall ((?z I_nnf!210)) (not (= (nnf!210_arg_0_2 ?z) BOUND_VARIABLE_524)) ))) )))
(check-sat)
(exit)

