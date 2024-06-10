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
(assert (forall ((t!239 Tree!1170)) (= (bstMax!240 t!239) (ite ((_ is Leaf!1171) t!239) None!1178 (ite (and (and ((_ is Node!1172) t!239) ((_ is Node!1172) t!239)) ((_ is Leaf!1171) (right!1175 t!239))) (Some!1179 (value!1174 t!239)) (ite ((_ is Node!1172) t!239) (bstMax!240 (right!1175 t!239)) error_value!1181)))) ))
(assert (forall ((o1!208 OptionInt!1177) (o2!209 OptionInt!1177)) (= (minOption!210 o1!208 o2!209) (ite (and (and ((_ is Some!1179) o1!208) ((_ is Some!1179) o1!208)) ((_ is Some!1179) o2!209)) (Some!1179 (ite (bvsle (i!1180 o1!208) (i!1180 o2!209)) (i!1180 o1!208) (i!1180 o2!209))) (ite ((_ is Some!1179) o1!208) o1!208 (ite ((_ is Some!1179) o2!209) o2!209 None!1178)))) ))
(assert (forall ((t!241 Tree!1170)) (= (bstMin!242 t!241) (ite ((_ is Leaf!1171) t!241) None!1178 (ite (and (and ((_ is Node!1172) t!241) ((_ is Node!1172) t!241)) ((_ is Leaf!1171) (left!1173 t!241))) (Some!1179 (value!1174 t!241)) (ite ((_ is Node!1172) t!241) (bstMin!242 (left!1173 t!241)) error_value!1182)))) ))
(assert (forall ((t!227 Tree!1170)) (= (treeMax!228 t!227) (ite ((_ is Leaf!1171) t!227) None!1178 (ite ((_ is Node!1172) t!227) (maxOption!213 (Some!1179 (value!1174 t!227)) (maxOption!213 (treeMax!228 (left!1173 t!227)) (treeMax!228 (right!1175 t!227)))) error_value!1183))) ))
(assert (forall ((o1!211 OptionInt!1177) (o2!212 OptionInt!1177)) (= (maxOption!213 o1!211 o2!212) (ite (and (and ((_ is Some!1179) o1!211) ((_ is Some!1179) o1!211)) ((_ is Some!1179) o2!212)) (Some!1179 (ite (bvsge (i!1180 o1!211) (i!1180 o2!212)) (i!1180 o1!211) (i!1180 o2!212))) (ite ((_ is Some!1179) o1!211) o1!211 (ite ((_ is Some!1179) o2!212) o2!212 None!1178)))) ))
(assert (forall ((o1!205 OptionInt!1177) (o2!206 OptionInt!1177)) (= (smallerOption!207 o1!205 o2!206) (ite (and (and ((_ is Some!1179) o1!205) ((_ is Some!1179) o1!205)) ((_ is Some!1179) o2!206)) (bvslt (i!1180 o1!205) (i!1180 o2!206)) true)) ))
(assert (forall ((t!231 Tree!1170)) (= (isBST!232 t!231) (ite ((_ is Leaf!1171) t!231) true (ite ((_ is Node!1172) t!231) (ite (and (and (isBST!232 (left!1173 t!231)) (isBST!232 (left!1173 t!231))) (isBST!232 (right!1175 t!231))) (and (and (smallerOption!207 (Some!1179 (value!1174 t!231)) (bstMin!242 (right!1175 t!231))) (smallerOption!207 (Some!1179 (value!1174 t!231)) (bstMin!242 (right!1175 t!231)))) (smallerOption!207 (bstMax!240 (left!1173 t!231)) (Some!1179 (value!1174 t!231)))) false) error_value!1184))) ))
(assert (forall ((t!229 Tree!1170)) (= (treeMin!230 t!229) (ite ((_ is Leaf!1171) t!229) None!1178 (ite ((_ is Node!1172) t!229) (minOption!210 (Some!1179 (value!1174 t!229)) (minOption!210 (treeMin!230 (left!1173 t!229)) (treeMin!230 (right!1175 t!229)))) error_value!1185))) ))
(assert (not (forall ((t!241 Tree!1170)) (or (not (isBST!232 t!241)) ((_ is Node!1172) t!241)) )))
(check-sat)
(exit)

