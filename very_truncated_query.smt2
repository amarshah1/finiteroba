(set-logic ALL)

(declare-datatypes ((_type_record_1_ 0)) (((_make__type_record_1_ (_field__rec_alloc Bool) (_field__rec_lowend (_ BitVec 2)) (_field__rec_highend (_ BitVec 2)) (_field__rec_nonce_true Bool)))))


(declare-datatypes ((_type_record_2_ 0)(_type_enum_5_ 0)(_type_enum_4_ 0)(_type_enum_3_ 0)) (((_make__type_record_2_ (_field__rec_value (_ BitVec 2)) (_field__rec_vtype _type_enum_5_) (_field__rec_h_base (_ BitVec 2)) (_field__rec_h_offset (_ BitVec 2)) (_field__rec_h_length (_ BitVec 2)) (_field__rec_enc_state_p _type_enum_4_) (_field__rec_key_p _type_enum_3_) (_field__rec_enc_state_d _type_enum_4_) (_field__rec_key_d _type_enum_3_) (_field__rec_ca_nonce_used Bool) (_field__rec_ca_nonce_true Bool)))((RAW) (HAN))((PLN) (GAR) (ENC))((NoKey) (AtKey) (ViKey))))

(declare-datatypes ((_type_record_6_ 0)) (((_make__type_record_6_ (_field__rec_valid Bool) (_field__rec_data_g _type_record_2_)))))

(declare-datatypes ((_type_enum_7_ 0)) (((MALLOC) (FREE) (LOAD) (STORE) (HANOP) (ARITHOP))))

(declare-datatypes ((_type_record_8_ 0)) (((_make__type_record_8_ (_field__rec_valid Bool) (_field__rec_allocg _type_record_2_) (_field__rec_newgmem (Array (_ BitVec 2) _type_record_2_)) (_field__rec_newamap (Array (_ BitVec 2) Bool))))))

(declare-sort opcode_t 0)

(declare-fun i3 () (_ BitVec 2))
(declare-fun const___ucld_153_slot_to_nonce_c3 ((_ BitVec 2) (_ BitVec 2)) Bool)
(declare-fun i2 () (_ BitVec 2))
(declare-fun i1 () (_ BitVec 2))
(declare-fun i4 () (_ BitVec 2))
(assert (let ((_let_9_ (forall ((i1 (_ BitVec 2))(i2 (_ BitVec 2))(i3 (_ BitVec 2))(i4 (_ BitVec 2)))  (=> (and (bvult i1 i2) (and (bvult i3 i4) (and (not (and (bvule i3 i1) (bvult i1 i4))) (not (and (bvule i1 i3) (bvult i3 i2)))))) (not (= (const___ucld_153_slot_to_nonce_c3 i1 i2) (const___ucld_153_slot_to_nonce_c3 i3 i4))))))) _let_9_))
(declare-fun initial_3___ucld_157_alloc_map_var () (Array (_ BitVec 2) Bool))
(declare-fun a () (_ BitVec 2))
(declare-fun initial_12___ucld_164_shadow_mem_var () (Array (_ BitVec 2) _type_record_1_))
;(assert (let ((_let_10_ (forall ((a (_ BitVec 2)))  (and (not (select initial_3___ucld_157_alloc_map_var a)) (not (_field__rec_alloc (select initial_12___ucld_164_shadow_mem_var a))))))) _let_10_))
(declare-fun initial_21___ucld_173_ghost_lmap_var () (Array (_ BitVec 3) _type_record_2_))
(declare-fun a () (_ BitVec 3))
;(assert (let ((_let_11_ (forall ((a (_ BitVec 3)))  (= (_field__rec_vtype (select initial_21___ucld_173_ghost_lmap_var a)) RAW)))) _let_11_))
(declare-fun initial_69___ucld_173_ghost_lmap_var () (Array (_ BitVec 3) _type_record_2_))
(declare-fun initial_56___ucld_171_ghost_mem_var () (Array (_ BitVec 2) _type_record_2_))
(declare-fun state_1___ucld_171_ghost_mem_var () (Array (_ BitVec 2) _type_record_2_))
(declare-fun havoc_180___ucld_49_ret_ghost_data_out () _type_record_2_)


(assert (let ((_let_2082_ (select initial_69___ucld_173_ghost_lmap_var initial_57___ucld_162_l2_var))) (let ((_let_2083_ (_field__rec_ca_nonce_used _let_2082_))) (let ((_let_2084_ (_field__rec_ca_nonce_true _let_2082_))) (let ((_let_2085_ (_field__rec_enc_state_d _let_2082_))) (let ((_let_2086_ (_field__rec_h_length _let_2082_))) (let ((_let_2087_ (_field__rec_h_offset _let_2082_))) (let ((_let_2088_ (_field__rec_h_base _let_2082_))) (let ((_let_2089_ (_field__rec_vtype _let_2082_))) (let ((_let_2090_ (_field__rec_value _let_2082_))) (let ((_let_2091_ (_field__rec_vtype havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2092_ (_field__rec_h_base havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2093_ (_field__rec_h_offset havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2094_ (_field__rec_h_length havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2095_ (_field__rec_enc_state_p havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2096_ (_field__rec_key_p havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2097_ (_field__rec_enc_state_d havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2098_ (_field__rec_key_d havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2099_ (_field__rec_ca_nonce_used havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2100_ (_field__rec_ca_nonce_true havoc_136___ucld_37_ret_ghost_addr_out))) (let ((_let_2101_ (_make__type_record_2_ _let_2090_ _let_2091_ _let_2092_ _let_2093_ _let_2094_ _let_2095_ _let_2096_ _let_2097_ _let_2098_ _let_2099_ _let_2100_))) (let ((_let_2102_ (_field__rec_value _let_2101_))) (let ((_let_2103_ (_field__rec_h_base _let_2101_))) (let ((_let_2104_ (_field__rec_h_offset _let_2101_))) (let ((_let_2105_ (_field__rec_h_length _let_2101_))) (let ((_let_2106_ (_field__rec_enc_state_p _let_2101_))) (let ((_let_2107_ (_field__rec_key_p _let_2101_))) (let ((_let_2108_ (_field__rec_enc_state_d _let_2101_))) (let ((_let_2109_ (_field__rec_key_d _let_2101_))) (let ((_let_2110_ (_field__rec_ca_nonce_used _let_2101_))) (let ((_let_2111_ (_field__rec_ca_nonce_true _let_2101_))) (let ((_let_2112_ (_make__type_record_2_ _let_2102_ _let_2089_ _let_2103_ _let_2104_ _let_2105_ _let_2106_ _let_2107_ _let_2108_ _let_2109_ _let_2110_ _let_2111_))) (let ((_let_2113_ (_field__rec_value _let_2112_))) (let ((_let_2114_ (_field__rec_vtype _let_2112_))) (let ((_let_2115_ (_field__rec_h_offset _let_2112_))) (let ((_let_2116_ (_field__rec_h_length _let_2112_))) (let ((_let_2117_ (_field__rec_enc_state_p _let_2112_))) (let ((_let_2118_ (_field__rec_key_p _let_2112_))) (let ((_let_2119_ (_field__rec_enc_state_d _let_2112_))) (let ((_let_2120_ (_field__rec_key_d _let_2112_))) (let ((_let_2121_ (_field__rec_ca_nonce_used _let_2112_))) (let ((_let_2122_ (_field__rec_ca_nonce_true _let_2112_))) (let ((_let_2123_ (_make__type_record_2_ _let_2113_ _let_2114_ _let_2088_ _let_2115_ _let_2116_ _let_2117_ _let_2118_ _let_2119_ _let_2120_ _let_2121_ _let_2122_))) (let ((_let_2124_ (_field__rec_value _let_2123_))) (let ((_let_2125_ (_field__rec_vtype _let_2123_))) (let ((_let_2126_ (_field__rec_h_base _let_2123_))) (let ((_let_2127_ (_field__rec_h_length _let_2123_))) (let ((_let_2128_ (_field__rec_enc_state_p _let_2123_))) (let ((_let_2129_ (_field__rec_key_p _let_2123_))) (let ((_let_2130_ (_field__rec_enc_state_d _let_2123_))) (let ((_let_2131_ (_field__rec_key_d _let_2123_))) (let ((_let_2132_ (_field__rec_ca_nonce_used _let_2123_))) (let ((_let_2133_ (_field__rec_ca_nonce_true _let_2123_))) (let ((_let_2134_ (_make__type_record_2_ _let_2124_ _let_2125_ _let_2126_ _let_2087_ _let_2127_ _let_2128_ _let_2129_ _let_2130_ _let_2131_ _let_2132_ _let_2133_))) (let ((_let_2135_ (_field__rec_value _let_2134_))) (let ((_let_2136_ (_field__rec_vtype _let_2134_))) (let ((_let_2137_ (_field__rec_h_base _let_2134_))) (let ((_let_2138_ (_field__rec_h_offset _let_2134_))) (let ((_let_2139_ (_field__rec_enc_state_p _let_2134_))) (let ((_let_2140_ (_field__rec_key_p _let_2134_))) (let ((_let_2141_ (_field__rec_enc_state_d _let_2134_))) (let ((_let_2142_ (_field__rec_key_d _let_2134_))) (let ((_let_2143_ (_field__rec_ca_nonce_used _let_2134_))) (let ((_let_2144_ (_field__rec_ca_nonce_true _let_2134_))) (let ((_let_2145_ (_make__type_record_2_ _let_2135_ _let_2136_ _let_2137_ _let_2138_ _let_2086_ _let_2139_ _let_2140_ _let_2141_ _let_2142_ _let_2143_ _let_2144_))) (let ((_let_2146_ (_field__rec_value _let_2145_))) (let ((_let_2147_ (_field__rec_vtype _let_2145_))) (let ((_let_2148_ (_field__rec_h_base _let_2145_))) (let ((_let_2149_ (_field__rec_h_offset _let_2145_))) (let ((_let_2150_ (_field__rec_h_length _let_2145_))) (let ((_let_2151_ (_field__rec_enc_state_p _let_2145_))) (let ((_let_2152_ (_field__rec_key_p _let_2145_))) (let ((_let_2153_ (_field__rec_key_d _let_2145_))) (let ((_let_2154_ (_field__rec_ca_nonce_used _let_2145_))) (let ((_let_2155_ (_field__rec_ca_nonce_true _let_2145_))) (let ((_let_2156_ (_make__type_record_2_ _let_2146_ _let_2147_ _let_2148_ _let_2149_ _let_2150_ _let_2151_ _let_2152_ _let_2085_ _let_2153_ _let_2154_ _let_2155_))) (let ((_let_2157_ (_field__rec_value _let_2156_))) (let ((_let_2158_ (_field__rec_vtype _let_2156_))) (let ((_let_2159_ (_field__rec_h_base _let_2156_))) (let ((_let_2160_ (_field__rec_h_offset _let_2156_))) (let ((_let_2161_ (_field__rec_h_length _let_2156_))) (let ((_let_2162_ (_field__rec_key_p _let_2156_))) (let ((_let_2163_ (_field__rec_enc_state_d _let_2156_))) (let ((_let_2164_ (_field__rec_key_d _let_2156_))) (let ((_let_2165_ (_field__rec_ca_nonce_used _let_2156_))) (let ((_let_2166_ (_field__rec_ca_nonce_true _let_2156_))) (let ((_let_2167_ (_make__type_record_2_ _let_2157_ _let_2158_ _let_2159_ _let_2160_ _let_2161_ GAR _let_2162_ _let_2163_ _let_2164_ _let_2165_ _let_2166_))) (let ((_let_2168_ (_make__type_record_2_ _let_2157_ _let_2158_ _let_2159_ _let_2160_ _let_2161_ PLN _let_2162_ _let_2163_ _let_2164_ _let_2165_ _let_2166_))) (let ((_let_2169_ (_field__rec_key_p _let_2082_))) (let ((_let_2170_ (= _let_2169_ ViKey))) (let ((_let_2171_ (ite _let_2170_ _let_2168_ _let_2167_))) (let ((_let_2172_ (_field__rec_enc_state_p _let_2082_))) (let ((_let_2173_ (distinct _let_2172_ ENC))) (let ((_let_2174_ (ite _let_2173_ _let_2167_ _let_2171_))) (let ((_let_2175_ (_make__type_record_2_ _let_2146_ _let_2147_ _let_2148_ _let_2149_ _let_2150_ _let_2151_ _let_2152_ GAR _let_2153_ _let_2154_ _let_2155_))) (let ((_let_2176_ (_field__rec_value _let_2175_))) (let ((_let_2177_ (_field__rec_vtype _let_2175_))) (let ((_let_2178_ (_field__rec_h_base _let_2175_))) (let ((_let_2179_ (_field__rec_h_offset _let_2175_))) (let ((_let_2180_ (_field__rec_h_length _let_2175_))) (let ((_let_2181_ (_field__rec_key_p _let_2175_))) (let ((_let_2182_ (_field__rec_enc_state_d _let_2175_))) (let ((_let_2183_ (_field__rec_key_d _let_2175_))) (let ((_let_2184_ (_field__rec_ca_nonce_used _let_2175_))) (let ((_let_2185_ (_field__rec_ca_nonce_true _let_2175_))) (let ((_let_2186_ (_make__type_record_2_ _let_2176_ _let_2177_ _let_2178_ _let_2179_ _let_2180_ GAR _let_2181_ _let_2182_ _let_2183_ _let_2184_ _let_2185_))) (let ((_let_2187_ (distinct _let_2085_ PLN))) (let ((_let_2188_ (ite _let_2187_ _let_2186_ _let_2174_))) (let ((_let_2189_ (_field__rec_value _let_2188_))) (let ((_let_2190_ (_field__rec_vtype _let_2188_))) (let ((_let_2191_ (_field__rec_h_base _let_2188_))) (let ((_let_2192_ (_field__rec_h_offset _let_2188_))) (let ((_let_2193_ (_field__rec_h_length _let_2188_))) (let ((_let_2194_ (_field__rec_enc_state_p _let_2188_))) (let ((_let_2195_ (_field__rec_enc_state_d _let_2188_))) (let ((_let_2196_ (_field__rec_key_d _let_2188_))) (let ((_let_2197_ (_field__rec_ca_nonce_used _let_2188_))) (let ((_let_2198_ (_field__rec_ca_nonce_true _let_2188_))) (let ((_let_2199_ (_make__type_record_2_ _let_2189_ _let_2190_ _let_2191_ _let_2192_ _let_2193_ _let_2194_ NoKey _let_2195_ _let_2196_ _let_2197_ _let_2198_))) (let ((_let_2200_ (_field__rec_value _let_2199_))) (let ((_let_2201_ (_field__rec_vtype _let_2199_))) (let ((_let_2202_ (_field__rec_h_base _let_2199_))) (let ((_let_2203_ (_field__rec_h_offset _let_2199_))) (let ((_let_2204_ (_field__rec_h_length _let_2199_))) (let ((_let_2205_ (_field__rec_enc_state_p _let_2199_))) (let ((_let_2206_ (_field__rec_key_p _let_2199_))) (let ((_let_2207_ (_field__rec_enc_state_d _let_2199_))) (let ((_let_2208_ (_field__rec_ca_nonce_used _let_2199_))) (let ((_let_2209_ (_field__rec_ca_nonce_true _let_2199_))) (let ((_let_2210_ (_make__type_record_2_ _let_2200_ _let_2201_ _let_2202_ _let_2203_ _let_2204_ _let_2205_ _let_2206_ _let_2207_ NoKey _let_2208_ _let_2209_))) (let ((_let_2211_ (_field__rec_value _let_2210_))) (let ((_let_2212_ (_field__rec_vtype _let_2210_))) (let ((_let_2213_ (_field__rec_h_base _let_2210_))) (let ((_let_2214_ (_field__rec_h_offset _let_2210_))) (let ((_let_2215_ (_field__rec_h_length _let_2210_))) (let ((_let_2216_ (_field__rec_enc_state_p _let_2210_))) (let ((_let_2217_ (_field__rec_key_p _let_2210_))) (let ((_let_2218_ (_field__rec_enc_state_d _let_2210_))) (let ((_let_2219_ (_field__rec_key_d _let_2210_))) (let ((_let_2220_ (_field__rec_ca_nonce_used _let_2210_))) (let ((_let_2221_ (_make__type_record_2_ _let_2211_ _let_2212_ _let_2213_ _let_2214_ _let_2215_ _let_2216_ _let_2217_ _let_2218_ _let_2219_ _let_2220_ _let_2084_))) (let ((_let_2222_ (_field__rec_value _let_2221_))) (let ((_let_2223_ (_field__rec_vtype _let_2221_))) (let ((_let_2224_ (_field__rec_h_base _let_2221_))) (let ((_let_2225_ (_field__rec_h_offset _let_2221_))) (let ((_let_2226_ (_field__rec_h_length _let_2221_))) (let ((_let_2227_ (_field__rec_enc_state_p _let_2221_))) (let ((_let_2228_ (_field__rec_key_p _let_2221_))) (let ((_let_2229_ (_field__rec_enc_state_d _let_2221_))) (let ((_let_2230_ (_field__rec_key_d _let_2221_))) (let ((_let_2231_ (_field__rec_ca_nonce_true _let_2221_))) (let ((_let_2232_ (_make__type_record_2_ _let_2222_ _let_2223_ _let_2224_ _let_2225_ _let_2226_ _let_2227_ _let_2228_ _let_2229_ _let_2230_ _let_2083_ _let_2231_))) (let ((_let_2233_ (_field__rec_h_offset _let_2232_))) (let ((_let_2234_ (bvsub (_ bv3 2) _let_2233_))) (let ((_let_2235_ (_field__rec_h_base _let_2232_))) (let ((_let_2236_ (bvule _let_2235_ _let_2234_))) (let ((_let_2237_ (= initial_54___ucld_167_action_var LOAD))) (let ((_let_2238_ (and true _let_2237_))) (let ((_let_2239_ (and _let_2238_ initial_50_v))) (let ((_let_2240_ (=> _let_2239_ _let_2236_))) _let_2240_))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))