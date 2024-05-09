; 
(set-info :status unknown)
(set-logic QF_DT)
(declare-datatypes ((Enum_A_B_C_D_E_F_G_H_I_J_K_L_M_N_O_P_Q_R_S_T_U_V_W_X 0)) (((A) (B) (C) (D) (E) (F) (G) (H) (I) (J) (K) (L) (M) (N) (O) (P) (Q) (R) (S) (T) (U) (V) (W) (X))))
 (declare-datatypes ((Tower 0)) (((stack (top Enum_A_B_C_D_E_F_G_H_I_J_K_L_M_N_O_P_Q_R_S_T_U_V_W_X) (rest Tower)) (empty))))
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
 (let ((?x36 (stack J empty)))
 (let ((?x37 (stack X ?x36)))
 (let ((?x38 (stack A ?x37)))
 (let ((?x39 (stack U ?x38)))
 (let ((?x40 (stack B ?x39)))
 (let ((?x130 (left s_tmp_)))
 (= ?x130 ?x40))))))))
(assert
 (let ((?x41 (stack I empty)))
 (let ((?x42 (stack O ?x41)))
 (let ((?x43 (stack Q ?x42)))
 (let ((?x44 (stack D ?x43)))
 (let ((?x45 (stack S ?x44)))
 (let ((?x46 (stack L ?x45)))
 (let ((?x47 (stack M ?x46)))
 (let ((?x133 (center s_tmp__)))
 (= ?x133 ?x47))))))))))
(assert
 (let ((?x48 (stack C empty)))
 (let ((?x49 (stack E ?x48)))
 (let ((?x50 (stack F ?x49)))
 (let ((?x51 (stack G ?x50)))
 (let ((?x52 (stack H ?x51)))
 (let ((?x53 (stack K ?x52)))
 (let ((?x54 (stack N ?x53)))
 (let ((?x55 (stack P ?x54)))
 (let ((?x56 (stack R ?x55)))
 (let ((?x57 (stack T ?x56)))
 (let ((?x58 (stack V ?x57)))
 (let ((?x59 (stack W ?x58)))
 (let ((?x136 (right s_tmp___)))
 (= ?x136 ?x59)))))))))))))))
(assert
 (= c_tmp____ c!0))
(assert
 (= s_ s_tmp___))
(assert
 (= c_ c_tmp____))
(assert
 (let ((?x163 (left s_tmp__)))
 (= (left s_tmp___) ?x163)))
(assert
 (let ((?x133 (center s_tmp__)))
 (= (center s_tmp___) ?x133)))
(assert
 (let ((?x167 (center s_tmp_)))
 (= ?x167 (center s_tmp))))
(assert
 (let ((?x170 (right s_tmp_)))
 (= ?x170 (right s_tmp))))
(assert
 (let ((?x130 (left s_tmp_)))
 (let ((?x163 (left s_tmp__)))
 (= ?x163 ?x130))))
(assert
 (let ((?x170 (right s_tmp_)))
 (let ((?x174 (right s_tmp__)))
 (= ?x174 ?x170))))
(assert
 (= c__ c!1))
(assert
 (let ((?x107 (left s_)))
 (let ((?x320 (left s__)))
 (let (($x299 (= ?x320 ?x107)))
 (let ((?x110 (right s_)))
 (let (($x335 ((_ is stack ) ?x110)))
 (let (($x326 (= c_ right-to-left)))
 (let (($x291 (and $x326 $x335)))
 (let ((?x112 (center s_)))
 (let (($x292 ((_ is stack ) ?x112)))
 (let (($x293 (= c_ center-to-right)))
 (let (($x339 (and $x293 $x292)))
 (let (($x340 (= c_ center-to-left)))
 (let (($x341 (and $x340 $x292)))
 (let (($x311 (ite $x341 (= ?x320 (stack (top ?x112) ?x107)) (ite $x339 $x299 (ite $x291 (= ?x320 (stack (top ?x110) ?x107)) $x299)))))
 (let ((?x312 (rest ?x107)))
 (let (($x331 (= ?x320 ?x312)))
 (let (($x300 ((_ is stack ) ?x107)))
 (let (($x301 (= c_ left-to-right)))
 (let (($x302 (and $x301 $x300)))
 (let (($x315 (= c_ left-to-center)))
 (let (($x316 (and $x315 $x300)))
 (ite $x316 $x331 (ite $x302 $x331 $x311))))))))))))))))))))))))
(assert
 (let ((?x110 (right s_)))
 (let ((?x313 (right s__)))
 (let (($x337 (= ?x313 ?x110)))
 (let ((?x304 (rest ?x110)))
 (let (($x295 (= ?x313 ?x304)))
 (let (($x335 ((_ is stack ) ?x110)))
 (let (($x324 (= c_ right-to-center)))
 (let (($x325 (and $x324 $x335)))
 (let (($x326 (= c_ right-to-left)))
 (let (($x291 (and $x326 $x335)))
 (let ((?x112 (center s_)))
 (let (($x292 ((_ is stack ) ?x112)))
 (let (($x293 (= c_ center-to-right)))
 (let (($x339 (and $x293 $x292)))
 (let (($x308 (ite $x339 (= ?x313 (stack (top ?x112) ?x110)) (ite $x291 $x295 (ite $x325 $x295 $x337)))))
 (let (($x340 (= c_ center-to-left)))
 (let (($x341 (and $x340 $x292)))
 (let ((?x107 (left s_)))
 (let (($x300 ((_ is stack ) ?x107)))
 (let (($x301 (= c_ left-to-right)))
 (let (($x302 (and $x301 $x300)))
 (let (($x315 (= c_ left-to-center)))
 (let (($x316 (and $x315 $x300)))
 (ite $x316 (= ?x313 (stack (top ?x107) ?x110)) (ite $x302 $x337 (ite $x341 $x337 $x308)))))))))))))))))))))))))))
(assert
 (let ((?x112 (center s_)))
 (let ((?x322 (center s__)))
 (let (($x297 (= ?x322 ?x112)))
 (let ((?x110 (right s_)))
 (let (($x335 ((_ is stack ) ?x110)))
 (let (($x324 (= c_ right-to-center)))
 (let (($x325 (and $x324 $x335)))
 (let (($x326 (= c_ right-to-left)))
 (let (($x291 (and $x326 $x335)))
 (let ((?x288 (rest ?x112)))
 (let (($x343 (= ?x322 ?x288)))
 (let (($x292 ((_ is stack ) ?x112)))
 (let (($x293 (= c_ center-to-right)))
 (let (($x339 (and $x293 $x292)))
 (let (($x307 (ite $x339 $x343 (ite $x291 $x297 (ite $x325 (= ?x322 (stack (top ?x110) ?x112)) $x297)))))
 (let (($x340 (= c_ center-to-left)))
 (let (($x341 (and $x340 $x292)))
 (let ((?x107 (left s_)))
 (let (($x300 ((_ is stack ) ?x107)))
 (let (($x301 (= c_ left-to-right)))
 (let (($x302 (and $x301 $x300)))
 (let (($x315 (= c_ left-to-center)))
 (let (($x316 (and $x315 $x300)))
 (ite $x316 $x297 (ite $x302 (= ?x322 (stack (top ?x107) ?x112)) (ite $x341 $x343 $x307)))))))))))))))))))))))))))
(assert
 (let ((?x77 (stack J (stack I (stack D (stack C (stack B (stack A empty))))))))
 (let ((?x83 (stack X (stack T (stack S (stack Q (stack N (stack M ?x77))))))))
 (let ((?x313 (right s__)))
 (let (($x351 (= ?x313 ?x83)))
 (let ((?x71 (stack U (stack R (stack H empty)))))
 (let ((?x322 (center s__)))
 (let (($x391 (= ?x322 ?x71)))
 (let ((?x65 (stack E (stack O (stack V (stack L (stack W (stack G empty))))))))
 (let ((?x68 (stack F (stack P (stack K ?x65)))))
 (let ((?x320 (left s__)))
 (let (($x392 (= ?x320 ?x68)))
 (let (($x394 (not (and $x392 $x391 $x351))))
 (not $x394))))))))))))))
(check-sat)
