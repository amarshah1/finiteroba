; 
(set-info :status unknown)
(set-logic QF_DT)
(declare-datatypes ((Enum_A_B_C_D_E_F_G_H_I_J_K_L_M_N_O_P_Q_R_S_T 0)) (((A) (B) (C) (D) (E) (F) (G) (H) (I) (J) (K) (L) (M) (N) (O) (P) (Q) (R) (S) (T))))
 (declare-datatypes ((Tower 0)) (((stack (top Enum_A_B_C_D_E_F_G_H_I_J_K_L_M_N_O_P_Q_R_S_T) (rest Tower)) (empty))))
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
 (let ((?x32 (stack R empty)))
 (let ((?x33 (stack D ?x32)))
 (let ((?x34 (stack O ?x33)))
 (let ((?x35 (stack K ?x34)))
 (let ((?x36 (stack B ?x35)))
 (let ((?x37 (stack L ?x36)))
 (let ((?x38 (stack N ?x37)))
 (let ((?x39 (stack G ?x38)))
 (let ((?x40 (stack J ?x39)))
 (let ((?x118 (left s_tmp_)))
 (= ?x118 ?x40))))))))))))
(assert
 (let ((?x41 (stack T empty)))
 (let ((?x42 (stack H ?x41)))
 (let ((?x43 (stack Q ?x42)))
 (let ((?x44 (stack S ?x43)))
 (let ((?x45 (stack A ?x44)))
 (let ((?x46 (stack C ?x45)))
 (let ((?x47 (stack P ?x46)))
 (let ((?x48 (stack E ?x47)))
 (let ((?x49 (stack F ?x48)))
 (let ((?x121 (center s_tmp__)))
 (= ?x121 ?x49))))))))))))
(assert
 (let ((?x50 (stack I empty)))
 (let ((?x51 (stack M ?x50)))
 (let ((?x124 (right s_tmp___)))
 (= ?x124 ?x51)))))
(assert
 (= c_tmp____ c!0))
(assert
 (= s_ s_tmp___))
(assert
 (= c_ c_tmp____))
(assert
 (let ((?x151 (left s_tmp__)))
 (= (left s_tmp___) ?x151)))
(assert
 (let ((?x121 (center s_tmp__)))
 (= (center s_tmp___) ?x121)))
(assert
 (let ((?x155 (center s_tmp_)))
 (= ?x155 (center s_tmp))))
(assert
 (let ((?x158 (right s_tmp_)))
 (= ?x158 (right s_tmp))))
(assert
 (let ((?x118 (left s_tmp_)))
 (let ((?x151 (left s_tmp__)))
 (= ?x151 ?x118))))
(assert
 (let ((?x158 (right s_tmp_)))
 (let ((?x162 (right s_tmp__)))
 (= ?x162 ?x158))))
(assert
 (= c__ c!1))
(assert
 (let ((?x95 (left s_)))
 (let ((?x293 (left s__)))
 (let (($x290 (= ?x293 ?x95)))
 (let ((?x98 (right s_)))
 (let (($x308 ((_ is stack ) ?x98)))
 (let (($x266 (= c_ right-to-left)))
 (let (($x267 (and $x266 $x308)))
 (let ((?x100 (center s_)))
 (let (($x268 ((_ is stack ) ?x100)))
 (let (($x269 (= c_ center-to-right)))
 (let (($x273 (and $x269 $x268)))
 (let (($x274 (= c_ center-to-left)))
 (let (($x275 (and $x274 $x268)))
 (let (($x320 (ite $x275 (= ?x293 (stack (top ?x100) ?x95)) (ite $x273 $x290 (ite $x267 (= ?x293 (stack (top ?x98) ?x95)) $x290)))))
 (let ((?x285 (rest ?x95)))
 (let (($x283 (= ?x293 ?x285)))
 (let (($x276 ((_ is stack ) ?x95)))
 (let (($x277 (= c_ left-to-right)))
 (let (($x278 (and $x277 $x276)))
 (let (($x270 (= c_ left-to-center)))
 (let (($x271 (and $x270 $x276)))
 (ite $x271 $x283 (ite $x278 $x283 $x320))))))))))))))))))))))))
(assert
 (let ((?x98 (right s_)))
 (let ((?x286 (right s__)))
 (let (($x304 (= ?x286 ?x98)))
 (let ((?x295 (rest ?x98)))
 (let (($x301 (= ?x286 ?x295)))
 (let (($x308 ((_ is stack ) ?x98)))
 (let (($x264 (= c_ right-to-center)))
 (let (($x265 (and $x264 $x308)))
 (let (($x266 (= c_ right-to-left)))
 (let (($x267 (and $x266 $x308)))
 (let ((?x100 (center s_)))
 (let (($x268 ((_ is stack ) ?x100)))
 (let (($x269 (= c_ center-to-right)))
 (let (($x273 (and $x269 $x268)))
 (let (($x317 (ite $x273 (= ?x286 (stack (top ?x100) ?x98)) (ite $x267 $x301 (ite $x265 $x301 $x304)))))
 (let (($x274 (= c_ center-to-left)))
 (let (($x275 (and $x274 $x268)))
 (let ((?x95 (left s_)))
 (let (($x276 ((_ is stack ) ?x95)))
 (let (($x277 (= c_ left-to-right)))
 (let (($x278 (and $x277 $x276)))
 (let (($x270 (= c_ left-to-center)))
 (let (($x271 (and $x270 $x276)))
 (ite $x271 (= ?x286 (stack (top ?x95) ?x98)) (ite $x278 $x304 (ite $x275 $x304 $x317)))))))))))))))))))))))))))
(assert
 (let ((?x100 (center s_)))
 (let ((?x280 (center s__)))
 (let (($x288 (= ?x280 ?x100)))
 (let ((?x98 (right s_)))
 (let (($x308 ((_ is stack ) ?x98)))
 (let (($x264 (= c_ right-to-center)))
 (let (($x265 (and $x264 $x308)))
 (let (($x266 (= c_ right-to-left)))
 (let (($x267 (and $x266 $x308)))
 (let ((?x297 (rest ?x100)))
 (let (($x310 (= ?x280 ?x297)))
 (let (($x268 ((_ is stack ) ?x100)))
 (let (($x269 (= c_ center-to-right)))
 (let (($x273 (and $x269 $x268)))
 (let (($x316 (ite $x273 $x310 (ite $x267 $x288 (ite $x265 (= ?x280 (stack (top ?x98) ?x100)) $x288)))))
 (let (($x274 (= c_ center-to-left)))
 (let (($x275 (and $x274 $x268)))
 (let ((?x95 (left s_)))
 (let (($x276 ((_ is stack ) ?x95)))
 (let (($x277 (= c_ left-to-right)))
 (let (($x278 (and $x277 $x276)))
 (let (($x270 (= c_ left-to-center)))
 (let (($x271 (and $x270 $x276)))
 (ite $x271 $x288 (ite $x278 (= ?x280 (stack (top ?x95) ?x100)) (ite $x275 $x310 $x316)))))))))))))))))))))))))))
(assert
 (let ((?x71 (stack S (stack G (stack D empty)))))
 (let ((?x286 (right s__)))
 (let (($x327 (= ?x286 ?x71)))
 (let ((?x68 (stack I (stack H (stack F (stack N (stack C empty)))))))
 (let ((?x280 (center s__)))
 (let (($x369 (= ?x280 ?x68)))
 (let ((?x57 (stack K (stack R (stack Q (stack A (stack P (stack E empty))))))))
 (let ((?x63 (stack L (stack O (stack T (stack B (stack J (stack M ?x57))))))))
 (let ((?x293 (left s__)))
 (let (($x370 (= ?x293 ?x63)))
 (let (($x372 (not (and $x370 $x369 $x327))))
 (not $x372)))))))))))))
(check-sat)
