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


(declare-datatypes ((Statement!1556 0)(Expression!1578 0)(List!1617 0)) (((Assign!1557 (varID!1558 (_ BitVec 32)) (expr!1559 Expression!1578)) (Block!1560 (body!1561 List!1617)) (For!1562 (init!1563 Statement!1556) (expr!1564 Expression!1578) (step!1565 Statement!1556) (body!1566 Statement!1556)) (IfThenElse!1567 (expr!1568 Expression!1578) (then!1569 Statement!1556) (elze!1570 Statement!1556)) (Print!1571 (msg!1572 (_ BitVec 32)) (varID!1573 (_ BitVec 32))) (Skip!1574) (While!1575 (expr!1576 Expression!1578) (body!1577 Statement!1556)))
((And!1579 (lhs!1580 Expression!1578) (rhs!1581 Expression!1578)) (Division!1582 (lhs!1583 Expression!1578) (rhs!1584 Expression!1578)) (Equals!1585 (lhs!1586 Expression!1578) (rhs!1587 Expression!1578)) (GreaterThan!1588 (lhs!1589 Expression!1578) (rhs!1590 Expression!1578)) (IntLiteral!1591 (value!1592 (_ BitVec 32))) (LessThan!1593 (lhs!1594 Expression!1578) (rhs!1595 Expression!1578)) (Minus!1596 (lhs!1597 Expression!1578) (rhs!1598 Expression!1578)) (Modulo!1599 (lhs!1600 Expression!1578) (rhs!1601 Expression!1578)) (Neg!1602 (expr!1603 Expression!1578)) (Not!1604 (expr!1605 Expression!1578)) (Or!1606 (lhs!1607 Expression!1578) (rhs!1608 Expression!1578)) (Plus!1609 (lhs!1610 Expression!1578) (rhs!1611 Expression!1578)) (Times!1612 (lhs!1613 Expression!1578) (rhs!1614 Expression!1578)) (Var!1615 (varID!1616 (_ BitVec 32))))
((Cons!1618 (head!1619 Statement!1556) (tail!1620 List!1617)) (Nil!1621))
))
(declare-fun error_value!1622 () Bool)
(declare-fun isForFree!225 (Statement!1556) Bool)
(declare-fun isForFreeList!223 (List!1617) Bool)
(declare-fun error_value!1623 () List!1617)
(declare-fun eliminateForLoopsList!215 (List!1617) List!1617)
(declare-fun eliminateForLoops!217 (Statement!1556) Statement!1556)
(declare-sort I_isForFree!225 0)
(declare-fun isForFree!225_arg_0_1 (I_isForFree!225) Statement!1556)
(declare-sort I_isForFreeList!223 0)
(declare-fun isForFreeList!223_arg_0_2 (I_isForFreeList!223) List!1617)
(declare-sort I_eliminateForLoopsList!215 0)
(declare-fun eliminateForLoopsList!215_arg_0_3 (I_eliminateForLoopsList!215) List!1617)
(declare-sort I_eliminateForLoops!217 0)
(declare-fun eliminateForLoops!217_arg_0_4 (I_eliminateForLoops!217) Statement!1556)
(assert (forall ((?i I_isForFree!225)) (and (= (isForFree!225 (isForFree!225_arg_0_1 ?i)) (ite ((_ is Block!1560) (isForFree!225_arg_0_1 ?i)) (isForFreeList!223 (body!1561 (isForFree!225_arg_0_1 ?i))) (ite ((_ is IfThenElse!1567) (isForFree!225_arg_0_1 ?i)) (and (isForFree!225 (elze!1570 (isForFree!225_arg_0_1 ?i))) (isForFree!225 (then!1569 (isForFree!225_arg_0_1 ?i)))) (ite ((_ is While!1575) (isForFree!225_arg_0_1 ?i)) (isForFree!225 (body!1577 (isForFree!225_arg_0_1 ?i))) (not ((_ is For!1562) (isForFree!225_arg_0_1 ?i))))))) (ite ((_ is Block!1560) (isForFree!225_arg_0_1 ?i)) (not (forall ((?z I_isForFreeList!223)) (not (= (isForFreeList!223_arg_0_2 ?z) (body!1561 (isForFree!225_arg_0_1 ?i)))) )) (ite ((_ is IfThenElse!1567) (isForFree!225_arg_0_1 ?i)) (and (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (elze!1570 (isForFree!225_arg_0_1 ?i)))) )) (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (then!1569 (isForFree!225_arg_0_1 ?i)))) ))) (ite ((_ is While!1575) (isForFree!225_arg_0_1 ?i)) (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (body!1577 (isForFree!225_arg_0_1 ?i)))) )) true)))) ))
(assert (forall ((?i I_isForFreeList!223)) (and (= (isForFreeList!223 (isForFreeList!223_arg_0_2 ?i)) (ite ((_ is Nil!1621) (isForFreeList!223_arg_0_2 ?i)) true (ite ((_ is Cons!1618) (isForFreeList!223_arg_0_2 ?i)) (and (isForFreeList!223 (tail!1620 (isForFreeList!223_arg_0_2 ?i))) (isForFree!225 (head!1619 (isForFreeList!223_arg_0_2 ?i)))) error_value!1622))) (ite ((_ is Nil!1621) (isForFreeList!223_arg_0_2 ?i)) true (ite ((_ is Cons!1618) (isForFreeList!223_arg_0_2 ?i)) (and (not (forall ((?z I_isForFreeList!223)) (not (= (isForFreeList!223_arg_0_2 ?z) (tail!1620 (isForFreeList!223_arg_0_2 ?i)))) )) (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (head!1619 (isForFreeList!223_arg_0_2 ?i)))) ))) true))) ))
(assert (forall ((?i I_eliminateForLoopsList!215)) (and (= (eliminateForLoopsList!215 (eliminateForLoopsList!215_arg_0_3 ?i)) (ite ((_ is Nil!1621) (eliminateForLoopsList!215_arg_0_3 ?i)) Nil!1621 (ite ((_ is Cons!1618) (eliminateForLoopsList!215_arg_0_3 ?i)) (Cons!1618 (eliminateForLoops!217 (head!1619 (eliminateForLoopsList!215_arg_0_3 ?i))) (eliminateForLoopsList!215 (tail!1620 (eliminateForLoopsList!215_arg_0_3 ?i)))) error_value!1623))) (ite ((_ is Nil!1621) (eliminateForLoopsList!215_arg_0_3 ?i)) true (ite ((_ is Cons!1618) (eliminateForLoopsList!215_arg_0_3 ?i)) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (head!1619 (eliminateForLoopsList!215_arg_0_3 ?i)))) )) (not (forall ((?z I_eliminateForLoopsList!215)) (not (= (eliminateForLoopsList!215_arg_0_3 ?z) (tail!1620 (eliminateForLoopsList!215_arg_0_3 ?i)))) ))) true))) ))
(assert (forall ((?i I_eliminateForLoops!217)) (and (= (eliminateForLoops!217 (eliminateForLoops!217_arg_0_4 ?i)) (ite ((_ is Block!1560) (eliminateForLoops!217_arg_0_4 ?i)) (Block!1560 (eliminateForLoopsList!215 (body!1561 (eliminateForLoops!217_arg_0_4 ?i)))) (ite ((_ is IfThenElse!1567) (eliminateForLoops!217_arg_0_4 ?i)) (IfThenElse!1567 (expr!1568 (eliminateForLoops!217_arg_0_4 ?i)) (eliminateForLoops!217 (then!1569 (eliminateForLoops!217_arg_0_4 ?i))) (eliminateForLoops!217 (elze!1570 (eliminateForLoops!217_arg_0_4 ?i)))) (ite ((_ is While!1575) (eliminateForLoops!217_arg_0_4 ?i)) (While!1575 (expr!1576 (eliminateForLoops!217_arg_0_4 ?i)) (eliminateForLoops!217 (body!1577 (eliminateForLoops!217_arg_0_4 ?i)))) (ite ((_ is For!1562) (eliminateForLoops!217_arg_0_4 ?i)) (Block!1560 (Cons!1618 (eliminateForLoops!217 (init!1563 (eliminateForLoops!217_arg_0_4 ?i))) (Cons!1618 (While!1575 (expr!1564 (eliminateForLoops!217_arg_0_4 ?i)) (Block!1560 (Cons!1618 (eliminateForLoops!217 (body!1566 (eliminateForLoops!217_arg_0_4 ?i))) (Cons!1618 (eliminateForLoops!217 (step!1565 (eliminateForLoops!217_arg_0_4 ?i))) Nil!1621)))) Nil!1621))) (eliminateForLoops!217_arg_0_4 ?i)))))) (ite ((_ is Block!1560) (eliminateForLoops!217_arg_0_4 ?i)) (not (forall ((?z I_eliminateForLoopsList!215)) (not (= (eliminateForLoopsList!215_arg_0_3 ?z) (body!1561 (eliminateForLoops!217_arg_0_4 ?i)))) )) (ite ((_ is IfThenElse!1567) (eliminateForLoops!217_arg_0_4 ?i)) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (then!1569 (eliminateForLoops!217_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (elze!1570 (eliminateForLoops!217_arg_0_4 ?i)))) ))) (ite ((_ is While!1575) (eliminateForLoops!217_arg_0_4 ?i)) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1577 (eliminateForLoops!217_arg_0_4 ?i)))) )) (ite ((_ is For!1562) (eliminateForLoops!217_arg_0_4 ?i)) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (init!1563 (eliminateForLoops!217_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1566 (eliminateForLoops!217_arg_0_4 ?i)))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (step!1565 (eliminateForLoops!217_arg_0_4 ?i)))) ))) true))))) ))
(assert (not (forall ((BOUND_VARIABLE_902 Statement!1556) (BOUND_VARIABLE_903 Expression!1578) (BOUND_VARIABLE_904 Statement!1556) (BOUND_VARIABLE_905 Statement!1556)) (or (not (and (isForFree!225 (ite ((_ is Block!1560) BOUND_VARIABLE_905) (Block!1560 (eliminateForLoopsList!215 (body!1561 BOUND_VARIABLE_905))) (ite ((_ is IfThenElse!1567) BOUND_VARIABLE_905) (IfThenElse!1567 (expr!1568 BOUND_VARIABLE_905) (eliminateForLoops!217 (then!1569 BOUND_VARIABLE_905)) (eliminateForLoops!217 (elze!1570 BOUND_VARIABLE_905))) (ite ((_ is While!1575) BOUND_VARIABLE_905) (While!1575 (expr!1576 BOUND_VARIABLE_905) (eliminateForLoops!217 (body!1577 BOUND_VARIABLE_905))) (ite ((_ is For!1562) BOUND_VARIABLE_905) (Block!1560 (Cons!1618 (eliminateForLoops!217 (init!1563 BOUND_VARIABLE_905)) (Cons!1618 (While!1575 (expr!1564 BOUND_VARIABLE_905) (Block!1560 (Cons!1618 (eliminateForLoops!217 (body!1566 BOUND_VARIABLE_905)) (Cons!1618 (eliminateForLoops!217 (step!1565 BOUND_VARIABLE_905)) Nil!1621)))) Nil!1621))) BOUND_VARIABLE_905))))) (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (ite ((_ is Block!1560) BOUND_VARIABLE_905) (Block!1560 (eliminateForLoopsList!215 (body!1561 BOUND_VARIABLE_905))) (ite ((_ is IfThenElse!1567) BOUND_VARIABLE_905) (IfThenElse!1567 (expr!1568 BOUND_VARIABLE_905) (eliminateForLoops!217 (then!1569 BOUND_VARIABLE_905)) (eliminateForLoops!217 (elze!1570 BOUND_VARIABLE_905))) (ite ((_ is While!1575) BOUND_VARIABLE_905) (While!1575 (expr!1576 BOUND_VARIABLE_905) (eliminateForLoops!217 (body!1577 BOUND_VARIABLE_905))) (ite ((_ is For!1562) BOUND_VARIABLE_905) (Block!1560 (Cons!1618 (eliminateForLoops!217 (init!1563 BOUND_VARIABLE_905)) (Cons!1618 (While!1575 (expr!1564 BOUND_VARIABLE_905) (Block!1560 (Cons!1618 (eliminateForLoops!217 (body!1566 BOUND_VARIABLE_905)) (Cons!1618 (eliminateForLoops!217 (step!1565 BOUND_VARIABLE_905)) Nil!1621)))) Nil!1621))) BOUND_VARIABLE_905)))))) )) (ite ((_ is Block!1560) BOUND_VARIABLE_905) (not (forall ((?z I_eliminateForLoopsList!215)) (not (= (eliminateForLoopsList!215_arg_0_3 ?z) (body!1561 BOUND_VARIABLE_905))) )) (ite ((_ is IfThenElse!1567) BOUND_VARIABLE_905) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (then!1569 BOUND_VARIABLE_905))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (elze!1570 BOUND_VARIABLE_905))) ))) (ite ((_ is While!1575) BOUND_VARIABLE_905) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1577 BOUND_VARIABLE_905))) )) (ite ((_ is For!1562) BOUND_VARIABLE_905) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (init!1563 BOUND_VARIABLE_905))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1566 BOUND_VARIABLE_905))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (step!1565 BOUND_VARIABLE_905))) ))) true)))))) (not (and (isForFree!225 (ite ((_ is Block!1560) BOUND_VARIABLE_904) (Block!1560 (eliminateForLoopsList!215 (body!1561 BOUND_VARIABLE_904))) (ite ((_ is IfThenElse!1567) BOUND_VARIABLE_904) (IfThenElse!1567 (expr!1568 BOUND_VARIABLE_904) (eliminateForLoops!217 (then!1569 BOUND_VARIABLE_904)) (eliminateForLoops!217 (elze!1570 BOUND_VARIABLE_904))) (ite ((_ is While!1575) BOUND_VARIABLE_904) (While!1575 (expr!1576 BOUND_VARIABLE_904) (eliminateForLoops!217 (body!1577 BOUND_VARIABLE_904))) (ite ((_ is For!1562) BOUND_VARIABLE_904) (Block!1560 (Cons!1618 (eliminateForLoops!217 (init!1563 BOUND_VARIABLE_904)) (Cons!1618 (While!1575 (expr!1564 BOUND_VARIABLE_904) (Block!1560 (Cons!1618 (eliminateForLoops!217 (body!1566 BOUND_VARIABLE_904)) (Cons!1618 (eliminateForLoops!217 (step!1565 BOUND_VARIABLE_904)) Nil!1621)))) Nil!1621))) BOUND_VARIABLE_904))))) (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (ite ((_ is Block!1560) BOUND_VARIABLE_904) (Block!1560 (eliminateForLoopsList!215 (body!1561 BOUND_VARIABLE_904))) (ite ((_ is IfThenElse!1567) BOUND_VARIABLE_904) (IfThenElse!1567 (expr!1568 BOUND_VARIABLE_904) (eliminateForLoops!217 (then!1569 BOUND_VARIABLE_904)) (eliminateForLoops!217 (elze!1570 BOUND_VARIABLE_904))) (ite ((_ is While!1575) BOUND_VARIABLE_904) (While!1575 (expr!1576 BOUND_VARIABLE_904) (eliminateForLoops!217 (body!1577 BOUND_VARIABLE_904))) (ite ((_ is For!1562) BOUND_VARIABLE_904) (Block!1560 (Cons!1618 (eliminateForLoops!217 (init!1563 BOUND_VARIABLE_904)) (Cons!1618 (While!1575 (expr!1564 BOUND_VARIABLE_904) (Block!1560 (Cons!1618 (eliminateForLoops!217 (body!1566 BOUND_VARIABLE_904)) (Cons!1618 (eliminateForLoops!217 (step!1565 BOUND_VARIABLE_904)) Nil!1621)))) Nil!1621))) BOUND_VARIABLE_904)))))) )) (ite ((_ is Block!1560) BOUND_VARIABLE_904) (not (forall ((?z I_eliminateForLoopsList!215)) (not (= (eliminateForLoopsList!215_arg_0_3 ?z) (body!1561 BOUND_VARIABLE_904))) )) (ite ((_ is IfThenElse!1567) BOUND_VARIABLE_904) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (then!1569 BOUND_VARIABLE_904))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (elze!1570 BOUND_VARIABLE_904))) ))) (ite ((_ is While!1575) BOUND_VARIABLE_904) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1577 BOUND_VARIABLE_904))) )) (ite ((_ is For!1562) BOUND_VARIABLE_904) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (init!1563 BOUND_VARIABLE_904))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1566 BOUND_VARIABLE_904))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (step!1565 BOUND_VARIABLE_904))) ))) true)))))) (not (and (isForFree!225 (ite ((_ is Block!1560) BOUND_VARIABLE_902) (Block!1560 (eliminateForLoopsList!215 (body!1561 BOUND_VARIABLE_902))) (ite ((_ is IfThenElse!1567) BOUND_VARIABLE_902) (elze!1570 BOUND_VARIABLE_902) (ite ((_ is While!1575) BOUND_VARIABLE_902) (While!1575 (expr!1576 BOUND_VARIABLE_902) (eliminateForLoops!217 (body!1577 BOUND_VARIABLE_902))) (ite ((_ is For!1562) BOUND_VARIABLE_902) (Block!1560 (Cons!1618 (eliminateForLoops!217 (init!1563 BOUND_VARIABLE_902)) (Cons!1618 (While!1575 (expr!1564 BOUND_VARIABLE_902) (Block!1560 (Cons!1618 (eliminateForLoops!217 (body!1566 BOUND_VARIABLE_902)) (Cons!1618 (eliminateForLoops!217 (step!1565 BOUND_VARIABLE_902)) Nil!1621)))) Nil!1621))) BOUND_VARIABLE_902))))) (not (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (ite ((_ is Block!1560) BOUND_VARIABLE_902) (Block!1560 (eliminateForLoopsList!215 (body!1561 BOUND_VARIABLE_902))) (ite ((_ is IfThenElse!1567) BOUND_VARIABLE_902) (elze!1570 BOUND_VARIABLE_902) (ite ((_ is While!1575) BOUND_VARIABLE_902) (While!1575 (expr!1576 BOUND_VARIABLE_902) (eliminateForLoops!217 (body!1577 BOUND_VARIABLE_902))) (ite ((_ is For!1562) BOUND_VARIABLE_902) (Block!1560 (Cons!1618 (eliminateForLoops!217 (init!1563 BOUND_VARIABLE_902)) (Cons!1618 (While!1575 (expr!1564 BOUND_VARIABLE_902) (Block!1560 (Cons!1618 (eliminateForLoops!217 (body!1566 BOUND_VARIABLE_902)) (Cons!1618 (eliminateForLoops!217 (step!1565 BOUND_VARIABLE_902)) Nil!1621)))) Nil!1621))) BOUND_VARIABLE_902)))))) )) (ite ((_ is Block!1560) BOUND_VARIABLE_902) (not (forall ((?z I_eliminateForLoopsList!215)) (not (= (eliminateForLoopsList!215_arg_0_3 ?z) (body!1561 BOUND_VARIABLE_902))) )) (ite ((_ is IfThenElse!1567) BOUND_VARIABLE_902) true (ite ((_ is While!1575) BOUND_VARIABLE_902) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1577 BOUND_VARIABLE_902))) )) (ite ((_ is For!1562) BOUND_VARIABLE_902) (and (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (init!1563 BOUND_VARIABLE_902))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (body!1566 BOUND_VARIABLE_902))) )) (not (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) (step!1565 BOUND_VARIABLE_902))) ))) true)))))) (or (isForFree!225 (Block!1560 (Cons!1618 (eliminateForLoops!217 BOUND_VARIABLE_902) (Cons!1618 (While!1575 BOUND_VARIABLE_903 (Block!1560 (Cons!1618 (eliminateForLoops!217 BOUND_VARIABLE_905) (Cons!1618 (eliminateForLoops!217 BOUND_VARIABLE_904) Nil!1621)))) Nil!1621)))) (forall ((?z I_isForFree!225)) (not (= (isForFree!225_arg_0_1 ?z) (Block!1560 (Cons!1618 (eliminateForLoops!217 BOUND_VARIABLE_902) (Cons!1618 (While!1575 BOUND_VARIABLE_903 (Block!1560 (Cons!1618 (eliminateForLoops!217 BOUND_VARIABLE_905) (Cons!1618 (eliminateForLoops!217 BOUND_VARIABLE_904) Nil!1621)))) Nil!1621))))) ) (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) BOUND_VARIABLE_902)) ) (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) BOUND_VARIABLE_905)) ) (forall ((?z I_eliminateForLoops!217)) (not (= (eliminateForLoops!217_arg_0_4 ?z) BOUND_VARIABLE_904)) ))) )))
(check-sat)
(exit)

