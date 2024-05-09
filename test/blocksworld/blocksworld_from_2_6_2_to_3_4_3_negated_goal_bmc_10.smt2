; 
(set-info :status unknown)
(set-logic QF_DT)
(declare-datatypes ((Enum_A_B_C_D_E_F_G_H_I_J 0)) (((A) (B) (C) (D) (E) (F) (G) (H) (I) (J))))
 (declare-datatypes ((Tower 0)) (((stack (top Enum_A_B_C_D_E_F_G_H_I_J) (rest Tower)) (empty))))
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
(declare-fun c!2 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c___ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s___ () Record_left_center_right)
(declare-fun c!3 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c____ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s____ () Record_left_center_right)
(declare-fun c!4 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c_____ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s_____ () Record_left_center_right)
(declare-fun c!5 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c______ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s______ () Record_left_center_right)
(declare-fun c!6 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c_______ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s_______ () Record_left_center_right)
(declare-fun c!7 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c________ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s________ () Record_left_center_right)
(declare-fun c!8 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c_________ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s_________ () Record_left_center_right)
(declare-fun c!9 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c__________ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s__________ () Record_left_center_right)
(declare-fun c!10 () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun c___________ () Enum_left-to-center_left-to-right_center-to-left_center-to-right_right-to-left_right-to-center)
(declare-fun s___________ () Record_left_center_right)
(assert
 (= s_tmp s))
(assert
 (= c_tmp c))
(assert
 (let ((?x23 (stack J empty)))
 (let ((?x22 (stack B ?x23)))
 (let ((?x87 (left s_tmp_)))
 (= ?x87 ?x22)))))
(assert
 (let ((?x24 (stack D empty)))
 (let ((?x25 (stack I ?x24)))
 (let ((?x26 (stack A ?x25)))
 (let ((?x27 (stack C ?x26)))
 (let ((?x28 (stack E ?x27)))
 (let ((?x29 (stack H ?x28)))
 (let ((?x90 (center s_tmp__)))
 (= ?x90 ?x29)))))))))
(assert
 (let ((?x30 (stack F empty)))
 (let ((?x31 (stack G ?x30)))
 (let ((?x93 (right s_tmp___)))
 (= ?x93 ?x31)))))
(assert
 (= c_tmp____ c!0))
(assert
 (= s_ s_tmp___))
(assert
 (= c_ c_tmp____))
(assert
 (let ((?x120 (left s_tmp__)))
 (= (left s_tmp___) ?x120)))
(assert
 (let ((?x90 (center s_tmp__)))
 (= (center s_tmp___) ?x90)))
(assert
 (let ((?x124 (center s_tmp_)))
 (= ?x124 (center s_tmp))))
(assert
 (let ((?x127 (right s_tmp_)))
 (= ?x127 (right s_tmp))))
(assert
 (let ((?x87 (left s_tmp_)))
 (let ((?x120 (left s_tmp__)))
 (= ?x120 ?x87))))
(assert
 (let ((?x127 (right s_tmp_)))
 (let ((?x131 (right s_tmp__)))
 (= ?x131 ?x127))))
(assert
 (= c__ c!1))
(assert
 (let ((?x64 (left s_)))
 (let ((?x226 (left s__)))
 (let (($x250 (= ?x226 ?x64)))
 (let ((?x67 (right s_)))
 (let (($x220 ((_ is stack ) ?x67)))
 (let (($x223 (= c_ right-to-left)))
 (let (($x206 (and $x223 $x220)))
 (let ((?x69 (center s_)))
 (let (($x207 ((_ is stack ) ?x69)))
 (let (($x208 (= c_ center-to-right)))
 (let (($x227 (and $x208 $x207)))
 (let (($x228 (= c_ center-to-left)))
 (let (($x229 (and $x228 $x207)))
 (let (($x259 (ite $x229 (= ?x226 (stack (top ?x69) ?x64)) (ite $x227 $x250 (ite $x206 (= ?x226 (stack (top ?x67) ?x64)) $x250)))))
 (let (($x237 (= ?x226 (rest ?x64))))
 (let (($x230 ((_ is stack ) ?x64)))
 (let (($x231 (= c_ left-to-right)))
 (let (($x232 (and $x231 $x230)))
 (let (($x233 (= c_ left-to-center)))
 (let (($x234 (and $x233 $x230)))
 (ite $x234 $x237 (ite $x232 $x237 $x259)))))))))))))))))))))))
(assert
 (let ((?x67 (right s_)))
 (let ((?x213 (right s__)))
 (let (($x246 (= ?x213 ?x67)))
 (let (($x243 (= ?x213 (rest ?x67))))
 (let (($x220 ((_ is stack ) ?x67)))
 (let (($x221 (= c_ right-to-center)))
 (let (($x222 (and $x221 $x220)))
 (let (($x223 (= c_ right-to-left)))
 (let (($x206 (and $x223 $x220)))
 (let ((?x69 (center s_)))
 (let (($x207 ((_ is stack ) ?x69)))
 (let (($x208 (= c_ center-to-right)))
 (let (($x227 (and $x208 $x207)))
 (let (($x256 (ite $x227 (= ?x213 (stack (top ?x69) ?x67)) (ite $x206 $x243 (ite $x222 $x243 $x246)))))
 (let (($x228 (= c_ center-to-left)))
 (let (($x229 (and $x228 $x207)))
 (let ((?x64 (left s_)))
 (let (($x230 ((_ is stack ) ?x64)))
 (let (($x231 (= c_ left-to-right)))
 (let (($x232 (and $x231 $x230)))
 (let (($x233 (= c_ left-to-center)))
 (let (($x234 (and $x233 $x230)))
 (ite $x234 (= ?x213 (stack (top ?x64) ?x67)) (ite $x232 $x246 (ite $x229 $x246 $x256))))))))))))))))))))))))))
(assert
 (let ((?x69 (center s_)))
 (let ((?x216 (center s__)))
 (let (($x248 (= ?x216 ?x69)))
 (let ((?x67 (right s_)))
 (let (($x220 ((_ is stack ) ?x67)))
 (let (($x221 (= c_ right-to-center)))
 (let (($x222 (and $x221 $x220)))
 (let (($x223 (= c_ right-to-left)))
 (let (($x206 (and $x223 $x220)))
 (let (($x240 (= ?x216 (rest ?x69))))
 (let (($x207 ((_ is stack ) ?x69)))
 (let (($x208 (= c_ center-to-right)))
 (let (($x227 (and $x208 $x207)))
 (let (($x255 (ite $x227 $x240 (ite $x206 $x248 (ite $x222 (= ?x216 (stack (top ?x67) ?x69)) $x248)))))
 (let (($x228 (= c_ center-to-left)))
 (let (($x229 (and $x228 $x207)))
 (let ((?x64 (left s_)))
 (let (($x230 ((_ is stack ) ?x64)))
 (let (($x231 (= c_ left-to-right)))
 (let (($x232 (and $x231 $x230)))
 (let (($x233 (= c_ left-to-center)))
 (let (($x234 (and $x233 $x230)))
 (ite $x234 $x248 (ite $x232 (= ?x216 (stack (top ?x64) ?x69)) (ite $x229 $x240 $x255))))))))))))))))))))))))))
(assert
 (= c___ c!2))
(assert
 (let ((?x226 (left s__)))
 (let ((?x134 (left s___)))
 (let (($x379 (= ?x134 ?x226)))
 (let ((?x213 (right s__)))
 (let ((?x346 (top ?x213)))
 (let ((?x347 (stack ?x346 ?x226)))
 (let (($x373 (= ?x134 ?x347)))
 (let (($x349 ((_ is stack ) ?x213)))
 (let (($x352 (= c__ right-to-left)))
 (let (($x353 (and $x352 $x349)))
 (let ((?x216 (center s__)))
 (let (($x354 ((_ is stack ) ?x216)))
 (let (($x355 (= c__ center-to-right)))
 (let (($x356 (and $x355 $x354)))
 (let ((?x342 (top ?x216)))
 (let ((?x343 (stack ?x342 ?x226)))
 (let (($x370 (= ?x134 ?x343)))
 (let (($x357 (= c__ center-to-left)))
 (let (($x358 (and $x357 $x354)))
 (let ((?x136 (rest ?x226)))
 (let (($x366 (= ?x134 ?x136)))
 (let (($x359 ((_ is stack ) ?x226)))
 (let (($x360 (= c__ left-to-right)))
 (let (($x361 (and $x360 $x359)))
 (let (($x362 (= c__ left-to-center)))
 (let (($x363 (and $x362 $x359)))
 (ite $x363 $x366 (ite $x361 $x366 (ite $x358 $x370 (ite $x356 $x379 (ite $x353 $x373 $x379))))))))))))))))))))))))))))))))
(assert
 (let ((?x213 (right s__)))
 (let ((?x137 (right s___)))
 (let (($x375 (= ?x137 ?x213)))
 (let ((?x345 (rest ?x213)))
 (let (($x372 (= ?x137 ?x345)))
 (let (($x349 ((_ is stack ) ?x213)))
 (let (($x350 (= c__ right-to-center)))
 (let (($x351 (and $x350 $x349)))
 (let (($x352 (= c__ right-to-left)))
 (let (($x353 (and $x352 $x349)))
 (let ((?x216 (center s__)))
 (let ((?x342 (top ?x216)))
 (let ((?x344 (stack ?x342 ?x213)))
 (let (($x371 (= ?x137 ?x344)))
 (let (($x354 ((_ is stack ) ?x216)))
 (let (($x355 (= c__ center-to-right)))
 (let (($x356 (and $x355 $x354)))
 (let (($x357 (= c__ center-to-left)))
 (let (($x358 (and $x357 $x354)))
 (let ((?x226 (left s__)))
 (let (($x359 ((_ is stack ) ?x226)))
 (let (($x360 (= c__ left-to-right)))
 (let (($x361 (and $x360 $x359)))
 (let (($x392 (ite $x361 $x375 (ite $x358 $x375 (ite $x356 $x371 (ite $x353 $x372 (ite $x351 $x372 $x375)))))))
 (let ((?x202 (top ?x226)))
 (let ((?x338 (stack ?x202 ?x213)))
 (let (($x367 (= ?x137 ?x338)))
 (let (($x362 (= c__ left-to-center)))
 (let (($x363 (and $x362 $x359)))
 (ite $x363 $x367 $x392)))))))))))))))))))))))))))))))
(assert
 (let ((?x216 (center s__)))
 (let ((?x339 (center s___)))
 (let (($x377 (= ?x339 ?x216)))
 (let ((?x213 (right s__)))
 (let ((?x346 (top ?x213)))
 (let ((?x348 (stack ?x346 ?x216)))
 (let (($x374 (= ?x339 ?x348)))
 (let (($x349 ((_ is stack ) ?x213)))
 (let (($x350 (= c__ right-to-center)))
 (let (($x351 (and $x350 $x349)))
 (let (($x352 (= c__ right-to-left)))
 (let (($x353 (and $x352 $x349)))
 (let ((?x341 (rest ?x216)))
 (let (($x369 (= ?x339 ?x341)))
 (let (($x354 ((_ is stack ) ?x216)))
 (let (($x355 (= c__ center-to-right)))
 (let (($x356 (and $x355 $x354)))
 (let (($x357 (= c__ center-to-left)))
 (let (($x358 (and $x357 $x354)))
 (let ((?x226 (left s__)))
 (let ((?x202 (top ?x226)))
 (let ((?x340 (stack ?x202 ?x216)))
 (let (($x368 (= ?x339 ?x340)))
 (let (($x359 ((_ is stack ) ?x226)))
 (let (($x360 (= c__ left-to-right)))
 (let (($x361 (and $x360 $x359)))
 (let (($x391 (ite $x361 $x368 (ite $x358 $x369 (ite $x356 $x369 (ite $x353 $x377 (ite $x351 $x374 $x377)))))))
 (let (($x362 (= c__ left-to-center)))
 (let (($x363 (and $x362 $x359)))
 (ite $x363 $x377 $x391)))))))))))))))))))))))))))))))
(assert
 (= c____ c!3))
(assert
 (let ((?x134 (left s___)))
 (let ((?x266 (left s____)))
 (let (($x517 (= ?x266 ?x134)))
 (let ((?x137 (right s___)))
 (let ((?x484 (top ?x137)))
 (let ((?x485 (stack ?x484 ?x134)))
 (let (($x511 (= ?x266 ?x485)))
 (let (($x487 ((_ is stack ) ?x137)))
 (let (($x490 (= c___ right-to-left)))
 (let (($x491 (and $x490 $x487)))
 (let ((?x339 (center s___)))
 (let (($x492 ((_ is stack ) ?x339)))
 (let (($x493 (= c___ center-to-right)))
 (let (($x494 (and $x493 $x492)))
 (let ((?x480 (top ?x339)))
 (let ((?x481 (stack ?x480 ?x134)))
 (let (($x508 (= ?x266 ?x481)))
 (let (($x495 (= c___ center-to-left)))
 (let (($x496 (and $x495 $x492)))
 (let ((?x310 (rest ?x134)))
 (let (($x504 (= ?x266 ?x310)))
 (let (($x497 ((_ is stack ) ?x134)))
 (let (($x498 (= c___ left-to-right)))
 (let (($x499 (and $x498 $x497)))
 (let (($x500 (= c___ left-to-center)))
 (let (($x501 (and $x500 $x497)))
 (ite $x501 $x504 (ite $x499 $x504 (ite $x496 $x508 (ite $x494 $x517 (ite $x491 $x511 $x517))))))))))))))))))))))))))))))))
(assert
 (let ((?x137 (right s___)))
 (let ((?x311 (right s____)))
 (let (($x513 (= ?x311 ?x137)))
 (let ((?x483 (rest ?x137)))
 (let (($x510 (= ?x311 ?x483)))
 (let (($x487 ((_ is stack ) ?x137)))
 (let (($x488 (= c___ right-to-center)))
 (let (($x489 (and $x488 $x487)))
 (let (($x490 (= c___ right-to-left)))
 (let (($x491 (and $x490 $x487)))
 (let ((?x339 (center s___)))
 (let ((?x480 (top ?x339)))
 (let ((?x482 (stack ?x480 ?x137)))
 (let (($x509 (= ?x311 ?x482)))
 (let (($x492 ((_ is stack ) ?x339)))
 (let (($x493 (= c___ center-to-right)))
 (let (($x494 (and $x493 $x492)))
 (let (($x495 (= c___ center-to-left)))
 (let (($x496 (and $x495 $x492)))
 (let ((?x134 (left s___)))
 (let (($x497 ((_ is stack ) ?x134)))
 (let (($x498 (= c___ left-to-right)))
 (let (($x499 (and $x498 $x497)))
 (let (($x530 (ite $x499 $x513 (ite $x496 $x513 (ite $x494 $x509 (ite $x491 $x510 (ite $x489 $x510 $x513)))))))
 (let ((?x337 (top ?x134)))
 (let ((?x476 (stack ?x337 ?x137)))
 (let (($x505 (= ?x311 ?x476)))
 (let (($x500 (= c___ left-to-center)))
 (let (($x501 (and $x500 $x497)))
 (ite $x501 $x505 $x530)))))))))))))))))))))))))))))))
(assert
 (let ((?x339 (center s___)))
 (let ((?x477 (center s____)))
 (let (($x515 (= ?x477 ?x339)))
 (let ((?x137 (right s___)))
 (let ((?x484 (top ?x137)))
 (let ((?x486 (stack ?x484 ?x339)))
 (let (($x512 (= ?x477 ?x486)))
 (let (($x487 ((_ is stack ) ?x137)))
 (let (($x488 (= c___ right-to-center)))
 (let (($x489 (and $x488 $x487)))
 (let (($x490 (= c___ right-to-left)))
 (let (($x491 (and $x490 $x487)))
 (let ((?x479 (rest ?x339)))
 (let (($x507 (= ?x477 ?x479)))
 (let (($x492 ((_ is stack ) ?x339)))
 (let (($x493 (= c___ center-to-right)))
 (let (($x494 (and $x493 $x492)))
 (let (($x495 (= c___ center-to-left)))
 (let (($x496 (and $x495 $x492)))
 (let ((?x134 (left s___)))
 (let ((?x337 (top ?x134)))
 (let ((?x478 (stack ?x337 ?x339)))
 (let (($x506 (= ?x477 ?x478)))
 (let (($x497 ((_ is stack ) ?x134)))
 (let (($x498 (= c___ left-to-right)))
 (let (($x499 (and $x498 $x497)))
 (let (($x529 (ite $x499 $x506 (ite $x496 $x507 (ite $x494 $x507 (ite $x491 $x515 (ite $x489 $x512 $x515)))))))
 (let (($x500 (= c___ left-to-center)))
 (let (($x501 (and $x500 $x497)))
 (ite $x501 $x515 $x529)))))))))))))))))))))))))))))))
(assert
 (= c_____ c!4))
(assert
 (let ((?x266 (left s____)))
 (let ((?x395 (left s_____)))
 (let (($x655 (= ?x395 ?x266)))
 (let ((?x311 (right s____)))
 (let ((?x622 (top ?x311)))
 (let ((?x623 (stack ?x622 ?x266)))
 (let (($x649 (= ?x395 ?x623)))
 (let (($x625 ((_ is stack ) ?x311)))
 (let (($x628 (= c____ right-to-left)))
 (let (($x629 (and $x628 $x625)))
 (let ((?x477 (center s____)))
 (let (($x630 ((_ is stack ) ?x477)))
 (let (($x631 (= c____ center-to-right)))
 (let (($x632 (and $x631 $x630)))
 (let ((?x618 (top ?x477)))
 (let ((?x619 (stack ?x618 ?x266)))
 (let (($x646 (= ?x395 ?x619)))
 (let (($x633 (= c____ center-to-left)))
 (let (($x634 (and $x633 $x630)))
 (let ((?x428 (rest ?x266)))
 (let (($x642 (= ?x395 ?x428)))
 (let (($x635 ((_ is stack ) ?x266)))
 (let (($x636 (= c____ left-to-right)))
 (let (($x637 (and $x636 $x635)))
 (let (($x638 (= c____ left-to-center)))
 (let (($x639 (and $x638 $x635)))
 (ite $x639 $x642 (ite $x637 $x642 (ite $x634 $x646 (ite $x632 $x655 (ite $x629 $x649 $x655))))))))))))))))))))))))))))))))
(assert
 (let ((?x311 (right s____)))
 (let ((?x429 (right s_____)))
 (let (($x651 (= ?x429 ?x311)))
 (let ((?x621 (rest ?x311)))
 (let (($x648 (= ?x429 ?x621)))
 (let (($x625 ((_ is stack ) ?x311)))
 (let (($x626 (= c____ right-to-center)))
 (let (($x627 (and $x626 $x625)))
 (let (($x628 (= c____ right-to-left)))
 (let (($x629 (and $x628 $x625)))
 (let ((?x477 (center s____)))
 (let ((?x618 (top ?x477)))
 (let ((?x620 (stack ?x618 ?x311)))
 (let (($x647 (= ?x429 ?x620)))
 (let (($x630 ((_ is stack ) ?x477)))
 (let (($x631 (= c____ center-to-right)))
 (let (($x632 (and $x631 $x630)))
 (let (($x633 (= c____ center-to-left)))
 (let (($x634 (and $x633 $x630)))
 (let ((?x266 (left s____)))
 (let (($x635 ((_ is stack ) ?x266)))
 (let (($x636 (= c____ left-to-right)))
 (let (($x637 (and $x636 $x635)))
 (let (($x668 (ite $x637 $x651 (ite $x634 $x651 (ite $x632 $x647 (ite $x629 $x648 (ite $x627 $x648 $x651)))))))
 (let ((?x475 (top ?x266)))
 (let ((?x614 (stack ?x475 ?x311)))
 (let (($x643 (= ?x429 ?x614)))
 (let (($x638 (= c____ left-to-center)))
 (let (($x639 (and $x638 $x635)))
 (ite $x639 $x643 $x668)))))))))))))))))))))))))))))))
(assert
 (let ((?x477 (center s____)))
 (let ((?x615 (center s_____)))
 (let (($x653 (= ?x615 ?x477)))
 (let ((?x311 (right s____)))
 (let ((?x622 (top ?x311)))
 (let ((?x624 (stack ?x622 ?x477)))
 (let (($x650 (= ?x615 ?x624)))
 (let (($x625 ((_ is stack ) ?x311)))
 (let (($x626 (= c____ right-to-center)))
 (let (($x627 (and $x626 $x625)))
 (let (($x628 (= c____ right-to-left)))
 (let (($x629 (and $x628 $x625)))
 (let ((?x617 (rest ?x477)))
 (let (($x645 (= ?x615 ?x617)))
 (let (($x630 ((_ is stack ) ?x477)))
 (let (($x631 (= c____ center-to-right)))
 (let (($x632 (and $x631 $x630)))
 (let (($x633 (= c____ center-to-left)))
 (let (($x634 (and $x633 $x630)))
 (let ((?x266 (left s____)))
 (let ((?x475 (top ?x266)))
 (let ((?x616 (stack ?x475 ?x477)))
 (let (($x644 (= ?x615 ?x616)))
 (let (($x635 ((_ is stack ) ?x266)))
 (let (($x636 (= c____ left-to-right)))
 (let (($x637 (and $x636 $x635)))
 (let (($x667 (ite $x637 $x644 (ite $x634 $x645 (ite $x632 $x645 (ite $x629 $x653 (ite $x627 $x650 $x653)))))))
 (let (($x638 (= c____ left-to-center)))
 (let (($x639 (and $x638 $x635)))
 (ite $x639 $x653 $x667)))))))))))))))))))))))))))))))
(assert
 (= c______ c!5))
(assert
 (let ((?x395 (left s_____)))
 (let ((?x533 (left s______)))
 (let (($x793 (= ?x533 ?x395)))
 (let ((?x429 (right s_____)))
 (let ((?x760 (top ?x429)))
 (let ((?x761 (stack ?x760 ?x395)))
 (let (($x787 (= ?x533 ?x761)))
 (let (($x763 ((_ is stack ) ?x429)))
 (let (($x766 (= c_____ right-to-left)))
 (let (($x767 (and $x766 $x763)))
 (let ((?x615 (center s_____)))
 (let (($x768 ((_ is stack ) ?x615)))
 (let (($x769 (= c_____ center-to-right)))
 (let (($x770 (and $x769 $x768)))
 (let ((?x756 (top ?x615)))
 (let ((?x757 (stack ?x756 ?x395)))
 (let (($x784 (= ?x533 ?x757)))
 (let (($x771 (= c_____ center-to-left)))
 (let (($x772 (and $x771 $x768)))
 (let ((?x566 (rest ?x395)))
 (let (($x780 (= ?x533 ?x566)))
 (let (($x773 ((_ is stack ) ?x395)))
 (let (($x774 (= c_____ left-to-right)))
 (let (($x775 (and $x774 $x773)))
 (let (($x776 (= c_____ left-to-center)))
 (let (($x777 (and $x776 $x773)))
 (ite $x777 $x780 (ite $x775 $x780 (ite $x772 $x784 (ite $x770 $x793 (ite $x767 $x787 $x793))))))))))))))))))))))))))))))))
(assert
 (let ((?x429 (right s_____)))
 (let ((?x567 (right s______)))
 (let (($x789 (= ?x567 ?x429)))
 (let ((?x759 (rest ?x429)))
 (let (($x786 (= ?x567 ?x759)))
 (let (($x763 ((_ is stack ) ?x429)))
 (let (($x764 (= c_____ right-to-center)))
 (let (($x765 (and $x764 $x763)))
 (let (($x766 (= c_____ right-to-left)))
 (let (($x767 (and $x766 $x763)))
 (let ((?x615 (center s_____)))
 (let ((?x756 (top ?x615)))
 (let ((?x758 (stack ?x756 ?x429)))
 (let (($x785 (= ?x567 ?x758)))
 (let (($x768 ((_ is stack ) ?x615)))
 (let (($x769 (= c_____ center-to-right)))
 (let (($x770 (and $x769 $x768)))
 (let (($x771 (= c_____ center-to-left)))
 (let (($x772 (and $x771 $x768)))
 (let ((?x395 (left s_____)))
 (let (($x773 ((_ is stack ) ?x395)))
 (let (($x774 (= c_____ left-to-right)))
 (let (($x775 (and $x774 $x773)))
 (let (($x806 (ite $x775 $x789 (ite $x772 $x789 (ite $x770 $x785 (ite $x767 $x786 (ite $x765 $x786 $x789)))))))
 (let ((?x613 (top ?x395)))
 (let ((?x752 (stack ?x613 ?x429)))
 (let (($x781 (= ?x567 ?x752)))
 (let (($x776 (= c_____ left-to-center)))
 (let (($x777 (and $x776 $x773)))
 (ite $x777 $x781 $x806)))))))))))))))))))))))))))))))
(assert
 (let ((?x615 (center s_____)))
 (let ((?x753 (center s______)))
 (let (($x791 (= ?x753 ?x615)))
 (let ((?x429 (right s_____)))
 (let ((?x760 (top ?x429)))
 (let ((?x762 (stack ?x760 ?x615)))
 (let (($x788 (= ?x753 ?x762)))
 (let (($x763 ((_ is stack ) ?x429)))
 (let (($x764 (= c_____ right-to-center)))
 (let (($x765 (and $x764 $x763)))
 (let (($x766 (= c_____ right-to-left)))
 (let (($x767 (and $x766 $x763)))
 (let ((?x755 (rest ?x615)))
 (let (($x783 (= ?x753 ?x755)))
 (let (($x768 ((_ is stack ) ?x615)))
 (let (($x769 (= c_____ center-to-right)))
 (let (($x770 (and $x769 $x768)))
 (let (($x771 (= c_____ center-to-left)))
 (let (($x772 (and $x771 $x768)))
 (let ((?x395 (left s_____)))
 (let ((?x613 (top ?x395)))
 (let ((?x754 (stack ?x613 ?x615)))
 (let (($x782 (= ?x753 ?x754)))
 (let (($x773 ((_ is stack ) ?x395)))
 (let (($x774 (= c_____ left-to-right)))
 (let (($x775 (and $x774 $x773)))
 (let (($x805 (ite $x775 $x782 (ite $x772 $x783 (ite $x770 $x783 (ite $x767 $x791 (ite $x765 $x788 $x791)))))))
 (let (($x776 (= c_____ left-to-center)))
 (let (($x777 (and $x776 $x773)))
 (ite $x777 $x791 $x805)))))))))))))))))))))))))))))))
(assert
 (= c_______ c!6))
(assert
 (let ((?x533 (left s______)))
 (let ((?x671 (left s_______)))
 (let (($x931 (= ?x671 ?x533)))
 (let ((?x567 (right s______)))
 (let ((?x898 (top ?x567)))
 (let ((?x899 (stack ?x898 ?x533)))
 (let (($x925 (= ?x671 ?x899)))
 (let (($x901 ((_ is stack ) ?x567)))
 (let (($x904 (= c______ right-to-left)))
 (let (($x905 (and $x904 $x901)))
 (let ((?x753 (center s______)))
 (let (($x906 ((_ is stack ) ?x753)))
 (let (($x907 (= c______ center-to-right)))
 (let (($x908 (and $x907 $x906)))
 (let ((?x894 (top ?x753)))
 (let ((?x895 (stack ?x894 ?x533)))
 (let (($x922 (= ?x671 ?x895)))
 (let (($x909 (= c______ center-to-left)))
 (let (($x910 (and $x909 $x906)))
 (let ((?x704 (rest ?x533)))
 (let (($x918 (= ?x671 ?x704)))
 (let (($x911 ((_ is stack ) ?x533)))
 (let (($x912 (= c______ left-to-right)))
 (let (($x913 (and $x912 $x911)))
 (let (($x914 (= c______ left-to-center)))
 (let (($x915 (and $x914 $x911)))
 (ite $x915 $x918 (ite $x913 $x918 (ite $x910 $x922 (ite $x908 $x931 (ite $x905 $x925 $x931))))))))))))))))))))))))))))))))
(assert
 (let ((?x567 (right s______)))
 (let ((?x705 (right s_______)))
 (let (($x927 (= ?x705 ?x567)))
 (let ((?x897 (rest ?x567)))
 (let (($x924 (= ?x705 ?x897)))
 (let (($x901 ((_ is stack ) ?x567)))
 (let (($x902 (= c______ right-to-center)))
 (let (($x903 (and $x902 $x901)))
 (let (($x904 (= c______ right-to-left)))
 (let (($x905 (and $x904 $x901)))
 (let ((?x753 (center s______)))
 (let ((?x894 (top ?x753)))
 (let ((?x896 (stack ?x894 ?x567)))
 (let (($x923 (= ?x705 ?x896)))
 (let (($x906 ((_ is stack ) ?x753)))
 (let (($x907 (= c______ center-to-right)))
 (let (($x908 (and $x907 $x906)))
 (let (($x909 (= c______ center-to-left)))
 (let (($x910 (and $x909 $x906)))
 (let ((?x533 (left s______)))
 (let (($x911 ((_ is stack ) ?x533)))
 (let (($x912 (= c______ left-to-right)))
 (let (($x913 (and $x912 $x911)))
 (let (($x944 (ite $x913 $x927 (ite $x910 $x927 (ite $x908 $x923 (ite $x905 $x924 (ite $x903 $x924 $x927)))))))
 (let ((?x751 (top ?x533)))
 (let ((?x890 (stack ?x751 ?x567)))
 (let (($x919 (= ?x705 ?x890)))
 (let (($x914 (= c______ left-to-center)))
 (let (($x915 (and $x914 $x911)))
 (ite $x915 $x919 $x944)))))))))))))))))))))))))))))))
(assert
 (let ((?x753 (center s______)))
 (let ((?x891 (center s_______)))
 (let (($x929 (= ?x891 ?x753)))
 (let ((?x567 (right s______)))
 (let ((?x898 (top ?x567)))
 (let ((?x900 (stack ?x898 ?x753)))
 (let (($x926 (= ?x891 ?x900)))
 (let (($x901 ((_ is stack ) ?x567)))
 (let (($x902 (= c______ right-to-center)))
 (let (($x903 (and $x902 $x901)))
 (let (($x904 (= c______ right-to-left)))
 (let (($x905 (and $x904 $x901)))
 (let ((?x893 (rest ?x753)))
 (let (($x921 (= ?x891 ?x893)))
 (let (($x906 ((_ is stack ) ?x753)))
 (let (($x907 (= c______ center-to-right)))
 (let (($x908 (and $x907 $x906)))
 (let (($x909 (= c______ center-to-left)))
 (let (($x910 (and $x909 $x906)))
 (let ((?x533 (left s______)))
 (let ((?x751 (top ?x533)))
 (let ((?x892 (stack ?x751 ?x753)))
 (let (($x920 (= ?x891 ?x892)))
 (let (($x911 ((_ is stack ) ?x533)))
 (let (($x912 (= c______ left-to-right)))
 (let (($x913 (and $x912 $x911)))
 (let (($x943 (ite $x913 $x920 (ite $x910 $x921 (ite $x908 $x921 (ite $x905 $x929 (ite $x903 $x926 $x929)))))))
 (let (($x914 (= c______ left-to-center)))
 (let (($x915 (and $x914 $x911)))
 (ite $x915 $x929 $x943)))))))))))))))))))))))))))))))
(assert
 (= c________ c!7))
(assert
 (let ((?x671 (left s_______)))
 (let ((?x809 (left s________)))
 (let (($x1069 (= ?x809 ?x671)))
 (let ((?x705 (right s_______)))
 (let ((?x1036 (top ?x705)))
 (let ((?x1037 (stack ?x1036 ?x671)))
 (let (($x1063 (= ?x809 ?x1037)))
 (let (($x1039 ((_ is stack ) ?x705)))
 (let (($x1042 (= c_______ right-to-left)))
 (let (($x1043 (and $x1042 $x1039)))
 (let ((?x891 (center s_______)))
 (let (($x1044 ((_ is stack ) ?x891)))
 (let (($x1045 (= c_______ center-to-right)))
 (let (($x1046 (and $x1045 $x1044)))
 (let ((?x1032 (top ?x891)))
 (let ((?x1033 (stack ?x1032 ?x671)))
 (let (($x1060 (= ?x809 ?x1033)))
 (let (($x1047 (= c_______ center-to-left)))
 (let (($x1048 (and $x1047 $x1044)))
 (let ((?x842 (rest ?x671)))
 (let (($x1056 (= ?x809 ?x842)))
 (let (($x1049 ((_ is stack ) ?x671)))
 (let (($x1050 (= c_______ left-to-right)))
 (let (($x1051 (and $x1050 $x1049)))
 (let (($x1052 (= c_______ left-to-center)))
 (let (($x1053 (and $x1052 $x1049)))
 (ite $x1053 $x1056 (ite $x1051 $x1056 (ite $x1048 $x1060 (ite $x1046 $x1069 (ite $x1043 $x1063 $x1069))))))))))))))))))))))))))))))))
(assert
 (let ((?x705 (right s_______)))
 (let ((?x843 (right s________)))
 (let (($x1065 (= ?x843 ?x705)))
 (let ((?x1035 (rest ?x705)))
 (let (($x1062 (= ?x843 ?x1035)))
 (let (($x1039 ((_ is stack ) ?x705)))
 (let (($x1040 (= c_______ right-to-center)))
 (let (($x1041 (and $x1040 $x1039)))
 (let (($x1042 (= c_______ right-to-left)))
 (let (($x1043 (and $x1042 $x1039)))
 (let ((?x891 (center s_______)))
 (let ((?x1032 (top ?x891)))
 (let ((?x1034 (stack ?x1032 ?x705)))
 (let (($x1061 (= ?x843 ?x1034)))
 (let (($x1044 ((_ is stack ) ?x891)))
 (let (($x1045 (= c_______ center-to-right)))
 (let (($x1046 (and $x1045 $x1044)))
 (let (($x1047 (= c_______ center-to-left)))
 (let (($x1048 (and $x1047 $x1044)))
 (let ((?x671 (left s_______)))
 (let (($x1049 ((_ is stack ) ?x671)))
 (let (($x1050 (= c_______ left-to-right)))
 (let (($x1051 (and $x1050 $x1049)))
 (let (($x1082 (ite $x1051 $x1065 (ite $x1048 $x1065 (ite $x1046 $x1061 (ite $x1043 $x1062 (ite $x1041 $x1062 $x1065)))))))
 (let ((?x889 (top ?x671)))
 (let ((?x1028 (stack ?x889 ?x705)))
 (let (($x1057 (= ?x843 ?x1028)))
 (let (($x1052 (= c_______ left-to-center)))
 (let (($x1053 (and $x1052 $x1049)))
 (ite $x1053 $x1057 $x1082)))))))))))))))))))))))))))))))
(assert
 (let ((?x891 (center s_______)))
 (let ((?x1029 (center s________)))
 (let (($x1067 (= ?x1029 ?x891)))
 (let ((?x705 (right s_______)))
 (let ((?x1036 (top ?x705)))
 (let ((?x1038 (stack ?x1036 ?x891)))
 (let (($x1064 (= ?x1029 ?x1038)))
 (let (($x1039 ((_ is stack ) ?x705)))
 (let (($x1040 (= c_______ right-to-center)))
 (let (($x1041 (and $x1040 $x1039)))
 (let (($x1042 (= c_______ right-to-left)))
 (let (($x1043 (and $x1042 $x1039)))
 (let ((?x1031 (rest ?x891)))
 (let (($x1059 (= ?x1029 ?x1031)))
 (let (($x1044 ((_ is stack ) ?x891)))
 (let (($x1045 (= c_______ center-to-right)))
 (let (($x1046 (and $x1045 $x1044)))
 (let (($x1047 (= c_______ center-to-left)))
 (let (($x1048 (and $x1047 $x1044)))
 (let ((?x671 (left s_______)))
 (let ((?x889 (top ?x671)))
 (let ((?x1030 (stack ?x889 ?x891)))
 (let (($x1058 (= ?x1029 ?x1030)))
 (let (($x1049 ((_ is stack ) ?x671)))
 (let (($x1050 (= c_______ left-to-right)))
 (let (($x1051 (and $x1050 $x1049)))
 (let (($x1081 (ite $x1051 $x1058 (ite $x1048 $x1059 (ite $x1046 $x1059 (ite $x1043 $x1067 (ite $x1041 $x1064 $x1067)))))))
 (let (($x1052 (= c_______ left-to-center)))
 (let (($x1053 (and $x1052 $x1049)))
 (ite $x1053 $x1067 $x1081)))))))))))))))))))))))))))))))
(assert
 (= c_________ c!8))
(assert
 (let ((?x809 (left s________)))
 (let ((?x947 (left s_________)))
 (let (($x1207 (= ?x947 ?x809)))
 (let ((?x843 (right s________)))
 (let ((?x1174 (top ?x843)))
 (let ((?x1175 (stack ?x1174 ?x809)))
 (let (($x1201 (= ?x947 ?x1175)))
 (let (($x1177 ((_ is stack ) ?x843)))
 (let (($x1180 (= c________ right-to-left)))
 (let (($x1181 (and $x1180 $x1177)))
 (let ((?x1029 (center s________)))
 (let (($x1182 ((_ is stack ) ?x1029)))
 (let (($x1183 (= c________ center-to-right)))
 (let (($x1184 (and $x1183 $x1182)))
 (let ((?x1170 (top ?x1029)))
 (let ((?x1171 (stack ?x1170 ?x809)))
 (let (($x1198 (= ?x947 ?x1171)))
 (let (($x1185 (= c________ center-to-left)))
 (let (($x1186 (and $x1185 $x1182)))
 (let ((?x980 (rest ?x809)))
 (let (($x1194 (= ?x947 ?x980)))
 (let (($x1187 ((_ is stack ) ?x809)))
 (let (($x1188 (= c________ left-to-right)))
 (let (($x1189 (and $x1188 $x1187)))
 (let (($x1190 (= c________ left-to-center)))
 (let (($x1191 (and $x1190 $x1187)))
 (ite $x1191 $x1194 (ite $x1189 $x1194 (ite $x1186 $x1198 (ite $x1184 $x1207 (ite $x1181 $x1201 $x1207))))))))))))))))))))))))))))))))
(assert
 (let ((?x843 (right s________)))
 (let ((?x981 (right s_________)))
 (let (($x1203 (= ?x981 ?x843)))
 (let ((?x1173 (rest ?x843)))
 (let (($x1200 (= ?x981 ?x1173)))
 (let (($x1177 ((_ is stack ) ?x843)))
 (let (($x1178 (= c________ right-to-center)))
 (let (($x1179 (and $x1178 $x1177)))
 (let (($x1180 (= c________ right-to-left)))
 (let (($x1181 (and $x1180 $x1177)))
 (let ((?x1029 (center s________)))
 (let ((?x1170 (top ?x1029)))
 (let ((?x1172 (stack ?x1170 ?x843)))
 (let (($x1199 (= ?x981 ?x1172)))
 (let (($x1182 ((_ is stack ) ?x1029)))
 (let (($x1183 (= c________ center-to-right)))
 (let (($x1184 (and $x1183 $x1182)))
 (let (($x1185 (= c________ center-to-left)))
 (let (($x1186 (and $x1185 $x1182)))
 (let ((?x809 (left s________)))
 (let (($x1187 ((_ is stack ) ?x809)))
 (let (($x1188 (= c________ left-to-right)))
 (let (($x1189 (and $x1188 $x1187)))
 (let (($x1220 (ite $x1189 $x1203 (ite $x1186 $x1203 (ite $x1184 $x1199 (ite $x1181 $x1200 (ite $x1179 $x1200 $x1203)))))))
 (let ((?x1027 (top ?x809)))
 (let ((?x1166 (stack ?x1027 ?x843)))
 (let (($x1195 (= ?x981 ?x1166)))
 (let (($x1190 (= c________ left-to-center)))
 (let (($x1191 (and $x1190 $x1187)))
 (ite $x1191 $x1195 $x1220)))))))))))))))))))))))))))))))
(assert
 (let ((?x1029 (center s________)))
 (let ((?x1167 (center s_________)))
 (let (($x1205 (= ?x1167 ?x1029)))
 (let ((?x843 (right s________)))
 (let ((?x1174 (top ?x843)))
 (let ((?x1176 (stack ?x1174 ?x1029)))
 (let (($x1202 (= ?x1167 ?x1176)))
 (let (($x1177 ((_ is stack ) ?x843)))
 (let (($x1178 (= c________ right-to-center)))
 (let (($x1179 (and $x1178 $x1177)))
 (let (($x1180 (= c________ right-to-left)))
 (let (($x1181 (and $x1180 $x1177)))
 (let ((?x1169 (rest ?x1029)))
 (let (($x1197 (= ?x1167 ?x1169)))
 (let (($x1182 ((_ is stack ) ?x1029)))
 (let (($x1183 (= c________ center-to-right)))
 (let (($x1184 (and $x1183 $x1182)))
 (let (($x1185 (= c________ center-to-left)))
 (let (($x1186 (and $x1185 $x1182)))
 (let ((?x809 (left s________)))
 (let ((?x1027 (top ?x809)))
 (let ((?x1168 (stack ?x1027 ?x1029)))
 (let (($x1196 (= ?x1167 ?x1168)))
 (let (($x1187 ((_ is stack ) ?x809)))
 (let (($x1188 (= c________ left-to-right)))
 (let (($x1189 (and $x1188 $x1187)))
 (let (($x1219 (ite $x1189 $x1196 (ite $x1186 $x1197 (ite $x1184 $x1197 (ite $x1181 $x1205 (ite $x1179 $x1202 $x1205)))))))
 (let (($x1190 (= c________ left-to-center)))
 (let (($x1191 (and $x1190 $x1187)))
 (ite $x1191 $x1205 $x1219)))))))))))))))))))))))))))))))
(assert
 (= c__________ c!9))
(assert
 (let ((?x947 (left s_________)))
 (let ((?x1085 (left s__________)))
 (let (($x1345 (= ?x1085 ?x947)))
 (let ((?x981 (right s_________)))
 (let ((?x1312 (top ?x981)))
 (let ((?x1313 (stack ?x1312 ?x947)))
 (let (($x1339 (= ?x1085 ?x1313)))
 (let (($x1315 ((_ is stack ) ?x981)))
 (let (($x1318 (= c_________ right-to-left)))
 (let (($x1319 (and $x1318 $x1315)))
 (let ((?x1167 (center s_________)))
 (let (($x1320 ((_ is stack ) ?x1167)))
 (let (($x1321 (= c_________ center-to-right)))
 (let (($x1322 (and $x1321 $x1320)))
 (let ((?x1308 (top ?x1167)))
 (let ((?x1309 (stack ?x1308 ?x947)))
 (let (($x1336 (= ?x1085 ?x1309)))
 (let (($x1323 (= c_________ center-to-left)))
 (let (($x1324 (and $x1323 $x1320)))
 (let ((?x1118 (rest ?x947)))
 (let (($x1332 (= ?x1085 ?x1118)))
 (let (($x1325 ((_ is stack ) ?x947)))
 (let (($x1326 (= c_________ left-to-right)))
 (let (($x1327 (and $x1326 $x1325)))
 (let (($x1328 (= c_________ left-to-center)))
 (let (($x1329 (and $x1328 $x1325)))
 (ite $x1329 $x1332 (ite $x1327 $x1332 (ite $x1324 $x1336 (ite $x1322 $x1345 (ite $x1319 $x1339 $x1345))))))))))))))))))))))))))))))))
(assert
 (let ((?x981 (right s_________)))
 (let ((?x1119 (right s__________)))
 (let (($x1341 (= ?x1119 ?x981)))
 (let ((?x1311 (rest ?x981)))
 (let (($x1338 (= ?x1119 ?x1311)))
 (let (($x1315 ((_ is stack ) ?x981)))
 (let (($x1316 (= c_________ right-to-center)))
 (let (($x1317 (and $x1316 $x1315)))
 (let (($x1318 (= c_________ right-to-left)))
 (let (($x1319 (and $x1318 $x1315)))
 (let ((?x1167 (center s_________)))
 (let ((?x1308 (top ?x1167)))
 (let ((?x1310 (stack ?x1308 ?x981)))
 (let (($x1337 (= ?x1119 ?x1310)))
 (let (($x1320 ((_ is stack ) ?x1167)))
 (let (($x1321 (= c_________ center-to-right)))
 (let (($x1322 (and $x1321 $x1320)))
 (let (($x1323 (= c_________ center-to-left)))
 (let (($x1324 (and $x1323 $x1320)))
 (let ((?x947 (left s_________)))
 (let (($x1325 ((_ is stack ) ?x947)))
 (let (($x1326 (= c_________ left-to-right)))
 (let (($x1327 (and $x1326 $x1325)))
 (let (($x1358 (ite $x1327 $x1341 (ite $x1324 $x1341 (ite $x1322 $x1337 (ite $x1319 $x1338 (ite $x1317 $x1338 $x1341)))))))
 (let ((?x1165 (top ?x947)))
 (let ((?x1304 (stack ?x1165 ?x981)))
 (let (($x1333 (= ?x1119 ?x1304)))
 (let (($x1328 (= c_________ left-to-center)))
 (let (($x1329 (and $x1328 $x1325)))
 (ite $x1329 $x1333 $x1358)))))))))))))))))))))))))))))))
(assert
 (let ((?x1167 (center s_________)))
 (let ((?x1305 (center s__________)))
 (let (($x1343 (= ?x1305 ?x1167)))
 (let ((?x981 (right s_________)))
 (let ((?x1312 (top ?x981)))
 (let ((?x1314 (stack ?x1312 ?x1167)))
 (let (($x1340 (= ?x1305 ?x1314)))
 (let (($x1315 ((_ is stack ) ?x981)))
 (let (($x1316 (= c_________ right-to-center)))
 (let (($x1317 (and $x1316 $x1315)))
 (let (($x1318 (= c_________ right-to-left)))
 (let (($x1319 (and $x1318 $x1315)))
 (let ((?x1307 (rest ?x1167)))
 (let (($x1335 (= ?x1305 ?x1307)))
 (let (($x1320 ((_ is stack ) ?x1167)))
 (let (($x1321 (= c_________ center-to-right)))
 (let (($x1322 (and $x1321 $x1320)))
 (let (($x1323 (= c_________ center-to-left)))
 (let (($x1324 (and $x1323 $x1320)))
 (let ((?x947 (left s_________)))
 (let ((?x1165 (top ?x947)))
 (let ((?x1306 (stack ?x1165 ?x1167)))
 (let (($x1334 (= ?x1305 ?x1306)))
 (let (($x1325 ((_ is stack ) ?x947)))
 (let (($x1326 (= c_________ left-to-right)))
 (let (($x1327 (and $x1326 $x1325)))
 (let (($x1357 (ite $x1327 $x1334 (ite $x1324 $x1335 (ite $x1322 $x1335 (ite $x1319 $x1343 (ite $x1317 $x1340 $x1343)))))))
 (let (($x1328 (= c_________ left-to-center)))
 (let (($x1329 (and $x1328 $x1325)))
 (ite $x1329 $x1343 $x1357)))))))))))))))))))))))))))))))
(assert
 (= c___________ c!10))
(assert
 (let ((?x1085 (left s__________)))
 (let ((?x1223 (left s___________)))
 (let (($x1483 (= ?x1223 ?x1085)))
 (let ((?x1119 (right s__________)))
 (let ((?x1450 (top ?x1119)))
 (let ((?x1451 (stack ?x1450 ?x1085)))
 (let (($x1477 (= ?x1223 ?x1451)))
 (let (($x1453 ((_ is stack ) ?x1119)))
 (let (($x1456 (= c__________ right-to-left)))
 (let (($x1457 (and $x1456 $x1453)))
 (let ((?x1305 (center s__________)))
 (let (($x1458 ((_ is stack ) ?x1305)))
 (let (($x1459 (= c__________ center-to-right)))
 (let (($x1460 (and $x1459 $x1458)))
 (let ((?x1446 (top ?x1305)))
 (let ((?x1447 (stack ?x1446 ?x1085)))
 (let (($x1474 (= ?x1223 ?x1447)))
 (let (($x1461 (= c__________ center-to-left)))
 (let (($x1462 (and $x1461 $x1458)))
 (let ((?x1256 (rest ?x1085)))
 (let (($x1470 (= ?x1223 ?x1256)))
 (let (($x1463 ((_ is stack ) ?x1085)))
 (let (($x1464 (= c__________ left-to-right)))
 (let (($x1465 (and $x1464 $x1463)))
 (let (($x1466 (= c__________ left-to-center)))
 (let (($x1467 (and $x1466 $x1463)))
 (ite $x1467 $x1470 (ite $x1465 $x1470 (ite $x1462 $x1474 (ite $x1460 $x1483 (ite $x1457 $x1477 $x1483))))))))))))))))))))))))))))))))
(assert
 (let ((?x1119 (right s__________)))
 (let ((?x1257 (right s___________)))
 (let (($x1479 (= ?x1257 ?x1119)))
 (let ((?x1449 (rest ?x1119)))
 (let (($x1476 (= ?x1257 ?x1449)))
 (let (($x1453 ((_ is stack ) ?x1119)))
 (let (($x1454 (= c__________ right-to-center)))
 (let (($x1455 (and $x1454 $x1453)))
 (let (($x1456 (= c__________ right-to-left)))
 (let (($x1457 (and $x1456 $x1453)))
 (let ((?x1305 (center s__________)))
 (let ((?x1446 (top ?x1305)))
 (let ((?x1448 (stack ?x1446 ?x1119)))
 (let (($x1475 (= ?x1257 ?x1448)))
 (let (($x1458 ((_ is stack ) ?x1305)))
 (let (($x1459 (= c__________ center-to-right)))
 (let (($x1460 (and $x1459 $x1458)))
 (let (($x1461 (= c__________ center-to-left)))
 (let (($x1462 (and $x1461 $x1458)))
 (let ((?x1085 (left s__________)))
 (let (($x1463 ((_ is stack ) ?x1085)))
 (let (($x1464 (= c__________ left-to-right)))
 (let (($x1465 (and $x1464 $x1463)))
 (let (($x1496 (ite $x1465 $x1479 (ite $x1462 $x1479 (ite $x1460 $x1475 (ite $x1457 $x1476 (ite $x1455 $x1476 $x1479)))))))
 (let ((?x1303 (top ?x1085)))
 (let ((?x1442 (stack ?x1303 ?x1119)))
 (let (($x1471 (= ?x1257 ?x1442)))
 (let (($x1466 (= c__________ left-to-center)))
 (let (($x1467 (and $x1466 $x1463)))
 (ite $x1467 $x1471 $x1496)))))))))))))))))))))))))))))))
(assert
 (let ((?x1305 (center s__________)))
 (let ((?x1443 (center s___________)))
 (let (($x1481 (= ?x1443 ?x1305)))
 (let ((?x1119 (right s__________)))
 (let ((?x1450 (top ?x1119)))
 (let ((?x1452 (stack ?x1450 ?x1305)))
 (let (($x1478 (= ?x1443 ?x1452)))
 (let (($x1453 ((_ is stack ) ?x1119)))
 (let (($x1454 (= c__________ right-to-center)))
 (let (($x1455 (and $x1454 $x1453)))
 (let (($x1456 (= c__________ right-to-left)))
 (let (($x1457 (and $x1456 $x1453)))
 (let ((?x1445 (rest ?x1305)))
 (let (($x1473 (= ?x1443 ?x1445)))
 (let (($x1458 ((_ is stack ) ?x1305)))
 (let (($x1459 (= c__________ center-to-right)))
 (let (($x1460 (and $x1459 $x1458)))
 (let (($x1461 (= c__________ center-to-left)))
 (let (($x1462 (and $x1461 $x1458)))
 (let ((?x1085 (left s__________)))
 (let ((?x1303 (top ?x1085)))
 (let ((?x1444 (stack ?x1303 ?x1305)))
 (let (($x1472 (= ?x1443 ?x1444)))
 (let (($x1463 ((_ is stack ) ?x1085)))
 (let (($x1464 (= c__________ left-to-right)))
 (let (($x1465 (and $x1464 $x1463)))
 (let (($x1495 (ite $x1465 $x1472 (ite $x1462 $x1473 (ite $x1460 $x1473 (ite $x1457 $x1481 (ite $x1455 $x1478 $x1481)))))))
 (let (($x1466 (= c__________ left-to-center)))
 (let (($x1467 (and $x1466 $x1463)))
 (ite $x1467 $x1481 $x1495)))))))))))))))))))))))))))))))
(assert
 (let ((?x40 (stack J (stack G (stack C empty)))))
 (let ((?x1257 (right s___________)))
 (let (($x1499 (= ?x1257 ?x40)))
 (let ((?x37 (stack A (stack I (stack D (stack B empty))))))
 (let ((?x1443 (center s___________)))
 (let (($x1530 (= ?x1443 ?x37)))
 (let ((?x32 (stack H (stack E (stack F empty)))))
 (let ((?x1223 (left s___________)))
 (let (($x1531 (= ?x1223 ?x32)))
 (let (($x1533 (not (and $x1531 $x1530 $x1499))))
 (not $x1533))))))))))))
(check-sat)