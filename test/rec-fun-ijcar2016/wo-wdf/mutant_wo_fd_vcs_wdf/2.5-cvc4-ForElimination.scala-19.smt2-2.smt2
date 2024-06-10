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


(declare-datatypes ((Statement!2232 0)(Expression!2254 0)(List!2293 0)) (((Assign!2233 (varID!2234 (_ BitVec 32)) (expr!2235 Expression!2254)) (Block!2236 (body!2237 List!2293)) (For!2238 (init!2239 Statement!2232) (expr!2240 Expression!2254) (step!2241 Statement!2232) (body!2242 Statement!2232)) (IfThenElse!2243 (expr!2244 Expression!2254) (then!2245 Statement!2232) (elze!2246 Statement!2232)) (Print!2247 (msg!2248 (_ BitVec 32)) (varID!2249 (_ BitVec 32))) (Skip!2250) (While!2251 (expr!2252 Expression!2254) (body!2253 Statement!2232)))
((And!2255 (lhs!2256 Expression!2254) (rhs!2257 Expression!2254)) (Division!2258 (lhs!2259 Expression!2254) (rhs!2260 Expression!2254)) (Equals!2261 (lhs!2262 Expression!2254) (rhs!2263 Expression!2254)) (GreaterThan!2264 (lhs!2265 Expression!2254) (rhs!2266 Expression!2254)) (IntLiteral!2267 (value!2268 (_ BitVec 32))) (LessThan!2269 (lhs!2270 Expression!2254) (rhs!2271 Expression!2254)) (Minus!2272 (lhs!2273 Expression!2254) (rhs!2274 Expression!2254)) (Modulo!2275 (lhs!2276 Expression!2254) (rhs!2277 Expression!2254)) (Neg!2278 (expr!2279 Expression!2254)) (Not!2280 (expr!2281 Expression!2254)) (Or!2282 (lhs!2283 Expression!2254) (rhs!2284 Expression!2254)) (Plus!2285 (lhs!2286 Expression!2254) (rhs!2287 Expression!2254)) (Times!2288 (lhs!2289 Expression!2254) (rhs!2290 Expression!2254)) (Var!2291 (varID!2292 (_ BitVec 32))))
((Cons!2294 (head!2295 Statement!2232) (tail!2296 List!2293)) (Nil!2297))
))
(declare-fun error_value!2298 () Bool)
(declare-fun isWhileFree!221 (Statement!2232) Bool)
(declare-fun isWhileFreeList!219 (List!2293) Bool)
(declare-fun error_value!2299 () List!2293)
(declare-fun eliminateWhileLoops!213 (Statement!2232) Statement!2232)
(declare-fun eliminateWhileLoopsList!211 (List!2293) List!2293)
(declare-sort I_isWhileFree!221 0)
(declare-fun isWhileFree!221_arg_0_1 (I_isWhileFree!221) Statement!2232)
(declare-sort I_isWhileFreeList!219 0)
(declare-fun isWhileFreeList!219_arg_0_2 (I_isWhileFreeList!219) List!2293)
(declare-sort I_eliminateWhileLoops!213 0)
(declare-fun eliminateWhileLoops!213_arg_0_3 (I_eliminateWhileLoops!213) Statement!2232)
(declare-sort I_eliminateWhileLoopsList!211 0)
(declare-fun eliminateWhileLoopsList!211_arg_0_4 (I_eliminateWhileLoopsList!211) List!2293)
(assert (forall ((?i I_isWhileFree!221)) (and (= (isWhileFree!221 (isWhileFree!221_arg_0_1 ?i)) (ite ((_ is Block!2236) (isWhileFree!221_arg_0_1 ?i)) (isWhileFreeList!219 (body!2237 (isWhileFree!221_arg_0_1 ?i))) (ite ((_ is IfThenElse!2243) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (elze!2246 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (then!2245 (isWhileFree!221_arg_0_1 ?i)))) (ite ((_ is While!2251) (isWhileFree!221_arg_0_1 ?i)) false (ite ((_ is For!2238) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (body!2242 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (step!2241 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (init!2239 (isWhileFree!221_arg_0_1 ?i)))) true))))) (ite ((_ is Block!2236) (isWhileFree!221_arg_0_1 ?i)) (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (body!2237 (isWhileFree!221_arg_0_1 ?i)))) )) (ite ((_ is IfThenElse!2243) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (elze!2246 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (then!2245 (isWhileFree!221_arg_0_1 ?i)))) ))) (ite ((_ is While!2251) (isWhileFree!221_arg_0_1 ?i)) true (ite ((_ is For!2238) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (body!2242 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (step!2241 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (init!2239 (isWhileFree!221_arg_0_1 ?i)))) ))) true))))) ))
(assert (forall ((?i I_isWhileFreeList!219)) (and (= (isWhileFreeList!219 (isWhileFreeList!219_arg_0_2 ?i)) (ite ((_ is Nil!2297) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2294) (isWhileFreeList!219_arg_0_2 ?i)) (and (isWhileFreeList!219 (tail!2296 (isWhileFreeList!219_arg_0_2 ?i))) (isWhileFree!221 (head!2295 (isWhileFreeList!219_arg_0_2 ?i)))) error_value!2298))) (ite ((_ is Nil!2297) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2294) (isWhileFreeList!219_arg_0_2 ?i)) (and (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (tail!2296 (isWhileFreeList!219_arg_0_2 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (head!2295 (isWhileFreeList!219_arg_0_2 ?i)))) ))) true))) ))
(assert (forall ((?i I_eliminateWhileLoops!213)) (and (= (eliminateWhileLoops!213 (eliminateWhileLoops!213_arg_0_3 ?i)) (ite ((_ is Block!2236) (eliminateWhileLoops!213_arg_0_3 ?i)) (Block!2236 (eliminateWhileLoopsList!211 (body!2237 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is IfThenElse!2243) (eliminateWhileLoops!213_arg_0_3 ?i)) (IfThenElse!2243 (expr!2244 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (then!2245 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (elze!2246 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is While!2251) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2238 Skip!2250 (expr!2252 (eliminateWhileLoops!213_arg_0_3 ?i)) Skip!2250 (eliminateWhileLoops!213 (body!2253 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is For!2238) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2238 (eliminateWhileLoops!213 (init!2239 (eliminateWhileLoops!213_arg_0_3 ?i))) (expr!2240 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (step!2241 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (body!2242 (eliminateWhileLoops!213_arg_0_3 ?i)))) (eliminateWhileLoops!213_arg_0_3 ?i)))))) (ite ((_ is Block!2236) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (body!2237 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is IfThenElse!2243) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (then!2245 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (elze!2246 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) (ite ((_ is While!2251) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2253 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is For!2238) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (init!2239 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (step!2241 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2242 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) true))))) ))
(assert (forall ((?i I_eliminateWhileLoopsList!211)) (and (= (eliminateWhileLoopsList!211 (eliminateWhileLoopsList!211_arg_0_4 ?i)) (ite ((_ is Nil!2297) (eliminateWhileLoopsList!211_arg_0_4 ?i)) Nil!2297 (ite ((_ is Cons!2294) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (Cons!2294 (eliminateWhileLoops!213 (head!2295 (eliminateWhileLoopsList!211_arg_0_4 ?i))) (eliminateWhileLoopsList!211 (tail!2296 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) error_value!2299))) (ite ((_ is Nil!2297) (eliminateWhileLoopsList!211_arg_0_4 ?i)) true (ite ((_ is Cons!2294) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (head!2295 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (tail!2296 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_626 Expression!2254) (BOUND_VARIABLE_627 Statement!2232) (BOUND_VARIABLE_628 Statement!2232)) (or (and (or (isWhileFree!221 BOUND_VARIABLE_628) (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) BOUND_VARIABLE_628)) )) (not (and (= (eliminateWhileLoops!213 (IfThenElse!2243 BOUND_VARIABLE_626 BOUND_VARIABLE_627 BOUND_VARIABLE_628)) BOUND_VARIABLE_628) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (IfThenElse!2243 BOUND_VARIABLE_626 BOUND_VARIABLE_627 BOUND_VARIABLE_628))) ))))) (and (or (isWhileFree!221 BOUND_VARIABLE_627) (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) BOUND_VARIABLE_627)) )) (not (and (= (eliminateWhileLoops!213 BOUND_VARIABLE_627) BOUND_VARIABLE_627) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) BOUND_VARIABLE_627)) ))))) (not (and (isWhileFree!221 (IfThenElse!2243 BOUND_VARIABLE_626 BOUND_VARIABLE_627 BOUND_VARIABLE_628)) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (IfThenElse!2243 BOUND_VARIABLE_626 BOUND_VARIABLE_627 BOUND_VARIABLE_628))) )))) (or (= (eliminateWhileLoops!213 BOUND_VARIABLE_628) (IfThenElse!2243 BOUND_VARIABLE_626 BOUND_VARIABLE_627 BOUND_VARIABLE_628)) (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) BOUND_VARIABLE_628)) ))) )))
(check-sat)
(exit)

