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


(declare-datatypes ((List!1081 0)) (((Cons!1082 (head!1083 (_ BitVec 32)) (tail!1084 List!1081)) (Nil!1085))
))
(declare-fun error_value!1086 () Int)
(declare-fun size!206 (List!1081) Int)
(declare-fun error_value!1087 () List!1081)
(declare-fun drunk!225 (List!1081) List!1081)
(declare-fun error_value!1088 () List!1081)
(declare-sort I_size!206 0)
(declare-fun size!206_arg_0_1 (I_size!206) List!1081)
(declare-sort I_drunk!225 0)
(declare-fun drunk!225_arg_0_2 (I_drunk!225) List!1081)
(assert (forall ((?i I_size!206)) (and (= (size!206 (size!206_arg_0_1 ?i)) (ite ((_ is Nil!1085) (size!206_arg_0_1 ?i)) 0 (ite ((_ is Cons!1082) (size!206_arg_0_1 ?i)) (+ 1 (size!206 (tail!1084 (size!206_arg_0_1 ?i)))) error_value!1086))) (ite ((_ is Nil!1085) (size!206_arg_0_1 ?i)) true (ite ((_ is Cons!1082) (size!206_arg_0_1 ?i)) (not (forall ((?z I_size!206)) (not (= (size!206_arg_0_1 ?z) (tail!1084 (size!206_arg_0_1 ?i)))) )) true))) ))
(assert (forall ((?i I_drunk!225)) (and (= (drunk!225 (drunk!225_arg_0_2 ?i)) (ite ((_ is Nil!1085) (drunk!225_arg_0_2 ?i)) Nil!1085 (ite ((_ is Cons!1082) (drunk!225_arg_0_2 ?i)) (Cons!1082 (head!1083 (drunk!225_arg_0_2 ?i)) (Cons!1082 (head!1083 (drunk!225_arg_0_2 ?i)) (drunk!225 (tail!1084 (drunk!225_arg_0_2 ?i))))) error_value!1087))) (ite ((_ is Nil!1085) (drunk!225_arg_0_2 ?i)) true (ite ((_ is Cons!1082) (drunk!225_arg_0_2 ?i)) (not (forall ((?z I_drunk!225)) (not (= (drunk!225_arg_0_2 ?z) (tail!1084 (drunk!225_arg_0_2 ?i)))) )) true))) ))
(assert (not (forall ((l!224 List!1081)) (or (= (size!206 l!224) (size!206 (ite ((_ is Nil!1085) l!224) Nil!1085 (ite ((_ is Cons!1082) l!224) (Cons!1082 (head!1083 l!224) (Cons!1082 (head!1083 l!224) (drunk!225 (tail!1084 l!224)))) error_value!1088)))) (forall ((?z I_size!206)) (not (= (size!206_arg_0_1 ?z) l!224)) ) (forall ((?z I_size!206)) (not (= (size!206_arg_0_1 ?z) (ite ((_ is Nil!1085) l!224) Nil!1085 (ite ((_ is Cons!1082) l!224) (Cons!1082 (head!1083 l!224) (Cons!1082 (head!1083 l!224) (drunk!225 (tail!1084 l!224)))) error_value!1088)))) ) (not (ite ((_ is Nil!1085) l!224) true (ite ((_ is Cons!1082) l!224) (not (forall ((?z I_drunk!225)) (not (= (drunk!225_arg_0_2 ?z) (tail!1084 l!224))) )) true)))) )))
(check-sat)
(exit)

