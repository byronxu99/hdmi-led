//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Apr 26 23:26:10 2019
//Host        : DESKTOP-0HVAOD9 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=7,da_clkrst_cnt=6,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    btns_4bits_tri_i,
    hdmi_in_clk_n,
    hdmi_in_clk_p,
    hdmi_in_data_n,
    hdmi_in_data_p,
    hdmi_in_ddc_scl_i,
    hdmi_in_ddc_scl_o,
    hdmi_in_ddc_scl_t,
    hdmi_in_ddc_sda_i,
    hdmi_in_ddc_sda_o,
    hdmi_in_ddc_sda_t,
    hdmi_in_hpd,
    leds,
    pmodb_gpio_tri_io,
    sws_2bits_tri_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BTNS_4BITS_TRI_I DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BTNS_4BITS_TRI_I, LAYERED_METADATA undef" *) input [3:0]btns_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_IN_CLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_IN_CLK_N, CLK_DOMAIN design_1_hdmi_in_clk_n, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input hdmi_in_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_IN_CLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_IN_CLK_P, CLK_DOMAIN design_1_hdmi_in_clk_p, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input hdmi_in_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HDMI_IN_DATA_N DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HDMI_IN_DATA_N, LAYERED_METADATA undef" *) input [2:0]hdmi_in_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HDMI_IN_DATA_P DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HDMI_IN_DATA_P, LAYERED_METADATA undef" *) input [2:0]hdmi_in_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_I" *) input hdmi_in_ddc_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_O" *) output hdmi_in_ddc_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_ddc SCL_T" *) output hdmi_in_ddc_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_I" *) input hdmi_in_ddc_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_O" *) output hdmi_in_ddc_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_in_ddc SDA_T" *) output hdmi_in_ddc_sda_t;
  output [0:0]hdmi_in_hpd;
  output [3:0]leds;
  output [7:0]pmodb_gpio_tri_io;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SWS_2BITS_TRI_I DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SWS_2BITS_TRI_I, LAYERED_METADATA undef" *) input [1:0]sws_2bits_tri_i;

  wire blinky_0_led;
  wire [3:0]btns_4bits_tri_i_1;
  wire clk_wiz_0_clk_out1;
  wire dvi2rgb_1_DDC_SCL_I;
  wire dvi2rgb_1_DDC_SCL_O;
  wire dvi2rgb_1_DDC_SCL_T;
  wire dvi2rgb_1_DDC_SDA_I;
  wire dvi2rgb_1_DDC_SDA_O;
  wire dvi2rgb_1_DDC_SDA_T;
  wire dvi2rgb_1_PixelClk;
  wire dvi2rgb_1_aPixelClkLckd;
  wire [23:0]dvi2rgb_1_vid_pData;
  wire dvi2rgb_1_vid_pHSync;
  wire dvi2rgb_1_vid_pVDE;
  wire dvi2rgb_1_vid_pVSync;
  wire hdmi_in_clk_n_1;
  wire hdmi_in_clk_p_1;
  wire [2:0]hdmi_in_data_n_1;
  wire [2:0]hdmi_in_data_p_1;
  wire [23:0]hls_video_processor_0_stream_out_TDATA;
  wire [0:0]hls_video_processor_0_stream_out_TLAST;
  wire hls_video_processor_0_stream_out_TREADY;
  wire [2:0]hls_video_processor_0_stream_out_TSTRB;
  wire [0:0]hls_video_processor_0_stream_out_TUSER;
  wire hls_video_processor_0_stream_out_TVALID;
  wire [7:0]matrix_controller_0_array_x;
  wire [7:0]matrix_controller_0_array_y;
  wire matrix_controller_0_next_frame;
  wire matrix_controller_0_reset;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [1:0]sws_2bits_tri_i_1;
  wire [23:0]triple_buffer_v1_0_0_data_out;
  wire [3:0]user_input_0_brightness;
  wire user_input_0_color_correct;
  wire user_input_0_flip_even;
  wire user_input_0_flip_odd;
  wire user_input_0_output_disable;
  wire user_input_0_output_enable;
  wire [23:0]v_vid_in_axi4s_0_video_out_TDATA;
  wire v_vid_in_axi4s_0_video_out_TLAST;
  wire v_vid_in_axi4s_0_video_out_TREADY;
  wire v_vid_in_axi4s_0_video_out_TUSER;
  wire v_vid_in_axi4s_0_video_out_TVALID;
  wire ws2812b_driver_0_led_out;
  wire ws2812b_driver_0_next_data;
  wire [3:0]xlconcat_0_dout;
  wire [7:0]xlconcat_1_dout;
  wire [0:0]xlconstant_0_dout;

  assign btns_4bits_tri_i_1 = btns_4bits_tri_i[3:0];
  assign dvi2rgb_1_DDC_SCL_I = hdmi_in_ddc_scl_i;
  assign dvi2rgb_1_DDC_SDA_I = hdmi_in_ddc_sda_i;
  assign hdmi_in_clk_n_1 = hdmi_in_clk_n;
  assign hdmi_in_clk_p_1 = hdmi_in_clk_p;
  assign hdmi_in_data_n_1 = hdmi_in_data_n[2:0];
  assign hdmi_in_data_p_1 = hdmi_in_data_p[2:0];
  assign hdmi_in_ddc_scl_o = dvi2rgb_1_DDC_SCL_O;
  assign hdmi_in_ddc_scl_t = dvi2rgb_1_DDC_SCL_T;
  assign hdmi_in_ddc_sda_o = dvi2rgb_1_DDC_SDA_O;
  assign hdmi_in_ddc_sda_t = dvi2rgb_1_DDC_SDA_T;
  assign hdmi_in_hpd[0] = xlconstant_0_dout;
  assign leds[3:0] = xlconcat_0_dout;
  assign pmodb_gpio_tri_io[7:0] = xlconcat_1_dout;
  assign sws_2bits_tri_i_1 = sws_2bits_tri_i[1:0];
  design_1_blinky_0_0 blinky_0
       (.clk(processing_system7_0_FCLK_CLK0),
        .led(blinky_0_led));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(proc_sys_reset_0_peripheral_reset));
  design_1_dvi2rgb_1_0 dvi2rgb_1
       (.PixelClk(dvi2rgb_1_PixelClk),
        .RefClk(clk_wiz_0_clk_out1),
        .SCL_I(dvi2rgb_1_DDC_SCL_I),
        .SCL_O(dvi2rgb_1_DDC_SCL_O),
        .SCL_T(dvi2rgb_1_DDC_SCL_T),
        .SDA_I(dvi2rgb_1_DDC_SDA_I),
        .SDA_O(dvi2rgb_1_DDC_SDA_O),
        .SDA_T(dvi2rgb_1_DDC_SDA_T),
        .TMDS_Clk_n(hdmi_in_clk_n_1),
        .TMDS_Clk_p(hdmi_in_clk_p_1),
        .TMDS_Data_n(hdmi_in_data_n_1),
        .TMDS_Data_p(hdmi_in_data_p_1),
        .aPixelClkLckd(dvi2rgb_1_aPixelClkLckd),
        .aRst_n(proc_sys_reset_0_peripheral_aresetn),
        .pRst_n(proc_sys_reset_0_peripheral_aresetn),
        .vid_pData(dvi2rgb_1_vid_pData),
        .vid_pHSync(dvi2rgb_1_vid_pHSync),
        .vid_pVDE(dvi2rgb_1_vid_pVDE),
        .vid_pVSync(dvi2rgb_1_vid_pVSync));
  design_1_hls_video_processor_0_0 hls_video_processor_0
       (.ap_clk(processing_system7_0_FCLK_CLK0),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .brightness_V(user_input_0_brightness),
        .color_correct_V(user_input_0_color_correct),
        .stream_in_TDATA(v_vid_in_axi4s_0_video_out_TDATA),
        .stream_in_TDEST(1'b0),
        .stream_in_TID(1'b0),
        .stream_in_TKEEP({1'b1,1'b1,1'b1}),
        .stream_in_TLAST(v_vid_in_axi4s_0_video_out_TLAST),
        .stream_in_TREADY(v_vid_in_axi4s_0_video_out_TREADY),
        .stream_in_TSTRB({1'b1,1'b1,1'b1}),
        .stream_in_TUSER(v_vid_in_axi4s_0_video_out_TUSER),
        .stream_in_TVALID(v_vid_in_axi4s_0_video_out_TVALID),
        .stream_out_TDATA(hls_video_processor_0_stream_out_TDATA),
        .stream_out_TLAST(hls_video_processor_0_stream_out_TLAST),
        .stream_out_TREADY(hls_video_processor_0_stream_out_TREADY),
        .stream_out_TSTRB(hls_video_processor_0_stream_out_TSTRB),
        .stream_out_TUSER(hls_video_processor_0_stream_out_TUSER),
        .stream_out_TVALID(hls_video_processor_0_stream_out_TVALID));
  design_1_matrix_controller_0_0 matrix_controller_0
       (.array_x(matrix_controller_0_array_x),
        .array_y(matrix_controller_0_array_y),
        .clk(processing_system7_0_FCLK_CLK0),
        .flip_even(user_input_0_flip_even),
        .flip_odd(user_input_0_flip_odd),
        .next_data(ws2812b_driver_0_next_data),
        .next_frame(matrix_controller_0_next_frame),
        .reset(matrix_controller_0_reset));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARREADY(1'b0),
        .M_AXI_GP0_AWREADY(1'b0),
        .M_AXI_GP0_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_BRESP({1'b0,1'b0}),
        .M_AXI_GP0_BVALID(1'b0),
        .M_AXI_GP0_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RLAST(1'b0),
        .M_AXI_GP0_RRESP({1'b0,1'b0}),
        .M_AXI_GP0_RVALID(1'b0),
        .M_AXI_GP0_WREADY(1'b0),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  design_1_triple_buffer_v1_0_0_0 triple_buffer_v1_0_0
       (.data_out(triple_buffer_v1_0_0_data_out),
        .next_frame(matrix_controller_0_next_frame),
        .output_enable(user_input_0_output_enable),
        .read_x(matrix_controller_0_array_x),
        .read_y(matrix_controller_0_array_y),
        .s00_axis_aclk(processing_system7_0_FCLK_CLK0),
        .s00_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axis_tdata(hls_video_processor_0_stream_out_TDATA),
        .s00_axis_tlast(hls_video_processor_0_stream_out_TLAST),
        .s00_axis_tready(hls_video_processor_0_stream_out_TREADY),
        .s00_axis_tstrb(hls_video_processor_0_stream_out_TSTRB),
        .s00_axis_tuser(hls_video_processor_0_stream_out_TUSER),
        .s00_axis_tvalid(hls_video_processor_0_stream_out_TVALID));
  design_1_user_input_0_0 user_input_0
       (.brightness(user_input_0_brightness),
        .buttons(btns_4bits_tri_i_1),
        .clk(processing_system7_0_FCLK_CLK0),
        .color_correct(user_input_0_color_correct),
        .flip_even(user_input_0_flip_even),
        .flip_odd(user_input_0_flip_odd),
        .output_disable(user_input_0_output_disable),
        .output_enable(user_input_0_output_enable),
        .switches(sws_2bits_tri_i_1));
  design_1_v_vid_in_axi4s_0_0 v_vid_in_axi4s_0
       (.aclk(processing_system7_0_FCLK_CLK0),
        .aclken(1'b1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .axis_enable(1'b1),
        .m_axis_video_tdata(v_vid_in_axi4s_0_video_out_TDATA),
        .m_axis_video_tlast(v_vid_in_axi4s_0_video_out_TLAST),
        .m_axis_video_tready(v_vid_in_axi4s_0_video_out_TREADY),
        .m_axis_video_tuser(v_vid_in_axi4s_0_video_out_TUSER),
        .m_axis_video_tvalid(v_vid_in_axi4s_0_video_out_TVALID),
        .vid_active_video(dvi2rgb_1_vid_pVDE),
        .vid_data(dvi2rgb_1_vid_pData),
        .vid_field_id(1'b0),
        .vid_hblank(1'b0),
        .vid_hsync(dvi2rgb_1_vid_pHSync),
        .vid_io_in_ce(1'b1),
        .vid_io_in_clk(dvi2rgb_1_PixelClk),
        .vid_io_in_reset(1'b0),
        .vid_vblank(1'b0),
        .vid_vsync(dvi2rgb_1_vid_pVSync));
  design_1_ws2812b_driver_0_0 ws2812b_driver_0
       (.clk(processing_system7_0_FCLK_CLK0),
        .data(triple_buffer_v1_0_0_data_out),
        .led_out(ws2812b_driver_0_led_out),
        .next_data(ws2812b_driver_0_next_data),
        .reset(matrix_controller_0_reset));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(blinky_0_led),
        .In1(dvi2rgb_1_aPixelClkLckd),
        .In2(1'b0),
        .In3(user_input_0_output_disable),
        .dout(xlconcat_0_dout));
  design_1_xlconcat_1_0 xlconcat_1
       (.In0(ws2812b_driver_0_led_out),
        .In1(1'b0),
        .In2(1'b0),
        .In3(1'b0),
        .In4(1'b0),
        .In5(1'b0),
        .In6(1'b0),
        .In7(1'b0),
        .dout(xlconcat_1_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
