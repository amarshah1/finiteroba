;Testing a pattern matching case with many nested records
; sat means its not exhaustive

(declare-datatypes ((enum 0)) (((A) (B) (C) (D) (E) (F) (G))))
(declare-datatypes ((t1 0)) (((A1) (B1) (record1 (left enum) (center enum) (right enum)))))
(declare-datatypes ((t2 0)) (((record2 (left2 t1) (center2 t1) (right2 t1)))))
(declare-datatypes ((t3 0)) (((record3 (left3 t2) (center3 t2) (right3 t2)))))
(declare-datatypes ((t4 0)) (((record4 (left4 t3) (center4 t3) (right4 t3)))))



(declare-const r t4)
(assert 
 (not
    (or
        (and 
            (is-record4 r)
            (is-record3 (left4 r))
            (is-record2 (left3 (left4 r)))
            (is-record1 (left2 (left3 (left4 r))))
            )
        (and 
            (is-record4 r)
            (is-record3 (left4 r))
            (is-record2 (left3 (left4 r)))
            (is-A1 (left2 (left3 (left4 r))))
            )
        (and 
            (is-record4 r)
            (is-record3 (left4 r))
            (is-record2 (left3 (left4 r)))
            (is-B1 (left2 (left3 (left4 r))))
            )
     )
    )
 )

;eclare-const r1 t4)
;ssert 
;not
;  (or
;      (is-record1 (left2 (left3 (left4 r1))))
;      (is-A1 (left2 (left3 (left4 r1))))
;      (is-B1 (left2 (left3 (left4 r1))))
;   )
;  )
;


;declare-const r2 t1)
;
;assert 
;(and
;   (not (is-record1 r2))
;   (not (is-A1 r2))
;   (not (is-B1 r2))
;
;)
(check-sat)
(check-sat)
