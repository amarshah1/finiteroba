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


(declare-datatypes ((Statement!2300 0)(Expression!2322 0)(List!2361 0)) (((Assign!2301 (varID!2302 (_ BitVec 32)) (expr!2303 Expression!2322)) (Block!2304 (body!2305 List!2361)) (For!2306 (init!2307 Statement!2300) (expr!2308 Expression!2322) (step!2309 Statement!2300) (body!2310 Statement!2300)) (IfThenElse!2311 (expr!2312 Expression!2322) (then!2313 Statement!2300) (elze!2314 Statement!2300)) (Print!2315 (msg!2316 (_ BitVec 32)) (varID!2317 (_ BitVec 32))) (Skip!2318) (While!2319 (expr!2320 Expression!2322) (body!2321 Statement!2300)))
((And!2323 (lhs!2324 Expression!2322) (rhs!2325 Expression!2322)) (Division!2326 (lhs!2327 Expression!2322) (rhs!2328 Expression!2322)) (Equals!2329 (lhs!2330 Expression!2322) (rhs!2331 Expression!2322)) (GreaterThan!2332 (lhs!2333 Expression!2322) (rhs!2334 Expression!2322)) (IntLiteral!2335 (value!2336 (_ BitVec 32))) (LessThan!2337 (lhs!2338 Expression!2322) (rhs!2339 Expression!2322)) (Minus!2340 (lhs!2341 Expression!2322) (rhs!2342 Expression!2322)) (Modulo!2343 (lhs!2344 Expression!2322) (rhs!2345 Expression!2322)) (Neg!2346 (expr!2347 Expression!2322)) (Not!2348 (expr!2349 Expression!2322)) (Or!2350 (lhs!2351 Expression!2322) (rhs!2352 Expression!2322)) (Plus!2353 (lhs!2354 Expression!2322) (rhs!2355 Expression!2322)) (Times!2356 (lhs!2357 Expression!2322) (rhs!2358 Expression!2322)) (Var!2359 (varID!2360 (_ BitVec 32))))
((Cons!2362 (head!2363 Statement!2300) (tail!2364 List!2361)) (Nil!2365))
))
(declare-fun error_value!2366 () Bool)
(declare-fun isWhileFree!221 (Statement!2300) Bool)
(declare-fun isWhileFreeList!219 (List!2361) Bool)
(declare-fun error_value!2367 () List!2361)
(declare-fun eliminateWhileLoops!213 (Statement!2300) Statement!2300)
(declare-fun eliminateWhileLoopsList!211 (List!2361) List!2361)
(declare-sort I_isWhileFree!221 0)
(declare-fun isWhileFree!221_arg_0_1 (I_isWhileFree!221) Statement!2300)
(declare-sort I_isWhileFreeList!219 0)
(declare-fun isWhileFreeList!219_arg_0_2 (I_isWhileFreeList!219) List!2361)
(declare-sort I_eliminateWhileLoops!213 0)
(declare-fun eliminateWhileLoops!213_arg_0_3 (I_eliminateWhileLoops!213) Statement!2300)
(declare-sort I_eliminateWhileLoopsList!211 0)
(declare-fun eliminateWhileLoopsList!211_arg_0_4 (I_eliminateWhileLoopsList!211) List!2361)
(assert (forall ((?i I_isWhileFree!221)) (and (= (isWhileFree!221 (isWhileFree!221_arg_0_1 ?i)) (ite ((_ is Block!2304) (isWhileFree!221_arg_0_1 ?i)) (isWhileFreeList!219 (body!2305 (isWhileFree!221_arg_0_1 ?i))) (ite ((_ is IfThenElse!2311) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (elze!2314 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (then!2313 (isWhileFree!221_arg_0_1 ?i)))) (ite ((_ is While!2319) (isWhileFree!221_arg_0_1 ?i)) false (ite ((_ is For!2306) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (body!2310 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (step!2309 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (init!2307 (isWhileFree!221_arg_0_1 ?i)))) true))))) (ite ((_ is Block!2304) (isWhileFree!221_arg_0_1 ?i)) (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (body!2305 (isWhileFree!221_arg_0_1 ?i)))) )) (ite ((_ is IfThenElse!2311) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (elze!2314 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (then!2313 (isWhileFree!221_arg_0_1 ?i)))) ))) (ite ((_ is While!2319) (isWhileFree!221_arg_0_1 ?i)) true (ite ((_ is For!2306) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (body!2310 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (step!2309 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (init!2307 (isWhileFree!221_arg_0_1 ?i)))) ))) true))))) ))
(assert (forall ((?i I_isWhileFreeList!219)) (and (= (isWhileFreeList!219 (isWhileFreeList!219_arg_0_2 ?i)) (ite ((_ is Nil!2365) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2362) (isWhileFreeList!219_arg_0_2 ?i)) (and (isWhileFreeList!219 (tail!2364 (isWhileFreeList!219_arg_0_2 ?i))) (isWhileFree!221 (head!2363 (isWhileFreeList!219_arg_0_2 ?i)))) error_value!2366))) (ite ((_ is Nil!2365) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2362) (isWhileFreeList!219_arg_0_2 ?i)) (and (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (tail!2364 (isWhileFreeList!219_arg_0_2 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (head!2363 (isWhileFreeList!219_arg_0_2 ?i)))) ))) true))) ))
(assert (forall ((?i I_eliminateWhileLoops!213)) (and (= (eliminateWhileLoops!213 (eliminateWhileLoops!213_arg_0_3 ?i)) (ite ((_ is Block!2304) (eliminateWhileLoops!213_arg_0_3 ?i)) (Block!2304 (eliminateWhileLoopsList!211 (body!2305 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is IfThenElse!2311) (eliminateWhileLoops!213_arg_0_3 ?i)) (IfThenElse!2311 (expr!2312 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (then!2313 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (elze!2314 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is While!2319) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2306 Skip!2318 (expr!2320 (eliminateWhileLoops!213_arg_0_3 ?i)) Skip!2318 (eliminateWhileLoops!213 (body!2321 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is For!2306) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2306 (eliminateWhileLoops!213 (init!2307 (eliminateWhileLoops!213_arg_0_3 ?i))) (expr!2308 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (step!2309 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (body!2310 (eliminateWhileLoops!213_arg_0_3 ?i)))) (eliminateWhileLoops!213_arg_0_3 ?i)))))) (ite ((_ is Block!2304) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (body!2305 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is IfThenElse!2311) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (then!2313 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (elze!2314 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) (ite ((_ is While!2319) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2321 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is For!2306) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (init!2307 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (step!2309 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2310 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) true))))) ))
(assert (forall ((?i I_eliminateWhileLoopsList!211)) (and (= (eliminateWhileLoopsList!211 (eliminateWhileLoopsList!211_arg_0_4 ?i)) (ite ((_ is Nil!2365) (eliminateWhileLoopsList!211_arg_0_4 ?i)) Nil!2365 (ite ((_ is Cons!2362) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (Cons!2362 (eliminateWhileLoops!213 (head!2363 (eliminateWhileLoopsList!211_arg_0_4 ?i))) (eliminateWhileLoopsList!211 (tail!2364 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) error_value!2367))) (ite ((_ is Nil!2365) (eliminateWhileLoopsList!211_arg_0_4 ?i)) true (ite ((_ is Cons!2362) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (head!2363 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (tail!2364 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) ))) true))) ))
(assert (exists ((stat!228 Statement!2300)) (not (=> (and (and ((_ is Print!2315) stat!228) ((_ is Print!2315) stat!228)) (and (isWhileFree!221 stat!228) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) stat!228)) )))) (or (= (eliminateWhileLoops!213 stat!228) stat!228) (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) stat!228)) )))) ))
(check-sat)
(exit)

