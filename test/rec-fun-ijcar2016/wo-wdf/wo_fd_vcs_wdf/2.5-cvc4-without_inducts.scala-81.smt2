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


(declare-datatypes ((Lst!2264 0)(Nat!2269 0)) (((cons!2265 (head!2266 Nat!2269) (tail!2267 Lst!2264)) (nil!2268))
((succ!2270 (pred!2271 Nat!2269)) (zero!2272))
))
(declare-fun error_value!2273 () Lst!2264)
(declare-fun butlast!267 (Lst!2264) Lst!2264)
(declare-fun error_value!2274 () Lst!2264)
(declare-fun take!260 (Nat!2269 Lst!2264) Lst!2264)
(declare-fun error_value!2275 () Nat!2269)
(declare-fun minus!240 (Nat!2269 Nat!2269) Nat!2269)
(declare-fun error_value!2276 () Nat!2269)
(declare-fun len!254 (Lst!2264) Nat!2269)
(declare-sort I_butlast!267 0)
(declare-fun butlast!267_arg_0_1 (I_butlast!267) Lst!2264)
(declare-sort I_take!260 0)
(declare-fun take!260_arg_0_2 (I_take!260) Nat!2269)
(declare-fun take!260_arg_1_3 (I_take!260) Lst!2264)
(declare-sort I_minus!240 0)
(declare-fun minus!240_arg_0_4 (I_minus!240) Nat!2269)
(declare-fun minus!240_arg_1_5 (I_minus!240) Nat!2269)
(declare-sort I_len!254 0)
(declare-fun len!254_arg_0_6 (I_len!254) Lst!2264)
(assert (forall ((?i I_butlast!267)) (and (= (butlast!267 (butlast!267_arg_0_1 ?i)) (ite ((_ is nil!2268) (butlast!267_arg_0_1 ?i)) nil!2268 (ite ((_ is cons!2265) (butlast!267_arg_0_1 ?i)) (ite (= (tail!2267 (butlast!267_arg_0_1 ?i)) nil!2268) nil!2268 (cons!2265 (head!2266 (butlast!267_arg_0_1 ?i)) (butlast!267 (tail!2267 (butlast!267_arg_0_1 ?i))))) error_value!2273))) (ite ((_ is nil!2268) (butlast!267_arg_0_1 ?i)) true (ite ((_ is cons!2265) (butlast!267_arg_0_1 ?i)) (ite (= (tail!2267 (butlast!267_arg_0_1 ?i)) nil!2268) true (not (forall ((?z I_butlast!267)) (not (= (butlast!267_arg_0_1 ?z) (tail!2267 (butlast!267_arg_0_1 ?i)))) ))) true))) ))
(assert (forall ((?i I_take!260)) (and (= (take!260 (take!260_arg_0_2 ?i) (take!260_arg_1_3 ?i)) (ite ((_ is nil!2268) (take!260_arg_1_3 ?i)) nil!2268 (ite ((_ is zero!2272) (take!260_arg_0_2 ?i)) nil!2268 (ite (and ((_ is cons!2265) (take!260_arg_1_3 ?i)) ((_ is succ!2270) (take!260_arg_0_2 ?i))) (cons!2265 (head!2266 (take!260_arg_1_3 ?i)) (take!260 (pred!2271 (take!260_arg_0_2 ?i)) (tail!2267 (take!260_arg_1_3 ?i)))) error_value!2274)))) (ite ((_ is nil!2268) (take!260_arg_1_3 ?i)) true (ite ((_ is zero!2272) (take!260_arg_0_2 ?i)) true (ite (and ((_ is cons!2265) (take!260_arg_1_3 ?i)) ((_ is succ!2270) (take!260_arg_0_2 ?i))) (not (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_2 ?z) (pred!2271 (take!260_arg_0_2 ?i))) (= (take!260_arg_1_3 ?z) (tail!2267 (take!260_arg_1_3 ?i))))) )) true)))) ))
(assert (forall ((?i I_minus!240)) (and (= (minus!240 (minus!240_arg_0_4 ?i) (minus!240_arg_1_5 ?i)) (ite ((_ is zero!2272) (minus!240_arg_0_4 ?i)) zero!2272 (ite ((_ is zero!2272) (minus!240_arg_1_5 ?i)) (minus!240_arg_0_4 ?i) (ite (and ((_ is succ!2270) (minus!240_arg_1_5 ?i)) ((_ is succ!2270) (minus!240_arg_0_4 ?i))) (minus!240 (pred!2271 (minus!240_arg_0_4 ?i)) (pred!2271 (minus!240_arg_1_5 ?i))) error_value!2275)))) (ite ((_ is zero!2272) (minus!240_arg_0_4 ?i)) true (ite ((_ is zero!2272) (minus!240_arg_1_5 ?i)) true (ite (and ((_ is succ!2270) (minus!240_arg_1_5 ?i)) ((_ is succ!2270) (minus!240_arg_0_4 ?i))) (not (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_4 ?z) (pred!2271 (minus!240_arg_0_4 ?i))) (= (minus!240_arg_1_5 ?z) (pred!2271 (minus!240_arg_1_5 ?i))))) )) true)))) ))
(assert (forall ((?i I_len!254)) (and (= (len!254 (len!254_arg_0_6 ?i)) (ite ((_ is nil!2268) (len!254_arg_0_6 ?i)) zero!2272 (ite ((_ is cons!2265) (len!254_arg_0_6 ?i)) (succ!2270 (len!254 (tail!2267 (len!254_arg_0_6 ?i)))) error_value!2276))) (ite ((_ is nil!2268) (len!254_arg_0_6 ?i)) true (ite ((_ is cons!2265) (len!254_arg_0_6 ?i)) (not (forall ((?z I_len!254)) (not (= (len!254_arg_0_6 ?z) (tail!2267 (len!254_arg_0_6 ?i)))) )) true))) ))
(assert (exists ((xs!440 Lst!2264)) (not (or (= (butlast!267 xs!440) (take!260 (minus!240 (len!254 xs!440) (succ!2270 zero!2272)) xs!440)) (forall ((?z I_butlast!267)) (not (= (butlast!267_arg_0_1 ?z) xs!440)) ) (forall ((?z I_take!260)) (not (and (= (take!260_arg_0_2 ?z) (minus!240 (len!254 xs!440) (succ!2270 zero!2272))) (= (take!260_arg_1_3 ?z) xs!440))) ) (forall ((?z I_minus!240)) (not (and (= (minus!240_arg_0_4 ?z) (len!254 xs!440)) (= (minus!240_arg_1_5 ?z) (succ!2270 zero!2272)))) ) (forall ((?z I_len!254)) (not (= (len!254_arg_0_6 ?z) xs!440)) ))) ))
(check-sat)
(exit)

