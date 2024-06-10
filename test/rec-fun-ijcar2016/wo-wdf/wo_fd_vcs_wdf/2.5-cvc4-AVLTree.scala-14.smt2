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


(declare-datatypes ((Tree!1121 0)) (((Leaf!1122) (Node!1123 (left!1124 Tree!1121) (value!1125 (_ BitVec 32)) (right!1126 Tree!1121) (rank!1127 (_ BitVec 32))))
))
(declare-datatypes ((OptionInt!1128 0)) (((None!1129) (Some!1130 (i!1131 (_ BitVec 32))))
))
(declare-fun error_value!1132 () OptionInt!1128)
(declare-fun error_value!1133 () OptionInt!1128)
(declare-fun error_value!1134 () OptionInt!1128)
(declare-fun error_value!1135 () Bool)
(declare-fun error_value!1136 () OptionInt!1128)
(declare-fun bstMax!240 (Tree!1121) OptionInt!1128)
(declare-fun minOption!210 (OptionInt!1128 OptionInt!1128) OptionInt!1128)
(declare-fun bstMin!242 (Tree!1121) OptionInt!1128)
(declare-fun treeMax!228 (Tree!1121) OptionInt!1128)
(declare-fun maxOption!213 (OptionInt!1128 OptionInt!1128) OptionInt!1128)
(declare-fun smallerOption!207 (OptionInt!1128 OptionInt!1128) Bool)
(declare-fun isBST!232 (Tree!1121) Bool)
(declare-fun treeMin!230 (Tree!1121) OptionInt!1128)
(declare-fun error_value!1137 () OptionInt!1128)
(declare-sort I_bstMax!240 0)
(declare-fun bstMax!240_arg_0_1 (I_bstMax!240) Tree!1121)
(declare-sort I_minOption!210 0)
(declare-fun minOption!210_arg_0_2 (I_minOption!210) OptionInt!1128)
(declare-fun minOption!210_arg_1_3 (I_minOption!210) OptionInt!1128)
(declare-sort I_bstMin!242 0)
(declare-fun bstMin!242_arg_0_4 (I_bstMin!242) Tree!1121)
(declare-sort I_treeMax!228 0)
(declare-fun treeMax!228_arg_0_5 (I_treeMax!228) Tree!1121)
(declare-sort I_maxOption!213 0)
(declare-fun maxOption!213_arg_0_6 (I_maxOption!213) OptionInt!1128)
(declare-fun maxOption!213_arg_1_7 (I_maxOption!213) OptionInt!1128)
(declare-sort I_smallerOption!207 0)
(declare-fun smallerOption!207_arg_0_8 (I_smallerOption!207) OptionInt!1128)
(declare-fun smallerOption!207_arg_1_9 (I_smallerOption!207) OptionInt!1128)
(declare-sort I_isBST!232 0)
(declare-fun isBST!232_arg_0_10 (I_isBST!232) Tree!1121)
(declare-sort I_treeMin!230 0)
(declare-fun treeMin!230_arg_0_11 (I_treeMin!230) Tree!1121)
(assert (forall ((?i I_bstMax!240)) (and (= (bstMax!240 (bstMax!240_arg_0_1 ?i)) (ite ((_ is Leaf!1122) (bstMax!240_arg_0_1 ?i)) None!1129 (ite (and ((_ is Leaf!1122) (right!1126 (bstMax!240_arg_0_1 ?i))) ((_ is Node!1123) (bstMax!240_arg_0_1 ?i))) (Some!1130 (value!1125 (bstMax!240_arg_0_1 ?i))) (ite ((_ is Node!1123) (bstMax!240_arg_0_1 ?i)) (bstMax!240 (right!1126 (bstMax!240_arg_0_1 ?i))) error_value!1132)))) (ite ((_ is Leaf!1122) (bstMax!240_arg_0_1 ?i)) true (ite (and ((_ is Leaf!1122) (right!1126 (bstMax!240_arg_0_1 ?i))) ((_ is Node!1123) (bstMax!240_arg_0_1 ?i))) true (ite ((_ is Node!1123) (bstMax!240_arg_0_1 ?i)) (not (forall ((?z I_bstMax!240)) (not (= (bstMax!240_arg_0_1 ?z) (right!1126 (bstMax!240_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_minOption!210)) (= (minOption!210 (minOption!210_arg_0_2 ?i) (minOption!210_arg_1_3 ?i)) (ite (and ((_ is Some!1130) (minOption!210_arg_1_3 ?i)) ((_ is Some!1130) (minOption!210_arg_0_2 ?i))) (Some!1130 (ite (not (bvslt (i!1131 (minOption!210_arg_1_3 ?i)) (i!1131 (minOption!210_arg_0_2 ?i)))) (i!1131 (minOption!210_arg_0_2 ?i)) (i!1131 (minOption!210_arg_1_3 ?i)))) (ite ((_ is Some!1130) (minOption!210_arg_0_2 ?i)) (minOption!210_arg_0_2 ?i) (ite ((_ is Some!1130) (minOption!210_arg_1_3 ?i)) (minOption!210_arg_1_3 ?i) None!1129)))) ))
(assert (forall ((?i I_bstMin!242)) (and (= (bstMin!242 (bstMin!242_arg_0_4 ?i)) (ite ((_ is Leaf!1122) (bstMin!242_arg_0_4 ?i)) None!1129 (ite (and ((_ is Leaf!1122) (left!1124 (bstMin!242_arg_0_4 ?i))) ((_ is Node!1123) (bstMin!242_arg_0_4 ?i))) (Some!1130 (value!1125 (bstMin!242_arg_0_4 ?i))) (ite ((_ is Node!1123) (bstMin!242_arg_0_4 ?i)) (bstMin!242 (left!1124 (bstMin!242_arg_0_4 ?i))) error_value!1133)))) (ite ((_ is Leaf!1122) (bstMin!242_arg_0_4 ?i)) true (ite (and ((_ is Leaf!1122) (left!1124 (bstMin!242_arg_0_4 ?i))) ((_ is Node!1123) (bstMin!242_arg_0_4 ?i))) true (ite ((_ is Node!1123) (bstMin!242_arg_0_4 ?i)) (not (forall ((?z I_bstMin!242)) (not (= (bstMin!242_arg_0_4 ?z) (left!1124 (bstMin!242_arg_0_4 ?i)))) )) true)))) ))
(assert (forall ((?i I_treeMax!228)) (and (= (treeMax!228 (treeMax!228_arg_0_5 ?i)) (ite ((_ is Leaf!1122) (treeMax!228_arg_0_5 ?i)) None!1129 (ite ((_ is Node!1123) (treeMax!228_arg_0_5 ?i)) (maxOption!213 (Some!1130 (value!1125 (treeMax!228_arg_0_5 ?i))) (maxOption!213 (treeMax!228 (left!1124 (treeMax!228_arg_0_5 ?i))) (treeMax!228 (right!1126 (treeMax!228_arg_0_5 ?i))))) error_value!1134))) (ite ((_ is Leaf!1122) (treeMax!228_arg_0_5 ?i)) true (ite ((_ is Node!1123) (treeMax!228_arg_0_5 ?i)) (and (not (forall ((?z I_maxOption!213)) (not (and (= (maxOption!213_arg_0_6 ?z) (Some!1130 (value!1125 (treeMax!228_arg_0_5 ?i)))) (= (maxOption!213_arg_1_7 ?z) (maxOption!213 (treeMax!228 (left!1124 (treeMax!228_arg_0_5 ?i))) (treeMax!228 (right!1126 (treeMax!228_arg_0_5 ?i))))))) )) (not (forall ((?z I_maxOption!213)) (not (and (= (maxOption!213_arg_0_6 ?z) (treeMax!228 (left!1124 (treeMax!228_arg_0_5 ?i)))) (= (maxOption!213_arg_1_7 ?z) (treeMax!228 (right!1126 (treeMax!228_arg_0_5 ?i)))))) )) (not (forall ((?z I_treeMax!228)) (not (= (treeMax!228_arg_0_5 ?z) (left!1124 (treeMax!228_arg_0_5 ?i)))) )) (not (forall ((?z I_treeMax!228)) (not (= (treeMax!228_arg_0_5 ?z) (right!1126 (treeMax!228_arg_0_5 ?i)))) ))) true))) ))
(assert (forall ((?i I_maxOption!213)) (= (maxOption!213 (maxOption!213_arg_0_6 ?i) (maxOption!213_arg_1_7 ?i)) (ite (and ((_ is Some!1130) (maxOption!213_arg_1_7 ?i)) ((_ is Some!1130) (maxOption!213_arg_0_6 ?i))) (Some!1130 (ite (not (bvslt (i!1131 (maxOption!213_arg_0_6 ?i)) (i!1131 (maxOption!213_arg_1_7 ?i)))) (i!1131 (maxOption!213_arg_0_6 ?i)) (i!1131 (maxOption!213_arg_1_7 ?i)))) (ite ((_ is Some!1130) (maxOption!213_arg_0_6 ?i)) (maxOption!213_arg_0_6 ?i) (ite ((_ is Some!1130) (maxOption!213_arg_1_7 ?i)) (maxOption!213_arg_1_7 ?i) None!1129)))) ))
(assert (forall ((?i I_smallerOption!207)) (= (smallerOption!207 (smallerOption!207_arg_0_8 ?i) (smallerOption!207_arg_1_9 ?i)) (ite (and ((_ is Some!1130) (smallerOption!207_arg_1_9 ?i)) ((_ is Some!1130) (smallerOption!207_arg_0_8 ?i))) (bvslt (i!1131 (smallerOption!207_arg_0_8 ?i)) (i!1131 (smallerOption!207_arg_1_9 ?i))) true)) ))
(assert (forall ((?i I_isBST!232)) (and (= (isBST!232 (isBST!232_arg_0_10 ?i)) (ite ((_ is Leaf!1122) (isBST!232_arg_0_10 ?i)) true (ite ((_ is Node!1123) (isBST!232_arg_0_10 ?i)) (ite (and (isBST!232 (right!1126 (isBST!232_arg_0_10 ?i))) (isBST!232 (left!1124 (isBST!232_arg_0_10 ?i)))) (and (smallerOption!207 (bstMax!240 (left!1124 (isBST!232_arg_0_10 ?i))) (Some!1130 (value!1125 (isBST!232_arg_0_10 ?i)))) (smallerOption!207 (Some!1130 (value!1125 (isBST!232_arg_0_10 ?i))) (bstMin!242 (right!1126 (isBST!232_arg_0_10 ?i))))) false) error_value!1135))) (ite ((_ is Leaf!1122) (isBST!232_arg_0_10 ?i)) true (ite ((_ is Node!1123) (isBST!232_arg_0_10 ?i)) (and (not (forall ((?z I_isBST!232)) (not (= (isBST!232_arg_0_10 ?z) (right!1126 (isBST!232_arg_0_10 ?i)))) )) (not (forall ((?z I_isBST!232)) (not (= (isBST!232_arg_0_10 ?z) (left!1124 (isBST!232_arg_0_10 ?i)))) )) (ite (and (isBST!232 (right!1126 (isBST!232_arg_0_10 ?i))) (isBST!232 (left!1124 (isBST!232_arg_0_10 ?i)))) (and (not (forall ((?z I_smallerOption!207)) (not (and (= (smallerOption!207_arg_0_8 ?z) (bstMax!240 (left!1124 (isBST!232_arg_0_10 ?i)))) (= (smallerOption!207_arg_1_9 ?z) (Some!1130 (value!1125 (isBST!232_arg_0_10 ?i)))))) )) (not (forall ((?z I_bstMax!240)) (not (= (bstMax!240_arg_0_1 ?z) (left!1124 (isBST!232_arg_0_10 ?i)))) )) (not (forall ((?z I_smallerOption!207)) (not (and (= (smallerOption!207_arg_0_8 ?z) (Some!1130 (value!1125 (isBST!232_arg_0_10 ?i)))) (= (smallerOption!207_arg_1_9 ?z) (bstMin!242 (right!1126 (isBST!232_arg_0_10 ?i)))))) )) (not (forall ((?z I_bstMin!242)) (not (= (bstMin!242_arg_0_4 ?z) (right!1126 (isBST!232_arg_0_10 ?i)))) ))) true)) true))) ))
(assert (forall ((?i I_treeMin!230)) (and (= (treeMin!230 (treeMin!230_arg_0_11 ?i)) (ite ((_ is Leaf!1122) (treeMin!230_arg_0_11 ?i)) None!1129 (ite ((_ is Node!1123) (treeMin!230_arg_0_11 ?i)) (minOption!210 (Some!1130 (value!1125 (treeMin!230_arg_0_11 ?i))) (minOption!210 (treeMin!230 (left!1124 (treeMin!230_arg_0_11 ?i))) (treeMin!230 (right!1126 (treeMin!230_arg_0_11 ?i))))) error_value!1136))) (ite ((_ is Leaf!1122) (treeMin!230_arg_0_11 ?i)) true (ite ((_ is Node!1123) (treeMin!230_arg_0_11 ?i)) (and (not (forall ((?z I_minOption!210)) (not (and (= (minOption!210_arg_0_2 ?z) (Some!1130 (value!1125 (treeMin!230_arg_0_11 ?i)))) (= (minOption!210_arg_1_3 ?z) (minOption!210 (treeMin!230 (left!1124 (treeMin!230_arg_0_11 ?i))) (treeMin!230 (right!1126 (treeMin!230_arg_0_11 ?i))))))) )) (not (forall ((?z I_minOption!210)) (not (and (= (minOption!210_arg_0_2 ?z) (treeMin!230 (left!1124 (treeMin!230_arg_0_11 ?i)))) (= (minOption!210_arg_1_3 ?z) (treeMin!230 (right!1126 (treeMin!230_arg_0_11 ?i)))))) )) (not (forall ((?z I_treeMin!230)) (not (= (treeMin!230_arg_0_11 ?z) (left!1124 (treeMin!230_arg_0_11 ?i)))) )) (not (forall ((?z I_treeMin!230)) (not (= (treeMin!230_arg_0_11 ?z) (right!1126 (treeMin!230_arg_0_11 ?i)))) ))) true))) ))
(assert (exists ((t!239 Tree!1121)) (not (=> (and (isBST!232 t!239) (not (forall ((?z I_isBST!232)) (not (= (isBST!232_arg_0_10 ?z) t!239)) ))) (or (= (ite ((_ is Leaf!1122) t!239) None!1129 (ite (and (and ((_ is Node!1123) t!239) ((_ is Node!1123) t!239)) ((_ is Leaf!1122) (right!1126 t!239))) (Some!1130 (value!1125 t!239)) (ite ((_ is Node!1123) t!239) (bstMax!240 (right!1126 t!239)) error_value!1137))) (treeMax!228 t!239)) (not (ite ((_ is Leaf!1122) t!239) true (ite (and (and ((_ is Node!1123) t!239) ((_ is Node!1123) t!239)) ((_ is Leaf!1122) (right!1126 t!239))) true (ite ((_ is Node!1123) t!239) (not (forall ((?z I_bstMax!240)) (not (= (bstMax!240_arg_0_1 ?z) (right!1126 t!239))) )) true)))) (forall ((?z I_treeMax!228)) (not (= (treeMax!228_arg_0_5 ?z) t!239)) )))) ))
(check-sat)
(exit)

