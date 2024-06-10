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


(declare-datatypes ((Statement!2164 0)(Expression!2186 0)(List!2225 0)) (((Assign!2165 (varID!2166 (_ BitVec 32)) (expr!2167 Expression!2186)) (Block!2168 (body!2169 List!2225)) (For!2170 (init!2171 Statement!2164) (expr!2172 Expression!2186) (step!2173 Statement!2164) (body!2174 Statement!2164)) (IfThenElse!2175 (expr!2176 Expression!2186) (then!2177 Statement!2164) (elze!2178 Statement!2164)) (Print!2179 (msg!2180 (_ BitVec 32)) (varID!2181 (_ BitVec 32))) (Skip!2182) (While!2183 (expr!2184 Expression!2186) (body!2185 Statement!2164)))
((And!2187 (lhs!2188 Expression!2186) (rhs!2189 Expression!2186)) (Division!2190 (lhs!2191 Expression!2186) (rhs!2192 Expression!2186)) (Equals!2193 (lhs!2194 Expression!2186) (rhs!2195 Expression!2186)) (GreaterThan!2196 (lhs!2197 Expression!2186) (rhs!2198 Expression!2186)) (IntLiteral!2199 (value!2200 (_ BitVec 32))) (LessThan!2201 (lhs!2202 Expression!2186) (rhs!2203 Expression!2186)) (Minus!2204 (lhs!2205 Expression!2186) (rhs!2206 Expression!2186)) (Modulo!2207 (lhs!2208 Expression!2186) (rhs!2209 Expression!2186)) (Neg!2210 (expr!2211 Expression!2186)) (Not!2212 (expr!2213 Expression!2186)) (Or!2214 (lhs!2215 Expression!2186) (rhs!2216 Expression!2186)) (Plus!2217 (lhs!2218 Expression!2186) (rhs!2219 Expression!2186)) (Times!2220 (lhs!2221 Expression!2186) (rhs!2222 Expression!2186)) (Var!2223 (varID!2224 (_ BitVec 32))))
((Cons!2226 (head!2227 Statement!2164) (tail!2228 List!2225)) (Nil!2229))
))
(declare-fun error_value!2230 () Bool)
(declare-fun isWhileFree!221 (Statement!2164) Bool)
(declare-fun isWhileFreeList!219 (List!2225) Bool)
(declare-fun error_value!2231 () List!2225)
(declare-fun eliminateWhileLoops!213 (Statement!2164) Statement!2164)
(declare-fun eliminateWhileLoopsList!211 (List!2225) List!2225)
(declare-sort I_isWhileFree!221 0)
(declare-fun isWhileFree!221_arg_0_1 (I_isWhileFree!221) Statement!2164)
(declare-sort I_isWhileFreeList!219 0)
(declare-fun isWhileFreeList!219_arg_0_2 (I_isWhileFreeList!219) List!2225)
(declare-sort I_eliminateWhileLoops!213 0)
(declare-fun eliminateWhileLoops!213_arg_0_3 (I_eliminateWhileLoops!213) Statement!2164)
(declare-sort I_eliminateWhileLoopsList!211 0)
(declare-fun eliminateWhileLoopsList!211_arg_0_4 (I_eliminateWhileLoopsList!211) List!2225)
(assert (forall ((?i I_isWhileFree!221)) (and (= (isWhileFree!221 (isWhileFree!221_arg_0_1 ?i)) (ite ((_ is Block!2168) (isWhileFree!221_arg_0_1 ?i)) (isWhileFreeList!219 (body!2169 (isWhileFree!221_arg_0_1 ?i))) (ite ((_ is IfThenElse!2175) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (elze!2178 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (then!2177 (isWhileFree!221_arg_0_1 ?i)))) (ite ((_ is While!2183) (isWhileFree!221_arg_0_1 ?i)) false (ite ((_ is For!2170) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (body!2174 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (step!2173 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (init!2171 (isWhileFree!221_arg_0_1 ?i)))) true))))) (ite ((_ is Block!2168) (isWhileFree!221_arg_0_1 ?i)) (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (body!2169 (isWhileFree!221_arg_0_1 ?i)))) )) (ite ((_ is IfThenElse!2175) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (elze!2178 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (then!2177 (isWhileFree!221_arg_0_1 ?i)))) ))) (ite ((_ is While!2183) (isWhileFree!221_arg_0_1 ?i)) true (ite ((_ is For!2170) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (body!2174 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (step!2173 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (init!2171 (isWhileFree!221_arg_0_1 ?i)))) ))) true))))) ))
(assert (forall ((?i I_isWhileFreeList!219)) (and (= (isWhileFreeList!219 (isWhileFreeList!219_arg_0_2 ?i)) (ite ((_ is Nil!2229) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2226) (isWhileFreeList!219_arg_0_2 ?i)) (and (isWhileFreeList!219 (tail!2228 (isWhileFreeList!219_arg_0_2 ?i))) (isWhileFree!221 (head!2227 (isWhileFreeList!219_arg_0_2 ?i)))) error_value!2230))) (ite ((_ is Nil!2229) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2226) (isWhileFreeList!219_arg_0_2 ?i)) (and (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (tail!2228 (isWhileFreeList!219_arg_0_2 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (head!2227 (isWhileFreeList!219_arg_0_2 ?i)))) ))) true))) ))
(assert (forall ((?i I_eliminateWhileLoops!213)) (and (= (eliminateWhileLoops!213 (eliminateWhileLoops!213_arg_0_3 ?i)) (ite ((_ is Block!2168) (eliminateWhileLoops!213_arg_0_3 ?i)) (Block!2168 (eliminateWhileLoopsList!211 (body!2169 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is IfThenElse!2175) (eliminateWhileLoops!213_arg_0_3 ?i)) (IfThenElse!2175 (expr!2176 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (then!2177 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (elze!2178 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is While!2183) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2170 Skip!2182 (expr!2184 (eliminateWhileLoops!213_arg_0_3 ?i)) Skip!2182 (eliminateWhileLoops!213 (body!2185 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is For!2170) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2170 (eliminateWhileLoops!213 (init!2171 (eliminateWhileLoops!213_arg_0_3 ?i))) (expr!2172 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (step!2173 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (body!2174 (eliminateWhileLoops!213_arg_0_3 ?i)))) (eliminateWhileLoops!213_arg_0_3 ?i)))))) (ite ((_ is Block!2168) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (body!2169 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is IfThenElse!2175) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (then!2177 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (elze!2178 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) (ite ((_ is While!2183) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2185 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is For!2170) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (init!2171 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (step!2173 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2174 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) true))))) ))
(assert (forall ((?i I_eliminateWhileLoopsList!211)) (and (= (eliminateWhileLoopsList!211 (eliminateWhileLoopsList!211_arg_0_4 ?i)) (ite ((_ is Nil!2229) (eliminateWhileLoopsList!211_arg_0_4 ?i)) Nil!2229 (ite ((_ is Cons!2226) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (Cons!2226 (eliminateWhileLoops!213 (head!2227 (eliminateWhileLoopsList!211_arg_0_4 ?i))) (eliminateWhileLoopsList!211 (tail!2228 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) error_value!2231))) (ite ((_ is Nil!2229) (eliminateWhileLoopsList!211_arg_0_4 ?i)) true (ite ((_ is Cons!2226) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (head!2227 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (tail!2228 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_644 Statement!2164) (BOUND_VARIABLE_645 Expression!2186) (BOUND_VARIABLE_646 Statement!2164) (BOUND_VARIABLE_647 Statement!2164)) (or (and (or (isWhileFree!221 BOUND_VARIABLE_647) (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) BOUND_VARIABLE_647)) )) (not (and (= (eliminateWhileLoops!213 BOUND_VARIABLE_647) BOUND_VARIABLE_647) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) BOUND_VARIABLE_647)) ))))) (and (or (isWhileFree!221 BOUND_VARIABLE_646) (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) BOUND_VARIABLE_646)) )) (not (and (= (eliminateWhileLoops!213 BOUND_VARIABLE_646) BOUND_VARIABLE_646) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) BOUND_VARIABLE_646)) ))))) (not (and (isWhileFree!221 (For!2170 (eliminateWhileLoops!213 BOUND_VARIABLE_644) BOUND_VARIABLE_645 BOUND_VARIABLE_646 BOUND_VARIABLE_647)) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (For!2170 (eliminateWhileLoops!213 BOUND_VARIABLE_644) BOUND_VARIABLE_645 BOUND_VARIABLE_646 BOUND_VARIABLE_647))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) BOUND_VARIABLE_644)) )))) (or (= (eliminateWhileLoops!213 (For!2170 BOUND_VARIABLE_644 BOUND_VARIABLE_645 BOUND_VARIABLE_646 BOUND_VARIABLE_647)) (For!2170 BOUND_VARIABLE_644 BOUND_VARIABLE_645 BOUND_VARIABLE_646 BOUND_VARIABLE_647)) (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (For!2170 BOUND_VARIABLE_644 BOUND_VARIABLE_645 BOUND_VARIABLE_646 BOUND_VARIABLE_647))) ))) )))
(check-sat)
(exit)

