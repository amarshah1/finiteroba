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


(declare-datatypes ((Statement!2028 0)(Expression!2050 0)(List!2089 0)) (((Assign!2029 (varID!2030 (_ BitVec 32)) (expr!2031 Expression!2050)) (Block!2032 (body!2033 List!2089)) (For!2034 (init!2035 Statement!2028) (expr!2036 Expression!2050) (step!2037 Statement!2028) (body!2038 Statement!2028)) (IfThenElse!2039 (expr!2040 Expression!2050) (then!2041 Statement!2028) (elze!2042 Statement!2028)) (Print!2043 (msg!2044 (_ BitVec 32)) (varID!2045 (_ BitVec 32))) (Skip!2046) (While!2047 (expr!2048 Expression!2050) (body!2049 Statement!2028)))
((And!2051 (lhs!2052 Expression!2050) (rhs!2053 Expression!2050)) (Division!2054 (lhs!2055 Expression!2050) (rhs!2056 Expression!2050)) (Equals!2057 (lhs!2058 Expression!2050) (rhs!2059 Expression!2050)) (GreaterThan!2060 (lhs!2061 Expression!2050) (rhs!2062 Expression!2050)) (IntLiteral!2063 (value!2064 (_ BitVec 32))) (LessThan!2065 (lhs!2066 Expression!2050) (rhs!2067 Expression!2050)) (Minus!2068 (lhs!2069 Expression!2050) (rhs!2070 Expression!2050)) (Modulo!2071 (lhs!2072 Expression!2050) (rhs!2073 Expression!2050)) (Neg!2074 (expr!2075 Expression!2050)) (Not!2076 (expr!2077 Expression!2050)) (Or!2078 (lhs!2079 Expression!2050) (rhs!2080 Expression!2050)) (Plus!2081 (lhs!2082 Expression!2050) (rhs!2083 Expression!2050)) (Times!2084 (lhs!2085 Expression!2050) (rhs!2086 Expression!2050)) (Var!2087 (varID!2088 (_ BitVec 32))))
((Cons!2090 (head!2091 Statement!2028) (tail!2092 List!2089)) (Nil!2093))
))
(declare-fun error_value!2094 () Bool)
(declare-fun isWhileFree!221 (Statement!2028) Bool)
(declare-fun isWhileFreeList!219 (List!2089) Bool)
(declare-fun error_value!2095 () List!2089)
(declare-fun eliminateWhileLoops!213 (Statement!2028) Statement!2028)
(declare-fun eliminateWhileLoopsList!211 (List!2089) List!2089)
(declare-sort I_isWhileFree!221 0)
(declare-fun isWhileFree!221_arg_0_1 (I_isWhileFree!221) Statement!2028)
(declare-sort I_isWhileFreeList!219 0)
(declare-fun isWhileFreeList!219_arg_0_2 (I_isWhileFreeList!219) List!2089)
(declare-sort I_eliminateWhileLoops!213 0)
(declare-fun eliminateWhileLoops!213_arg_0_3 (I_eliminateWhileLoops!213) Statement!2028)
(declare-sort I_eliminateWhileLoopsList!211 0)
(declare-fun eliminateWhileLoopsList!211_arg_0_4 (I_eliminateWhileLoopsList!211) List!2089)
(assert (forall ((?i I_isWhileFree!221)) (and (= (isWhileFree!221 (isWhileFree!221_arg_0_1 ?i)) (ite ((_ is Block!2032) (isWhileFree!221_arg_0_1 ?i)) (isWhileFreeList!219 (body!2033 (isWhileFree!221_arg_0_1 ?i))) (ite ((_ is IfThenElse!2039) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (elze!2042 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (then!2041 (isWhileFree!221_arg_0_1 ?i)))) (ite ((_ is While!2047) (isWhileFree!221_arg_0_1 ?i)) false (ite ((_ is For!2034) (isWhileFree!221_arg_0_1 ?i)) (and (isWhileFree!221 (body!2038 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (step!2037 (isWhileFree!221_arg_0_1 ?i))) (isWhileFree!221 (init!2035 (isWhileFree!221_arg_0_1 ?i)))) true))))) (ite ((_ is Block!2032) (isWhileFree!221_arg_0_1 ?i)) (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (body!2033 (isWhileFree!221_arg_0_1 ?i)))) )) (ite ((_ is IfThenElse!2039) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (elze!2042 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (then!2041 (isWhileFree!221_arg_0_1 ?i)))) ))) (ite ((_ is While!2047) (isWhileFree!221_arg_0_1 ?i)) true (ite ((_ is For!2034) (isWhileFree!221_arg_0_1 ?i)) (and (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (body!2038 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (step!2037 (isWhileFree!221_arg_0_1 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (init!2035 (isWhileFree!221_arg_0_1 ?i)))) ))) true))))) ))
(assert (forall ((?i I_isWhileFreeList!219)) (and (= (isWhileFreeList!219 (isWhileFreeList!219_arg_0_2 ?i)) (ite ((_ is Nil!2093) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2090) (isWhileFreeList!219_arg_0_2 ?i)) (and (isWhileFreeList!219 (tail!2092 (isWhileFreeList!219_arg_0_2 ?i))) (isWhileFree!221 (head!2091 (isWhileFreeList!219_arg_0_2 ?i)))) error_value!2094))) (ite ((_ is Nil!2093) (isWhileFreeList!219_arg_0_2 ?i)) true (ite ((_ is Cons!2090) (isWhileFreeList!219_arg_0_2 ?i)) (and (not (forall ((?z I_isWhileFreeList!219)) (not (= (isWhileFreeList!219_arg_0_2 ?z) (tail!2092 (isWhileFreeList!219_arg_0_2 ?i)))) )) (not (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (head!2091 (isWhileFreeList!219_arg_0_2 ?i)))) ))) true))) ))
(assert (forall ((?i I_eliminateWhileLoops!213)) (and (= (eliminateWhileLoops!213 (eliminateWhileLoops!213_arg_0_3 ?i)) (ite ((_ is Block!2032) (eliminateWhileLoops!213_arg_0_3 ?i)) (Block!2032 (eliminateWhileLoopsList!211 (body!2033 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is IfThenElse!2039) (eliminateWhileLoops!213_arg_0_3 ?i)) (IfThenElse!2039 (expr!2040 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (then!2041 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (elze!2042 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is While!2047) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2034 Skip!2046 (expr!2048 (eliminateWhileLoops!213_arg_0_3 ?i)) Skip!2046 (eliminateWhileLoops!213 (body!2049 (eliminateWhileLoops!213_arg_0_3 ?i)))) (ite ((_ is For!2034) (eliminateWhileLoops!213_arg_0_3 ?i)) (For!2034 (eliminateWhileLoops!213 (init!2035 (eliminateWhileLoops!213_arg_0_3 ?i))) (expr!2036 (eliminateWhileLoops!213_arg_0_3 ?i)) (eliminateWhileLoops!213 (step!2037 (eliminateWhileLoops!213_arg_0_3 ?i))) (eliminateWhileLoops!213 (body!2038 (eliminateWhileLoops!213_arg_0_3 ?i)))) (eliminateWhileLoops!213_arg_0_3 ?i)))))) (ite ((_ is Block!2032) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (body!2033 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is IfThenElse!2039) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (then!2041 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (elze!2042 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) (ite ((_ is While!2047) (eliminateWhileLoops!213_arg_0_3 ?i)) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2049 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (ite ((_ is For!2034) (eliminateWhileLoops!213_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (init!2035 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (step!2037 (eliminateWhileLoops!213_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (body!2038 (eliminateWhileLoops!213_arg_0_3 ?i)))) ))) true))))) ))
(assert (forall ((?i I_eliminateWhileLoopsList!211)) (and (= (eliminateWhileLoopsList!211 (eliminateWhileLoopsList!211_arg_0_4 ?i)) (ite ((_ is Nil!2093) (eliminateWhileLoopsList!211_arg_0_4 ?i)) Nil!2093 (ite ((_ is Cons!2090) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (Cons!2090 (eliminateWhileLoops!213 (head!2091 (eliminateWhileLoopsList!211_arg_0_4 ?i))) (eliminateWhileLoopsList!211 (tail!2092 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) error_value!2095))) (ite ((_ is Nil!2093) (eliminateWhileLoopsList!211_arg_0_4 ?i)) true (ite ((_ is Cons!2090) (eliminateWhileLoopsList!211_arg_0_4 ?i)) (and (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (head!2091 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateWhileLoopsList!211)) (not (= (eliminateWhileLoopsList!211_arg_0_4 ?z) (tail!2092 (eliminateWhileLoopsList!211_arg_0_4 ?i)))) ))) true))) ))
(assert (not (forall ((BOUND_VARIABLE_586 (_ BitVec 32)) (BOUND_VARIABLE_587 Expression!2050)) (or (not (and (= (eliminateWhileLoops!213 (Assign!2029 BOUND_VARIABLE_586 BOUND_VARIABLE_587)) (Assign!2029 BOUND_VARIABLE_586 BOUND_VARIABLE_587)) (not (forall ((?z I_eliminateWhileLoops!213)) (not (= (eliminateWhileLoops!213_arg_0_3 ?z) (Assign!2029 BOUND_VARIABLE_586 BOUND_VARIABLE_587))) )))) (or (isWhileFree!221 (Assign!2029 BOUND_VARIABLE_586 BOUND_VARIABLE_587)) (forall ((?z I_isWhileFree!221)) (not (= (isWhileFree!221_arg_0_1 ?z) (Assign!2029 BOUND_VARIABLE_586 BOUND_VARIABLE_587))) ))) )))
(check-sat)
(exit)

