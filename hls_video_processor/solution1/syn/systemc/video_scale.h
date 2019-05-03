// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _video_scale_HH_
#define _video_scale_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "video_scale_sums_cud.h"

namespace ap_rtl {

struct video_scale : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > src_data_stream_0_V_dout;
    sc_in< sc_logic > src_data_stream_0_V_empty_n;
    sc_out< sc_logic > src_data_stream_0_V_read;
    sc_in< sc_lv<32> > src_data_stream_1_V_dout;
    sc_in< sc_logic > src_data_stream_1_V_empty_n;
    sc_out< sc_logic > src_data_stream_1_V_read;
    sc_in< sc_lv<32> > src_data_stream_2_V_dout;
    sc_in< sc_logic > src_data_stream_2_V_empty_n;
    sc_out< sc_logic > src_data_stream_2_V_read;
    sc_out< sc_lv<32> > dst_data_stream_0_V_din;
    sc_in< sc_logic > dst_data_stream_0_V_full_n;
    sc_out< sc_logic > dst_data_stream_0_V_write;
    sc_out< sc_lv<32> > dst_data_stream_1_V_din;
    sc_in< sc_logic > dst_data_stream_1_V_full_n;
    sc_out< sc_logic > dst_data_stream_1_V_write;
    sc_out< sc_lv<32> > dst_data_stream_2_V_din;
    sc_in< sc_logic > dst_data_stream_2_V_full_n;
    sc_out< sc_logic > dst_data_stream_2_V_write;
    sc_signal< sc_lv<32> > ap_var_for_const0;


    // Module declarations
    video_scale(sc_module_name name);
    SC_HAS_PROCESS(video_scale);

    ~video_scale();

    sc_trace_file* mVcdFile;

    video_scale_sums_cud* sums_val_0_U;
    video_scale_sums_cud* sums_val_1_U;
    video_scale_sums_cud* sums_val_2_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > src_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_reg_522;
    sc_signal< sc_logic > src_data_stream_1_V_blk_n;
    sc_signal< sc_logic > src_data_stream_2_V_blk_n;
    sc_signal< sc_logic > dst_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<1> > exitcond_reg_522_pp0_iter2_reg;
    sc_signal< sc_lv<1> > tmp_3_reg_556;
    sc_signal< sc_lv<1> > tmp_3_reg_556_pp0_iter2_reg;
    sc_signal< sc_lv<1> > tmp_8_reg_518;
    sc_signal< sc_logic > dst_data_stream_1_V_blk_n;
    sc_signal< sc_logic > dst_data_stream_2_V_blk_n;
    sc_signal< sc_lv<11> > t_V_2_reg_251;
    sc_signal< sc_lv<6> > c_V_fu_304_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > exitcond1_fu_321_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<10> > r_V_fu_327_p2;
    sc_signal< sc_lv<10> > r_V_reg_513;
    sc_signal< sc_lv<1> > tmp_8_fu_333_p2;
    sc_signal< sc_lv<1> > exitcond_fu_343_p2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter2;
    sc_signal< bool > ap_predicate_op99_write_state7;
    sc_signal< bool > ap_predicate_op100_write_state7;
    sc_signal< bool > ap_predicate_op101_write_state7;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_reg_522_pp0_iter1_reg;
    sc_signal< sc_lv<11> > c_V_1_fu_349_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > tmp_6_fu_365_p2;
    sc_signal< sc_lv<1> > tmp_6_reg_531;
    sc_signal< sc_lv<1> > tmp_6_reg_531_pp0_iter1_reg;
    sc_signal< sc_lv<6> > sums_val_0_addr_1_reg_538;
    sc_signal< sc_lv<6> > sums_val_0_addr_1_reg_538_pp0_iter1_reg;
    sc_signal< sc_lv<6> > sums_val_0_addr_1_reg_538_pp0_iter2_reg;
    sc_signal< sc_lv<6> > sums_val_1_addr_1_reg_544;
    sc_signal< sc_lv<6> > sums_val_1_addr_1_reg_544_pp0_iter1_reg;
    sc_signal< sc_lv<6> > sums_val_1_addr_1_reg_544_pp0_iter2_reg;
    sc_signal< sc_lv<6> > sums_val_2_addr_1_reg_550;
    sc_signal< sc_lv<6> > sums_val_2_addr_1_reg_550_pp0_iter1_reg;
    sc_signal< sc_lv<6> > sums_val_2_addr_1_reg_550_pp0_iter2_reg;
    sc_signal< sc_lv<1> > tmp_3_fu_378_p2;
    sc_signal< sc_lv<1> > tmp_3_reg_556_pp0_iter1_reg;
    sc_signal< sc_lv<32> > sums_val_0_q0;
    sc_signal< sc_lv<32> > current_sum_val_0_reg_560;
    sc_signal< sc_lv<32> > sums_val_1_q0;
    sc_signal< sc_lv<32> > current_sum_val_1_reg_565;
    sc_signal< sc_lv<32> > sums_val_2_q0;
    sc_signal< sc_lv<32> > current_sum_val_2_reg_570;
    sc_signal< sc_lv<32> > tmp_20_reg_575;
    sc_signal< sc_lv<32> > tmp_21_reg_580;
    sc_signal< sc_lv<32> > tmp_19_reg_585;
    sc_signal< sc_lv<32> > current_sum_val_0_1_fu_411_p2;
    sc_signal< sc_lv<32> > current_sum_val_0_1_reg_590;
    sc_signal< sc_lv<32> > current_sum_val_1_1_fu_416_p2;
    sc_signal< sc_lv<32> > current_sum_val_1_1_reg_596;
    sc_signal< sc_lv<32> > current_sum_val_2_1_fu_421_p2;
    sc_signal< sc_lv<32> > current_sum_val_2_1_reg_602;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<6> > sums_val_0_address0;
    sc_signal< sc_logic > sums_val_0_ce0;
    sc_signal< sc_logic > sums_val_0_we0;
    sc_signal< sc_lv<6> > sums_val_0_address1;
    sc_signal< sc_logic > sums_val_0_ce1;
    sc_signal< sc_logic > sums_val_0_we1;
    sc_signal< sc_lv<6> > sums_val_1_address0;
    sc_signal< sc_logic > sums_val_1_ce0;
    sc_signal< sc_logic > sums_val_1_we0;
    sc_signal< sc_lv<6> > sums_val_1_address1;
    sc_signal< sc_logic > sums_val_1_ce1;
    sc_signal< sc_logic > sums_val_1_we1;
    sc_signal< sc_lv<6> > sums_val_2_address0;
    sc_signal< sc_logic > sums_val_2_ce0;
    sc_signal< sc_logic > sums_val_2_we0;
    sc_signal< sc_lv<6> > sums_val_2_address1;
    sc_signal< sc_logic > sums_val_2_ce1;
    sc_signal< sc_logic > sums_val_2_we1;
    sc_signal< sc_lv<6> > t_V_reg_229;
    sc_signal< sc_lv<1> > tmp_4_fu_298_p2;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<10> > t_V_1_reg_240;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter0_storemerge2_reg_262;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter1_storemerge2_reg_262;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter2_storemerge2_reg_262;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter3_storemerge2_reg_262;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter0_storemerge1_reg_274;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter1_storemerge1_reg_274;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter2_storemerge1_reg_274;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter3_storemerge1_reg_274;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter0_storemerge_reg_286;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter1_storemerge_reg_286;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter2_storemerge_reg_286;
    sc_signal< sc_lv<32> > ap_phi_reg_pp0_iter3_storemerge_reg_286;
    sc_signal< sc_lv<64> > tmp_5_fu_310_p1;
    sc_signal< sc_lv<64> > tmp_9_fu_371_p1;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > current_sum_val_2_3_fu_106;
    sc_signal< sc_lv<32> > current_sum_val_1_3_fu_110;
    sc_signal< sc_lv<32> > current_sum_val_0_3_fu_114;
    sc_signal< sc_lv<5> > tmp_fu_317_p1;
    sc_signal< sc_lv<5> > tmp_16_fu_339_p1;
    sc_signal< sc_lv<6> > r_V_2_fu_355_p4;
    sc_signal< sc_lv<32> > current_sum_val_0_2_fu_393_p3;
    sc_signal< sc_lv<32> > current_sum_val_1_2_fu_399_p3;
    sc_signal< sc_lv<32> > current_sum_val_2_2_fu_405_p3;
    sc_signal< sc_lv<22> > tmp_7_fu_441_p4;
    sc_signal< sc_lv<22> > tmp_11_fu_455_p4;
    sc_signal< sc_lv<22> > tmp_13_fu_469_p4;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0;
    sc_signal< bool > ap_enable_operation_106;
    sc_signal< bool > ap_enable_state7_pp0_iter3_stage0;
    sc_signal< bool > ap_enable_operation_58;
    sc_signal< bool > ap_enable_state4_pp0_iter0_stage0;
    sc_signal< bool > ap_enable_operation_65;
    sc_signal< bool > ap_enable_state5_pp0_iter1_stage0;
    sc_signal< bool > ap_enable_operation_107;
    sc_signal< bool > ap_enable_operation_60;
    sc_signal< bool > ap_enable_operation_66;
    sc_signal< bool > ap_enable_operation_108;
    sc_signal< bool > ap_enable_operation_62;
    sc_signal< bool > ap_enable_operation_67;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_299;
    sc_signal< bool > ap_condition_303;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_pp0_stage0;
    static const sc_lv<5> ap_ST_fsm_state8;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<6> ap_const_lv6_3C;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<10> ap_const_lv10_3C0;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<11> ap_const_lv11_780;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_1F;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_block_state6_pp0_stage0_iter2();
    void thread_ap_block_state7_pp0_stage0_iter3();
    void thread_ap_condition_299();
    void thread_ap_condition_303();
    void thread_ap_condition_pp0_exit_iter0_state4();
    void thread_ap_done();
    void thread_ap_enable_operation_106();
    void thread_ap_enable_operation_107();
    void thread_ap_enable_operation_108();
    void thread_ap_enable_operation_58();
    void thread_ap_enable_operation_60();
    void thread_ap_enable_operation_62();
    void thread_ap_enable_operation_65();
    void thread_ap_enable_operation_66();
    void thread_ap_enable_operation_67();
    void thread_ap_enable_pp0();
    void thread_ap_enable_state4_pp0_iter0_stage0();
    void thread_ap_enable_state5_pp0_iter1_stage0();
    void thread_ap_enable_state7_pp0_iter3_stage0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_reg_pp0_iter0_storemerge1_reg_274();
    void thread_ap_phi_reg_pp0_iter0_storemerge2_reg_262();
    void thread_ap_phi_reg_pp0_iter0_storemerge_reg_286();
    void thread_ap_predicate_op100_write_state7();
    void thread_ap_predicate_op101_write_state7();
    void thread_ap_predicate_op99_write_state7();
    void thread_ap_ready();
    void thread_c_V_1_fu_349_p2();
    void thread_c_V_fu_304_p2();
    void thread_current_sum_val_0_1_fu_411_p2();
    void thread_current_sum_val_0_2_fu_393_p3();
    void thread_current_sum_val_1_1_fu_416_p2();
    void thread_current_sum_val_1_2_fu_399_p3();
    void thread_current_sum_val_2_1_fu_421_p2();
    void thread_current_sum_val_2_2_fu_405_p3();
    void thread_dst_data_stream_0_V_blk_n();
    void thread_dst_data_stream_0_V_din();
    void thread_dst_data_stream_0_V_write();
    void thread_dst_data_stream_1_V_blk_n();
    void thread_dst_data_stream_1_V_din();
    void thread_dst_data_stream_1_V_write();
    void thread_dst_data_stream_2_V_blk_n();
    void thread_dst_data_stream_2_V_din();
    void thread_dst_data_stream_2_V_write();
    void thread_exitcond1_fu_321_p2();
    void thread_exitcond_fu_343_p2();
    void thread_internal_ap_ready();
    void thread_r_V_2_fu_355_p4();
    void thread_r_V_fu_327_p2();
    void thread_real_start();
    void thread_src_data_stream_0_V_blk_n();
    void thread_src_data_stream_0_V_read();
    void thread_src_data_stream_1_V_blk_n();
    void thread_src_data_stream_1_V_read();
    void thread_src_data_stream_2_V_blk_n();
    void thread_src_data_stream_2_V_read();
    void thread_start_out();
    void thread_start_write();
    void thread_sums_val_0_address0();
    void thread_sums_val_0_address1();
    void thread_sums_val_0_ce0();
    void thread_sums_val_0_ce1();
    void thread_sums_val_0_we0();
    void thread_sums_val_0_we1();
    void thread_sums_val_1_address0();
    void thread_sums_val_1_address1();
    void thread_sums_val_1_ce0();
    void thread_sums_val_1_ce1();
    void thread_sums_val_1_we0();
    void thread_sums_val_1_we1();
    void thread_sums_val_2_address0();
    void thread_sums_val_2_address1();
    void thread_sums_val_2_ce0();
    void thread_sums_val_2_ce1();
    void thread_sums_val_2_we0();
    void thread_sums_val_2_we1();
    void thread_tmp_11_fu_455_p4();
    void thread_tmp_13_fu_469_p4();
    void thread_tmp_16_fu_339_p1();
    void thread_tmp_3_fu_378_p2();
    void thread_tmp_4_fu_298_p2();
    void thread_tmp_5_fu_310_p1();
    void thread_tmp_6_fu_365_p2();
    void thread_tmp_7_fu_441_p4();
    void thread_tmp_8_fu_333_p2();
    void thread_tmp_9_fu_371_p1();
    void thread_tmp_fu_317_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif