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


(declare-datatypes ((Formula!1189 0)) (((And!1190 (lhs!1191 Formula!1189) (rhs!1192 Formula!1189)) (Implies!1193 (lhs!1194 Formula!1189) (rhs!1195 Formula!1189)) (Literal!1196 (id!1197 (_ BitVec 32))) (Not!1198 (f!1199 Formula!1189)) (Or!1200 (lhs!1201 Formula!1189) (rhs!1202 Formula!1189)))
))
(declare-fun error_value!1203 () Bool)
(declare-fun isNNF!212 (Formula!1189) Bool)
(declare-fun error_value!1204 () Formula!1189)
(declare-fun error_value!1205 () Bool)
(declare-fun simplify!206 (Formula!1189) Formula!1189)
(declare-fun isSimplified!208 (Formula!1189) Bool)
(assert (forall ((f!211 Formula!1189)) (= (isNNF!212 f!211) (ite ((_ is And!1190) f!211) (and (and (isNNF!212 (lhs!1191 f!211)) (isNNF!212 (lhs!1191 f!211))) (isNNF!212 (rhs!1192 f!211))) (ite ((_ is Or!1200) f!211) (and (and (isNNF!212 (lhs!1201 f!211)) (isNNF!212 (lhs!1201 f!211))) (isNNF!212 (rhs!1202 f!211))) (ite ((_ is Implies!1193) f!211) (and (and (isNNF!212 (lhs!1194 f!211)) (isNNF!212 (lhs!1194 f!211))) (isNNF!212 (rhs!1195 f!211))) (ite (and (and ((_ is Not!1198) f!211) ((_ is Not!1198) f!211)) ((_ is Literal!1196) (f!1199 f!211))) true (ite ((_ is Not!1198) f!211) false (ite ((_ is Literal!1196) f!211) true error_value!1203))))))) ))
(assert (forall ((f!205 Formula!1189)) (= (simplify!206 f!205) (ite ((_ is And!1190) f!205) (And!1190 (simplify!206 (lhs!1191 f!205)) (simplify!206 (rhs!1192 f!205))) (ite ((_ is Or!1200) f!205) (Or!1200 (simplify!206 (lhs!1201 f!205)) (simplify!206 (rhs!1202 f!205))) (ite ((_ is Implies!1193) f!205) (Or!1200 (Not!1198 (simplify!206 (lhs!1194 f!205))) (simplify!206 (rhs!1195 f!205))) (ite ((_ is Not!1198) f!205) (Not!1198 (simplify!206 (f!1199 f!205))) (ite ((_ is Literal!1196) f!205) f!205 error_value!1204)))))) ))
(assert (forall ((f!207 Formula!1189)) (= (isSimplified!208 f!207) (ite ((_ is And!1190) f!207) (and (and (isSimplified!208 (lhs!1191 f!207)) (isSimplified!208 (lhs!1191 f!207))) (isSimplified!208 (rhs!1192 f!207))) (ite ((_ is Or!1200) f!207) (and (and (isSimplified!208 (lhs!1201 f!207)) (isSimplified!208 (lhs!1201 f!207))) (isSimplified!208 (rhs!1202 f!207))) (ite ((_ is Implies!1193) f!207) false (ite ((_ is Not!1198) f!207) (isSimplified!208 (f!1199 f!207)) (ite ((_ is Literal!1196) f!207) true error_value!1205)))))) ))
(assert (not (forall ((BOUND_VARIABLE_462 (_ BitVec 32))) (or (isNNF!212 (Literal!1196 BOUND_VARIABLE_462)) (isNNF!212 (simplify!206 (Literal!1196 BOUND_VARIABLE_462)))) )))
(check-sat)
(exit)

