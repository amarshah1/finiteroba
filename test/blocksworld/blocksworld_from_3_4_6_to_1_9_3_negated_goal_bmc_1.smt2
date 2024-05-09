; 
(set-info :status unknown)
(set-logic QF_DT)
(declare-datatypes ((Enum_A_B_C_D_E_F_G_H_I_J_K_L_M 0)) (((A) (B) (C) (D) (E) (F) (G) (H) (I) (J) (K) (L) (M))))
 (declare-datatypes ((Tower 0)) (((stack (top Enum_A_B_C_D_E_F_G_H_I_J_K_L_M) (rest Tower)) (empty))))
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
 (let ((?x25 (stack I empty)))
 (let ((?x26 (stack F ?x25)))
 (let ((?x27 (stack H ?x26)))
 (let ((?x96 (left s_tmp_)))
 (= ?x96 ?x27))))))
(assert
 (let ((?x28 (stack A empty)))
 (let ((?x29 (stack G ?x28)))
 (let ((?x30 (stack J ?x29)))
 (let ((?x31 (stack M ?x30)))
 (let ((?x99 (center s_tmp__)))
 (= ?x99 ?x31)))))))
(assert
 (let ((?x32 (stack B empty)))
 (let ((?x33 (stack C ?x32)))
 (let ((?x34 (stack D ?x33)))
 (let ((?x35 (stack E ?x34)))
 (let ((?x36 (stack K ?x35)))
 (let ((?x37 (stack L ?x36)))
 (let ((?x102 (right s_tmp___)))
 (= ?x102 ?x37)))))))))
(assert
 (= c_tmp____ c!0))
(assert
 (= s_ s_tmp___))
(assert
 (= c_ c_tmp____))
(assert
 (let ((?x129 (left s_tmp__)))
 (= (left s_tmp___) ?x129)))
(assert
 (let ((?x99 (center s_tmp__)))
 (= (center s_tmp___) ?x99)))
(assert
 (let ((?x133 (center s_tmp_)))
 (= ?x133 (center s_tmp))))
(assert
 (let ((?x136 (right s_tmp_)))
 (= ?x136 (right s_tmp))))
(assert
 (let ((?x96 (left s_tmp_)))
 (let ((?x129 (left s_tmp__)))
 (= ?x129 ?x96))))
(assert
 (let ((?x136 (right s_tmp_)))
 (let ((?x140 (right s_tmp__)))
 (= ?x140 ?x136))))
(assert
 (= c__ c!1))
(assert
 (let ((?x73 (left s_)))
 (let ((?x223 (left s__)))
 (let (($x268 (= ?x223 ?x73)))
 (let ((?x76 (right s_)))
 (let (($x226 ((_ is stack ) ?x76)))
 (let (($x241 (= c_ right-to-left)))
 (let (($x242 (and $x241 $x226)))
 (let ((?x78 (center s_)))
 (let (($x243 ((_ is stack ) ?x78)))
 (let (($x244 (= c_ center-to-right)))
 (let (($x245 (and $x244 $x243)))
 (let (($x246 (= c_ center-to-left)))
 (let (($x247 (and $x246 $x243)))
 (let (($x277 (ite $x247 (= ?x223 (stack (top ?x78) ?x73)) (ite $x245 $x268 (ite $x242 (= ?x223 (stack (top ?x76) ?x73)) $x268)))))
 (let ((?x230 (rest ?x73)))
 (let (($x255 (= ?x223 ?x230)))
 (let (($x248 ((_ is stack ) ?x73)))
 (let (($x249 (= c_ left-to-right)))
 (let (($x250 (and $x249 $x248)))
 (let (($x251 (= c_ left-to-center)))
 (let (($x252 (and $x251 $x248)))
 (ite $x252 $x255 (ite $x250 $x255 $x277))))))))))))))))))))))))
(assert
 (let ((?x76 (right s_)))
 (let ((?x231 (right s__)))
 (let (($x264 (= ?x231 ?x76)))
 (let ((?x237 (rest ?x76)))
 (let (($x261 (= ?x231 ?x237)))
 (let (($x226 ((_ is stack ) ?x76)))
 (let (($x239 (= c_ right-to-center)))
 (let (($x240 (and $x239 $x226)))
 (let (($x241 (= c_ right-to-left)))
 (let (($x242 (and $x241 $x226)))
 (let ((?x78 (center s_)))
 (let (($x243 ((_ is stack ) ?x78)))
 (let (($x244 (= c_ center-to-right)))
 (let (($x245 (and $x244 $x243)))
 (let (($x274 (ite $x245 (= ?x231 (stack (top ?x78) ?x76)) (ite $x242 $x261 (ite $x240 $x261 $x264)))))
 (let (($x246 (= c_ center-to-left)))
 (let (($x247 (and $x246 $x243)))
 (let ((?x73 (left s_)))
 (let (($x248 ((_ is stack ) ?x73)))
 (let (($x249 (= c_ left-to-right)))
 (let (($x250 (and $x249 $x248)))
 (let (($x251 (= c_ left-to-center)))
 (let (($x252 (and $x251 $x248)))
 (ite $x252 (= ?x231 (stack (top ?x73) ?x76)) (ite $x250 $x264 (ite $x247 $x264 $x274)))))))))))))))))))))))))))
(assert
 (let ((?x78 (center s_)))
 (let ((?x234 (center s__)))
 (let (($x266 (= ?x234 ?x78)))
 (let ((?x76 (right s_)))
 (let (($x226 ((_ is stack ) ?x76)))
 (let (($x239 (= c_ right-to-center)))
 (let (($x240 (and $x239 $x226)))
 (let (($x241 (= c_ right-to-left)))
 (let (($x242 (and $x241 $x226)))
 (let ((?x227 (rest ?x78)))
 (let (($x258 (= ?x234 ?x227)))
 (let (($x243 ((_ is stack ) ?x78)))
 (let (($x244 (= c_ center-to-right)))
 (let (($x245 (and $x244 $x243)))
 (let (($x273 (ite $x245 $x258 (ite $x242 $x266 (ite $x240 (= ?x234 (stack (top ?x76) ?x78)) $x266)))))
 (let (($x246 (= c_ center-to-left)))
 (let (($x247 (and $x246 $x243)))
 (let ((?x73 (left s_)))
 (let (($x248 ((_ is stack ) ?x73)))
 (let (($x249 (= c_ left-to-right)))
 (let (($x250 (and $x249 $x248)))
 (let (($x251 (= c_ left-to-center)))
 (let (($x252 (and $x251 $x248)))
 (ite $x252 $x266 (ite $x250 (= ?x234 (stack (top ?x73) ?x78)) (ite $x247 $x258 $x273)))))))))))))))))))))))))))
(assert
 (let ((?x49 (stack M (stack J (stack A empty)))))
 (let ((?x231 (right s__)))
 (let (($x284 (= ?x231 ?x49)))
 (let ((?x44 (stack E (stack F (stack B (stack K (stack D (stack G empty))))))))
 (let ((?x47 (stack I (stack C (stack H ?x44)))))
 (let ((?x234 (center s__)))
 (let (($x326 (= ?x234 ?x47)))
 (let ((?x38 (stack L empty)))
 (let ((?x223 (left s__)))
 (let (($x327 (= ?x223 ?x38)))
 (let (($x329 (not (and $x327 $x326 $x284))))
 (not $x329)))))))))))))
(check-sat)