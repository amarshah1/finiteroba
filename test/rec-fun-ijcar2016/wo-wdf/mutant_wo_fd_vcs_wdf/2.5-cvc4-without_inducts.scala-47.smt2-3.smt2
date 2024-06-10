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


(declare-datatypes ((Nat!1928 0)) (((succ!1929 (pred!1930 Nat!1928)) (zero!1931))
))
(declare-datatypes ((Lst!1932 0)) (((cons!1933 (head!1934 Nat!1928) (tail!1935 Lst!1932)) (nil!1936))
))
(declare-fun error_value!1937 () Lst!1932)
(declare-fun drop!257 (Nat!1928 Lst!1932) Lst!1932)
(declare-sort I_drop!257 0)
(declare-fun drop!257_arg_0_1 (I_drop!257) Nat!1928)
(declare-fun drop!257_arg_1_2 (I_drop!257) Lst!1932)
(assert (forall ((?i I_drop!257)) (and (= (drop!257 (drop!257_arg_0_1 ?i) (drop!257_arg_1_2 ?i)) (ite ((_ is nil!1936) (drop!257_arg_1_2 ?i)) nil!1936 (ite ((_ is zero!1931) (drop!257_arg_0_1 ?i)) (drop!257_arg_1_2 ?i) (ite (and ((_ is cons!1933) (drop!257_arg_1_2 ?i)) ((_ is succ!1929) (drop!257_arg_0_1 ?i))) (drop!257 (pred!1930 (drop!257_arg_0_1 ?i)) (tail!1935 (drop!257_arg_1_2 ?i))) error_value!1937)))) (ite ((_ is nil!1936) (drop!257_arg_1_2 ?i)) true (ite ((_ is zero!1931) (drop!257_arg_0_1 ?i)) true (ite (and ((_ is cons!1933) (drop!257_arg_1_2 ?i)) ((_ is succ!1929) (drop!257_arg_0_1 ?i))) (not (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) (pred!1930 (drop!257_arg_0_1 ?i))) (= (drop!257_arg_1_2 ?z) (tail!1935 (drop!257_arg_1_2 ?i))))) )) true)))) ))
(assert (not (forall ((n!340 Nat!1928) (x!341 Nat!1928) (xs!342 Lst!1932)) (or (= (drop!257 (succ!1929 n!340) (drop!257 n!340 xs!342)) (cons!1933 x!341 xs!342)) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) (succ!1929 n!340)) (= (drop!257_arg_1_2 ?z) (drop!257 n!340 xs!342)))) ) (forall ((?z I_drop!257)) (not (and (= (drop!257_arg_0_1 ?z) n!340) (= (drop!257_arg_1_2 ?z) xs!342))) )) )))
(check-sat)
(exit)

