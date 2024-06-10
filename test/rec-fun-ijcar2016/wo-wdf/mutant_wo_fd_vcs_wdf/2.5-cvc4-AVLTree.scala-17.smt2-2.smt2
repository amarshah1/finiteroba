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


(declare-datatypes ((Tree!1170 0)) (((Leaf!1171) (Node!1172 (left!1173 Tree!1170) (value!1174 (_ BitVec 32)) (right!1175 Tree!1170) (rank!1176 (_ BitVec 32))))
))
(declare-datatypes ((OptionInt!1177 0)) (((None!1178) (Some!1179 (i!1180 (_ BitVec 32))))
))
(declare-fun error_value!1181 () OptionInt!1177)
(declare-fun error_value!1182 () OptionInt!1177)
(declare-fun error_value!1183 () OptionInt!1177)
(declare-fun error_value!1184 () Bool)
(declare-fun error_value!1185 () OptionInt!1177)
(declare-fun bstMax!240 (Tree!1170) OptionInt!1177)
(declare-fun minOption!210 (OptionInt!1177 OptionInt!1177) OptionInt!1177)
(declare-fun bstMin!242 (Tree!1170) OptionInt!1177)
(declare-fun treeMax!228 (Tree!1170) OptionInt!1177)
(declare-fun maxOption!213 (OptionInt!1177 OptionInt!1177) OptionInt!1177)
(declare-fun smallerOption!207 (OptionInt!1177 OptionInt!1177) Bool)
(declare-fun isBST!232 (Tree!1170) Bool)
(declare-fun treeMin!230 (Tree!1170) OptionInt!1177)
(declare-fun error_value!1186 () OptionInt!1177)
(declare-sort I_bstMax!240 0)
(declare-fun bstMax!240_arg_0_1 (I_bstMax!240) Tree!1170)
(declare-sort I_minOption!210 0)
(declare-fun minOption!210_arg_0_2 (I_minOption!210) OptionInt!1177)
(declare-fun minOption!210_arg_1_3 (I_minOption!210) OptionInt!1177)
(declare-sort I_bstMin!242 0)
(declare-fun bstMin!242_arg_0_4 (I_bstMin!242) Tree!1170)
(declare-sort I_treeMax!228 0)
(declare-fun treeMax!228_arg_0_5 (I_treeMax!228) Tree!1170)
(declare-sort I_maxOption!213 0)
(declare-fun maxOption!213_arg_0_6 (I_maxOption!213) OptionInt!1177)
(declare-fun maxOption!213_arg_1_7 (I_maxOption!213) OptionInt!1177)
(declare-sort I_smallerOption!207 0)
(declare-fun smallerOption!207_arg_0_8 (I_smallerOption!207) OptionInt!1177)
(declare-fun smallerOption!207_arg_1_9 (I_smallerOption!207) OptionInt!1177)
(declare-sort I_isBST!232 0)
(declare-fun isBST!232_arg_0_10 (I_isBST!232) Tree!1170)
(declare-sort I_treeMin!230 0)
(declare-fun treeMin!230_arg_0_11 (I_treeMin!230) Tree!1170)
(assert (forall ((?i I_bstMax!240)) (and (= (bstMax!240 (bstMax!240_arg_0_1 ?i)) (ite ((_ is Leaf!1171) (bstMax!240_arg_0_1 ?i)) None!1178 (ite (and ((_ is Leaf!1171) (right!1175 (bstMax!240_arg_0_1 ?i))) ((_ is Node!1172) (bstMax!240_arg_0_1 ?i))) (Some!1179 (value!1174 (bstMax!240_arg_0_1 ?i))) (ite ((_ is Node!1172) (bstMax!240_arg_0_1 ?i)) (bstMax!240 (right!1175 (bstMax!240_arg_0_1 ?i))) error_value!1181)))) (ite ((_ is Leaf!1171) (bstMax!240_arg_0_1 ?i)) true (ite (and ((_ is Leaf!1171) (right!1175 (bstMax!240_arg_0_1 ?i))) ((_ is Node!1172) (bstMax!240_arg_0_1 ?i))) true (ite ((_ is Node!1172) (bstMax!240_arg_0_1 ?i)) (not (forall ((?z I_bstMax!240)) (not (= (bstMax!240_arg_0_1 ?z) (right!1175 (bstMax!240_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_minOption!210)) (= (minOption!210 (minOption!210_arg_0_2 ?i) (minOption!210_arg_1_3 ?i)) (ite (and ((_ is Some!1179) (minOption!210_arg_1_3 ?i)) ((_ is Some!1179) (minOption!210_arg_0_2 ?i))) (Some!1179 (ite (not (bvslt (i!1180 (minOption!210_arg_1_3 ?i)) (i!1180 (minOption!210_arg_0_2 ?i)))) (i!1180 (minOption!210_arg_0_2 ?i)) (i!1180 (minOption!210_arg_1_3 ?i)))) (ite ((_ is Some!1179) (minOption!210_arg_0_2 ?i)) (minOption!210_arg_0_2 ?i) (ite ((_ is Some!1179) (minOption!210_arg_1_3 ?i)) (minOption!210_arg_1_3 ?i) None!1178)))) ))
(assert (forall ((?i I_bstMin!242)) (and (= (bstMin!242 (bstMin!242_arg_0_4 ?i)) (ite ((_ is Leaf!1171) (bstMin!242_arg_0_4 ?i)) None!1178 (ite (and ((_ is Leaf!1171) (left!1173 (bstMin!242_arg_0_4 ?i))) ((_ is Node!1172) (bstMin!242_arg_0_4 ?i))) (Some!1179 (value!1174 (bstMin!242_arg_0_4 ?i))) (ite ((_ is Node!1172) (bstMin!242_arg_0_4 ?i)) (bstMin!242 (left!1173 (bstMin!242_arg_0_4 ?i))) error_value!1182)))) (ite ((_ is Leaf!1171) (bstMin!242_arg_0_4 ?i)) true (ite (and ((_ is Leaf!1171) (left!1173 (bstMin!242_arg_0_4 ?i))) ((_ is Node!1172) (bstMin!242_arg_0_4 ?i))) true (ite ((_ is Node!1172) (bstMin!242_arg_0_4 ?i)) (not (forall ((?z I_bstMin!242)) (not (= (bstMin!242_arg_0_4 ?z) (left!1173 (bstMin!242_arg_0_4 ?i)))) )) true)))) ))
(assert (forall ((?i I_treeMax!228)) (and (= (treeMax!228 (treeMax!228_arg_0_5 ?i)) (ite ((_ is Leaf!1171) (treeMax!228_arg_0_5 ?i)) None!1178 (ite ((_ is Node!1172) (treeMax!228_arg_0_5 ?i)) (maxOption!213 (Some!1179 (value!1174 (treeMax!228_arg_0_5 ?i))) (maxOption!213 (treeMax!228 (left!1173 (treeMax!228_arg_0_5 ?i))) (treeMax!228 (right!1175 (treeMax!228_arg_0_5 ?i))))) error_value!1183))) (ite ((_ is Leaf!1171) (treeMax!228_arg_0_5 ?i)) true (ite ((_ is Node!1172) (treeMax!228_arg_0_5 ?i)) (and (not (forall ((?z I_maxOption!213)) (not (and (= (maxOption!213_arg_0_6 ?z) (Some!1179 (value!1174 (treeMax!228_arg_0_5 ?i)))) (= (maxOption!213_arg_1_7 ?z) (maxOption!213 (treeMax!228 (left!1173 (treeMax!228_arg_0_5 ?i))) (treeMax!228 (right!1175 (treeMax!228_arg_0_5 ?i))))))) )) (not (forall ((?z I_maxOption!213)) (not (and (= (maxOption!213_arg_0_6 ?z) (treeMax!228 (left!1173 (treeMax!228_arg_0_5 ?i)))) (= (maxOption!213_arg_1_7 ?z) (treeMax!228 (right!1175 (treeMax!228_arg_0_5 ?i)))))) )) (not (forall ((?z I_treeMax!228)) (not (= (treeMax!228_arg_0_5 ?z) (left!1173 (treeMax!228_arg_0_5 ?i)))) )) (not (forall ((?z I_treeMax!228)) (not (= (treeMax!228_arg_0_5 ?z) (right!1175 (treeMax!228_arg_0_5 ?i)))) ))) true))) ))
(assert (forall ((?i I_maxOption!213)) (= (maxOption!213 (maxOption!213_arg_0_6 ?i) (maxOption!213_arg_1_7 ?i)) (ite (and ((_ is Some!1179) (maxOption!213_arg_1_7 ?i)) ((_ is Some!1179) (maxOption!213_arg_0_6 ?i))) (Some!1179 (ite (not (bvslt (i!1180 (maxOption!213_arg_0_6 ?i)) (i!1180 (maxOption!213_arg_1_7 ?i)))) (i!1180 (maxOption!213_arg_0_6 ?i)) (i!1180 (maxOption!213_arg_1_7 ?i)))) (ite ((_ is Some!1179) (maxOption!213_arg_0_6 ?i)) (maxOption!213_arg_0_6 ?i) (ite ((_ is Some!1179) (maxOption!213_arg_1_7 ?i)) (maxOption!213_arg_1_7 ?i) None!1178)))) ))
(assert (forall ((?i I_smallerOption!207)) (= (smallerOption!207 (smallerOption!207_arg_0_8 ?i) (smallerOption!207_arg_1_9 ?i)) (ite (and ((_ is Some!1179) (smallerOption!207_arg_1_9 ?i)) ((_ is Some!1179) (smallerOption!207_arg_0_8 ?i))) (bvslt (i!1180 (smallerOption!207_arg_0_8 ?i)) (i!1180 (smallerOption!207_arg_1_9 ?i))) true)) ))
(assert (forall ((?i I_isBST!232)) (and (= (isBST!232 (isBST!232_arg_0_10 ?i)) (ite ((_ is Leaf!1171) (isBST!232_arg_0_10 ?i)) true (ite ((_ is Node!1172) (isBST!232_arg_0_10 ?i)) (ite (and (isBST!232 (right!1175 (isBST!232_arg_0_10 ?i))) (isBST!232 (left!1173 (isBST!232_arg_0_10 ?i)))) (and (smallerOption!207 (bstMax!240 (left!1173 (isBST!232_arg_0_10 ?i))) (Some!1179 (value!1174 (isBST!232_arg_0_10 ?i)))) (smallerOption!207 (Some!1179 (value!1174 (isBST!232_arg_0_10 ?i))) (bstMin!242 (right!1175 (isBST!232_arg_0_10 ?i))))) false) error_value!1184))) (ite ((_ is Leaf!1171) (isBST!232_arg_0_10 ?i)) true (ite ((_ is Node!1172) (isBST!232_arg_0_10 ?i)) (and (not (forall ((?z I_isBST!232)) (not (= (isBST!232_arg_0_10 ?z) (right!1175 (isBST!232_arg_0_10 ?i)))) )) (not (forall ((?z I_isBST!232)) (not (= (isBST!232_arg_0_10 ?z) (left!1173 (isBST!232_arg_0_10 ?i)))) )) (ite (and (isBST!232 (right!1175 (isBST!232_arg_0_10 ?i))) (isBST!232 (left!1173 (isBST!232_arg_0_10 ?i)))) (and (not (forall ((?z I_smallerOption!207)) (not (and (= (smallerOption!207_arg_0_8 ?z) (bstMax!240 (left!1173 (isBST!232_arg_0_10 ?i)))) (= (smallerOption!207_arg_1_9 ?z) (Some!1179 (value!1174 (isBST!232_arg_0_10 ?i)))))) )) (not (forall ((?z I_bstMax!240)) (not (= (bstMax!240_arg_0_1 ?z) (left!1173 (isBST!232_arg_0_10 ?i)))) )) (not (forall ((?z I_smallerOption!207)) (not (and (= (smallerOption!207_arg_0_8 ?z) (Some!1179 (value!1174 (isBST!232_arg_0_10 ?i)))) (= (smallerOption!207_arg_1_9 ?z) (bstMin!242 (right!1175 (isBST!232_arg_0_10 ?i)))))) )) (not (forall ((?z I_bstMin!242)) (not (= (bstMin!242_arg_0_4 ?z) (right!1175 (isBST!232_arg_0_10 ?i)))) ))) true)) true))) ))
(assert (forall ((?i I_treeMin!230)) (and (= (treeMin!230 (treeMin!230_arg_0_11 ?i)) (ite ((_ is Leaf!1171) (treeMin!230_arg_0_11 ?i)) None!1178 (ite ((_ is Node!1172) (treeMin!230_arg_0_11 ?i)) (minOption!210 (Some!1179 (value!1174 (treeMin!230_arg_0_11 ?i))) (minOption!210 (treeMin!230 (left!1173 (treeMin!230_arg_0_11 ?i))) (treeMin!230 (right!1175 (treeMin!230_arg_0_11 ?i))))) error_value!1185))) (ite ((_ is Leaf!1171) (treeMin!230_arg_0_11 ?i)) true (ite ((_ is Node!1172) (treeMin!230_arg_0_11 ?i)) (and (not (forall ((?z I_minOption!210)) (not (and (= (minOption!210_arg_0_2 ?z) (Some!1179 (value!1174 (treeMin!230_arg_0_11 ?i)))) (= (minOption!210_arg_1_3 ?z) (minOption!210 (treeMin!230 (left!1173 (treeMin!230_arg_0_11 ?i))) (treeMin!230 (right!1175 (treeMin!230_arg_0_11 ?i))))))) )) (not (forall ((?z I_minOption!210)) (not (and (= (minOption!210_arg_0_2 ?z) (treeMin!230 (left!1173 (treeMin!230_arg_0_11 ?i)))) (= (minOption!210_arg_1_3 ?z) (treeMin!230 (right!1175 (treeMin!230_arg_0_11 ?i)))))) )) (not (forall ((?z I_treeMin!230)) (not (= (treeMin!230_arg_0_11 ?z) (left!1173 (treeMin!230_arg_0_11 ?i)))) )) (not (forall ((?z I_treeMin!230)) (not (= (treeMin!230_arg_0_11 ?z) (right!1175 (treeMin!230_arg_0_11 ?i)))) ))) true))) ))
(assert (not (forall ((t!241 Tree!1170)) (or (not (and (isBST!232 t!241) (not (forall ((?z I_isBST!232)) (not (= (isBST!232_arg_0_10 ?z) t!241)) )))) ((_ is Node!1172) t!241)) )))
(check-sat)
(exit)

