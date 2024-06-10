(define-fun A () (_ BitVec 3) (_ bv0 3 ))
(define-fun
   is-A ((enum_var (_ BitVec 3)) ) Bool
     (= ((_ extract 2 0) enum_var ) (_ bv0 3 )))
(assert (is-A A ))
(define-fun B () (_ BitVec 3) (_ bv1 3 ))
(define-fun
   is-B ((enum_var (_ BitVec 3)) ) Bool
     (= ((_ extract 2 0) enum_var ) (_ bv1 3 )))
(assert (is-B B ))
(define-fun C () (_ BitVec 3) (_ bv2 3 ))
(define-fun
   is-C ((enum_var (_ BitVec 3)) ) Bool
     (= ((_ extract 2 0) enum_var ) (_ bv2 3 )))
(assert (is-C C ))
(define-fun D () (_ BitVec 3) (_ bv3 3 ))
(define-fun
   is-D ((enum_var (_ BitVec 3)) ) Bool
     (= ((_ extract 2 0) enum_var ) (_ bv3 3 )))
(assert (is-D D ))
(define-fun E () (_ BitVec 3) (_ bv4 3 ))
(define-fun
   is-E ((enum_var (_ BitVec 3)) ) Bool
     (= ((_ extract 2 0) enum_var ) (_ bv4 3 )))
(assert (is-E E ))
(define-fun F () (_ BitVec 3) (_ bv5 3 ))
(define-fun
   is-F ((enum_var (_ BitVec 3)) ) Bool
     (= ((_ extract 2 0) enum_var ) (_ bv5 3 )))
(assert (is-F F ))
(define-fun G () (_ BitVec 3) (_ bv6 3 ))
(define-fun
   is-G ((enum_var (_ BitVec 3)) ) Bool
     (bvuge ((_ extract 2 0) enum_var ) (_ bv6 3 ) ))
(assert (is-G G ))
(declare-fun A1_buffer () (_ BitVec 9))
(define-fun A1 () (_ BitVec 11) (concat (_ bv0 2 ) A1_buffer ))
(define-fun
   is-A1 ((t1_var (_ BitVec 11)) ) Bool
     (= ((_ extract 10 9) t1_var ) (_ bv0 2 )))
(assert (is-A1 A1 ))
(declare-fun B1_buffer () (_ BitVec 9))
(define-fun B1 () (_ BitVec 11) (concat (_ bv1 2 ) B1_buffer ))
(define-fun
   is-B1 ((t1_var (_ BitVec 11)) ) Bool
     (= ((_ extract 10 9) t1_var ) (_ bv1 2 )))
(assert (is-B1 B1 ))
(define-fun
   record1
     ((left_var (_ BitVec 3)) (center_var (_ BitVec 3))
      (right_var (_ BitVec 3)) )
     (_ BitVec 11)
     (concat (concat (concat (_ bv2 2 ) right_var ) center_var ) left_var ))
(declare-fun left_non_bv ((_ BitVec 11) ) (_ BitVec 3))
(declare-fun center_non_bv ((_ BitVec 11) ) (_ BitVec 3))
(declare-fun right_non_bv ((_ BitVec 11) ) (_ BitVec 3))
(define-fun
   left ((t1_var (_ BitVec 11)) ) (_ BitVec 3)
     (ite (= ((_ extract 10 9) t1_var ) (_ bv2 2 )) ((_ extract 2 0) t1_var )
      (left_non_bv t1_var )))
(define-fun
   center ((t1_var (_ BitVec 11)) ) (_ BitVec 3)
     (ite (= ((_ extract 10 9) t1_var ) (_ bv2 2 )) ((_ extract 5 3) t1_var )
      (center_non_bv t1_var )))
(define-fun
   right ((t1_var (_ BitVec 11)) ) (_ BitVec 3)
     (ite (= ((_ extract 10 9) t1_var ) (_ bv2 2 )) ((_ extract 8 6) t1_var )
      (right_non_bv t1_var )))
(define-fun
   is-record1 ((t1_var (_ BitVec 11)) ) Bool
     (bvuge ((_ extract 10 9) t1_var ) (_ bv2 2 ) ))
(define-fun
   record2
     ((left2_var (_ BitVec 11)) (center2_var (_ BitVec 11))
      (right2_var (_ BitVec 11)) )
     (_ BitVec 34)
     (concat (concat (concat (_ bv0 1 ) right2_var ) center2_var ) left2_var ))
(declare-fun left2_non_bv ((_ BitVec 34) ) (_ BitVec 11))
(declare-fun center2_non_bv ((_ BitVec 34) ) (_ BitVec 11))
(declare-fun right2_non_bv ((_ BitVec 34) ) (_ BitVec 11))
(define-fun
   left2 ((t2_var (_ BitVec 34)) ) (_ BitVec 11)
     (ite (= ((_ extract 33 33) t2_var ) (_ bv0 1 ))
      ((_ extract 10 0) t2_var ) (left2_non_bv t2_var )))
(define-fun
   center2 ((t2_var (_ BitVec 34)) ) (_ BitVec 11)
     (ite (= ((_ extract 33 33) t2_var ) (_ bv0 1 ))
      ((_ extract 21 11) t2_var ) (center2_non_bv t2_var )))
(define-fun
   right2 ((t2_var (_ BitVec 34)) ) (_ BitVec 11)
     (ite (= ((_ extract 33 33) t2_var ) (_ bv0 1 ))
      ((_ extract 32 22) t2_var ) (right2_non_bv t2_var )))
(define-fun
   is-record2 ((t2_var (_ BitVec 34)) ) Bool
     (bvuge ((_ extract 33 33) t2_var ) (_ bv0 1 ) ))
(define-fun
   record3
     ((left3_var (_ BitVec 34)) (center3_var (_ BitVec 34))
      (right3_var (_ BitVec 34)) )
     (_ BitVec 103)
     (concat (concat (concat (_ bv0 1 ) right3_var ) center3_var ) left3_var ))
(declare-fun left3_non_bv ((_ BitVec 103) ) (_ BitVec 34))
(declare-fun center3_non_bv ((_ BitVec 103) ) (_ BitVec 34))
(declare-fun right3_non_bv ((_ BitVec 103) ) (_ BitVec 34))
(define-fun
   left3 ((t3_var (_ BitVec 103)) ) (_ BitVec 34)
     (ite (= ((_ extract 102 102) t3_var ) (_ bv0 1 ))
      ((_ extract 33 0) t3_var ) (left3_non_bv t3_var )))
(define-fun
   center3 ((t3_var (_ BitVec 103)) ) (_ BitVec 34)
     (ite (= ((_ extract 102 102) t3_var ) (_ bv0 1 ))
      ((_ extract 67 34) t3_var ) (center3_non_bv t3_var )))
(define-fun
   right3 ((t3_var (_ BitVec 103)) ) (_ BitVec 34)
     (ite (= ((_ extract 102 102) t3_var ) (_ bv0 1 ))
      ((_ extract 101 68) t3_var ) (right3_non_bv t3_var )))
(define-fun
   is-record3 ((t3_var (_ BitVec 103)) ) Bool
     (bvuge ((_ extract 102 102) t3_var ) (_ bv0 1 ) ))
(define-fun
   record4
     ((left4_var (_ BitVec 103)) (center4_var (_ BitVec 103))
      (right4_var (_ BitVec 103)) )
     (_ BitVec 310)
     (concat (concat (concat (_ bv0 1 ) right4_var ) center4_var ) left4_var ))
(declare-fun left4_non_bv ((_ BitVec 310) ) (_ BitVec 103))
(declare-fun center4_non_bv ((_ BitVec 310) ) (_ BitVec 103))
(declare-fun right4_non_bv ((_ BitVec 310) ) (_ BitVec 103))
(define-fun
   left4 ((t4_var (_ BitVec 310)) ) (_ BitVec 103)
     (ite (= ((_ extract 309 309) t4_var ) (_ bv0 1 ))
      ((_ extract 102 0) t4_var ) (left4_non_bv t4_var )))
(define-fun
   center4 ((t4_var (_ BitVec 310)) ) (_ BitVec 103)
     (ite (= ((_ extract 309 309) t4_var ) (_ bv0 1 ))
      ((_ extract 205 103) t4_var ) (center4_non_bv t4_var )))
(define-fun
   right4 ((t4_var (_ BitVec 310)) ) (_ BitVec 103)
     (ite (= ((_ extract 309 309) t4_var ) (_ bv0 1 ))
      ((_ extract 308 206) t4_var ) (right4_non_bv t4_var )))
(define-fun
   is-record4 ((t4_var (_ BitVec 310)) ) Bool
     (bvuge ((_ extract 309 309) t4_var ) (_ bv0 1 ) ))
(declare-fun r0 () (_ BitVec 310))
(assert
 (and (and (not (is-record4 r0 )) (not (is-record3 (left4 r0 ) ))
  (not (is-record2 (left3 (left4 r0 ) ) ))
  (not (is-record1 (left2 (left3 (left4 r0 ) ) ) )) ) (and
  (not (is-record4 r0 )) (not (is-record3 (left4 r0 ) ))
  (not (is-record2 (left3 (left4 r0 ) ) ))
  (not (is-A1 (left2 (left3 (left4 r0 ) ) ) )) ) (and (not (is-record4 r0 ))
  (not (is-record3 (left4 r0 ) )) (not (is-record2 (left3 (left4 r0 ) ) ))
  (not (is-B1 (left2 (left3 (left4 r0 ) ) ) )) ) ))
(check-sat)