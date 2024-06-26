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


(declare-datatypes ((Lst!2241 0)(Nat!2246 0)) (((cons!2242 (head!2243 Nat!2246) (tail!2244 Lst!2241)) (nil!2245))
((succ!2247 (pred!2248 Nat!2246)) (zero!2249))
))
(declare-fun error_value!2250 () Lst!2241)
(declare-fun butlast!267 (Lst!2241) Lst!2241)
(declare-fun error_value!2251 () Lst!2241)
(declare-fun append!252 (Lst!2241 Lst!2241) Lst!2241)
(declare-fun error_value!2252 () Nat!2246)
(declare-fun last!265 (Lst!2241) Nat!2246)
(declare-sort I_butlast!267 0)
(declare-fun butlast!267_arg_0_1 (I_butlast!267) Lst!2241)
(declare-sort I_append!252 0)
(declare-fun append!252_arg_0_2 (I_append!252) Lst!2241)
(declare-fun append!252_arg_1_3 (I_append!252) Lst!2241)
(declare-sort I_last!265 0)
(declare-fun last!265_arg_0_4 (I_last!265) Lst!2241)
(assert (forall ((?i I_butlast!267)) (and (= (butlast!267 (butlast!267_arg_0_1 ?i)) (ite ((_ is nil!2245) (butlast!267_arg_0_1 ?i)) nil!2245 (ite ((_ is cons!2242) (butlast!267_arg_0_1 ?i)) (ite (= (tail!2244 (butlast!267_arg_0_1 ?i)) nil!2245) nil!2245 (cons!2242 (head!2243 (butlast!267_arg_0_1 ?i)) (butlast!267 (tail!2244 (butlast!267_arg_0_1 ?i))))) error_value!2250))) (ite ((_ is nil!2245) (butlast!267_arg_0_1 ?i)) true (ite ((_ is cons!2242) (butlast!267_arg_0_1 ?i)) (ite (= (tail!2244 (butlast!267_arg_0_1 ?i)) nil!2245) true (not (forall ((?z I_butlast!267)) (not (= (butlast!267_arg_0_1 ?z) (tail!2244 (butlast!267_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_append!252)) (and (= (append!252 (append!252_arg_0_2 ?i) (append!252_arg_1_3 ?i)) (ite ((_ is nil!2245) (append!252_arg_0_2 ?i)) (append!252_arg_1_3 ?i) (ite ((_ is cons!2242) (append!252_arg_0_2 ?i)) (cons!2242 (head!2243 (append!252_arg_0_2 ?i)) (append!252 (tail!2244 (append!252_arg_0_2 ?i)) (append!252_arg_1_3 ?i))) error_value!2251))) (ite ((_ is nil!2245) (append!252_arg_0_2 ?i)) true (ite ((_ is cons!2242) (append!252_arg_0_2 ?i)) (not (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_2 ?z) (tail!2244 (append!252_arg_0_2 ?i))) (= (append!252_arg_1_3 ?z) (append!252_arg_1_3 ?i)))) )) true))) ))
(assert (forall ((?i I_last!265)) (and (= (last!265 (last!265_arg_0_4 ?i)) (ite ((_ is nil!2245) (last!265_arg_0_4 ?i)) zero!2249 (ite ((_ is cons!2242) (last!265_arg_0_4 ?i)) (ite (= (tail!2244 (last!265_arg_0_4 ?i)) nil!2245) (head!2243 (last!265_arg_0_4 ?i)) (last!265 (tail!2244 (last!265_arg_0_4 ?i)))) error_value!2252))) (ite ((_ is nil!2245) (last!265_arg_0_4 ?i)) true (ite ((_ is cons!2242) (last!265_arg_0_4 ?i)) (ite (= (tail!2244 (last!265_arg_0_4 ?i)) nil!2245) true (not (forall ((?z I_last!265)) (not (= (last!265_arg_0_4 ?z) (tail!2244 (last!265_arg_0_4 ?i)))) ))) true))) ))
(assert (not (forall ((xs!435 Lst!2241)) (or (= xs!435 nil!2245) (or (= (butlast!267 (append!252 xs!435 (cons!2242 (last!265 xs!435) nil!2245))) xs!435) (forall ((?z I_butlast!267)) (not (= (butlast!267_arg_0_1 ?z) (append!252 xs!435 (cons!2242 (last!265 xs!435) nil!2245)))) ) (forall ((?z I_append!252)) (not (and (= (append!252_arg_0_2 ?z) xs!435) (= (append!252_arg_1_3 ?z) (cons!2242 (last!265 xs!435) nil!2245)))) ) (forall ((?z I_last!265)) (not (= (last!265_arg_0_4 ?z) xs!435)) ))) )))
(check-sat)
(exit)

