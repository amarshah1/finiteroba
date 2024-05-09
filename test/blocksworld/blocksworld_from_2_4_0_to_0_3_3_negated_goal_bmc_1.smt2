; 
(set-info :status unknown)
(set-logic QF_DT)
(declare-datatypes ((Enum_A_B_C_D_E_F 0)) (((A) (B) (C) (D) (E) (F))))
 (declare-datatypes ((Tower 0)) (((stack (top Enum_A_B_C_D_E_F) (rest Tower)) (empty))))
 (declare-datatypes ((Record_left_center_right 0)) (((Record_left_center_right (left Tower) (center Tower) (right Tower)))))
 (declare-datatypes ((Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center 0)) (((left-to-center) (left-to-right) (center-to-left) (center-to-right) (right-to-left) (right-to-center))))
 (declare-fun s () Record_left_center_right)
(declare-fun s_tmp () Record_left_center_right)
(declare-fun c () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c_tmp () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s_tmp_ () Record_left_center_right)
(declare-fun s_tmp__ () Record_left_center_right)
(declare-fun s_tmp___ () Record_left_center_right)
(declare-fun c!0 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c_tmp____ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s_ () Record_left_center_right)
(declare-fun c_ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c!1 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c__ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s__ () Record_left_center_right)
(assert
 (= s_tmp s))
(assert
 (= c_tmp c))
(assert
 (let ((?x19 (stack B empty)))
 (let ((?x18 (stack E ?x19)))
 (let ((?x75 (left s_tmp_)))
 (= ?x75 ?x18)))))
(assert
 (let ((?x20 (stack C empty)))
 (let ((?x21 (stack A ?x20)))
 (let ((?x22 (stack D ?x21)))
 (let ((?x23 (stack F ?x22)))
 (let ((?x78 (center s_tmp__)))
 (= ?x78 ?x23)))))))
(assert
 (let ((?x81 (right s_tmp___)))
 (= ?x81 empty)))
(assert
 (= c_tmp____ c!0))
(assert
 (= s_ s_tmp___))
(assert
 (= c_ c_tmp____))
(assert
 (let ((?x108 (left s_tmp__)))
 (= (left s_tmp___) ?x108)))
(assert
 (let ((?x78 (center s_tmp__)))
 (= (center s_tmp___) ?x78)))
(assert
 (let ((?x112 (center s_tmp_)))
 (= ?x112 (center s_tmp))))
(assert
 (let ((?x115 (right s_tmp_)))
 (= ?x115 (right s_tmp))))
(assert
 (let ((?x75 (left s_tmp_)))
 (let ((?x108 (left s_tmp__)))
 (= ?x108 ?x75))))
(assert
 (let ((?x115 (right s_tmp_)))
 (let ((?x119 (right s_tmp__)))
 (= ?x119 ?x115))))
(assert
 (= c__ c!1))
(assert
 (let ((?x52 (left s_)))
 (let ((?x184 (left s__)))
 (let (($x226 (= ?x184 ?x52)))
 (let ((?x55 (right s_)))
 (let (($x196 ((_ is stack ) ?x55)))
 (let (($x200 (and (= c_ right-to-left) $x196)))
 (let ((?x57 (center s_)))
 (let (($x201 ((_ is stack ) ?x57)))
 (let (($x202 (= c_ center-to-right)))
 (let (($x203 (and $x202 $x201)))
 (let (($x204 (= c_ center-to-left)))
 (let (($x205 (and $x204 $x201)))
 (let (($x235 (ite $x205 (= ?x184 (stack (top ?x57) ?x52)) (ite $x203 $x226 (ite $x200 (= ?x184 (stack (top ?x55) ?x52)) $x226)))))
 (let ((?x185 (rest ?x52)))
 (let (($x213 (= ?x184 ?x185)))
 (let (($x206 ((_ is stack ) ?x52)))
 (let (($x207 (= c_ left-to-right)))
 (let (($x208 (and $x207 $x206)))
 (let (($x209 (= c_ left-to-center)))
 (let (($x210 (and $x209 $x206)))
 (ite $x210 $x213 (ite $x208 $x213 $x235)))))))))))))))))))))))
(assert
 (let ((?x55 (right s_)))
 (let ((?x186 (right s__)))
 (let (($x222 (= ?x186 ?x55)))
 (let ((?x192 (rest ?x55)))
 (let (($x219 (= ?x186 ?x192)))
 (let (($x196 ((_ is stack ) ?x55)))
 (let (($x198 (and (= c_ right-to-center) $x196)))
 (let (($x200 (and (= c_ right-to-left) $x196)))
 (let ((?x57 (center s_)))
 (let (($x201 ((_ is stack ) ?x57)))
 (let (($x202 (= c_ center-to-right)))
 (let (($x203 (and $x202 $x201)))
 (let (($x232 (ite $x203 (= ?x186 (stack (top ?x57) ?x55)) (ite $x200 $x219 (ite $x198 $x219 $x222)))))
 (let (($x204 (= c_ center-to-left)))
 (let (($x205 (and $x204 $x201)))
 (let ((?x52 (left s_)))
 (let (($x206 ((_ is stack ) ?x52)))
 (let (($x207 (= c_ left-to-right)))
 (let (($x208 (and $x207 $x206)))
 (let (($x209 (= c_ left-to-center)))
 (let (($x210 (and $x209 $x206)))
 (ite $x210 (= ?x186 (stack (top ?x52) ?x55)) (ite $x208 $x222 (ite $x205 $x222 $x232)))))))))))))))))))))))))
(assert
 (let ((?x57 (center s_)))
 (let ((?x180 (center s__)))
 (let (($x224 (= ?x180 ?x57)))
 (let ((?x55 (right s_)))
 (let (($x196 ((_ is stack ) ?x55)))
 (let (($x198 (and (= c_ right-to-center) $x196)))
 (let (($x200 (and (= c_ right-to-left) $x196)))
 (let ((?x188 (rest ?x57)))
 (let (($x216 (= ?x180 ?x188)))
 (let (($x201 ((_ is stack ) ?x57)))
 (let (($x202 (= c_ center-to-right)))
 (let (($x203 (and $x202 $x201)))
 (let (($x231 (ite $x203 $x216 (ite $x200 $x224 (ite $x198 (= ?x180 (stack (top ?x55) ?x57)) $x224)))))
 (let (($x204 (= c_ center-to-left)))
 (let (($x205 (and $x204 $x201)))
 (let ((?x52 (left s_)))
 (let (($x206 ((_ is stack ) ?x52)))
 (let (($x207 (= c_ left-to-right)))
 (let (($x208 (and $x207 $x206)))
 (let (($x209 (= c_ left-to-center)))
 (let (($x210 (and $x209 $x206)))
 (ite $x210 $x224 (ite $x208 (= ?x180 (stack (top ?x52) ?x57)) (ite $x205 $x216 $x231)))))))))))))))))))))))))
(assert
 (let ((?x28 (stack E (stack B (stack A empty)))))
 (let ((?x186 (right s__)))
 (let (($x242 (= ?x186 ?x28)))
 (let ((?x24 (stack F (stack D (stack C empty)))))
 (let ((?x180 (center s__)))
 (let (($x271 (= ?x180 ?x24)))
 (let ((?x184 (left s__)))
 (let (($x272 (= ?x184 empty)))
 (let (($x274 (not (and $x272 $x271 $x242))))
 (not $x274)))))))))))
(check-sat)
