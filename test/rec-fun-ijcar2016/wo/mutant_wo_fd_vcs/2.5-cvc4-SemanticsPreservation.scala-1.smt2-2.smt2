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


(declare-datatypes ((Formula!906 0)) (((And!907 (lhs!908 Formula!906) (rhs!909 Formula!906)) (Not!910 (f!911 Formula!906)) (Or!912 (lhs!913 Formula!906) (rhs!914 Formula!906)) (Variable!915 (id!916 (_ BitVec 32))))
))
(declare-fun error_value!917 () Bool)
(declare-fun isNNF!208 (Formula!906) Bool)
(declare-fun error_value!918 () Formula!906)
(declare-fun nnf!206 (Formula!906) Formula!906)
(declare-fun error_value!919 () Formula!906)
(declare-fun error_value!920 () Formula!906)
(declare-fun error_value!921 () Formula!906)
(assert (forall ((f!207 Formula!906)) (= (isNNF!208 f!207) (ite ((_ is And!907) f!207) (and (and (isNNF!208 (lhs!908 f!207)) (isNNF!208 (lhs!908 f!207))) (isNNF!208 (rhs!909 f!207))) (ite ((_ is Or!912) f!207) (and (and (isNNF!208 (lhs!913 f!207)) (isNNF!208 (lhs!913 f!207))) (isNNF!208 (rhs!914 f!207))) (ite ((_ is Not!910) f!207) false (ite ((_ is Variable!915) f!207) true error_value!917))))) ))
(assert (forall ((formula!205 Formula!906)) (= (nnf!206 formula!205) (ite ((_ is And!907) formula!205) (And!907 (nnf!206 (lhs!908 formula!205)) (nnf!206 (rhs!909 formula!205))) (ite ((_ is Or!912) formula!205) (Or!912 (nnf!206 (lhs!913 formula!205)) (nnf!206 (rhs!914 formula!205))) (ite (and (and ((_ is Not!910) formula!205) ((_ is Not!910) formula!205)) ((_ is And!907) (f!911 formula!205))) (Or!912 (nnf!206 (Not!910 (lhs!908 (f!911 formula!205)))) (nnf!206 (Not!910 (rhs!909 (f!911 formula!205))))) (ite (and (and ((_ is Not!910) formula!205) ((_ is Not!910) formula!205)) ((_ is Or!912) (f!911 formula!205))) (And!907 (nnf!206 (Not!910 (lhs!913 (f!911 formula!205)))) (nnf!206 (Not!910 (rhs!914 (f!911 formula!205))))) (ite (and (and ((_ is Not!910) formula!205) ((_ is Not!910) formula!205)) ((_ is Not!910) (f!911 formula!205))) (nnf!206 (f!911 (f!911 formula!205))) (ite ((_ is Not!910) formula!205) formula!205 (ite ((_ is Variable!915) formula!205) formula!205 error_value!918)))))))) ))
(assert (not (forall ((BOUND_VARIABLE_743 Formula!906) (BOUND_VARIABLE_744 Formula!906)) (or (not (isNNF!208 (ite ((_ is And!907) BOUND_VARIABLE_744) (And!907 (nnf!206 (lhs!908 BOUND_VARIABLE_744)) (nnf!206 (rhs!909 BOUND_VARIABLE_744))) (ite ((_ is Or!912) BOUND_VARIABLE_744) (Or!912 (nnf!206 (lhs!913 BOUND_VARIABLE_744)) (nnf!206 (rhs!914 BOUND_VARIABLE_744))) (ite (and ((_ is And!907) (f!911 BOUND_VARIABLE_744)) ((_ is Not!910) BOUND_VARIABLE_744)) (Or!912 (nnf!206 (Not!910 (lhs!908 (f!911 BOUND_VARIABLE_744)))) (nnf!206 (Not!910 (rhs!909 (f!911 BOUND_VARIABLE_744))))) (rhs!909 BOUND_VARIABLE_743)))))) (not (isNNF!208 (ite ((_ is And!907) BOUND_VARIABLE_743) (And!907 (nnf!206 (lhs!908 BOUND_VARIABLE_743)) (nnf!206 (ite (and ((_ is Or!912) (f!911 BOUND_VARIABLE_744)) ((_ is Not!910) BOUND_VARIABLE_744)) (And!907 (nnf!206 (Not!910 (lhs!913 (f!911 BOUND_VARIABLE_744)))) (nnf!206 (Not!910 (rhs!914 (f!911 BOUND_VARIABLE_744))))) (ite (and ((_ is Not!910) (f!911 BOUND_VARIABLE_744)) ((_ is Not!910) BOUND_VARIABLE_744)) (nnf!206 (f!911 (f!911 BOUND_VARIABLE_744))) (ite ((_ is Not!910) BOUND_VARIABLE_744) BOUND_VARIABLE_744 (ite ((_ is Variable!915) BOUND_VARIABLE_744) BOUND_VARIABLE_744 error_value!920)))))) (ite ((_ is Or!912) BOUND_VARIABLE_743) (Or!912 (nnf!206 (lhs!913 BOUND_VARIABLE_743)) (nnf!206 (rhs!914 BOUND_VARIABLE_743))) (ite (and ((_ is And!907) (f!911 BOUND_VARIABLE_743)) ((_ is Not!910) BOUND_VARIABLE_743)) (Or!912 (nnf!206 (Not!910 (lhs!908 (f!911 BOUND_VARIABLE_743)))) (nnf!206 (Not!910 (rhs!909 (f!911 BOUND_VARIABLE_743))))) (ite (and ((_ is Or!912) (f!911 BOUND_VARIABLE_743)) ((_ is Not!910) BOUND_VARIABLE_743)) (And!907 (nnf!206 (Not!910 (lhs!913 (f!911 BOUND_VARIABLE_743)))) (nnf!206 (Not!910 (rhs!914 (f!911 BOUND_VARIABLE_743))))) (ite (and ((_ is Not!910) (f!911 BOUND_VARIABLE_743)) ((_ is Not!910) BOUND_VARIABLE_743)) (nnf!206 (f!911 (f!911 BOUND_VARIABLE_743))) (ite ((_ is Not!910) BOUND_VARIABLE_743) BOUND_VARIABLE_743 (ite ((_ is Variable!915) BOUND_VARIABLE_743) BOUND_VARIABLE_743 error_value!919))))))))) (isNNF!208 (And!907 (nnf!206 BOUND_VARIABLE_743) (nnf!206 BOUND_VARIABLE_744)))) )))
(check-sat)
(exit)

