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


(declare-datatypes ((Statement!1692 0)(Expression!1714 0)(List!1753 0)) (((Assign!1693 (varID!1694 (_ BitVec 32)) (expr!1695 Expression!1714)) (Block!1696 (body!1697 List!1753)) (For!1698 (init!1699 Statement!1692) (expr!1700 Expression!1714) (step!1701 Statement!1692) (body!1702 Statement!1692)) (IfThenElse!1703 (expr!1704 Expression!1714) (then!1705 Statement!1692) (elze!1706 Statement!1692)) (Print!1707 (msg!1708 (_ BitVec 32)) (varID!1709 (_ BitVec 32))) (Skip!1710) (While!1711 (expr!1712 Expression!1714) (body!1713 Statement!1692)))
((And!1715 (lhs!1716 Expression!1714) (rhs!1717 Expression!1714)) (Division!1718 (lhs!1719 Expression!1714) (rhs!1720 Expression!1714)) (Equals!1721 (lhs!1722 Expression!1714) (rhs!1723 Expression!1714)) (GreaterThan!1724 (lhs!1725 Expression!1714) (rhs!1726 Expression!1714)) (IntLiteral!1727 (value!1728 (_ BitVec 32))) (LessThan!1729 (lhs!1730 Expression!1714) (rhs!1731 Expression!1714)) (Minus!1732 (lhs!1733 Expression!1714) (rhs!1734 Expression!1714)) (Modulo!1735 (lhs!1736 Expression!1714) (rhs!1737 Expression!1714)) (Neg!1738 (expr!1739 Expression!1714)) (Not!1740 (expr!1741 Expression!1714)) (Or!1742 (lhs!1743 Expression!1714) (rhs!1744 Expression!1714)) (Plus!1745 (lhs!1746 Expression!1714) (rhs!1747 Expression!1714)) (Times!1748 (lhs!1749 Expression!1714) (rhs!1750 Expression!1714)) (Var!1751 (varID!1752 (_ BitVec 32))))
((Cons!1754 (head!1755 Statement!1692) (tail!1756 List!1753)) (Nil!1757))
))
(declare-fun error_value!1758 () Bool)
(declare-fun isForFree!225 (Statement!1692) Bool)
(declare-fun isForFreeList!223 (List!1753) Bool)
(declare-fun error_value!1759 () List!1753)
(declare-fun eliminateForLoopsList!215 (List!1753) List!1753)
(declare-fun eliminateForLoops!217 (Statement!1692) Statement!1692)
(assert (forall ((stat!224 Statement!1692)) (= (isForFree!225 stat!224) (ite ((_ is Block!1696) stat!224) (isForFreeList!223 (body!1697 stat!224)) (ite ((_ is IfThenElse!1703) stat!224) (and (and (isForFree!225 (then!1705 stat!224)) (isForFree!225 (then!1705 stat!224))) (isForFree!225 (elze!1706 stat!224))) (ite ((_ is While!1711) stat!224) (isForFree!225 (body!1713 stat!224)) (ite ((_ is For!1698) stat!224) false true))))) ))
(assert (forall ((l!222 List!1753)) (= (isForFreeList!223 l!222) (ite ((_ is Nil!1757) l!222) true (ite ((_ is Cons!1754) l!222) (and (and (isForFree!225 (head!1755 l!222)) (isForFree!225 (head!1755 l!222))) (isForFreeList!223 (tail!1756 l!222))) error_value!1758))) ))
(assert (forall ((l!214 List!1753)) (= (eliminateForLoopsList!215 l!214) (ite ((_ is Nil!1757) l!214) Nil!1757 (ite ((_ is Cons!1754) l!214) (Cons!1754 (eliminateForLoops!217 (head!1755 l!214)) (eliminateForLoopsList!215 (tail!1756 l!214))) error_value!1759))) ))
(assert (forall ((stat!216 Statement!1692)) (= (eliminateForLoops!217 stat!216) (ite ((_ is Block!1696) stat!216) (Block!1696 (eliminateForLoopsList!215 (body!1697 stat!216))) (ite ((_ is IfThenElse!1703) stat!216) (IfThenElse!1703 (expr!1704 stat!216) (eliminateForLoops!217 (then!1705 stat!216)) (eliminateForLoops!217 (elze!1706 stat!216))) (ite ((_ is While!1711) stat!216) (While!1711 (expr!1712 stat!216) (eliminateForLoops!217 (body!1713 stat!216))) (ite ((_ is For!1698) stat!216) (Block!1696 (Cons!1754 (eliminateForLoops!217 (init!1699 stat!216)) (Cons!1754 (While!1711 (expr!1700 stat!216) (Block!1696 (Cons!1754 (eliminateForLoops!217 (body!1702 stat!216)) (Cons!1754 (eliminateForLoops!217 (step!1701 stat!216)) Nil!1757)))) Nil!1757))) stat!216))))) ))
(assert (exists ((stat!216 Statement!1692)) (not (=> ((_ is Print!1707) stat!216) (isForFree!225 (ite ((_ is Block!1696) stat!216) (Block!1696 (eliminateForLoopsList!215 (body!1697 stat!216))) (ite ((_ is IfThenElse!1703) stat!216) (IfThenElse!1703 (expr!1704 stat!216) (eliminateForLoops!217 (then!1705 stat!216)) (eliminateForLoops!217 (elze!1706 stat!216))) (ite ((_ is While!1711) stat!216) (While!1711 (expr!1712 stat!216) (eliminateForLoops!217 (body!1713 stat!216))) (ite ((_ is For!1698) stat!216) (Block!1696 (Cons!1754 (eliminateForLoops!217 (init!1699 stat!216)) (Cons!1754 (While!1711 (expr!1700 stat!216) (Block!1696 (Cons!1754 (eliminateForLoops!217 (body!1702 stat!216)) (Cons!1754 (eliminateForLoops!217 (step!1701 stat!216)) Nil!1757)))) Nil!1757))) stat!216))))))) ))
(check-sat)
(exit)

