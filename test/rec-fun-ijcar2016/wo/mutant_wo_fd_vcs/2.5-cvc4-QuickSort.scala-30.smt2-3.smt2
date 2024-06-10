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


(declare-datatypes ((List!1252 0)) (((Cons!1253 (head!1254 (_ BitVec 32)) (tail!1255 List!1252)) (Nil!1256))
))
(declare-fun error_value!1257 () Bool)
(declare-fun contains!209 (List!1252 (_ BitVec 32)) Bool)
(declare-fun error_value!1258 () List!1252)
(declare-fun greater!227 ((_ BitVec 32) List!1252) List!1252)
(assert (forall ((l!207 List!1252) (e!208 (_ BitVec 32))) (= (contains!209 l!207 e!208) (ite ((_ is Nil!1256) l!207) false (ite ((_ is Cons!1253) l!207) (or (or (= (head!1254 l!207) e!208) (= (head!1254 l!207) e!208)) (contains!209 (tail!1255 l!207) e!208)) error_value!1257))) ))
(assert (forall ((n!225 (_ BitVec 32)) (list!226 List!1252)) (= (greater!227 n!225 list!226) (ite ((_ is Nil!1256) list!226) Nil!1256 (ite ((_ is Cons!1253) list!226) (ite (bvslt n!225 (head!1254 list!226)) (Cons!1253 (head!1254 list!226) (greater!227 n!225 (tail!1255 list!226))) (greater!227 n!225 (tail!1255 list!226))) error_value!1258))) ))
(assert (not (forall ((e!251 (_ BitVec 32)) (n!250 (_ BitVec 32))) (or (contains!209 (greater!227 e!251 Nil!1256) n!250) (not (bvslt n!250 e!251)) (not (contains!209 Nil!1256 e!251))) )))
(check-sat)
(exit)

