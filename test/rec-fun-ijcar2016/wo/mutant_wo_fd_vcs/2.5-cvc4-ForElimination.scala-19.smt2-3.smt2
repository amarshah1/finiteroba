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
(assert (forall ((stat!220 Statement!2232)) (= (isWhileFree!221 stat!220) (ite ((_ is Block!2236) stat!220) (isWhileFreeList!219 (body!2237 stat!220)) (ite ((_ is IfThenElse!2243) stat!220) (and (and (isWhileFree!221 (then!2245 stat!220)) (isWhileFree!221 (then!2245 stat!220))) (isWhileFree!221 (elze!2246 stat!220))) (ite ((_ is While!2251) stat!220) false (ite ((_ is For!2238) stat!220) (and (and (and (isWhileFree!221 (init!2239 stat!220)) (isWhileFree!221 (init!2239 stat!220))) (isWhileFree!221 (step!2241 stat!220))) (isWhileFree!221 (body!2242 stat!220))) true))))) ))
(assert (forall ((l!218 List!2293)) (= (isWhileFreeList!219 l!218) (ite ((_ is Nil!2297) l!218) true (ite ((_ is Cons!2294) l!218) (and (and (isWhileFree!221 (head!2295 l!218)) (isWhileFree!221 (head!2295 l!218))) (isWhileFreeList!219 (tail!2296 l!218))) error_value!2298))) ))
(assert (forall ((stat!212 Statement!2232)) (= (eliminateWhileLoops!213 stat!212) (ite ((_ is Block!2236) stat!212) (Block!2236 (eliminateWhileLoopsList!211 (body!2237 stat!212))) (ite ((_ is IfThenElse!2243) stat!212) (IfThenElse!2243 (expr!2244 stat!212) (eliminateWhileLoops!213 (then!2245 stat!212)) (eliminateWhileLoops!213 (elze!2246 stat!212))) (ite ((_ is While!2251) stat!212) (For!2238 Skip!2250 (expr!2252 stat!212) Skip!2250 (eliminateWhileLoops!213 (body!2253 stat!212))) (ite ((_ is For!2238) stat!212) (For!2238 (eliminateWhileLoops!213 (init!2239 stat!212)) (expr!2240 stat!212) (eliminateWhileLoops!213 (step!2241 stat!212)) (eliminateWhileLoops!213 (body!2242 stat!212))) stat!212))))) ))
(assert (forall ((l!210 List!2293)) (= (eliminateWhileLoopsList!211 l!210) (ite ((_ is Nil!2297) l!210) Nil!2297 (ite ((_ is Cons!2294) l!210) (Cons!2294 (eliminateWhileLoops!213 (head!2295 l!210)) (eliminateWhileLoopsList!211 (tail!2296 l!210))) error_value!2299))) ))
(assert (not (forall ((BOUND_VARIABLE_626 Expression!2254) (BOUND_VARIABLE_627 Statement!2232) (BOUND_VARIABLE_628 Statement!2232)) (or (and (isWhileFree!221 BOUND_VARIABLE_628) (not (= (eliminateWhileLoops!213 BOUND_VARIABLE_628) BOUND_VARIABLE_628))) (not (isWhileFree!221 (IfThenElse!2243 BOUND_VARIABLE_626 BOUND_VARIABLE_627 BOUND_VARIABLE_628))) (= (eliminateWhileLoops!213 (IfThenElse!2243 BOUND_VARIABLE_626 BOUND_VARIABLE_627 BOUND_VARIABLE_628)) (IfThenElse!2243 BOUND_VARIABLE_626 (eliminateWhileLoops!213 BOUND_VARIABLE_627) BOUND_VARIABLE_628))) )))
(check-sat)
(exit)

