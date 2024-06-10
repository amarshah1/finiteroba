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


(declare-datatypes ((bdecs!6698 0)(typ!6665 0)(binds!6710 0)(decs_hasnt!6743 0)(decs!6674 0)(bdecs_has!6720 0)(exp!6633 0)(ctx!6656 0)(dec!6679 0)(decs_has!6734 0)(has!6702 0)(label_fld!6691 0)(avar!6662 0)) (((bdecs_bot!6699) (bdecs_decs!6700 (ds!6701 decs!6674)))
((typ_bind!6666 (z!6667 avar!6662) (ds!6668 decs!6674)) (typ_bot!6669) (typ_sel!6670 (p!6671 avar!6662) (L!6672 label_fld!6691)) (typ_top!6673))
((binds_hit!6711 (x!6712 avar!6662) (t!6713 typ!6665) (g!6714 ctx!6656)) (binds_skip!6715 (x!6716 avar!6662) (t!6717 typ!6665) (g!6718 ctx!6656) (bi!6719 binds!6710)))
((decs_hasnt_cons!6744 (ds!6745 decs!6674) (l!6746 label_fld!6691) (hasnt!6747 decs_hasnt!6743)) (decs_hasnt_nil!6748 (ds!6749 decs!6674) (l!6750 label_fld!6691)))
((decs_cons!6675 (head!6676 dec!6679) (tail!6677 decs!6674)) (decs_nil!6678))
((bdecs_has_decs!6721 (ds!6722 bdecs!6698) (d!6723 dec!6679) (has!6724 decs_has!6734)) (bdecs_has_fld!6725 (ds!6726 bdecs!6698) (d!6727 dec!6679)) (bdecs_has_mtd!6728 (ds!6729 bdecs!6698) (d!6730 dec!6679)) (bdecs_has_typ!6731 (ds!6732 bdecs!6698) (d!6733 dec!6679)))
((exp_bind!6634 (g!6635 ctx!6656) (t!6636 typ!6665) (z!6637 avar!6662) (ds!6638 bdecs!6698)) (exp_bot!6639 (g!6640 ctx!6656) (t!6641 typ!6665) (z!6642 avar!6662) (ds!6643 bdecs!6698)) (exp_sel!6644 (g!6645 ctx!6656) (t!6646 typ!6665) (z!6647 avar!6662) (ds!6648 bdecs!6698) (ha!6649 has!6702) (ex!6650 exp!6633)) (exp_top!6651 (g!6652 ctx!6656) (t!6653 typ!6665) (z!6654 avar!6662) (ds!6655 bdecs!6698)))
((ctx_cons!6657 (tail!6658 ctx!6656) (x!6659 avar!6662) (t!6660 typ!6665)) (ctx_nil!6661))
((dec_fld!6680 (l!6681 label_fld!6691) (T!6682 typ!6665)) (dec_mtd!6683 (m!6684 label_fld!6691) (Arg!6685 typ!6665) (Ret!6686 typ!6665)) (dec_typ!6687 (L!6688 label_fld!6691) (Lo!6689 typ!6665) (Hi!6690 typ!6665)))
((decs_has_hit!6735 (ds!6736 decs!6674) (d!6737 dec!6679) (hasnt!6738 decs_hasnt!6743)) (decs_has_skip!6739 (ds!6740 decs!6674) (d!6741 dec!6679) (has!6742 decs_has!6734)))
((has_var!6703 (g!6704 ctx!6656) (p!6705 avar!6662) (d!6706 dec!6679) (bi!6707 binds!6710) (ex!6708 exp!6633) (bhas!6709 bdecs_has!6720)))
((label_fld!6692 (n!6693 Int)) (label_mtd!6694 (n!6695 Int)) (label_typ!6696 (n!6697 Int)))
((avar_f!6663 (n!6664 Int)))
))
(declare-datatypes ((subtyp!6751 0)(subdecs!6790 0)(subdec!6807 0)) (((subtyp_bind!6752 (g!6753 ctx!6656) (t1!6754 typ!6665) (t2!6755 typ!6665) (z!6756 avar!6662) (sds!6757 subdecs!6790)) (subtyp_bot!6758 (g!6759 ctx!6656) (t1!6760 typ!6665) (t2!6761 typ!6665)) (subtyp_refl!6762 (g!6763 ctx!6656) (t1!6764 typ!6665) (t2!6765 typ!6665)) (subtyp_sel_l!6766 (g!6767 ctx!6656) (t1!6768 typ!6665) (t2!6769 typ!6665) (ha!6770 has!6702) (st1!6771 subtyp!6751) (st2!6772 subtyp!6751)) (subtyp_sel_r!6773 (g!6774 ctx!6656) (t1!6775 typ!6665) (t2!6776 typ!6665) (ha!6777 has!6702) (st1!6778 subtyp!6751) (st2!6779 subtyp!6751)) (subtyp_top!6780 (g!6781 ctx!6656) (t1!6782 typ!6665) (t2!6783 typ!6665)) (subtyp_trans!6784 (g!6785 ctx!6656) (t1!6786 typ!6665) (t2!6787 typ!6665) (st1!6788 subtyp!6751) (st2!6789 subtyp!6751)))
((subdecs_cons!6791 (g!6792 ctx!6656) (ds1!6793 decs!6674) (ds2!6794 decs!6674) (ds1has!6795 decs_has!6734) (sd!6796 subdec!6807) (sds!6797 subdecs!6790) (ds2hasnt!6798 decs_hasnt!6743)) (subdecs_nil!6799 (g!6800 ctx!6656) (ds1!6801 decs!6674) (ds2!6802 decs!6674)) (subdecs_refl!6803 (g!6804 ctx!6656) (ds1!6805 decs!6674) (ds2!6806 decs!6674)))
((subdec_fld!6808 (g!6809 ctx!6656) (d1!6810 dec!6679) (d2!6811 dec!6679) (st!6812 subtyp!6751)) (subdec_mtd!6813 (g!6814 ctx!6656) (d1!6815 dec!6679) (d2!6816 dec!6679) (starg!6817 subtyp!6751) (stret!6818 subtyp!6751)) (subdec_typ!6819 (g!6820 ctx!6656) (d1!6821 dec!6679) (d2!6822 dec!6679) (stlo!6823 subtyp!6751) (sthi!6824 subtyp!6751)))
))
(declare-fun error_value!6825 () Bool)
(declare-fun error_value!6826 () Bool)
(declare-fun error_value!6827 () Bool)
(declare-fun error_value!6828 () typ!6665)
(declare-fun error_value!6829 () Bool)
(declare-fun error_value!6830 () dec!6679)
(declare-fun error_value!6831 () decs!6674)
(declare-fun error_value!6832 () bdecs!6698)
(declare-fun error_value!6833 () Bool)
(declare-fun error_value!6834 () label_fld!6691)
(declare-fun error_value!6835 () typ!6665)
(declare-fun error_value!6836 () dec!6679)
(declare-fun error_value!6837 () Bool)
(declare-fun error_value!6838 () decs!6674)
(declare-fun error_value!6839 () avar!6662)
(declare-fun error_value!6840 () ctx!6656)
(declare-fun error_value!6841 () ctx!6656)
(declare-fun error_value!6842 () avar!6662)
(declare-fun error_value!6843 () label_fld!6691)
(declare-fun error_value!6844 () decs!6674)
(declare-fun error_value!6845 () dec!6679)
(declare-fun error_value!6846 () ctx!6656)
(declare-fun error_value!6847 () Bool)
(declare-fun error_value!6848 () Bool)
(declare-fun error_value!6849 () typ!6665)
(declare-fun error_value!6850 () Bool)
(declare-fun error_value!6851 () decs!6674)
(declare-fun error_value!6852 () avar!6662)
(declare-fun error_value!6853 () ctx!6656)
(declare-fun error_value!6854 () dec!6679)
(declare-fun error_value!6855 () dec!6679)
(declare-fun error_value!6856 () bdecs!6698)
(declare-fun error_value!6857 () ctx!6656)
(declare-fun error_value!6858 () dec!6679)
(declare-fun error_value!6859 () typ!6665)
(declare-fun error_value!6860 () ctx!6656)
(declare-fun decs_hasnt$ok!1532 (decs_hasnt!6743) Bool)
(declare-fun has$ok!1562 (has!6702) Bool)
(declare-fun binds$ok!1526 (binds!6710) Bool)
(declare-fun subtyp$typ2!1568 (subtyp!6751) typ!6665)
(declare-fun subdec$ok!1578 (subdec!6807) Bool)
(declare-fun has$dec!1560 (has!6702) dec!6679)
(declare-fun decs_has$decs!1534 (decs_has!6734) decs!6674)
(declare-fun exp$bdecs!1552 (exp!6633) bdecs!6698)
(declare-fun exp$ok!1554 (exp!6633) Bool)
(declare-fun dec$label!1510 (dec!6679) label_fld!6691)
(declare-fun subtyp$typ1!1566 (subtyp!6751) typ!6665)
(declare-fun dec$subst!1512 (dec!6679 avar!6662 avar!6662) dec!6679)
(declare-fun bdecs_has$ok!1544 (bdecs_has!6720) Bool)
(declare-fun subdecs$decs1!1582 (subdecs!6790) decs!6674)
(declare-fun binds$avar!1520 (binds!6710) avar!6662)
(declare-fun subdecs$ctx!1580 (subdecs!6790) ctx!6656)
(declare-fun has$ctx!1556 (has!6702) ctx!6656)
(declare-fun has$avar!1558 (has!6702) avar!6662)
(declare-fun decs_hasnt$label!1530 (decs_hasnt!6743) label_fld!6691)
(declare-fun subdecs$decs2!1584 (subdecs!6790) decs!6674)
(declare-fun decs_has$dec!1536 (decs_has!6734) dec!6679)
(declare-fun subtyp$ctx!1564 (subtyp!6751) ctx!6656)
(declare-fun subtyp$ok!1570 (subtyp!6751) Bool)
(declare-fun subdecs$ok!1586 (subdecs!6790) Bool)
(declare-fun binds$typ!1522 (binds!6710) typ!6665)
(declare-fun decs_has$ok!1538 (decs_has!6734) Bool)
(declare-fun decs_hasnt$decs!1528 (decs_hasnt!6743) decs!6674)
(declare-fun decs$subst!1516 (decs!6674 avar!6662 avar!6662) decs!6674)
(declare-fun exp$avar!1550 (exp!6633) avar!6662)
(declare-fun exp$ctx!1546 (exp!6633) ctx!6656)
(declare-fun bdecs_has$dec!1542 (bdecs_has!6720) dec!6679)
(declare-fun subdec$dec2!1576 (subdec!6807) dec!6679)
(declare-fun bdecs_has$bdecs!1540 (bdecs_has!6720) bdecs!6698)
(declare-fun typ$subst!1506 (typ!6665 avar!6662 avar!6662) typ!6665)
(declare-fun binds$ctx!1524 (binds!6710) ctx!6656)
(declare-fun subdec$dec1!1574 (subdec!6807) dec!6679)
(declare-fun exp$typ!1548 (exp!6633) typ!6665)
(declare-fun subdec$ctx!1572 (subdec!6807) ctx!6656)
(declare-fun error_value!6861 () subdecs!6790)
(assert (forall (($this!1533 decs_hasnt!6743)) (= (decs_hasnt$ok!1532 $this!1533) (ite ((_ is decs_hasnt_nil!6748) $this!1533) (= (ds!6749 $this!1533) decs_nil!6678) (ite ((_ is decs_hasnt_cons!6744) $this!1533) false error_value!6825))) ))
(assert (forall (($this!1563 has!6702)) (= (has$ok!1562 $this!1563) (ite ((_ is has_var!6703) $this!1563) (and (and (and (and (and (and (and (and (and (and (binds$ok!1526 (bi!6707 $this!1563)) (binds$ok!1526 (bi!6707 $this!1563))) (= (binds$avar!1520 (bi!6707 $this!1563)) (p!6705 $this!1563))) (= (binds$typ!1522 (bi!6707 $this!1563)) (exp$typ!1548 (ex!6708 $this!1563)))) (= (binds$ctx!1524 (bi!6707 $this!1563)) (g!6704 $this!1563))) (exp$ok!1554 (ex!6708 $this!1563))) (= (exp$ctx!1546 (ex!6708 $this!1563)) (g!6704 $this!1563))) (= (exp$avar!1550 (ex!6708 $this!1563)) (p!6705 $this!1563))) (= (exp$bdecs!1552 (ex!6708 $this!1563)) (bdecs_has$bdecs!1540 (bhas!6709 $this!1563)))) (bdecs_has$ok!1544 (bhas!6709 $this!1563))) (= (bdecs_has$dec!1542 (bhas!6709 $this!1563)) (d!6706 $this!1563))) error_value!6826)) ))
(assert (forall (($this!1527 binds!6710)) (= (binds$ok!1526 $this!1527) (ite ((_ is binds_hit!6711) $this!1527) false (ite ((_ is binds_skip!6715) $this!1527) (and (and (and (and (binds$ok!1526 (bi!6719 $this!1527)) (binds$ok!1526 (bi!6719 $this!1527))) (= (binds$avar!1520 (bi!6719 $this!1527)) (x!6716 $this!1527))) (= (binds$typ!1522 (bi!6719 $this!1527)) (t!6717 $this!1527))) (= (binds$ctx!1524 (bi!6719 $this!1527)) (g!6718 $this!1527))) error_value!6827))) ))
(assert (forall (($this!1569 subtyp!6751)) (= (subtyp$typ2!1568 $this!1569) (ite ((_ is subtyp_refl!6762) $this!1569) (t2!6765 $this!1569) (ite ((_ is subtyp_top!6780) $this!1569) (t2!6783 $this!1569) (ite ((_ is subtyp_bot!6758) $this!1569) (t2!6761 $this!1569) (ite ((_ is subtyp_bind!6752) $this!1569) (t2!6755 $this!1569) (ite ((_ is subtyp_sel_l!6766) $this!1569) (t2!6769 $this!1569) (ite ((_ is subtyp_sel_r!6773) $this!1569) (t2!6776 $this!1569) (ite ((_ is subtyp_trans!6784) $this!1569) (t2!6787 $this!1569) error_value!6828)))))))) ))
(assert (forall (($this!1579 subdec!6807)) (= (subdec$ok!1578 $this!1579) (ite ((_ is subdec_typ!6819) $this!1579) (ite ((_ is dec_typ!6687) (d1!6821 $this!1579)) (ite ((_ is dec_typ!6687) (d2!6822 $this!1579)) (and (and (and (and (and (and (and (and (and (= (L!6688 (d1!6821 $this!1579)) (L!6688 (d2!6822 $this!1579))) (= (L!6688 (d1!6821 $this!1579)) (L!6688 (d2!6822 $this!1579)))) (subtyp$ok!1570 (stlo!6823 $this!1579))) (= (subtyp$ctx!1564 (stlo!6823 $this!1579)) (g!6820 $this!1579))) (= (subtyp$typ1!1566 (stlo!6823 $this!1579)) (Lo!6689 (d2!6822 $this!1579)))) (= (subtyp$typ2!1568 (stlo!6823 $this!1579)) (Lo!6689 (d1!6821 $this!1579)))) (subtyp$ok!1570 (sthi!6824 $this!1579))) (= (subtyp$ctx!1564 (sthi!6824 $this!1579)) (g!6820 $this!1579))) (= (subtyp$typ1!1566 (sthi!6824 $this!1579)) (Hi!6690 (d1!6821 $this!1579)))) (= (subtyp$typ2!1568 (sthi!6824 $this!1579)) (Hi!6690 (d2!6822 $this!1579)))) false) false) (ite ((_ is subdec_fld!6808) $this!1579) (ite ((_ is dec_fld!6680) (d1!6810 $this!1579)) (ite ((_ is dec_fld!6680) (d2!6811 $this!1579)) (and (and (and (and (and (= (l!6681 (d1!6810 $this!1579)) (l!6681 (d2!6811 $this!1579))) (= (l!6681 (d1!6810 $this!1579)) (l!6681 (d2!6811 $this!1579)))) (subtyp$ok!1570 (st!6812 $this!1579))) (= (subtyp$ctx!1564 (st!6812 $this!1579)) (g!6809 $this!1579))) (= (subtyp$typ1!1566 (st!6812 $this!1579)) (T!6682 (d1!6810 $this!1579)))) (= (subtyp$typ2!1568 (st!6812 $this!1579)) (T!6682 (d2!6811 $this!1579)))) false) false) (ite ((_ is subdec_mtd!6813) $this!1579) (ite ((_ is dec_mtd!6683) (d1!6815 $this!1579)) (ite ((_ is dec_mtd!6683) (d2!6816 $this!1579)) (and (and (and (and (and (and (and (and (and (= (m!6684 (d1!6815 $this!1579)) (m!6684 (d2!6816 $this!1579))) (= (m!6684 (d1!6815 $this!1579)) (m!6684 (d2!6816 $this!1579)))) (subtyp$ok!1570 (starg!6817 $this!1579))) (= (subtyp$ctx!1564 (starg!6817 $this!1579)) (g!6814 $this!1579))) (= (subtyp$typ1!1566 (starg!6817 $this!1579)) (Arg!6685 (d2!6816 $this!1579)))) (= (subtyp$typ2!1568 (starg!6817 $this!1579)) (Arg!6685 (d1!6815 $this!1579)))) (subtyp$ok!1570 (stret!6818 $this!1579))) (= (subtyp$ctx!1564 (stret!6818 $this!1579)) (g!6814 $this!1579))) (= (subtyp$typ1!1566 (stret!6818 $this!1579)) (Ret!6686 (d1!6815 $this!1579)))) (= (subtyp$typ2!1568 (stret!6818 $this!1579)) (Ret!6686 (d2!6816 $this!1579)))) false) false) error_value!6829)))) ))
(assert (forall (($this!1561 has!6702)) (= (has$dec!1560 $this!1561) (ite ((_ is has_var!6703) $this!1561) (d!6706 $this!1561) error_value!6830)) ))
(assert (forall (($this!1535 decs_has!6734)) (= (decs_has$decs!1534 $this!1535) (ite ((_ is decs_has_hit!6735) $this!1535) (ds!6736 $this!1535) (ite ((_ is decs_has_skip!6739) $this!1535) (ds!6740 $this!1535) error_value!6831))) ))
(assert (forall (($this!1553 exp!6633)) (= (exp$bdecs!1552 $this!1553) (ite ((_ is exp_top!6651) $this!1553) (ds!6655 $this!1553) (ite ((_ is exp_bot!6639) $this!1553) (ds!6643 $this!1553) (ite ((_ is exp_bind!6634) $this!1553) (ds!6638 $this!1553) (ite ((_ is exp_sel!6644) $this!1553) (ds!6648 $this!1553) error_value!6832))))) ))
(assert (forall (($this!1555 exp!6633)) (= (exp$ok!1554 $this!1555) (ite ((_ is exp_top!6651) $this!1555) (and (and (= (t!6653 $this!1555) typ_top!6673) (= (t!6653 $this!1555) typ_top!6673)) (= (ds!6655 $this!1555) (bdecs_decs!6700 decs_nil!6678))) (ite ((_ is exp_bot!6639) $this!1555) (and (and (= (t!6641 $this!1555) typ_bot!6669) (= (t!6641 $this!1555) typ_bot!6669)) (= (ds!6643 $this!1555) bdecs_bot!6699)) (ite ((_ is exp_bind!6634) $this!1555) (ite ((_ is typ_bind!6666) (t!6636 $this!1555)) (ite ((_ is bdecs_decs!6700) (ds!6638 $this!1555)) (= (decs$subst!1516 (ds!6668 (t!6636 $this!1555)) (z!6667 (t!6636 $this!1555)) (z!6637 $this!1555)) (ds!6701 (ds!6638 $this!1555))) false) false) (ite ((_ is exp_sel!6644) $this!1555) (ite ((_ is typ_sel!6670) (t!6646 $this!1555)) (and (and (and (and (and (and (and (and (has$ok!1562 (ha!6649 $this!1555)) (has$ok!1562 (ha!6649 $this!1555))) (= (has$ctx!1556 (ha!6649 $this!1555)) (g!6645 $this!1555))) (= (has$avar!1558 (ha!6649 $this!1555)) (p!6671 (t!6646 $this!1555)))) (= (dec$label!1510 (has$dec!1560 (ha!6649 $this!1555))) (L!6672 (t!6646 $this!1555)))) (= (exp$ctx!1546 (ex!6650 $this!1555)) (g!6645 $this!1555))) (ite ((_ is dec_typ!6687) (has$dec!1560 (ha!6649 $this!1555))) (= (Hi!6690 (has$dec!1560 (ha!6649 $this!1555))) (exp$typ!1548 (ex!6650 $this!1555))) false)) (= (exp$avar!1550 (ex!6650 $this!1555)) (z!6647 $this!1555))) (= (exp$bdecs!1552 (ex!6650 $this!1555)) (ds!6648 $this!1555))) false) error_value!6833))))) ))
(assert (forall (($this!1511 dec!6679)) (= (dec$label!1510 $this!1511) (ite ((_ is dec_typ!6687) $this!1511) (L!6688 $this!1511) (ite ((_ is dec_fld!6680) $this!1511) (l!6681 $this!1511) (ite ((_ is dec_mtd!6683) $this!1511) (m!6684 $this!1511) error_value!6834)))) ))
(assert (forall (($this!1567 subtyp!6751)) (= (subtyp$typ1!1566 $this!1567) (ite ((_ is subtyp_refl!6762) $this!1567) (t1!6764 $this!1567) (ite ((_ is subtyp_top!6780) $this!1567) (t1!6782 $this!1567) (ite ((_ is subtyp_bot!6758) $this!1567) (t1!6760 $this!1567) (ite ((_ is subtyp_bind!6752) $this!1567) (t1!6754 $this!1567) (ite ((_ is subtyp_sel_l!6766) $this!1567) (t1!6768 $this!1567) (ite ((_ is subtyp_sel_r!6773) $this!1567) (t1!6775 $this!1567) (ite ((_ is subtyp_trans!6784) $this!1567) (t1!6786 $this!1567) error_value!6835)))))))) ))
(assert (forall (($this!1515 dec!6679) (x!1513 avar!6662) (y!1514 avar!6662)) (= (dec$subst!1512 $this!1515 x!1513 y!1514) (ite ((_ is dec_typ!6687) $this!1515) (dec_typ!6687 (L!6688 $this!1515) (typ$subst!1506 (Lo!6689 $this!1515) x!1513 y!1514) (typ$subst!1506 (Hi!6690 $this!1515) x!1513 y!1514)) (ite ((_ is dec_fld!6680) $this!1515) (dec_fld!6680 (l!6681 $this!1515) (typ$subst!1506 (T!6682 $this!1515) x!1513 y!1514)) (ite ((_ is dec_mtd!6683) $this!1515) (dec_mtd!6683 (m!6684 $this!1515) (typ$subst!1506 (Arg!6685 $this!1515) x!1513 y!1514) (typ$subst!1506 (Ret!6686 $this!1515) x!1513 y!1514)) error_value!6836)))) ))
(assert (forall (($this!1545 bdecs_has!6720)) (= (bdecs_has$ok!1544 $this!1545) (ite ((_ is bdecs_has_decs!6721) $this!1545) (ite ((_ is bdecs_decs!6700) (ds!6722 $this!1545)) (and (and (and (decs_has$ok!1538 (has!6724 $this!1545)) (decs_has$ok!1538 (has!6724 $this!1545))) (= (decs_has$decs!1534 (has!6724 $this!1545)) (ds!6701 (ds!6722 $this!1545)))) (= (decs_has$dec!1536 (has!6724 $this!1545)) (d!6723 $this!1545))) false) (ite ((_ is bdecs_has_typ!6731) $this!1545) (ite ((_ is dec_typ!6687) (d!6733 $this!1545)) (and (and (and (= (Lo!6689 (d!6733 $this!1545)) typ_top!6673) (= (Lo!6689 (d!6733 $this!1545)) typ_top!6673)) (= (Hi!6690 (d!6733 $this!1545)) typ_bot!6669)) (= (ds!6732 $this!1545) bdecs_bot!6699)) false) (ite ((_ is bdecs_has_fld!6725) $this!1545) (ite ((_ is dec_fld!6680) (d!6727 $this!1545)) (and (and (= (T!6682 (d!6727 $this!1545)) typ_top!6673) (= (T!6682 (d!6727 $this!1545)) typ_top!6673)) (= (ds!6726 $this!1545) bdecs_bot!6699)) false) (ite ((_ is bdecs_has_mtd!6728) $this!1545) (ite ((_ is dec_mtd!6683) (d!6730 $this!1545)) (and (and (and (= (Arg!6685 (d!6730 $this!1545)) typ_top!6673) (= (Arg!6685 (d!6730 $this!1545)) typ_top!6673)) (= (Ret!6686 (d!6730 $this!1545)) typ_bot!6669)) (= (ds!6729 $this!1545) bdecs_bot!6699)) false) error_value!6837))))) ))
(assert (forall (($this!1583 subdecs!6790)) (= (subdecs$decs1!1582 $this!1583) (ite ((_ is subdecs_nil!6799) $this!1583) (ds1!6801 $this!1583) (ite ((_ is subdecs_cons!6791) $this!1583) (ds1!6793 $this!1583) (ite ((_ is subdecs_refl!6803) $this!1583) (ds1!6805 $this!1583) error_value!6838)))) ))
(assert (forall (($this!1521 binds!6710)) (= (binds$avar!1520 $this!1521) (ite ((_ is binds_hit!6711) $this!1521) (x!6712 $this!1521) (ite ((_ is binds_skip!6715) $this!1521) (x!6716 $this!1521) error_value!6839))) ))
(assert (forall (($this!1581 subdecs!6790)) (= (subdecs$ctx!1580 $this!1581) (ite ((_ is subdecs_nil!6799) $this!1581) (g!6800 $this!1581) (ite ((_ is subdecs_cons!6791) $this!1581) (g!6792 $this!1581) (ite ((_ is subdecs_refl!6803) $this!1581) (g!6804 $this!1581) error_value!6840)))) ))
(assert (forall (($this!1557 has!6702)) (= (has$ctx!1556 $this!1557) (ite ((_ is has_var!6703) $this!1557) (g!6704 $this!1557) error_value!6841)) ))
(assert (forall (($this!1559 has!6702)) (= (has$avar!1558 $this!1559) (ite ((_ is has_var!6703) $this!1559) (p!6705 $this!1559) error_value!6842)) ))
(assert (forall (($this!1531 decs_hasnt!6743)) (= (decs_hasnt$label!1530 $this!1531) (ite ((_ is decs_hasnt_nil!6748) $this!1531) (l!6750 $this!1531) (ite ((_ is decs_hasnt_cons!6744) $this!1531) (l!6746 $this!1531) error_value!6843))) ))
(assert (forall (($this!1585 subdecs!6790)) (= (subdecs$decs2!1584 $this!1585) (ite ((_ is subdecs_nil!6799) $this!1585) (ds2!6802 $this!1585) (ite ((_ is subdecs_cons!6791) $this!1585) (ds2!6794 $this!1585) (ite ((_ is subdecs_refl!6803) $this!1585) (ds2!6806 $this!1585) error_value!6844)))) ))
(assert (forall (($this!1537 decs_has!6734)) (= (decs_has$dec!1536 $this!1537) (ite ((_ is decs_has_hit!6735) $this!1537) (d!6737 $this!1537) (ite ((_ is decs_has_skip!6739) $this!1537) (d!6741 $this!1537) error_value!6845))) ))
(assert (forall (($this!1565 subtyp!6751)) (= (subtyp$ctx!1564 $this!1565) (ite ((_ is subtyp_refl!6762) $this!1565) (g!6763 $this!1565) (ite ((_ is subtyp_top!6780) $this!1565) (g!6781 $this!1565) (ite ((_ is subtyp_bot!6758) $this!1565) (g!6759 $this!1565) (ite ((_ is subtyp_bind!6752) $this!1565) (g!6753 $this!1565) (ite ((_ is subtyp_sel_l!6766) $this!1565) (g!6767 $this!1565) (ite ((_ is subtyp_sel_r!6773) $this!1565) (g!6774 $this!1565) (ite ((_ is subtyp_trans!6784) $this!1565) (g!6785 $this!1565) error_value!6846)))))))) ))
(assert (forall (($this!1571 subtyp!6751)) (= (subtyp$ok!1570 $this!1571) (ite ((_ is subtyp_refl!6762) $this!1571) (= (t1!6764 $this!1571) (t2!6765 $this!1571)) (ite ((_ is subtyp_top!6780) $this!1571) (= (t2!6783 $this!1571) typ_top!6673) (ite ((_ is subtyp_bot!6758) $this!1571) (= (t1!6760 $this!1571) typ_bot!6669) (ite ((_ is subtyp_bind!6752) $this!1571) (ite ((_ is typ_bind!6666) (t1!6754 $this!1571)) (ite ((_ is typ_bind!6666) (t2!6755 $this!1571)) (and (and (and (and (subdecs$ok!1586 (sds!6757 $this!1571)) (subdecs$ok!1586 (sds!6757 $this!1571))) (= (subdecs$ctx!1580 (sds!6757 $this!1571)) (ctx_cons!6657 (g!6753 $this!1571) (z!6756 $this!1571) (typ_bind!6666 (z!6756 $this!1571) (ds!6668 (t1!6754 $this!1571)))))) (= (subdecs$decs1!1582 (sds!6757 $this!1571)) (decs$subst!1516 (ds!6668 (t1!6754 $this!1571)) (z!6667 (t1!6754 $this!1571)) (z!6756 $this!1571)))) (= (subdecs$decs2!1584 (sds!6757 $this!1571)) (decs$subst!1516 (ds!6668 (t2!6755 $this!1571)) (z!6667 (t2!6755 $this!1571)) (z!6756 $this!1571)))) false) false) (ite ((_ is subtyp_sel_l!6766) $this!1571) (ite ((_ is typ_sel!6670) (t1!6768 $this!1571)) (ite ((_ is dec_typ!6687) (has$dec!1560 (ha!6770 $this!1571))) (and (and (and (and (and (and (and (and (and (and (and (and (= (L!6688 (has$dec!1560 (ha!6770 $this!1571))) (L!6672 (t1!6768 $this!1571))) (= (L!6688 (has$dec!1560 (ha!6770 $this!1571))) (L!6672 (t1!6768 $this!1571)))) (has$ok!1562 (ha!6770 $this!1571))) (= (has$ctx!1556 (ha!6770 $this!1571)) (g!6767 $this!1571))) (= (has$avar!1558 (ha!6770 $this!1571)) (p!6671 (t1!6768 $this!1571)))) (subtyp$ok!1570 (st1!6771 $this!1571))) (= (subtyp$ctx!1564 (st1!6771 $this!1571)) (g!6767 $this!1571))) (= (subtyp$typ1!1566 (st1!6771 $this!1571)) (Lo!6689 (has$dec!1560 (ha!6770 $this!1571))))) (= (subtyp$typ2!1568 (st1!6771 $this!1571)) (Hi!6690 (has$dec!1560 (ha!6770 $this!1571))))) (subtyp$ok!1570 (st2!6772 $this!1571))) (= (subtyp$ctx!1564 (st2!6772 $this!1571)) (g!6767 $this!1571))) (= (subtyp$typ1!1566 (st2!6772 $this!1571)) (Hi!6690 (has$dec!1560 (ha!6770 $this!1571))))) (= (subtyp$typ2!1568 (st2!6772 $this!1571)) (t2!6769 $this!1571))) false) false) (ite ((_ is subtyp_sel_r!6773) $this!1571) (ite ((_ is typ_sel!6670) (t2!6776 $this!1571)) (ite ((_ is dec_typ!6687) (has$dec!1560 (ha!6777 $this!1571))) (and (and (and (and (and (and (and (and (and (and (and (and (= (L!6688 (has$dec!1560 (ha!6777 $this!1571))) (L!6672 (t2!6776 $this!1571))) (= (L!6688 (has$dec!1560 (ha!6777 $this!1571))) (L!6672 (t2!6776 $this!1571)))) (has$ok!1562 (ha!6777 $this!1571))) (= (has$ctx!1556 (ha!6777 $this!1571)) (g!6774 $this!1571))) (= (has$avar!1558 (ha!6777 $this!1571)) (p!6671 (t2!6776 $this!1571)))) (subtyp$ok!1570 (st1!6778 $this!1571))) (= (subtyp$ctx!1564 (st1!6778 $this!1571)) (g!6774 $this!1571))) (= (subtyp$typ1!1566 (st1!6778 $this!1571)) (t1!6775 $this!1571))) (= (subtyp$typ2!1568 (st2!6779 $this!1571)) (Lo!6689 (has$dec!1560 (ha!6777 $this!1571))))) (subtyp$ok!1570 (st2!6779 $this!1571))) (= (subtyp$ctx!1564 (st2!6779 $this!1571)) (g!6774 $this!1571))) (= (subtyp$typ1!1566 (st2!6779 $this!1571)) (Lo!6689 (has$dec!1560 (ha!6777 $this!1571))))) (= (subtyp$typ2!1568 (st2!6779 $this!1571)) (Hi!6690 (has$dec!1560 (ha!6777 $this!1571))))) false) false) (ite ((_ is subtyp_trans!6784) $this!1571) (and (and (and (and (and (and (and (subtyp$ok!1570 (st1!6788 $this!1571)) (subtyp$ok!1570 (st1!6788 $this!1571))) (= (subtyp$ctx!1564 (st1!6788 $this!1571)) (g!6785 $this!1571))) (= (subtyp$typ1!1566 (st1!6788 $this!1571)) (t1!6786 $this!1571))) (= (subtyp$typ2!1568 (st1!6788 $this!1571)) (subtyp$typ1!1566 (st2!6789 $this!1571)))) (subtyp$ok!1570 (st2!6789 $this!1571))) (= (subtyp$ctx!1564 (st2!6789 $this!1571)) (g!6785 $this!1571))) (= (subtyp$typ2!1568 (st2!6789 $this!1571)) (t2!6787 $this!1571))) error_value!6847)))))))) ))
(assert (forall (($this!1587 subdecs!6790)) (= (subdecs$ok!1586 $this!1587) (ite ((_ is subdecs_nil!6799) $this!1587) (= (ds2!6802 $this!1587) decs_nil!6678) (ite ((_ is subdecs_cons!6791) $this!1587) false (ite ((_ is subdecs_refl!6803) $this!1587) (= (ds1!6805 $this!1587) (ds2!6806 $this!1587)) error_value!6848)))) ))
(assert (forall (($this!1523 binds!6710)) (= (binds$typ!1522 $this!1523) (ite ((_ is binds_hit!6711) $this!1523) (t!6713 $this!1523) (ite ((_ is binds_skip!6715) $this!1523) (t!6717 $this!1523) error_value!6849))) ))
(assert (forall (($this!1539 decs_has!6734)) (= (decs_has$ok!1538 $this!1539) (ite ((_ is decs_has_hit!6735) $this!1539) false (ite ((_ is decs_has_skip!6739) $this!1539) false error_value!6850))) ))
(assert (forall (($this!1529 decs_hasnt!6743)) (= (decs_hasnt$decs!1528 $this!1529) (ite ((_ is decs_hasnt_nil!6748) $this!1529) (ds!6749 $this!1529) (ite ((_ is decs_hasnt_cons!6744) $this!1529) (ds!6745 $this!1529) error_value!6851))) ))
(assert (forall (($this!1519 decs!6674) (x!1517 avar!6662) (y!1518 avar!6662)) (= (decs$subst!1516 $this!1519 x!1517 y!1518) $this!1519) ))
(assert (forall (($this!1551 exp!6633)) (= (exp$avar!1550 $this!1551) (ite ((_ is exp_top!6651) $this!1551) (z!6654 $this!1551) (ite ((_ is exp_bot!6639) $this!1551) (z!6642 $this!1551) (ite ((_ is exp_bind!6634) $this!1551) (z!6637 $this!1551) (ite ((_ is exp_sel!6644) $this!1551) (z!6647 $this!1551) error_value!6852))))) ))
(assert (forall (($this!1547 exp!6633)) (= (exp$ctx!1546 $this!1547) (ite ((_ is exp_top!6651) $this!1547) (g!6652 $this!1547) (ite ((_ is exp_bot!6639) $this!1547) (g!6640 $this!1547) (ite ((_ is exp_bind!6634) $this!1547) (g!6635 $this!1547) (ite ((_ is exp_sel!6644) $this!1547) (g!6645 $this!1547) error_value!6853))))) ))
(assert (forall (($this!1543 bdecs_has!6720)) (= (bdecs_has$dec!1542 $this!1543) (ite ((_ is bdecs_has_decs!6721) $this!1543) (d!6723 $this!1543) (ite ((_ is bdecs_has_typ!6731) $this!1543) (d!6733 $this!1543) (ite ((_ is bdecs_has_fld!6725) $this!1543) (d!6727 $this!1543) (ite ((_ is bdecs_has_mtd!6728) $this!1543) (d!6730 $this!1543) error_value!6854))))) ))
(assert (forall (($this!1577 subdec!6807)) (= (subdec$dec2!1576 $this!1577) (ite ((_ is subdec_typ!6819) $this!1577) (d2!6822 $this!1577) (ite ((_ is subdec_fld!6808) $this!1577) (d2!6811 $this!1577) (ite ((_ is subdec_mtd!6813) $this!1577) (d2!6816 $this!1577) error_value!6855)))) ))
(assert (forall (($this!1541 bdecs_has!6720)) (= (bdecs_has$bdecs!1540 $this!1541) (ite ((_ is bdecs_has_decs!6721) $this!1541) (ds!6722 $this!1541) (ite ((_ is bdecs_has_typ!6731) $this!1541) (ds!6732 $this!1541) (ite ((_ is bdecs_has_fld!6725) $this!1541) (ds!6726 $this!1541) (ite ((_ is bdecs_has_mtd!6728) $this!1541) (ds!6729 $this!1541) error_value!6856))))) ))
(assert (forall (($this!1509 typ!6665) (x!1507 avar!6662) (y!1508 avar!6662)) (= (typ$subst!1506 $this!1509 x!1507 y!1508) $this!1509) ))
(assert (forall (($this!1525 binds!6710)) (= (binds$ctx!1524 $this!1525) (ite ((_ is binds_hit!6711) $this!1525) (g!6714 $this!1525) (ite ((_ is binds_skip!6715) $this!1525) (g!6718 $this!1525) error_value!6857))) ))
(assert (forall (($this!1575 subdec!6807)) (= (subdec$dec1!1574 $this!1575) (ite ((_ is subdec_typ!6819) $this!1575) (d1!6821 $this!1575) (ite ((_ is subdec_fld!6808) $this!1575) (d1!6810 $this!1575) (ite ((_ is subdec_mtd!6813) $this!1575) (d1!6815 $this!1575) error_value!6858)))) ))
(assert (forall (($this!1549 exp!6633)) (= (exp$typ!1548 $this!1549) (ite ((_ is exp_top!6651) $this!1549) (t!6653 $this!1549) (ite ((_ is exp_bot!6639) $this!1549) (t!6641 $this!1549) (ite ((_ is exp_bind!6634) $this!1549) (t!6636 $this!1549) (ite ((_ is exp_sel!6644) $this!1549) (t!6646 $this!1549) error_value!6859))))) ))
(assert (forall (($this!1573 subdec!6807)) (= (subdec$ctx!1572 $this!1573) (ite ((_ is subdec_typ!6819) $this!1573) (g!6820 $this!1573) (ite ((_ is subdec_fld!6808) $this!1573) (g!6809 $this!1573) (ite ((_ is subdec_mtd!6813) $this!1573) (g!6814 $this!1573) error_value!6860)))) ))
(assert (exists ((ex2!234 exp!6633) (t1!211 typ!6665) (ex1!233 exp!6633) (st!225 subtyp!6751) (t2!212 typ!6665) (g!205 ctx!6656) (ds2!219 decs!6674) (z!213 avar!6662) (ds1!218 decs!6674)) (not (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (subtyp$ok!1570 st!225) (subtyp$ok!1570 st!225)) (= (subtyp$ctx!1564 st!225) g!205)) (= (subtyp$typ1!1566 st!225) t1!211)) (= (subtyp$typ2!1568 st!225) t2!212)) (exp$ok!1554 ex1!233)) (= (exp$ctx!1546 ex1!233) g!205)) (= (exp$typ!1548 ex1!233) t1!211)) (= (exp$avar!1550 ex1!233) z!213)) (= (exp$bdecs!1552 ex1!233) (bdecs_decs!6700 ds1!218))) (exp$ok!1554 ex2!234)) (= (exp$ctx!1546 ex2!234) g!205)) (= (exp$typ!1548 ex2!234) t2!212)) (= (exp$avar!1550 ex2!234) z!213)) (= (exp$bdecs!1552 ex2!234) (bdecs_decs!6700 ds2!219))) (and (and (and (and (subdecs$ok!1586 (ite ((_ is subtyp_refl!6762) st!225) (subdecs_refl!6803 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 ds2!219) (ite ((_ is subtyp_top!6780) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_bind!6752) st!225) (sds!6757 st!225) (ite ((_ is subtyp_sel_l!6766) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_sel_r!6773) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_trans!6784) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) error_value!6861))))))) (subdecs$ok!1586 (ite ((_ is subtyp_refl!6762) st!225) (subdecs_refl!6803 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 ds2!219) (ite ((_ is subtyp_top!6780) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_bind!6752) st!225) (sds!6757 st!225) (ite ((_ is subtyp_sel_l!6766) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_sel_r!6773) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_trans!6784) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) error_value!6861)))))))) (= (subdecs$ctx!1580 (ite ((_ is subtyp_refl!6762) st!225) (subdecs_refl!6803 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 ds2!219) (ite ((_ is subtyp_top!6780) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_bind!6752) st!225) (sds!6757 st!225) (ite ((_ is subtyp_sel_l!6766) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_sel_r!6773) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_trans!6784) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) error_value!6861))))))) (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)))) (= (subdecs$decs1!1582 (ite ((_ is subtyp_refl!6762) st!225) (subdecs_refl!6803 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 ds2!219) (ite ((_ is subtyp_top!6780) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_bind!6752) st!225) (sds!6757 st!225) (ite ((_ is subtyp_sel_l!6766) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_sel_r!6773) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_trans!6784) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) error_value!6861))))))) ds1!218)) (= (subdecs$decs2!1584 (ite ((_ is subtyp_refl!6762) st!225) (subdecs_refl!6803 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 ds2!219) (ite ((_ is subtyp_top!6780) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_bind!6752) st!225) (sds!6757 st!225) (ite ((_ is subtyp_sel_l!6766) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_sel_r!6773) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) (ite ((_ is subtyp_trans!6784) st!225) (subdecs_nil!6799 (ctx_cons!6657 g!205 z!213 (typ_bind!6666 z!213 ds1!218)) ds1!218 decs_nil!6678) error_value!6861))))))) ds2!219)))) ))
(check-sat)
(exit)

