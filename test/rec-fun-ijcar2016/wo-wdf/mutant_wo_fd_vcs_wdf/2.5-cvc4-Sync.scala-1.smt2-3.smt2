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


(declare-datatypes ((Entry!937 0)) (((Entry!938 (id!939 (_ BitVec 32)) (version!940 (_ BitVec 32)) (versionSynced!941 (_ BitVec 32)) (f1!942 (_ BitVec 32)) (f2!943 (_ BitVec 32))))
))
(declare-fun Entry$isSynced!888 (Entry!937) Bool)
(declare-sort I_Entry$isSynced!888 0)
(declare-fun Entry$isSynced!888_arg_0_1 (I_Entry$isSynced!888) Entry!937)
(assert (forall ((?i I_Entry$isSynced!888)) (= (Entry$isSynced!888 (Entry$isSynced!888_arg_0_1 ?i)) (= (versionSynced!941 (Entry$isSynced!888_arg_0_1 ?i)) (version!940 (Entry$isSynced!888_arg_0_1 ?i)))) ))
(assert (not (forall (($this!887 Entry!937)) (or (Entry$isSynced!888 (Entry!938 (id!939 $this!887) (f1!942 $this!887) (version!940 $this!887) (version!940 $this!887) (f2!943 $this!887))) (forall ((?z I_Entry$isSynced!888)) (not (= (Entry$isSynced!888_arg_0_1 ?z) (Entry!938 (id!939 $this!887) (f1!942 $this!887) (version!940 $this!887) (version!940 $this!887) (f2!943 $this!887)))) )) )))
(check-sat)
(exit)

