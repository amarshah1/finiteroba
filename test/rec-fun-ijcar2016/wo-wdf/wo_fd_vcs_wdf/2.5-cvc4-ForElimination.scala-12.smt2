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


(declare-datatypes ((Statement!1760 0)(Expression!1782 0)(List!1821 0)) (((Assign!1761 (varID!1762 (_ BitVec 32)) (expr!1763 Expression!1782)) (Block!1764 (body!1765 List!1821)) (For!1766 (init!1767 Statement!1760) (expr!1768 Expression!1782) (step!1769 Statement!1760) (body!1770 Statement!1760)) (IfThenElse!1771 (expr!1772 Expression!1782) (then!1773 Statement!1760) (elze!1774 Statement!1760)) (Print!1775 (msg!1776 (_ BitVec 32)) (varID!1777 (_ BitVec 32))) (Skip!1778) (While!1779 (expr!1780 Expression!1782) (body!1781 Statement!1760)))
((And!1783 (lhs!1784 Expression!1782) (rhs!1785 Expression!1782)) (Division!1786 (lhs!1787 Expression!1782) (rhs!1788 Expression!1782)) (Equals!1789 (lhs!1790 Expression!1782) (rhs!1791 Expression!1782)) (GreaterThan!1792 (lhs!1793 Expression!1782) (rhs!1794 Expression!1782)) (IntLiteral!1795 (value!1796 (_ BitVec 32))) (LessThan!1797 (lhs!1798 Expression!1782) (rhs!1799 Expression!1782)) (Minus!1800 (lhs!1801 Expression!1782) (rhs!1802 Expression!1782)) (Modulo!1803 (lhs!1804 Expression!1782) (rhs!1805 Expression!1782)) (Neg!1806 (expr!1807 Expression!1782)) (Not!1808 (expr!1809 Expression!1782)) (Or!1810 (lhs!1811 Expression!1782) (rhs!1812 Expression!1782)) (Plus!1813 (lhs!1814 Expression!1782) (rhs!1815 Expression!1782)) (Times!1816 (lhs!1817 Expression!1782) (rhs!1818 Expression!1782)) (Var!1819 (varID!1820 (_ BitVec 32))))
((Cons!1822 (head!1823 Statement!1760) (tail!1824 List!1821)) (Nil!1825))
))
(declare-fun error_value!1826 () Bool)
(declare-fun isForFree!225 (Statement!1760) Bool)
(declare-fun isForFreeList!223 (List!1821) Bool)
(declare-fun error_value!1827 () List!1821)
(declare-fun eliminateForLoopsList!215 (List!1821) List!1821)
(declare-fun eliminateForLoops!217 (Statement!1760) Statement!1760)
(declare-sort I_isForFree!225 0)
(declare-fun isForFree!225_arg_0_1 (I_isForFree!225) Statement!1760)
(declare-sort I_isForFreeList!223 0)
(declare-fun isForFreeList!223_arg_0_2 (I_isForFreeList!223) List!1821)
(declare-sort I_eliminateForLoopsList!215 0)
(declare-fun eliminateForLoopsList!215_arg_0_3 (I_eliminateForLoopsList!215) List!1821)
(declare-sort I_eliminateForLoops!217 0)
(declare-fun eliminateForLoops!217_arg_0_4 (I_eliminateForLoops!217) Statement!1760)
(assert (forall ((?i I_isForFree!225)) (and (= (isForFree!225 (isForFree!225_arg_0_1 ?i)) (ite ((_ is Block!1764) (isForFree!225_arg_0_1 ?i)) (isForFreeList!223 (body!1765 (isForFree!225_arg_0_1 ?i))) (ite ((_ is IfThenElse!1771) (isForFree!225_arg_0_1 ?i)) (and (isForFree!225 (elze!1774 (isForFree!225_arg_0_1 ?i))) (isForFree!225 (then!1773 (isForFree!225_arg_0_1 ?i)))) (ite ((_ is While!1779) (isForFree!225_arg_0_1 ?i)) (isForFree!225 (body!1781 (isForFree!225_arg_0_1 ?i))) (not ((_ is For!1766) (isForFree!225_arg_0_1 ?i))))))) (ite ((_ is Block!1764) (isForFree!225_arg_0_1 ?i)) (not (forall ((?z I_isForFreeList!223)) (not (= (isForFreeList!223_arg_0_2 ?z) (body!1765 (isForFree!225_arg_0_1 ?i)))) )) (ite ((_ is IfThenElse!1771) (isForFree!225_arg_0_1 ?i)) (and (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (elze!1774 (isForFree!225_arg_0_1 ?i)))) )) (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (then!1773 (isForFree!225_arg_0_1 ?i)))) ))) (ite ((_ is While!1779) (isForFree!225_arg_0_1 ?i)) (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (body!1781 (isForFree!225_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_isForFreeList!223)) (and (= (isForFreeList!223 (isForFreeList!223_arg_0_2 ?i)) (ite ((_ is Nil!1825) (isForFreeList!223_arg_0_2 ?i)) true (ite ((_ is Cons!1822) (isForFreeList!223_arg_0_2 ?i)) (and (isForFreeList!223 (tail!1824 (isForFreeList!223_arg_0_2 ?i))) (isForFree!225 (head!1823 (isForFreeList!223_arg_0_2 ?i)))) error_value!1826))) (ite ((_ is Nil!1825) (isForFreeList!223_arg_0_2 ?i)) true (ite ((_ is Cons!1822) (isForFreeList!223_arg_0_2 ?i)) (and (not (forall ((?z I_isForFreeList!223)) (not (= (isForFreeList!223_arg_0_2 ?z) (tail!1824 (isForFreeList!223_arg_0_2 ?i)))) )) (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (head!1823 (isForFreeList!223_arg_0_2 ?i)))) ))) true))) ))
(assert (forall ((?i I_eliminateForLoopsList!215)) (and (= (eliminateForLoopsList!215 (eliminateForLoopsList!215_arg_0_3 ?i)) (ite ((_ is Nil!1825) (eliminateForLoopsList!215_arg_0_3 ?i)) Nil!1825 (ite ((_ is Cons!1822) (eliminateForLoopsList!215_arg_0_3 ?i)) (Cons!1822 (eliminateForLoops!217 (head!1823 (eliminateForLoopsList!215_arg_0_3 ?i))) (eliminateForLoopsList!215 (tail!1824 (eliminateForLoopsList!215_arg_0_3 ?i)))) error_value!1827))) (ite ((_ is Nil!1825) (eliminateForLoopsList!215_arg_0_3 ?i)) true (ite ((_ is Cons!1822) (eliminateForLoopsList!215_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (head!1823 (eliminateForLoopsList!215_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateForLoopsList!215)) (not (= (eliminateForLoopsList!215_arg_0_3 ?z) (tail!1824 (eliminateForLoopsList!215_arg_0_3 ?i)))) ))) true))) ))
(assert (forall ((?i I_eliminateForLoops!217)) (and (= (eliminateForLoops!217 (eliminateForLoops!217_arg_0_4 ?i)) (ite ((_ is Block!1764) (eliminateForLoops!217_arg_0_4 ?i)) (Block!1764 (eliminateForLoopsList!215 (body!1765 (eliminateForLoops!217_arg_0_4 ?i)))) (ite ((_ is IfThenElse!1771) (eliminateForLoops!217_arg_0_4 ?i)) (IfThenElse!1771 (expr!1772 (eliminateForLoops!217_arg_0_4 ?i)) (eliminateForLoops!217 (then!1773 (eliminateForLoops!217_arg_0_4 ?i))) (eliminateForLoops!217 (elze!1774 (eliminateForLoops!217_arg_0_4 ?i)))) (ite ((_ is While!1779) (eliminateForLoops!217_arg_0_4 ?i)) (While!1779 (expr!1780 (eliminateForLoops!217_arg_0_4 ?i)) (eliminateForLoops!217 (body!1781 (eliminateForLoops!217_arg_0_4 ?i)))) (ite ((_ is For!1766) (eliminateForLoops!217_arg_0_4 ?i)) (Block!1764 (Cons!1822 (eliminateForLoops!217 (init!1767 (eliminateForLoops!217_arg_0_4 ?i))) (Cons!1822 (While!1779 (expr!1768 (eliminateForLoops!217_arg_0_4 ?i)) (Block!1764 (Cons!1822 (eliminateForLoops!217 (body!1770 (eliminateForLoops!217_arg_0_4 ?i))) (Cons!1822 (eliminateForLoops!217 (step!1769 (eliminateForLoops!217_arg_0_4 ?i))) Nil!1825)))) Nil!1825))) (eliminateForLoops!217_arg_0_4 ?i)))))) (ite ((_ is Block!1764) (eliminateForLoops!217_arg_0_4 ?i)) (not (forall ((?z I_eliminateForLoopsList!215)) (not (= (eliminateForLoopsList!215_arg_0_3 ?z) (body!1765 (eliminateForLoops!217_arg_0_4 ?i)))) )) (ite ((_ is IfThenElse!1771) (eliminateForLoops!217_arg_0_4 ?i)) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (then!1773 (eliminateForLoops!217_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (elze!1774 (eliminateForLoops!217_arg_0_4 ?i)))) ))) (ite ((_ is While!1779) (eliminateForLoops!217_arg_0_4 ?i)) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1781 (eliminateForLoops!217_arg_0_4 ?i)))) )) (ite ((_ is For!1766) (eliminateForLoops!217_arg_0_4 ?i)) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (init!1767 (eliminateForLoops!217_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1770 (eliminateForLoops!217_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (step!1769 (eliminateForLoops!217_arg_0_4 ?i)))) ))) true))))) ))
(assert (exists ((stat!216 Statement!1760)) (not (=> ((_ is Skip!1778) stat!216) (or (isForFree!225 (ite ((_ is Block!1764) stat!216) (Block!1764 (eliminateForLoopsList!215 (body!1765 stat!216))) (ite ((_ is IfThenElse!1771) stat!216) (IfThenElse!1771 (expr!1772 stat!216) (eliminateForLoops!217 (then!1773 stat!216)) (eliminateForLoops!217 (elze!1774 stat!216))) (ite ((_ is While!1779) stat!216) (While!1779 (expr!1780 stat!216) (eliminateForLoops!217 (body!1781 stat!216))) (ite ((_ is For!1766) stat!216) (Block!1764 (Cons!1822 (eliminateForLoops!217 (init!1767 stat!216)) (Cons!1822 (While!1779 (expr!1768 stat!216) (Block!1764 (Cons!1822 (eliminateForLoops!217 (body!1770 stat!216)) (Cons!1822 (eliminateForLoops!217 (step!1769 stat!216)) Nil!1825)))) Nil!1825))) stat!216))))) (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (ite ((_ is Block!1764) stat!216) (Block!1764 (eliminateForLoopsList!215 (body!1765 stat!216))) (ite ((_ is IfThenElse!1771) stat!216) (IfThenElse!1771 (expr!1772 stat!216) (eliminateForLoops!217 (then!1773 stat!216)) (eliminateForLoops!217 (elze!1774 stat!216))) (ite ((_ is While!1779) stat!216) (While!1779 (expr!1780 stat!216) (eliminateForLoops!217 (body!1781 stat!216))) (ite ((_ is For!1766) stat!216) (Block!1764 (Cons!1822 (eliminateForLoops!217 (init!1767 stat!216)) (Cons!1822 (While!1779 (expr!1768 stat!216) (Block!1764 (Cons!1822 (eliminateForLoops!217 (body!1770 stat!216)) (Cons!1822 (eliminateForLoops!217 (step!1769 stat!216)) Nil!1825)))) Nil!1825))) stat!216)))))) ) (not (ite ((_ is Block!1764) stat!216) (not (forall ((?z I_eliminateForLoopsList!215)) (not (= (eliminateForLoopsList!215_arg_0_3 ?z) (body!1765 stat!216))) )) (ite ((_ is IfThenElse!1771) stat!216) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (then!1773 stat!216))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (elze!1774 stat!216))) ))) (ite ((_ is While!1779) stat!216) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1781 stat!216))) )) (ite ((_ is For!1766) stat!216) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (init!1767 stat!216))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1770 stat!216))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (step!1769 stat!216))) ))) true)))))))) ))
(check-sat)
(exit)

