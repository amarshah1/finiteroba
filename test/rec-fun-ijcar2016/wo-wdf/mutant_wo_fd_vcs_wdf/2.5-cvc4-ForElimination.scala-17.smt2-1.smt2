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


(declare-datatypes ((Statement!2096 0)(Expression!2118 0)(List!2157 0)) (((Assign!2097 (varID!2098 (_ BitVec 32)) (expr!2099 Expression!2118)) (Block!2100 (body!2101 List!2157)) (For!2102 (init!2103 Statement!2096) (expr!2104 Expression!2118) (step!2105 Statement!2096) (body!2106 Statement!2096)) (IfThenElse!2107 (expr!2108 Expression!2118) (then!2109 Statement!2096) (elze!2110 Statement!2096)) (Print!2111 (msg!2112 (_ BitVec 32)) (varID!2113 (_ BitVec 32))) (Skip!2114) (While!2115 (expr!2116 Expression!2118) (body!2117 Statement!2096)))
((And!2119 (lhs!2120 Expression!2118) (rhs!2121 Expression!2118)) (Division!2122 (lhs!2123 Expression!2118) (rhs!2124 Expression!2118)) (Equals!2125 (lhs!2126 Expression!2118) (rhs!2127 Expression!2118)) (GreaterThan!2128 (lhs!2129 Expression!2118) (rhs!2130 Expression!2118)) (IntLiteral!2131 (value!2132 (_ BitVec 32))) (LessThan!2133 (lhs!2134 Expression!2118) (rhs!2135 Expression!2118)) (Minus!2136 (lhs!2137 Expression!2118) (rhs!2138 Expression!2118)) (Modulo!2139 (lhs!2140 Expression!2118) (rhs!2141 Expression!2118)) (Neg!2142 (expr!2143 Expression!2118)) (Not!2144 (expr!2145 Expression!2118)) (Or!2146 (lhs!2147 Expression!2118) (rhs!2148 Expression!2118)) (Plus!2149 (lhs!2150 Expression!2118) (rhs!2151 Expression!2118)) (Times!2152 (lhs!2153 Expression!2118) (rhs!2154 Expression!2118)) (Var!2155 (varID!2156 (_ BitVec 32))))
((Cons!2158 (head!2159 Statement!2096) (tail!2160 List!2157)) (Nil!2161))
))
(declare-fun error_value!2162 () Bool)
(declare-fun isWhileFree!221 (Statement!2096) Bool)
(declare-fun isWhileFreeList!219 (List!2157) Bool)
(declare-fun error_value!2163 () List!2157)
(declare-fun eliminateWhileLoops!213 (Statement!2096) Statement!2096)
(declare-fun eliminateWhileLoopsList!211 (List!2157) List!2157)
(declare-sort I_isWhileFree!221 0)
(declare-fun isWhileFree!221_arg_0_1 (I_isWhileFree!221) Statement!2096)
(declare-sort I_isWhileFreeList!219 0)
(declare-fun isWhileFreeList!219_arg_0_2 (I_isWhileFreeList!219) List!2157)
(declare-sort I_eliminateWhileLoops!213 0)
(declare-fun eliminateWhileLoops!213_arg_0_3 (I_eliminateWhileLoops!213) Statement!2096)
(declare-sort I_eliminateWhileLoopsList!211 0)
(declare-fun eliminateWhileLoopsList!211_arg_0_4 (I_eliminateWhileLoopsList!211) List!2157)
(assert (forall ((?i I_isWhileFree!221)) (and (= (isWhileFree!221 (isWhileFree!221_arg_0_1 ?i)) (ite ((_ is Block!2100) (isWhileFree!221_arg_0_1 ?i)) (isWhileFreeList!219 (body!2101 (isWhileFree!221_arg_0_1 ?i))) (ite ((_ is IfThenElse!2107) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (elze!2110 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (then!2109 (isWhileFree!221_arg_0_1 ?i)))) (ite ((_ is While!2115) (isWhileFree!221_arg_0_1 ?i)) false (ite ((_ is For!2102) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (body!2106 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (step!2105 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (init!2103 (isWhileFree!221_arg_0_1 ?i)))) true))))) (ite ((_ is Block!2100) (isWhileFree!221_arg_0_1 ?i)) (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (body!2101 (isWhileFree!221_arg_0_1 ?i)))) )) (ite ((_ is IfThenElse!2107) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (elze!2110 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (then!2109 (isWhileFree!221_arg_0_1 ?i)))) ))) (ite ((_ is While!2115) (isWhileFree!221_arg_0_1 ?i)) true (ite ((_ is For!2102) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (body!2106 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (step!2105 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (init!2103 (isWhileFree!221_arg_0_1 ?i)))) ))) true))))) ))
(assert (forall ((?i I_isWhileFreeList!219)) (and (= (isWhileFreeList!219 (isWhileFreeList!219_arg_0_2 ?i)) (ite ((_ is Nil!2161) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2158) (isWhileFreeList!219_arg_0_2 ?i)) (and (isWhileFreeList!219 (tail!2160 (isWhileFreeList!219_arg_0_2 ?i))) (isWhileFree!221 (head!2159 (isWhileFreeList!219_arg_0_2 ?i)))) error_value!2162))) (ite ((_ is Nil!2161) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2158) (isWhileFreeList!219_arg_0_2 ?i)) (and (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (tail!2160 (isWhileFreeList!219_arg_0_2 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (head!2159 (isWhileFreeList!219_arg_0_2 ?i)))) ))) true))) ))
(assert (forall ((?i I_eliminateWhileLoops!213)) (and (= (eliminateWhileLoops!213 (eliminateWhileLoops!213_arg_0_3 ?i)) (ite ((_ is Block!2100) (eliminateWhileLoops!213_arg_0_3 ?i)) (Block!2100 (eliminateWhileLoopsList!211 (body!2101 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is IfThenElse!2107) (eliminateWhileLoops!213_arg_0_3 ?i)) (IfThenElse!2107 (expr!2108 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (then!2109 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (elze!2110 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is While!2115) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2102 Skip!2114 (expr!2116 (eliminateWhileLoops!213_arg_0_3 ?i)) Skip!2114 (eliminateWhileLoops!213 (body!2117 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is For!2102) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2102 (eliminateWhileLoops!213 (init!2103 (eliminateWhileLoops!213_arg_0_3 ?i))) (expr!2104 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (step!2105 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (body!2106 (eliminateWhileLoops!213_arg_0_3 ?i)))) (eliminateWhileLoops!213_arg_0_3 ?i)))))) (ite ((_ is Block!2100) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (body!2101 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is IfThenElse!2107) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (then!2109 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (elze!2110 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) (ite ((_ is While!2115) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2117 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is For!2102) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (init!2103 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (step!2105 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2106 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) true))))) ))
(assert (forall ((?i I_eliminateWhileLoopsList!211)) (and (= (eliminateWhileLoopsList!211 (eliminateWhileLoopsList!211_arg_0_4 ?i)) (ite ((_ is Nil!2161) (eliminateWhileLoopsList!211_arg_0_4 ?i)) Nil!2161 (ite ((_ is Cons!2158) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (Cons!2158 (eliminateWhileLoops!213 (head!2159 (eliminateWhileLoopsList!211_arg_0_4 ?i))) (eliminateWhileLoopsList!211 (tail!2160 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) error_value!2163))) (ite ((_ is Nil!2161) (eliminateWhileLoopsList!211_arg_0_4 ?i)) true (ite ((_ is Cons!2158) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (head!2159 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (tail!2160 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_586 List!2157)) (or (or (isWhileFree!221 (Block!2100 BOUND_VARIABLE_586)) (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (Block!2100 BOUND_VARIABLE_586))) )) (or (= (eliminateWhileLoops!213 (Block!2100 BOUND_VARIABLE_586)) (Block!2100 BOUND_VARIABLE_586)) (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (Block!2100 BOUND_VARIABLE_586))) ))) )))
(check-sat)
(exit)
