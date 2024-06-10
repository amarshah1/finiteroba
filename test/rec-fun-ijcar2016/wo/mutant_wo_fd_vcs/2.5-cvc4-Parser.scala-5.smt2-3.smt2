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


(declare-datatypes ((Tree!1000 0)) (((DivTree!1001 (left!1002 Tree!1000) (right!1003 Tree!1000)) (IntLitTree!1004 (value!1005 Bool)) (MinusTree!1006 (left!1007 Tree!1000) (right!1008 Tree!1000)) (PlusTree!1009 (left!1010 Tree!1000) (right!1011 Tree!1000)) (TimesTree!1012 (left!1013 Tree!1000) (right!1014 Tree!1000)))
))
(declare-fun error_value!1015 () (_ BitVec 32))
(declare-fun treeSize!212 (Tree!1000) (_ BitVec 32))
(declare-fun error_value!1016 () (_ BitVec 32))
(assert (forall ((t!211 Tree!1000)) (= (treeSize!212 t!211) (ite ((_ is IntLitTree!1004) t!211) (_ bv1 32) (ite ((_ is PlusTree!1009) t!211) (bvadd (bvadd (_ bv1 32) (treeSize!212 (left!1010 t!211))) (treeSize!212 (right!1011 t!211))) (ite ((_ is MinusTree!1006) t!211) (bvadd (bvadd (_ bv1 32) (treeSize!212 (left!1007 t!211))) (treeSize!212 (right!1008 t!211))) (ite ((_ is TimesTree!1012) t!211) (bvadd (bvadd (_ bv1 32) (treeSize!212 (left!1013 t!211))) (treeSize!212 (right!1014 t!211))) (ite ((_ is DivTree!1001) t!211) (bvadd (bvadd (_ bv1 32) (treeSize!212 (left!1002 t!211))) (treeSize!212 (right!1003 t!211))) error_value!1015)))))) ))
(assert (not (forall ((t!211 Tree!1000)) (not (bvslt (ite ((_ is IntLitTree!1004) t!211) (_ bv1 32) (ite ((_ is PlusTree!1009) t!211) (bvadd (treeSize!212 (right!1011 t!211)) (bvadd (treeSize!212 (left!1010 t!211)) (_ bv1 32))) (ite ((_ is MinusTree!1006) t!211) (bvadd (treeSize!212 (right!1008 t!211)) (bvadd (treeSize!212 (left!1007 t!211)) (_ bv1 32))) (ite ((_ is TimesTree!1012) t!211) (bvadd (treeSize!212 (left!1002 t!211)) (bvadd (treeSize!212 (left!1013 t!211)) (_ bv1 32))) (ite ((_ is DivTree!1001) t!211) (bvadd (treeSize!212 (right!1003 t!211)) (bvadd (treeSize!212 (right!1014 t!211)) (_ bv1 32))) error_value!1016))))) (_ bv0 32))) )))
(check-sat)
(exit)

