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


(declare-datatypes ((Statement!1488 0)(Expression!1510 0)(List!1549 0)) (((Assign!1489 (varID!1490 (_ BitVec 32)) (expr!1491 Expression!1510)) (Block!1492 (body!1493 List!1549)) (For!1494 (init!1495 Statement!1488) (expr!1496 Expression!1510) (step!1497 Statement!1488) (body!1498 Statement!1488)) (IfThenElse!1499 (expr!1500 Expression!1510) (then!1501 Statement!1488) (elze!1502 Statement!1488)) (Print!1503 (msg!1504 (_ BitVec 32)) (varID!1505 (_ BitVec 32))) (Skip!1506) (While!1507 (expr!1508 Expression!1510) (body!1509 Statement!1488)))
((And!1511 (lhs!1512 Expression!1510) (rhs!1513 Expression!1510)) (Division!1514 (lhs!1515 Expression!1510) (rhs!1516 Expression!1510)) (Equals!1517 (lhs!1518 Expression!1510) (rhs!1519 Expression!1510)) (GreaterThan!1520 (lhs!1521 Expression!1510) (rhs!1522 Expression!1510)) (IntLiteral!1523 (value!1524 (_ BitVec 32))) (LessThan!1525 (lhs!1526 Expression!1510) (rhs!1527 Expression!1510)) (Minus!1528 (lhs!1529 Expression!1510) (rhs!1530 Expression!1510)) (Modulo!1531 (lhs!1532 Expression!1510) (rhs!1533 Expression!1510)) (Neg!1534 (expr!1535 Expression!1510)) (Not!1536 (expr!1537 Expression!1510)) (Or!1538 (lhs!1539 Expression!1510) (rhs!1540 Expression!1510)) (Plus!1541 (lhs!1542 Expression!1510) (rhs!1543 Expression!1510)) (Times!1544 (lhs!1545 Expression!1510) (rhs!1546 Expression!1510)) (Var!1547 (varID!1548 (_ BitVec 32))))
((Cons!1550 (head!1551 Statement!1488) (tail!1552 List!1549)) (Nil!1553))
))
(declare-fun error_value!1554 () Bool)
(declare-fun isForFree!225 (Statement!1488) Bool)
(declare-fun isForFreeList!223 (List!1549) Bool)
(declare-fun error_value!1555 () List!1549)
(declare-fun eliminateForLoopsList!215 (List!1549) List!1549)
(declare-fun eliminateForLoops!217 (Statement!1488) Statement!1488)
(assert (forall ((stat!224 Statement!1488)) (= (isForFree!225 stat!224) (ite ((_ is Block!1492) stat!224) (isForFreeList!223 (body!1493 stat!224)) (ite ((_ is IfThenElse!1499) stat!224) (and (and (isForFree!225 (then!1501 stat!224)) (isForFree!225 (then!1501 stat!224))) (isForFree!225 (elze!1502 stat!224))) (ite ((_ is While!1507) stat!224) (isForFree!225 (body!1509 stat!224)) (ite ((_ is For!1494) stat!224) false true))))) ))
(assert (forall ((l!222 List!1549)) (= (isForFreeList!223 l!222) (ite ((_ is Nil!1553) l!222) true (ite ((_ is Cons!1550) l!222) (and (and (isForFree!225 (head!1551 l!222)) (isForFree!225 (head!1551 l!222))) (isForFreeList!223 (tail!1552 l!222))) error_value!1554))) ))
(assert (forall ((l!214 List!1549)) (= (eliminateForLoopsList!215 l!214) (ite ((_ is Nil!1553) l!214) Nil!1553 (ite ((_ is Cons!1550) l!214) (Cons!1550 (eliminateForLoops!217 (head!1551 l!214)) (eliminateForLoopsList!215 (tail!1552 l!214))) error_value!1555))) ))
(assert (forall ((stat!216 Statement!1488)) (= (eliminateForLoops!217 stat!216) (ite ((_ is Block!1492) stat!216) (Block!1492 (eliminateForLoopsList!215 (body!1493 stat!216))) (ite ((_ is IfThenElse!1499) stat!216) (IfThenElse!1499 (expr!1500 stat!216) (eliminateForLoops!217 (then!1501 stat!216)) (eliminateForLoops!217 (elze!1502 stat!216))) (ite ((_ is While!1507) stat!216) (While!1507 (expr!1508 stat!216) (eliminateForLoops!217 (body!1509 stat!216))) (ite ((_ is For!1494) stat!216) (Block!1492 (Cons!1550 (eliminateForLoops!217 (init!1495 stat!216)) (Cons!1550 (While!1507 (expr!1496 stat!216) (Block!1492 (Cons!1550 (eliminateForLoops!217 (body!1498 stat!216)) (Cons!1550 (eliminateForLoops!217 (step!1497 stat!216)) Nil!1553)))) Nil!1553))) stat!216))))) ))
(assert (not (forall ((BOUND_VARIABLE_638 List!1549)) (isForFree!225 (Block!1492 BOUND_VARIABLE_638)) )))
(check-sat)
(exit)

