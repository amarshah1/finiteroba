(set-logic ALL)
(define-fun
   _make__type_record_1_
     ((_field__rec_alloc_var (_ BitVec 1))
      (_field__rec_lowend_var (_ BitVec 2))
      (_field__rec_highend_var (_ BitVec 2))
      (_field__rec_nonce_true_var (_ BitVec 1)))
     (_ BitVec 7)
     (concat
      (concat
       (concat
        (concat #b0 _field__rec_nonce_true_var)
        _field__rec_highend_var)
       _field__rec_lowend_var)
      _field__rec_alloc_var))
(declare-fun _field__rec_alloc_non_bv ((_ BitVec 7)) (_ BitVec 1))
(declare-fun _field__rec_lowend_non_bv ((_ BitVec 7)) (_ BitVec 2))
(declare-fun _field__rec_highend_non_bv ((_ BitVec 7)) (_ BitVec 2))
(declare-fun _field__rec_nonce_true_non_bv ((_ BitVec 7)) (_ BitVec 1))
(define-fun
   _field__rec_alloc ((_type_record_1__var (_ BitVec 7))) (_ BitVec 1)
     (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
      ((_ extract 0 0) _type_record_1__var) (_field__rec_alloc_non_bv
      _type_record_1__var)))
(define-fun
   _field__rec_lowend ((_type_record_1__var (_ BitVec 7))) (_ BitVec 2)
     (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
      ((_ extract 2 1) _type_record_1__var) (_field__rec_lowend_non_bv
      _type_record_1__var)))
(define-fun
   _field__rec_highend ((_type_record_1__var (_ BitVec 7))) (_ BitVec 2)
     (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
      ((_ extract 4 3) _type_record_1__var) (_field__rec_highend_non_bv
      _type_record_1__var)))
(define-fun
   _field__rec_nonce_true ((_type_record_1__var (_ BitVec 7))) (_ BitVec 1)
     (ite (= ((_ extract 6 6) _type_record_1__var) #b0)
      ((_ extract 5 5) _type_record_1__var) (_field__rec_nonce_true_non_bv
      _type_record_1__var)))
(define-fun
   is-_make__type_record_1_ ((_type_record_1__var (_ BitVec 7))) Bool
     (= ((_ extract 6 6) _type_record_1__var) #b0))
(define-fun RAW () (_ BitVec 1) #b0)
(define-fun
   is-RAW ((_type_enum_5__var (_ BitVec 1))) Bool
     (= ((_ extract 0 0) _type_enum_5__var) #b0))
(assert (is-RAW RAW))
(define-fun HAN () (_ BitVec 1) #b1)
(define-fun
   is-HAN ((_type_enum_5__var (_ BitVec 1))) Bool
     (= ((_ extract 0 0) _type_enum_5__var) #b1))
(assert (is-HAN HAN))
(define-fun PLN () (_ BitVec 2) #b00)
(define-fun
   is-PLN ((_type_enum_4__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_4__var) #b00))
(assert (is-PLN PLN))
(define-fun GAR () (_ BitVec 2) #b01)
(define-fun
   is-GAR ((_type_enum_4__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_4__var) #b01))
(assert (is-GAR GAR))
(define-fun ENC () (_ BitVec 2) #b10)
(define-fun
   is-ENC ((_type_enum_4__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_4__var) #b10))
(assert (is-ENC ENC))
(define-fun NoKey () (_ BitVec 2) #b00)
(define-fun
   is-NoKey ((_type_enum_3__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_3__var) #b00))
(assert (is-NoKey NoKey))
(define-fun AtKey () (_ BitVec 2) #b01)
(define-fun
   is-AtKey ((_type_enum_3__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_3__var) #b01))
(assert (is-AtKey AtKey))
(define-fun ViKey () (_ BitVec 2) #b10)
(define-fun
   is-ViKey ((_type_enum_3__var (_ BitVec 2))) Bool
     (= ((_ extract 1 0) _type_enum_3__var) #b10))
(assert (is-ViKey ViKey))
(define-fun
   _make__type_record_2_
     ((_field__rec_value_var (_ BitVec 2))
      (_field__rec_vtype_var (_ BitVec 1))
      (_field__rec_h_base_var (_ BitVec 2))
      (_field__rec_h_offset_var (_ BitVec 2))
      (_field__rec_h_length_var (_ BitVec 2))
      (_field__rec_enc_state_p_var (_ BitVec 2))
      (_field__rec_key_p_var (_ BitVec 2))
      (_field__rec_enc_state_d_var (_ BitVec 2))
      (_field__rec_key_d_var (_ BitVec 2))
      (_field__rec_ca_nonce_used_var (_ BitVec 1))
      (_field__rec_ca_nonce_true_var (_ BitVec 1)))
     (_ BitVec 20)
     (concat
      (concat
       (concat
        (concat
         (concat
          (concat
           (concat
            (concat
             (concat
              (concat
               (concat #b0 _field__rec_ca_nonce_true_var)
               _field__rec_ca_nonce_used_var)
              _field__rec_key_d_var)
             _field__rec_enc_state_d_var)
            _field__rec_key_p_var)
           _field__rec_enc_state_p_var)
          _field__rec_h_length_var)
         _field__rec_h_offset_var)
        _field__rec_h_base_var)
       _field__rec_vtype_var)
      _field__rec_value_var))
(declare-fun _field__rec_value_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_vtype_non_bv ((_ BitVec 20)) (_ BitVec 1))
(declare-fun _field__rec_h_base_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_h_offset_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_h_length_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_enc_state_p_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_key_p_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_enc_state_d_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_key_d_non_bv ((_ BitVec 20)) (_ BitVec 2))
(declare-fun _field__rec_ca_nonce_used_non_bv ((_ BitVec 20)) (_ BitVec 1))
(declare-fun _field__rec_ca_nonce_true_non_bv ((_ BitVec 20)) (_ BitVec 1))
(define-fun
   _field__rec_value ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 1 0) _type_record_2__var) (_field__rec_value_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_vtype ((_type_record_2__var (_ BitVec 20))) (_ BitVec 1)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 2 2) _type_record_2__var) (_field__rec_vtype_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_h_base ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 4 3) _type_record_2__var) (_field__rec_h_base_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_h_offset ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 6 5) _type_record_2__var) (_field__rec_h_offset_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_h_length ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 8 7) _type_record_2__var) (_field__rec_h_length_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_enc_state_p ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 10 9) _type_record_2__var) (_field__rec_enc_state_p_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_key_p ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 12 11) _type_record_2__var) (_field__rec_key_p_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_enc_state_d ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 14 13) _type_record_2__var) (_field__rec_enc_state_d_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_key_d ((_type_record_2__var (_ BitVec 20))) (_ BitVec 2)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 16 15) _type_record_2__var) (_field__rec_key_d_non_bv
      _type_record_2__var)))
(define-fun
   _field__rec_ca_nonce_used ((_type_record_2__var (_ BitVec 20)))
     (_ BitVec 1)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 17 17) _type_record_2__var)
      (_field__rec_ca_nonce_used_non_bv _type_record_2__var)))
(define-fun
   _field__rec_ca_nonce_true ((_type_record_2__var (_ BitVec 20)))
     (_ BitVec 1)
     (ite (= ((_ extract 19 19) _type_record_2__var) #b0)
      ((_ extract 18 18) _type_record_2__var)
      (_field__rec_ca_nonce_true_non_bv _type_record_2__var)))
(define-fun
   is-_make__type_record_2_ ((_type_record_2__var (_ BitVec 20))) Bool
     (= ((_ extract 19 19) _type_record_2__var) #b0))
(define-fun
   _make__type_record_6_
     ((_field__rec_valid_var (_ BitVec 1))
      (_field__rec_data_g_var (_ BitVec 20)))
     (_ BitVec 22)
     (concat (concat #b0 _field__rec_data_g_var) _field__rec_valid_var))
(declare-fun _field__rec_valid_non_bv ((_ BitVec 22)) (_ BitVec 1))
(declare-fun _field__rec_data_g_non_bv ((_ BitVec 22)) (_ BitVec 20))
(define-fun
   _field__rec_valid ((_type_record_6__var (_ BitVec 22))) (_ BitVec 1)
     (ite (= ((_ extract 21 21) _type_record_6__var) #b0)
      ((_ extract 0 0) _type_record_6__var) (_field__rec_valid_non_bv
      _type_record_6__var)))
(define-fun
   _field__rec_data_g ((_type_record_6__var (_ BitVec 22))) (_ BitVec 20)
     (ite (= ((_ extract 21 21) _type_record_6__var) #b0)
      ((_ extract 20 1) _type_record_6__var) (_field__rec_data_g_non_bv
      _type_record_6__var)))
(define-fun
   is-_make__type_record_6_ ((_type_record_6__var (_ BitVec 22))) Bool
     (= ((_ extract 21 21) _type_record_6__var) #b0))
(define-fun MALLOC () (_ BitVec 3) #b000)
(define-fun
   is-MALLOC ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b000))
(assert (is-MALLOC MALLOC))
(define-fun FREE () (_ BitVec 3) #b001)
(define-fun
   is-FREE ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b001))
(assert (is-FREE FREE))
(define-fun LOAD () (_ BitVec 3) #b010)
(define-fun
   is-LOAD ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b010))
(assert (is-LOAD LOAD))
(define-fun STORE () (_ BitVec 3) #b011)
(define-fun
   is-STORE ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b011))
(assert (is-STORE STORE))
(define-fun HANOP () (_ BitVec 3) #b100)
(define-fun
   is-HANOP ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b100))
(assert (is-HANOP HANOP))
(define-fun ARITHOP () (_ BitVec 3) #b101)
(define-fun
   is-ARITHOP ((_type_enum_7__var (_ BitVec 3))) Bool
     (= ((_ extract 2 0) _type_enum_7__var) #b101))
(assert (is-ARITHOP ARITHOP))
(define-fun
   _make__type_record_8_
     ((_field__rec_valid_var (_ BitVec 1))
      (_field__rec_allocg_var (_ BitVec 20))
      (_field__rec_newgmem_var (_ BitVec 40))
      (_field__rec_newamap_var (_ BitVec 2)))
     (_ BitVec 64)
     (concat
      (concat
       (concat (concat #b0 _field__rec_newamap_var) _field__rec_newgmem_var)
       _field__rec_allocg_var)
      _field__rec_valid_var))
(declare-fun _field__rec_valid_non_bv ((_ BitVec 64)) (_ BitVec 1))
(declare-fun _field__rec_allocg_non_bv ((_ BitVec 64)) (_ BitVec 20))
(declare-fun _field__rec_newgmem_non_bv ((_ BitVec 64)) (_ BitVec 40))
(declare-fun _field__rec_newamap_non_bv ((_ BitVec 64)) (_ BitVec 2))
(define-fun
   _field__rec_valid ((_type_record_8__var (_ BitVec 64))) (_ BitVec 1)
     (ite (= ((_ extract 63 63) _type_record_8__var) #b0)
      ((_ extract 0 0) _type_record_8__var) (_field__rec_valid_non_bv
      _type_record_8__var)))
(define-fun
   _field__rec_allocg ((_type_record_8__var (_ BitVec 64))) (_ BitVec 20)
     (ite (= ((_ extract 63 63) _type_record_8__var) #b0)
      ((_ extract 20 1) _type_record_8__var) (_field__rec_allocg_non_bv
      _type_record_8__var)))
(define-fun
   _field__rec_newgmem ((_type_record_8__var (_ BitVec 64))) (_ BitVec 40)
     (ite (= ((_ extract 63 63) _type_record_8__var) #b0)
      ((_ extract 60 21) _type_record_8__var) (_field__rec_newgmem_non_bv
      _type_record_8__var)))
(define-fun
   _field__rec_newamap ((_type_record_8__var (_ BitVec 64))) (_ BitVec 2)
     (ite (= ((_ extract 63 63) _type_record_8__var) #b0)
      ((_ extract 62 61) _type_record_8__var) (_field__rec_newamap_non_bv
      _type_record_8__var)))
(define-fun
   is-_make__type_record_8_ ((_type_record_8__var (_ BitVec 64))) Bool
     (= ((_ extract 63 63) _type_record_8__var) #b0))
(declare-fun i3 () (_ BitVec 2))
(declare-fun const___ucld_153_slot_to_nonce_c3 ((_ BitVec 2) (_ BitVec 2))
 Bool)
(declare-fun i2 () (_ BitVec 2))
(declare-fun i1 () (_ BitVec 2))
(declare-fun i4 () (_ BitVec 2))
(assert
 (let
  ((_let_9_
    (forall
     ((i1 (_ BitVec 2)) (i2 (_ BitVec 2)) (i3 (_ BitVec 2)) (i4 (_ BitVec 2)))
     (=>
      (and (bvult i1 i2) (and (bvult i3 i4) (and
       (not (and (bvule i3 i1) (bvult i1 i4)))
       (not (and (bvule i1 i3) (bvult i3 i2))))))
      (= (const___ucld_153_slot_to_nonce_c3 i1 i2)
       (const___ucld_153_slot_to_nonce_c3 i3 i4))))))
  _let_9_))
(declare-fun initial_3___ucld_157_alloc_map_var () (_ BitVec 4))
(declare-fun a () (_ BitVec 2))
(declare-fun initial_12___ucld_164_shadow_mem_var () (_ BitVec 28))
(assert
 (let
  ((_let_10_
    (forall ((a (_ BitVec 2)))
     (and
      (not
       ((_ extract 0 0)
        (bvlshr
         initial_3___ucld_157_alloc_map_var
         (bvmul ((_ zero_extend 2) a) #b0001))))
      (not
       (_field__rec_alloc
        ((_ extract 6 0)
         (bvlshr
          initial_12___ucld_164_shadow_mem_var
          (bvmul ((_ zero_extend 26) a) #b0000000000000000000000000111)))))))))
  _let_10_))
(declare-fun initial_21___ucld_173_ghost_lmap_var () (_ BitVec 160))
(declare-fun a () (_ BitVec 3))
(assert
 (let
  ((_let_11_
    (forall ((a (_ BitVec 3)))
     (=
      (_field__rec_vtype
       ((_ extract 19 0)
        (bvlshr
         initial_21___ucld_173_ghost_lmap_var
         (bvmul
          ((_ zero_extend 157) a)
          #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100))))
      RAW))))
  _let_11_))
(declare-fun initial_8___ucld_171_ghost_mem_var () (_ BitVec 80))
(assert
 (let
  ((_let_12_
    (forall ((a (_ BitVec 2)))
     (=
      (_field__rec_vtype
       ((_ extract 19 0)
        (bvlshr
         initial_8___ucld_171_ghost_mem_var
         (bvmul
          ((_ zero_extend 78) a)
          #b00000000000000000000000000000000000000000000000000000000000000000000000000010100))))
      RAW))))
  _let_12_))
(declare-fun const___ucld_147_ghost_to_nonce_c3 ((_ BitVec 20)) Bool)
(declare-fun a2 () (_ BitVec 2))
(declare-fun const___ucld_151_ghost_to_addr_value_c3 ((_ BitVec 20))
 (_ BitVec 2))
(declare-fun initial_50_v () Bool)
(declare-fun initial_57___ucld_162_l2_var () (_ BitVec 3))
(declare-fun havoc_136___ucld_37_ret_ghost_addr_out () (_ BitVec 20))
(declare-fun initial_51___ucld_157_alloc_map_var () (_ BitVec 4))
(declare-fun a1 () (_ BitVec 2))
(declare-fun initial_69___ucld_173_ghost_lmap_var () (_ BitVec 160))
(declare-fun initial_54___ucld_167_action_var () (_ BitVec 3))
(assert
 (let
  ((_let_49_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_50_ (_field__rec_ca_nonce_used _let_49_))) (let
  ((_let_51_ (_field__rec_ca_nonce_true _let_49_))) (let
  ((_let_52_ (_field__rec_enc_state_d _let_49_))) (let
  ((_let_53_ (_field__rec_h_length _let_49_))) (let
  ((_let_54_ (_field__rec_h_offset _let_49_))) (let
  ((_let_55_ (_field__rec_h_base _let_49_))) (let
  ((_let_56_ (_field__rec_vtype _let_49_))) (let
  ((_let_57_ (_field__rec_value _let_49_))) (let
  ((_let_58_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_59_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_60_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_61_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_62_ (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_63_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_64_ (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_65_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_66_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_67_
    (_field__rec_ca_nonce_true havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_68_
    (_make__type_record_2_ _let_57_ _let_58_ _let_59_ _let_60_ _let_61_
     _let_62_ _let_63_ _let_64_ _let_65_ _let_66_ _let_67_)))
  (let ((_let_69_ (_field__rec_value _let_68_))) (let
  ((_let_70_ (_field__rec_h_base _let_68_))) (let
  ((_let_71_ (_field__rec_h_offset _let_68_))) (let
  ((_let_72_ (_field__rec_h_length _let_68_))) (let
  ((_let_73_ (_field__rec_enc_state_p _let_68_))) (let
  ((_let_74_ (_field__rec_key_p _let_68_))) (let
  ((_let_75_ (_field__rec_enc_state_d _let_68_))) (let
  ((_let_76_ (_field__rec_key_d _let_68_))) (let
  ((_let_77_ (_field__rec_ca_nonce_used _let_68_))) (let
  ((_let_78_ (_field__rec_ca_nonce_true _let_68_))) (let
  ((_let_79_
    (_make__type_record_2_ _let_69_ _let_56_ _let_70_ _let_71_ _let_72_
     _let_73_ _let_74_ _let_75_ _let_76_ _let_77_ _let_78_)))
  (let ((_let_80_ (_field__rec_value _let_79_))) (let
  ((_let_81_ (_field__rec_vtype _let_79_))) (let
  ((_let_82_ (_field__rec_h_offset _let_79_))) (let
  ((_let_83_ (_field__rec_h_length _let_79_))) (let
  ((_let_84_ (_field__rec_enc_state_p _let_79_))) (let
  ((_let_85_ (_field__rec_key_p _let_79_))) (let
  ((_let_86_ (_field__rec_enc_state_d _let_79_))) (let
  ((_let_87_ (_field__rec_key_d _let_79_))) (let
  ((_let_88_ (_field__rec_ca_nonce_used _let_79_))) (let
  ((_let_89_ (_field__rec_ca_nonce_true _let_79_))) (let
  ((_let_90_
    (_make__type_record_2_ _let_80_ _let_81_ _let_55_ _let_82_ _let_83_
     _let_84_ _let_85_ _let_86_ _let_87_ _let_88_ _let_89_)))
  (let ((_let_91_ (_field__rec_value _let_90_))) (let
  ((_let_92_ (_field__rec_vtype _let_90_))) (let
  ((_let_93_ (_field__rec_h_base _let_90_))) (let
  ((_let_94_ (_field__rec_h_length _let_90_))) (let
  ((_let_95_ (_field__rec_enc_state_p _let_90_))) (let
  ((_let_96_ (_field__rec_key_p _let_90_))) (let
  ((_let_97_ (_field__rec_enc_state_d _let_90_))) (let
  ((_let_98_ (_field__rec_key_d _let_90_))) (let
  ((_let_99_ (_field__rec_ca_nonce_used _let_90_))) (let
  ((_let_100_ (_field__rec_ca_nonce_true _let_90_))) (let
  ((_let_101_
    (_make__type_record_2_ _let_91_ _let_92_ _let_93_ _let_54_ _let_94_
     _let_95_ _let_96_ _let_97_ _let_98_ _let_99_ _let_100_)))
  (let ((_let_102_ (_field__rec_value _let_101_))) (let
  ((_let_103_ (_field__rec_vtype _let_101_))) (let
  ((_let_104_ (_field__rec_h_base _let_101_))) (let
  ((_let_105_ (_field__rec_h_offset _let_101_))) (let
  ((_let_106_ (_field__rec_enc_state_p _let_101_))) (let
  ((_let_107_ (_field__rec_key_p _let_101_))) (let
  ((_let_108_ (_field__rec_enc_state_d _let_101_))) (let
  ((_let_109_ (_field__rec_key_d _let_101_))) (let
  ((_let_110_ (_field__rec_ca_nonce_used _let_101_))) (let
  ((_let_111_ (_field__rec_ca_nonce_true _let_101_))) (let
  ((_let_112_
    (_make__type_record_2_ _let_102_ _let_103_ _let_104_ _let_105_ _let_53_
     _let_106_ _let_107_ _let_108_ _let_109_ _let_110_ _let_111_)))
  (let ((_let_113_ (_field__rec_value _let_112_))) (let
  ((_let_114_ (_field__rec_vtype _let_112_))) (let
  ((_let_115_ (_field__rec_h_base _let_112_))) (let
  ((_let_116_ (_field__rec_h_offset _let_112_))) (let
  ((_let_117_ (_field__rec_h_length _let_112_))) (let
  ((_let_118_ (_field__rec_enc_state_p _let_112_))) (let
  ((_let_119_ (_field__rec_key_p _let_112_))) (let
  ((_let_120_ (_field__rec_key_d _let_112_))) (let
  ((_let_121_ (_field__rec_ca_nonce_used _let_112_))) (let
  ((_let_122_ (_field__rec_ca_nonce_true _let_112_))) (let
  ((_let_123_
    (_make__type_record_2_ _let_113_ _let_114_ _let_115_ _let_116_ _let_117_
     _let_118_ _let_119_ _let_52_ _let_120_ _let_121_ _let_122_)))
  (let ((_let_124_ (_field__rec_value _let_123_))) (let
  ((_let_125_ (_field__rec_vtype _let_123_))) (let
  ((_let_126_ (_field__rec_h_base _let_123_))) (let
  ((_let_127_ (_field__rec_h_offset _let_123_))) (let
  ((_let_128_ (_field__rec_h_length _let_123_))) (let
  ((_let_129_ (_field__rec_key_p _let_123_))) (let
  ((_let_130_ (_field__rec_enc_state_d _let_123_))) (let
  ((_let_131_ (_field__rec_key_d _let_123_))) (let
  ((_let_132_ (_field__rec_ca_nonce_used _let_123_))) (let
  ((_let_133_ (_field__rec_ca_nonce_true _let_123_))) (let
  ((_let_134_
    (_make__type_record_2_ _let_124_ _let_125_ _let_126_ _let_127_ _let_128_
     GAR _let_129_ _let_130_ _let_131_ _let_132_ _let_133_)))
  (let
  ((_let_135_
    (_make__type_record_2_ _let_124_ _let_125_ _let_126_ _let_127_ _let_128_
     PLN _let_129_ _let_130_ _let_131_ _let_132_ _let_133_)))
  (let ((_let_136_ (_field__rec_key_p _let_49_))) (let
  ((_let_137_ (= _let_136_ ViKey))) (let
  ((_let_138_ (ite _let_137_ _let_135_ _let_134_))) (let
  ((_let_139_ (_field__rec_enc_state_p _let_49_))) (let
  ((_let_140_ (= _let_139_ ENC))) (let
  ((_let_141_ (ite _let_140_ _let_134_ _let_138_))) (let
  ((_let_142_
    (_make__type_record_2_ _let_113_ _let_114_ _let_115_ _let_116_ _let_117_
     _let_118_ _let_119_ GAR _let_120_ _let_121_ _let_122_)))
  (let ((_let_143_ (_field__rec_value _let_142_))) (let
  ((_let_144_ (_field__rec_vtype _let_142_))) (let
  ((_let_145_ (_field__rec_h_base _let_142_))) (let
  ((_let_146_ (_field__rec_h_offset _let_142_))) (let
  ((_let_147_ (_field__rec_h_length _let_142_))) (let
  ((_let_148_ (_field__rec_key_p _let_142_))) (let
  ((_let_149_ (_field__rec_enc_state_d _let_142_))) (let
  ((_let_150_ (_field__rec_key_d _let_142_))) (let
  ((_let_151_ (_field__rec_ca_nonce_used _let_142_))) (let
  ((_let_152_ (_field__rec_ca_nonce_true _let_142_))) (let
  ((_let_153_
    (_make__type_record_2_ _let_143_ _let_144_ _let_145_ _let_146_ _let_147_
     GAR _let_148_ _let_149_ _let_150_ _let_151_ _let_152_)))
  (let ((_let_154_ (= _let_52_ PLN))) (let
  ((_let_155_ (ite _let_154_ _let_153_ _let_141_))) (let
  ((_let_156_ (_field__rec_value _let_155_))) (let
  ((_let_157_ (_field__rec_vtype _let_155_))) (let
  ((_let_158_ (_field__rec_h_base _let_155_))) (let
  ((_let_159_ (_field__rec_h_offset _let_155_))) (let
  ((_let_160_ (_field__rec_h_length _let_155_))) (let
  ((_let_161_ (_field__rec_enc_state_p _let_155_))) (let
  ((_let_162_ (_field__rec_enc_state_d _let_155_))) (let
  ((_let_163_ (_field__rec_key_d _let_155_))) (let
  ((_let_164_ (_field__rec_ca_nonce_used _let_155_))) (let
  ((_let_165_ (_field__rec_ca_nonce_true _let_155_))) (let
  ((_let_166_
    (_make__type_record_2_ _let_156_ _let_157_ _let_158_ _let_159_ _let_160_
     _let_161_ NoKey _let_162_ _let_163_ _let_164_ _let_165_)))
  (let ((_let_167_ (_field__rec_value _let_166_))) (let
  ((_let_168_ (_field__rec_vtype _let_166_))) (let
  ((_let_169_ (_field__rec_h_base _let_166_))) (let
  ((_let_170_ (_field__rec_h_offset _let_166_))) (let
  ((_let_171_ (_field__rec_h_length _let_166_))) (let
  ((_let_172_ (_field__rec_enc_state_p _let_166_))) (let
  ((_let_173_ (_field__rec_key_p _let_166_))) (let
  ((_let_174_ (_field__rec_enc_state_d _let_166_))) (let
  ((_let_175_ (_field__rec_ca_nonce_used _let_166_))) (let
  ((_let_176_ (_field__rec_ca_nonce_true _let_166_))) (let
  ((_let_177_
    (_make__type_record_2_ _let_167_ _let_168_ _let_169_ _let_170_ _let_171_
     _let_172_ _let_173_ _let_174_ NoKey _let_175_ _let_176_)))
  (let ((_let_178_ (_field__rec_value _let_177_))) (let
  ((_let_179_ (_field__rec_vtype _let_177_))) (let
  ((_let_180_ (_field__rec_h_base _let_177_))) (let
  ((_let_181_ (_field__rec_h_offset _let_177_))) (let
  ((_let_182_ (_field__rec_h_length _let_177_))) (let
  ((_let_183_ (_field__rec_enc_state_p _let_177_))) (let
  ((_let_184_ (_field__rec_key_p _let_177_))) (let
  ((_let_185_ (_field__rec_enc_state_d _let_177_))) (let
  ((_let_186_ (_field__rec_key_d _let_177_))) (let
  ((_let_187_ (_field__rec_ca_nonce_used _let_177_))) (let
  ((_let_188_
    (_make__type_record_2_ _let_178_ _let_179_ _let_180_ _let_181_ _let_182_
     _let_183_ _let_184_ _let_185_ _let_186_ _let_187_ _let_51_)))
  (let ((_let_189_ (_field__rec_value _let_188_))) (let
  ((_let_190_ (_field__rec_vtype _let_188_))) (let
  ((_let_191_ (_field__rec_h_base _let_188_))) (let
  ((_let_192_ (_field__rec_h_offset _let_188_))) (let
  ((_let_193_ (_field__rec_h_length _let_188_))) (let
  ((_let_194_ (_field__rec_enc_state_p _let_188_))) (let
  ((_let_195_ (_field__rec_key_p _let_188_))) (let
  ((_let_196_ (_field__rec_enc_state_d _let_188_))) (let
  ((_let_197_ (_field__rec_key_d _let_188_))) (let
  ((_let_198_ (_field__rec_ca_nonce_true _let_188_))) (let
  ((_let_199_
    (_make__type_record_2_ _let_189_ _let_190_ _let_191_ _let_192_ _let_193_
     _let_194_ _let_195_ _let_196_ _let_197_ _let_50_ _let_198_)))
  (let ((_let_200_ (const___ucld_151_ghost_to_addr_value_c3 _let_199_))) (let
  ((_let_201_ (_field__rec_value _let_199_))) (let
  ((_let_202_ (= _let_201_ _let_200_))) (let
  ((_let_203_ (_field__rec_h_length _let_199_))) (let
  ((_let_204_ (_field__rec_h_base _let_199_))) (let
  ((_let_205_ (bvadd _let_204_ _let_203_))) (let
  ((_let_206_ (const___ucld_153_slot_to_nonce_c3 _let_204_ _let_205_))) (let
  ((_let_207_ (const___ucld_147_ghost_to_nonce_c3 _let_199_))) (let
  ((_let_208_ (= _let_207_ _let_206_))) (let
  ((_let_209_ (and _let_208_ _let_202_))) (let
  ((_let_210_ (_field__rec_enc_state_d _let_199_))) (let
  ((_let_211_ (= _let_210_ PLN))) (let
  ((_let_212_ (_field__rec_vtype _let_199_))) (let
  ((_let_213_ (= _let_212_ HAN))) (let
  ((_let_214_ (and _let_213_ _let_211_))) (let
  ((_let_215_ (=> _let_214_ _let_209_))) (let
  ((_let_216_
    (forall ((a1 (_ BitVec 2))) (forall ((a2 (_ BitVec 2)))
     (=> (bvult a1 a2)
      (= _let_207_ (const___ucld_153_slot_to_nonce_c3 a1 a2)))))))
  (let ((_let_217_ (= _let_210_ PLN))) (let ((_let_218_ (= _let_212_ HAN)))
  (let ((_let_219_ (or _let_218_ _let_217_))) (let
  ((_let_220_ (=> _let_219_ _let_216_))) (let
  ((_let_221_ (and _let_220_ _let_215_))) (let
  ((_let_222_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_223_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_200_) #b0001)))))
  (let ((_let_224_ (not _let_223_))) (let ((_let_225_ (not _let_224_))) (let
  ((_let_226_ (and true _let_225_))) (let
  ((_let_227_ (and _let_226_ _let_222_))) (let
  ((_let_228_ (and _let_227_ initial_50_v))) (let
  ((_let_229_ (=> _let_228_ _let_221_)))
  _let_229_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun state_1___ucld_175_alloc_probe_var () (_ BitVec 64))
(declare-fun havoc_193___ucld_34_ret_as () (_ BitVec 64))
(declare-fun initial_70___ucld_175_alloc_probe_var () (_ BitVec 64))
(assert
 (let
  ((_let_230_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_231_
    (ite _let_230_ havoc_193___ucld_34_ret_as
     initial_70___ucld_175_alloc_probe_var)))
  (let
  ((_let_232_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_233_ (ite _let_232_ initial_70___ucld_175_alloc_probe_var _let_231_)))
  (let
  ((_let_234_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_235_ (ite _let_234_ initial_70___ucld_175_alloc_probe_var _let_233_)))
  (let
  ((_let_236_
    (ite initial_50_v _let_235_ initial_70___ucld_175_alloc_probe_var)))
  (let
  ((_let_237_
    (and
     (or
      (and
       (= ((_ extract 63 63) state_1___ucld_175_alloc_probe_var)
        ((_ extract 63 63) _let_236_))
       (and (and
       (or
        (and
         (= ((_ extract 20 20) state_1___ucld_175_alloc_probe_var)
          ((_ extract 20 20) _let_236_))
         (and (and
         (or
          (and
           (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var)
            ((_ extract 14 13) _let_236_)))
          (and
           (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var)
            ((_ extract 14 13) _let_236_)))
          (and
           (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var)
            ((_ extract 14 13) _let_236_))))
         (not (= ((_ extract 14 13) state_1___ucld_175_alloc_probe_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var)
            ((_ extract 10 9) _let_236_)))
          (and
           (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var)
            ((_ extract 10 9) _let_236_)))
          (and
           (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var)
            ((_ extract 10 9) _let_236_))))
         (not (= ((_ extract 10 9) state_1___ucld_175_alloc_probe_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var)
            ((_ extract 12 11) _let_236_)))
          (and
           (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var)
            ((_ extract 12 11) _let_236_)))
          (and
           (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var)
            ((_ extract 12 11) _let_236_))))
         (not (= ((_ extract 12 11) state_1___ucld_175_alloc_probe_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var)
            ((_ extract 16 15) _let_236_)))
          (and
           (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var)
            ((_ extract 16 15) _let_236_)))
          (and
           (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var)
            ((_ extract 16 15) _let_236_))))
         (not (= ((_ extract 16 15) state_1___ucld_175_alloc_probe_var) #b11)))
         (and
         (or
          (and
           (= ((_ extract 2 2) state_1___ucld_175_alloc_probe_var)
            ((_ extract 2 2) _let_236_)))
          (and
           (= ((_ extract 2 2) state_1___ucld_175_alloc_probe_var)
            ((_ extract 2 2) _let_236_))))))))
       (not (= ((_ extract 20 20) state_1___ucld_175_alloc_probe_var) #b1))))))
     (not (= ((_ extract 63 63) state_1___ucld_175_alloc_probe_var) #b1)))))
  _let_237_)))))))))
(declare-fun state_1___ucld_159_src1_probe_var () (_ BitVec 2))
(declare-fun initial_53___ucld_159_src1_probe_var () (_ BitVec 2))
(assert
 (let
  ((_let_238_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_239_
    (ite _let_238_ initial_53___ucld_159_src1_probe_var
     initial_53___ucld_159_src1_probe_var)))
  (let
  ((_let_240_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_241_ (ite _let_240_ initial_53___ucld_159_src1_probe_var _let_239_)))
  (let
  ((_let_242_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_243_ (ite _let_242_ initial_53___ucld_159_src1_probe_var _let_241_)))
  (let
  ((_let_244_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_245_ (ite _let_244_ initial_53___ucld_159_src1_probe_var _let_243_)))
  (let
  ((_let_246_
    (ite initial_50_v _let_245_ initial_53___ucld_159_src1_probe_var)))
  (let ((_let_247_ (= state_1___ucld_159_src1_probe_var _let_246_)))
  _let_247_)))))))))))
(declare-fun initial_65___ucld_154_data_probe_var () (_ BitVec 2))
(declare-fun initial_63___ucld_161_l1_var () (_ BitVec 3))
(declare-fun havoc_177_enc_cell_data () (_ BitVec 2))
(declare-fun state_1___ucld_154_data_probe_var () (_ BitVec 2))
(declare-fun havoc_243_newdata () (_ BitVec 2))
(declare-fun havoc_127_dec_cell_data () (_ BitVec 2))
(declare-fun havoc_175___ucld_44_ret_ghost_addr_out () (_ BitVec 20))
(assert
 (let
  ((_let_248_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_249_
    (ite _let_248_ havoc_243_newdata initial_65___ucld_154_data_probe_var)))
  (let
  ((_let_250_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_251_ (ite _let_250_ initial_65___ucld_154_data_probe_var _let_249_)))
  (let
  ((_let_252_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let
  ((_let_253_ (ite _let_252_ initial_65___ucld_154_data_probe_var _let_251_)))
  (let
  ((_let_254_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_63___ucld_161_l1_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_255_ (_field__rec_ca_nonce_used _let_254_))) (let
  ((_let_256_ (_field__rec_ca_nonce_true _let_254_))) (let
  ((_let_257_ (_field__rec_enc_state_d _let_254_))) (let
  ((_let_258_ (_field__rec_h_length _let_254_))) (let
  ((_let_259_ (_field__rec_h_offset _let_254_))) (let
  ((_let_260_ (_field__rec_h_base _let_254_))) (let
  ((_let_261_ (_field__rec_vtype _let_254_))) (let
  ((_let_262_ (_field__rec_value _let_254_))) (let
  ((_let_263_ (_field__rec_vtype havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_264_ (_field__rec_h_base havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_265_ (_field__rec_h_offset havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_266_ (_field__rec_h_length havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_267_
    (_field__rec_enc_state_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_268_ (_field__rec_key_p havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_269_
    (_field__rec_enc_state_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_270_ (_field__rec_key_d havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_271_
    (_field__rec_ca_nonce_used havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_272_
    (_field__rec_ca_nonce_true havoc_175___ucld_44_ret_ghost_addr_out)))
  (let
  ((_let_273_
    (_make__type_record_2_ _let_262_ _let_263_ _let_264_ _let_265_ _let_266_
     _let_267_ _let_268_ _let_269_ _let_270_ _let_271_ _let_272_)))
  (let ((_let_274_ (_field__rec_value _let_273_))) (let
  ((_let_275_ (_field__rec_h_base _let_273_))) (let
  ((_let_276_ (_field__rec_h_offset _let_273_))) (let
  ((_let_277_ (_field__rec_h_length _let_273_))) (let
  ((_let_278_ (_field__rec_enc_state_p _let_273_))) (let
  ((_let_279_ (_field__rec_key_p _let_273_))) (let
  ((_let_280_ (_field__rec_enc_state_d _let_273_))) (let
  ((_let_281_ (_field__rec_key_d _let_273_))) (let
  ((_let_282_ (_field__rec_ca_nonce_used _let_273_))) (let
  ((_let_283_ (_field__rec_ca_nonce_true _let_273_))) (let
  ((_let_284_
    (_make__type_record_2_ _let_274_ _let_261_ _let_275_ _let_276_ _let_277_
     _let_278_ _let_279_ _let_280_ _let_281_ _let_282_ _let_283_)))
  (let ((_let_285_ (_field__rec_value _let_284_))) (let
  ((_let_286_ (_field__rec_vtype _let_284_))) (let
  ((_let_287_ (_field__rec_h_offset _let_284_))) (let
  ((_let_288_ (_field__rec_h_length _let_284_))) (let
  ((_let_289_ (_field__rec_enc_state_p _let_284_))) (let
  ((_let_290_ (_field__rec_key_p _let_284_))) (let
  ((_let_291_ (_field__rec_enc_state_d _let_284_))) (let
  ((_let_292_ (_field__rec_key_d _let_284_))) (let
  ((_let_293_ (_field__rec_ca_nonce_used _let_284_))) (let
  ((_let_294_ (_field__rec_ca_nonce_true _let_284_))) (let
  ((_let_295_
    (_make__type_record_2_ _let_285_ _let_286_ _let_260_ _let_287_ _let_288_
     _let_289_ _let_290_ _let_291_ _let_292_ _let_293_ _let_294_)))
  (let ((_let_296_ (_field__rec_value _let_295_))) (let
  ((_let_297_ (_field__rec_vtype _let_295_))) (let
  ((_let_298_ (_field__rec_h_base _let_295_))) (let
  ((_let_299_ (_field__rec_h_length _let_295_))) (let
  ((_let_300_ (_field__rec_enc_state_p _let_295_))) (let
  ((_let_301_ (_field__rec_key_p _let_295_))) (let
  ((_let_302_ (_field__rec_enc_state_d _let_295_))) (let
  ((_let_303_ (_field__rec_key_d _let_295_))) (let
  ((_let_304_ (_field__rec_ca_nonce_used _let_295_))) (let
  ((_let_305_ (_field__rec_ca_nonce_true _let_295_))) (let
  ((_let_306_
    (_make__type_record_2_ _let_296_ _let_297_ _let_298_ _let_259_ _let_299_
     _let_300_ _let_301_ _let_302_ _let_303_ _let_304_ _let_305_)))
  (let ((_let_307_ (_field__rec_value _let_306_))) (let
  ((_let_308_ (_field__rec_vtype _let_306_))) (let
  ((_let_309_ (_field__rec_h_base _let_306_))) (let
  ((_let_310_ (_field__rec_h_offset _let_306_))) (let
  ((_let_311_ (_field__rec_enc_state_p _let_306_))) (let
  ((_let_312_ (_field__rec_key_p _let_306_))) (let
  ((_let_313_ (_field__rec_enc_state_d _let_306_))) (let
  ((_let_314_ (_field__rec_key_d _let_306_))) (let
  ((_let_315_ (_field__rec_ca_nonce_used _let_306_))) (let
  ((_let_316_ (_field__rec_ca_nonce_true _let_306_))) (let
  ((_let_317_
    (_make__type_record_2_ _let_307_ _let_308_ _let_309_ _let_310_ _let_258_
     _let_311_ _let_312_ _let_313_ _let_314_ _let_315_ _let_316_)))
  (let ((_let_318_ (_field__rec_value _let_317_))) (let
  ((_let_319_ (_field__rec_vtype _let_317_))) (let
  ((_let_320_ (_field__rec_h_base _let_317_))) (let
  ((_let_321_ (_field__rec_h_offset _let_317_))) (let
  ((_let_322_ (_field__rec_h_length _let_317_))) (let
  ((_let_323_ (_field__rec_enc_state_p _let_317_))) (let
  ((_let_324_ (_field__rec_key_p _let_317_))) (let
  ((_let_325_ (_field__rec_key_d _let_317_))) (let
  ((_let_326_ (_field__rec_ca_nonce_used _let_317_))) (let
  ((_let_327_ (_field__rec_ca_nonce_true _let_317_))) (let
  ((_let_328_
    (_make__type_record_2_ _let_318_ _let_319_ _let_320_ _let_321_ _let_322_
     _let_323_ _let_324_ _let_257_ _let_325_ _let_326_ _let_327_)))
  (let ((_let_329_ (_field__rec_value _let_328_))) (let
  ((_let_330_ (_field__rec_vtype _let_328_))) (let
  ((_let_331_ (_field__rec_h_base _let_328_))) (let
  ((_let_332_ (_field__rec_h_offset _let_328_))) (let
  ((_let_333_ (_field__rec_h_length _let_328_))) (let
  ((_let_334_ (_field__rec_key_p _let_328_))) (let
  ((_let_335_ (_field__rec_enc_state_d _let_328_))) (let
  ((_let_336_ (_field__rec_key_d _let_328_))) (let
  ((_let_337_ (_field__rec_ca_nonce_used _let_328_))) (let
  ((_let_338_ (_field__rec_ca_nonce_true _let_328_))) (let
  ((_let_339_
    (_make__type_record_2_ _let_329_ _let_330_ _let_331_ _let_332_ _let_333_
     GAR _let_334_ _let_335_ _let_336_ _let_337_ _let_338_)))
  (let
  ((_let_340_
    (_make__type_record_2_ _let_329_ _let_330_ _let_331_ _let_332_ _let_333_
     PLN _let_334_ _let_335_ _let_336_ _let_337_ _let_338_)))
  (let ((_let_341_ (_field__rec_key_p _let_254_))) (let
  ((_let_342_ (= _let_341_ ViKey))) (let
  ((_let_343_ (ite _let_342_ _let_340_ _let_339_))) (let
  ((_let_344_ (_field__rec_enc_state_p _let_254_))) (let
  ((_let_345_ (= _let_344_ ENC))) (let
  ((_let_346_ (ite _let_345_ _let_339_ _let_343_))) (let
  ((_let_347_
    (_make__type_record_2_ _let_318_ _let_319_ _let_320_ _let_321_ _let_322_
     _let_323_ _let_324_ GAR _let_325_ _let_326_ _let_327_)))
  (let ((_let_348_ (_field__rec_value _let_347_))) (let
  ((_let_349_ (_field__rec_vtype _let_347_))) (let
  ((_let_350_ (_field__rec_h_base _let_347_))) (let
  ((_let_351_ (_field__rec_h_offset _let_347_))) (let
  ((_let_352_ (_field__rec_h_length _let_347_))) (let
  ((_let_353_ (_field__rec_key_p _let_347_))) (let
  ((_let_354_ (_field__rec_enc_state_d _let_347_))) (let
  ((_let_355_ (_field__rec_key_d _let_347_))) (let
  ((_let_356_ (_field__rec_ca_nonce_used _let_347_))) (let
  ((_let_357_ (_field__rec_ca_nonce_true _let_347_))) (let
  ((_let_358_
    (_make__type_record_2_ _let_348_ _let_349_ _let_350_ _let_351_ _let_352_
     GAR _let_353_ _let_354_ _let_355_ _let_356_ _let_357_)))
  (let ((_let_359_ (= _let_257_ PLN))) (let
  ((_let_360_ (ite _let_359_ _let_358_ _let_346_))) (let
  ((_let_361_ (_field__rec_value _let_360_))) (let
  ((_let_362_ (_field__rec_vtype _let_360_))) (let
  ((_let_363_ (_field__rec_h_base _let_360_))) (let
  ((_let_364_ (_field__rec_h_offset _let_360_))) (let
  ((_let_365_ (_field__rec_h_length _let_360_))) (let
  ((_let_366_ (_field__rec_enc_state_p _let_360_))) (let
  ((_let_367_ (_field__rec_enc_state_d _let_360_))) (let
  ((_let_368_ (_field__rec_key_d _let_360_))) (let
  ((_let_369_ (_field__rec_ca_nonce_used _let_360_))) (let
  ((_let_370_ (_field__rec_ca_nonce_true _let_360_))) (let
  ((_let_371_
    (_make__type_record_2_ _let_361_ _let_362_ _let_363_ _let_364_ _let_365_
     _let_366_ NoKey _let_367_ _let_368_ _let_369_ _let_370_)))
  (let ((_let_372_ (_field__rec_value _let_371_))) (let
  ((_let_373_ (_field__rec_vtype _let_371_))) (let
  ((_let_374_ (_field__rec_h_base _let_371_))) (let
  ((_let_375_ (_field__rec_h_offset _let_371_))) (let
  ((_let_376_ (_field__rec_h_length _let_371_))) (let
  ((_let_377_ (_field__rec_enc_state_p _let_371_))) (let
  ((_let_378_ (_field__rec_key_p _let_371_))) (let
  ((_let_379_ (_field__rec_enc_state_d _let_371_))) (let
  ((_let_380_ (_field__rec_ca_nonce_used _let_371_))) (let
  ((_let_381_ (_field__rec_ca_nonce_true _let_371_))) (let
  ((_let_382_
    (_make__type_record_2_ _let_372_ _let_373_ _let_374_ _let_375_ _let_376_
     _let_377_ _let_378_ _let_379_ NoKey _let_380_ _let_381_)))
  (let ((_let_383_ (_field__rec_value _let_382_))) (let
  ((_let_384_ (_field__rec_vtype _let_382_))) (let
  ((_let_385_ (_field__rec_h_base _let_382_))) (let
  ((_let_386_ (_field__rec_h_offset _let_382_))) (let
  ((_let_387_ (_field__rec_h_length _let_382_))) (let
  ((_let_388_ (_field__rec_enc_state_p _let_382_))) (let
  ((_let_389_ (_field__rec_key_p _let_382_))) (let
  ((_let_390_ (_field__rec_enc_state_d _let_382_))) (let
  ((_let_391_ (_field__rec_key_d _let_382_))) (let
  ((_let_392_ (_field__rec_ca_nonce_used _let_382_))) (let
  ((_let_393_
    (_make__type_record_2_ _let_383_ _let_384_ _let_385_ _let_386_ _let_387_
     _let_388_ _let_389_ _let_390_ _let_391_ _let_392_ _let_256_)))
  (let ((_let_394_ (_field__rec_value _let_393_))) (let
  ((_let_395_ (_field__rec_vtype _let_393_))) (let
  ((_let_396_ (_field__rec_h_base _let_393_))) (let
  ((_let_397_ (_field__rec_h_offset _let_393_))) (let
  ((_let_398_ (_field__rec_h_length _let_393_))) (let
  ((_let_399_ (_field__rec_enc_state_p _let_393_))) (let
  ((_let_400_ (_field__rec_key_p _let_393_))) (let
  ((_let_401_ (_field__rec_enc_state_d _let_393_))) (let
  ((_let_402_ (_field__rec_key_d _let_393_))) (let
  ((_let_403_ (_field__rec_ca_nonce_true _let_393_))) (let
  ((_let_404_
    (_make__type_record_2_ _let_394_ _let_395_ _let_396_ _let_397_ _let_398_
     _let_399_ _let_400_ _let_401_ _let_402_ _let_255_ _let_403_)))
  (let ((_let_405_ (const___ucld_151_ghost_to_addr_value_c3 _let_404_))) (let
  ((_let_406_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_405_) #b0001)))))
  (let
  ((_let_407_
    (ite _let_406_ initial_65___ucld_154_data_probe_var
     havoc_177_enc_cell_data)))
  (let
  ((_let_408_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_409_ (ite _let_408_ _let_407_ _let_253_))) (let
  ((_let_410_
    ((_ extract 19 0)
     (bvlshr
      initial_69___ucld_173_ghost_lmap_var
      (bvmul
       ((_ zero_extend 157) initial_57___ucld_162_l2_var)
       #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010100)))))
  (let ((_let_411_ (_field__rec_ca_nonce_used _let_410_))) (let
  ((_let_412_ (_field__rec_ca_nonce_true _let_410_))) (let
  ((_let_413_ (_field__rec_enc_state_d _let_410_))) (let
  ((_let_414_ (_field__rec_h_length _let_410_))) (let
  ((_let_415_ (_field__rec_h_offset _let_410_))) (let
  ((_let_416_ (_field__rec_h_base _let_410_))) (let
  ((_let_417_ (_field__rec_vtype _let_410_))) (let
  ((_let_418_ (_field__rec_value _let_410_))) (let
  ((_let_419_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_420_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_421_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_422_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_423_
    (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_424_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_425_
    (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_426_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_427_
    (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_428_
    (_field__rec_ca_nonce_true havoc_136___ucld_37_ret_ghost_addr_out)))
  (let
  ((_let_429_
    (_make__type_record_2_ _let_418_ _let_419_ _let_420_ _let_421_ _let_422_
     _let_423_ _let_424_ _let_425_ _let_426_ _let_427_ _let_428_)))
  (let ((_let_430_ (_field__rec_value _let_429_))) (let
  ((_let_431_ (_field__rec_h_base _let_429_))) (let
  ((_let_432_ (_field__rec_h_offset _let_429_))) (let
  ((_let_433_ (_field__rec_h_length _let_429_))) (let
  ((_let_434_ (_field__rec_enc_state_p _let_429_))) (let
  ((_let_435_ (_field__rec_key_p _let_429_))) (let
  ((_let_436_ (_field__rec_enc_state_d _let_429_))) (let
  ((_let_437_ (_field__rec_key_d _let_429_))) (let
  ((_let_438_ (_field__rec_ca_nonce_used _let_429_))) (let
  ((_let_439_ (_field__rec_ca_nonce_true _let_429_))) (let
  ((_let_440_
    (_make__type_record_2_ _let_430_ _let_417_ _let_431_ _let_432_ _let_433_
     _let_434_ _let_435_ _let_436_ _let_437_ _let_438_ _let_439_)))
  (let ((_let_441_ (_field__rec_value _let_440_))) (let
  ((_let_442_ (_field__rec_vtype _let_440_))) (let
  ((_let_443_ (_field__rec_h_offset _let_440_))) (let
  ((_let_444_ (_field__rec_h_length _let_440_))) (let
  ((_let_445_ (_field__rec_enc_state_p _let_440_))) (let
  ((_let_446_ (_field__rec_key_p _let_440_))) (let
  ((_let_447_ (_field__rec_enc_state_d _let_440_))) (let
  ((_let_448_ (_field__rec_key_d _let_440_))) (let
  ((_let_449_ (_field__rec_ca_nonce_used _let_440_))) (let
  ((_let_450_ (_field__rec_ca_nonce_true _let_440_))) (let
  ((_let_451_
    (_make__type_record_2_ _let_441_ _let_442_ _let_416_ _let_443_ _let_444_
     _let_445_ _let_446_ _let_447_ _let_448_ _let_449_ _let_450_)))
  (let ((_let_452_ (_field__rec_value _let_451_))) (let
  ((_let_453_ (_field__rec_vtype _let_451_))) (let
  ((_let_454_ (_field__rec_h_base _let_451_))) (let
  ((_let_455_ (_field__rec_h_length _let_451_))) (let
  ((_let_456_ (_field__rec_enc_state_p _let_451_))) (let
  ((_let_457_ (_field__rec_key_p _let_451_))) (let
  ((_let_458_ (_field__rec_enc_state_d _let_451_))) (let
  ((_let_459_ (_field__rec_key_d _let_451_))) (let
  ((_let_460_ (_field__rec_ca_nonce_used _let_451_))) (let
  ((_let_461_ (_field__rec_ca_nonce_true _let_451_))) (let
  ((_let_462_
    (_make__type_record_2_ _let_452_ _let_453_ _let_454_ _let_415_ _let_455_
     _let_456_ _let_457_ _let_458_ _let_459_ _let_460_ _let_461_)))
  (let ((_let_463_ (_field__rec_value _let_462_))) (let
  ((_let_464_ (_field__rec_vtype _let_462_))) (let
  ((_let_465_ (_field__rec_h_base _let_462_))) (let
  ((_let_466_ (_field__rec_h_offset _let_462_))) (let
  ((_let_467_ (_field__rec_enc_state_p _let_462_))) (let
  ((_let_468_ (_field__rec_key_p _let_462_))) (let
  ((_let_469_ (_field__rec_enc_state_d _let_462_))) (let
  ((_let_470_ (_field__rec_key_d _let_462_))) (let
  ((_let_471_ (_field__rec_ca_nonce_used _let_462_))) (let
  ((_let_472_ (_field__rec_ca_nonce_true _let_462_))) (let
  ((_let_473_
    (_make__type_record_2_ _let_463_ _let_464_ _let_465_ _let_466_ _let_414_
     _let_467_ _let_468_ _let_469_ _let_470_ _let_471_ _let_472_)))
  (let ((_let_474_ (_field__rec_value _let_473_))) (let
  ((_let_475_ (_field__rec_vtype _let_473_))) (let
  ((_let_476_ (_field__rec_h_base _let_473_))) (let
  ((_let_477_ (_field__rec_h_offset _let_473_))) (let
  ((_let_478_ (_field__rec_h_length _let_473_))) (let
  ((_let_479_ (_field__rec_enc_state_p _let_473_))) (let
  ((_let_480_ (_field__rec_key_p _let_473_))) (let
  ((_let_481_ (_field__rec_key_d _let_473_))) (let
  ((_let_482_ (_field__rec_ca_nonce_used _let_473_))) (let
  ((_let_483_ (_field__rec_ca_nonce_true _let_473_))) (let
  ((_let_484_
    (_make__type_record_2_ _let_474_ _let_475_ _let_476_ _let_477_ _let_478_
     _let_479_ _let_480_ _let_413_ _let_481_ _let_482_ _let_483_)))
  (let ((_let_485_ (_field__rec_value _let_484_))) (let
  ((_let_486_ (_field__rec_vtype _let_484_))) (let
  ((_let_487_ (_field__rec_h_base _let_484_))) (let
  ((_let_488_ (_field__rec_h_offset _let_484_))) (let
  ((_let_489_ (_field__rec_h_length _let_484_))) (let
  ((_let_490_ (_field__rec_key_p _let_484_))) (let
  ((_let_491_ (_field__rec_enc_state_d _let_484_))) (let
  ((_let_492_ (_field__rec_key_d _let_484_))) (let
  ((_let_493_ (_field__rec_ca_nonce_used _let_484_))) (let
  ((_let_494_ (_field__rec_ca_nonce_true _let_484_))) (let
  ((_let_495_
    (_make__type_record_2_ _let_485_ _let_486_ _let_487_ _let_488_ _let_489_
     GAR _let_490_ _let_491_ _let_492_ _let_493_ _let_494_)))
  (let
  ((_let_496_
    (_make__type_record_2_ _let_485_ _let_486_ _let_487_ _let_488_ _let_489_
     PLN _let_490_ _let_491_ _let_492_ _let_493_ _let_494_)))
  (let ((_let_497_ (_field__rec_key_p _let_410_))) (let
  ((_let_498_ (= _let_497_ ViKey))) (let
  ((_let_499_ (ite _let_498_ _let_496_ _let_495_))) (let
  ((_let_500_ (_field__rec_enc_state_p _let_410_))) (let
  ((_let_501_ (= _let_500_ ENC))) (let
  ((_let_502_ (ite _let_501_ _let_495_ _let_499_))) (let
  ((_let_503_
    (_make__type_record_2_ _let_474_ _let_475_ _let_476_ _let_477_ _let_478_
     _let_479_ _let_480_ GAR _let_481_ _let_482_ _let_483_)))
  (let ((_let_504_ (_field__rec_value _let_503_))) (let
  ((_let_505_ (_field__rec_vtype _let_503_))) (let
  ((_let_506_ (_field__rec_h_base _let_503_))) (let
  ((_let_507_ (_field__rec_h_offset _let_503_))) (let
  ((_let_508_ (_field__rec_h_length _let_503_))) (let
  ((_let_509_ (_field__rec_key_p _let_503_))) (let
  ((_let_510_ (_field__rec_enc_state_d _let_503_))) (let
  ((_let_511_ (_field__rec_key_d _let_503_))) (let
  ((_let_512_ (_field__rec_ca_nonce_used _let_503_))) (let
  ((_let_513_ (_field__rec_ca_nonce_true _let_503_))) (let
  ((_let_514_
    (_make__type_record_2_ _let_504_ _let_505_ _let_506_ _let_507_ _let_508_
     GAR _let_509_ _let_510_ _let_511_ _let_512_ _let_513_)))
  (let ((_let_515_ (= _let_413_ PLN))) (let
  ((_let_516_ (ite _let_515_ _let_514_ _let_502_))) (let
  ((_let_517_ (_field__rec_value _let_516_))) (let
  ((_let_518_ (_field__rec_vtype _let_516_))) (let
  ((_let_519_ (_field__rec_h_base _let_516_))) (let
  ((_let_520_ (_field__rec_h_offset _let_516_))) (let
  ((_let_521_ (_field__rec_h_length _let_516_))) (let
  ((_let_522_ (_field__rec_enc_state_p _let_516_))) (let
  ((_let_523_ (_field__rec_enc_state_d _let_516_))) (let
  ((_let_524_ (_field__rec_key_d _let_516_))) (let
  ((_let_525_ (_field__rec_ca_nonce_used _let_516_))) (let
  ((_let_526_ (_field__rec_ca_nonce_true _let_516_))) (let
  ((_let_527_
    (_make__type_record_2_ _let_517_ _let_518_ _let_519_ _let_520_ _let_521_
     _let_522_ NoKey _let_523_ _let_524_ _let_525_ _let_526_)))
  (let ((_let_528_ (_field__rec_value _let_527_))) (let
  ((_let_529_ (_field__rec_vtype _let_527_))) (let
  ((_let_530_ (_field__rec_h_base _let_527_))) (let
  ((_let_531_ (_field__rec_h_offset _let_527_))) (let
  ((_let_532_ (_field__rec_h_length _let_527_))) (let
  ((_let_533_ (_field__rec_enc_state_p _let_527_))) (let
  ((_let_534_ (_field__rec_key_p _let_527_))) (let
  ((_let_535_ (_field__rec_enc_state_d _let_527_))) (let
  ((_let_536_ (_field__rec_ca_nonce_used _let_527_))) (let
  ((_let_537_ (_field__rec_ca_nonce_true _let_527_))) (let
  ((_let_538_
    (_make__type_record_2_ _let_528_ _let_529_ _let_530_ _let_531_ _let_532_
     _let_533_ _let_534_ _let_535_ NoKey _let_536_ _let_537_)))
  (let ((_let_539_ (_field__rec_value _let_538_))) (let
  ((_let_540_ (_field__rec_vtype _let_538_))) (let
  ((_let_541_ (_field__rec_h_base _let_538_))) (let
  ((_let_542_ (_field__rec_h_offset _let_538_))) (let
  ((_let_543_ (_field__rec_h_length _let_538_))) (let
  ((_let_544_ (_field__rec_enc_state_p _let_538_))) (let
  ((_let_545_ (_field__rec_key_p _let_538_))) (let
  ((_let_546_ (_field__rec_enc_state_d _let_538_))) (let
  ((_let_547_ (_field__rec_key_d _let_538_))) (let
  ((_let_548_ (_field__rec_ca_nonce_used _let_538_))) (let
  ((_let_549_
    (_make__type_record_2_ _let_539_ _let_540_ _let_541_ _let_542_ _let_543_
     _let_544_ _let_545_ _let_546_ _let_547_ _let_548_ _let_412_)))
  (let ((_let_550_ (_field__rec_value _let_549_))) (let
  ((_let_551_ (_field__rec_vtype _let_549_))) (let
  ((_let_552_ (_field__rec_h_base _let_549_))) (let
  ((_let_553_ (_field__rec_h_offset _let_549_))) (let
  ((_let_554_ (_field__rec_h_length _let_549_))) (let
  ((_let_555_ (_field__rec_enc_state_p _let_549_))) (let
  ((_let_556_ (_field__rec_key_p _let_549_))) (let
  ((_let_557_ (_field__rec_enc_state_d _let_549_))) (let
  ((_let_558_ (_field__rec_key_d _let_549_))) (let
  ((_let_559_ (_field__rec_ca_nonce_true _let_549_))) (let
  ((_let_560_
    (_make__type_record_2_ _let_550_ _let_551_ _let_552_ _let_553_ _let_554_
     _let_555_ _let_556_ _let_557_ _let_558_ _let_411_ _let_559_)))
  (let ((_let_561_ (const___ucld_151_ghost_to_addr_value_c3 _let_560_))) (let
  ((_let_562_
    ((_ extract 0 0)
     (bvlshr
      initial_51___ucld_157_alloc_map_var
      (bvmul ((_ zero_extend 2) _let_561_) #b0001)))))
  (let ((_let_563_ (not _let_562_))) (let
  ((_let_564_
    (ite _let_563_ initial_65___ucld_154_data_probe_var
     havoc_127_dec_cell_data)))
  (let
  ((_let_565_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_566_ (ite _let_565_ _let_564_ _let_409_))) (let
  ((_let_567_
    (ite initial_50_v _let_566_ initial_65___ucld_154_data_probe_var)))
  (let ((_let_568_ (= state_1___ucld_154_data_probe_var _let_567_)))
  _let_568_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(declare-fun initial_56___ucld_171_ghost_mem_var () (_ BitVec 80))
(declare-fun state_1___ucld_171_ghost_mem_var () (_ BitVec 80))
(declare-fun havoc_180___ucld_49_ret_ghost_data_out () (_ BitVec 20))
(declare-fun initial_60___ucld_164_shadow_mem_var () (_ BitVec 28))
(declare-fun state_1___ucld_155_src1_probe_g_var () (_ BitVec 20))
(declare-fun initial_49___ucld_155_src1_probe_g_var () (_ BitVec 20))
(declare-fun state_1___ucld_157_alloc_map_var () (_ BitVec 4))
(declare-fun havoc_237_newdata_g () (_ BitVec 20))
(declare-fun havoc_227_newdata () (_ BitVec 20))
(declare-fun havoc_225_nondet_arg () (_ BitVec 2))
(declare-fun havoc_143___ucld_41_ret_ghost_data_out () (_ BitVec 20))
(declare-fun state_1___ucld_169_data_probe_g_var () (_ BitVec 20))
(declare-fun initial_64___ucld_169_data_probe_g_var () (_ BitVec 20))
(declare-fun l () (_ BitVec 3))
(declare-fun initial_66___ucld_166_addr_probe_g_var () (_ BitVec 20))
(declare-fun state_1___ucld_166_addr_probe_g_var () (_ BitVec 20))
(declare-fun havoc_211___ucld_51_ret_nm () (_ BitVec 28))
(declare-fun state_1___ucld_164_shadow_mem_var () (_ BitVec 28))
(declare-fun state_1___ucld_163_l3_var () (_ BitVec 3))
(declare-fun havoc_99___ucld_116_l3_havoc () (_ BitVec 3))
(declare-fun initial_72___ucld_163_l3_var () (_ BitVec 3))
(declare-fun state_1___ucld_172_src2_probe_var () (_ BitVec 2))
(declare-fun initial_52___ucld_172_src2_probe_var () (_ BitVec 2))
(declare-fun state_1___ucld_168_data_probe_pre_g_var () (_ BitVec 20))
(declare-fun initial_68___ucld_168_data_probe_pre_g_var () (_ BitVec 20))
(declare-fun state_1___ucld_161_l1_var () (_ BitVec 3))
(declare-fun havoc_97___ucld_114_l1_havoc () (_ BitVec 3))
(declare-fun state_1___ucld_174_msv_curr_var () Bool)
(declare-fun initial_59___ucld_174_msv_curr_var () Bool)
(declare-fun initial_62___ucld_165_addr_probe_var () (_ BitVec 2))
(declare-fun havoc_156_addr_bundle () (_ BitVec 2))
(declare-fun state_1___ucld_165_addr_probe_var () (_ BitVec 2))
(declare-fun havoc_108_addr_bundle () (_ BitVec 2))
(declare-fun havoc_198_nondet_size () (_ BitVec 2))
(declare-fun initial_55___ucld_176_addr_probe_true_var () (_ BitVec 2))
(declare-fun state_1___ucld_176_addr_probe_true_var () (_ BitVec 2))
(declare-fun state_1___ucld_162_l2_var () (_ BitVec 3))
(declare-fun havoc_98___ucld_115_l2_havoc () (_ BitVec 3))
(declare-fun initial_67___ucld_160_observable_var () (_ BitVec 22))
(declare-fun state_1___ucld_160_observable_var () (_ BitVec 22))
(assert
 (let ((_let_3291_ (_field__rec_vtype havoc_237_newdata_g))) (let
  ((_let_3292_ (= _let_3291_ RAW))) (let
  ((_let_3293_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) LOAD))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3294_ (not _let_3293_))) (let
  ((_let_3295_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) STORE))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3296_ (not _let_3295_))) (let
  ((_let_3297_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) MALLOC))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3298_ (not _let_3297_))) (let
  ((_let_3299_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) HANOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3300_ (not _let_3299_))) (let
  ((_let_3301_
    (and
     (or
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP)))
      (and
       (= ((_ extract 2 0) initial_54___ucld_167_action_var)
        ((_ extract 2 0) ARITHOP))))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b110))
     (not (= ((_ extract 2 0) initial_54___ucld_167_action_var) #b111)))))
  (let ((_let_3302_ (and true _let_3301_))) (let
  ((_let_3303_ (and _let_3302_ _let_3300_))) (let
  ((_let_3304_ (and _let_3303_ _let_3298_))) (let
  ((_let_3305_ (and _let_3304_ _let_3296_))) (let
  ((_let_3306_ (and _let_3305_ _let_3294_))) (let
  ((_let_3307_ (and _let_3306_ initial_50_v))) (let
  ((_let_3308_ (=> _let_3307_ _let_3292_))) _let_3308_)))))))))))))))))))
(declare-fun state_1___ucld_158_opcode_var () Bool)
(declare-fun havoc_100___ucld_117_opcode_havoc () Bool)
(declare-fun initial_61___ucld_158_opcode_var () Bool)
(assert
 (let
  ((_let_3309_
    (ite initial_50_v havoc_100___ucld_117_opcode_havoc
     initial_61___ucld_158_opcode_var)))
  (let ((_let_3310_ (= state_1___ucld_158_opcode_var _let_3309_)))
  _let_3310_)))
(declare-fun state_1___ucld_170_src2_probe_g_var () (_ BitVec 20))
(declare-fun initial_58___ucld_170_src2_probe_g_var () (_ BitVec 20))
(declare-fun initial_71___ucld_156_data_probe_pre_var () (_ BitVec 2))
(declare-fun havoc_124_cell_data () (_ BitVec 2))
(declare-fun state_1___ucld_156_data_probe_pre_var () (_ BitVec 2))
(declare-fun state_1___ucld_173_ghost_lmap_var () (_ BitVec 160))
(declare-fun state_1_v () Bool)
(declare-fun state_1___ucld_167_action_var () (_ BitVec 3))
(declare-fun havoc_101___ucld_118_action_havoc () (_ BitVec 3))