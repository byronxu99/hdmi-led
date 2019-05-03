vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_4
vlib activehdl/processing_system7_vip_v1_0_6
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/v_vid_in_axi4s_v4_0_9

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 activehdl/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 activehdl/processing_system7_vip_v1_0_6
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap v_vid_in_axi4s_v4_0_9 activehdl/v_vid_in_axi4s_v4_0_9

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/sim/ila_refclk.vhd" \
"../../../bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/sim/ila_pixclk.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/SyncBase.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/EEPROM_8b.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/TWI_SlaveCtl.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/GlitchFilter.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/SyncAsync.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/DVI_Constants.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/SyncAsyncReset.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/PhaseAlign.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/InputSERDES.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/ChannelBond.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/ResyncToBUFG.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/TMDS_Decoder.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/TMDS_Clocking.vhd" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/80ae/src/dvi2rgb.vhd" \
"../../../bd/design_1/ip/design_1_dvi2rgb_1_0/sim/design_1_dvi2rgb_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blinky_0_0/sim/design_1_blinky_0_0.v" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/85a3" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/hdl/verilog" "+incdir+../../../../hdmi_led.srcs/sources_1/bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/sim/design_1_v_vid_in_axi4s_0_0.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/AXIvideo2Mat.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/Block_proc.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/Block_proc55.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/brightness_color_adj.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/brightness_color_fYi.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/brightness_color_g8j.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/brightness_color_hbi.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/fifo_w8_d2_A.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/fifo_w12_d2_A.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/fifo_w32_d2_A.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/hls_video_processibs.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/Loop_loop_height_bkb.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/Loop_loop_height_pro.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/Loop_loop_height_pro_1.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/Loop_loop_height_pro_2.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/Mat2AXIvideo.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/start_for_Block_pjbC.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/start_for_brightnmb6.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/start_for_Loop_lokbM.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/start_for_Loop_loncg.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/start_for_Mat2AXIocq.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/start_for_video_slbW.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/video_scale.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/video_scale_sums_cud.v" \
"../../../../hdmi_led.srcs/sources_1/bd/design_1/ipshared/b7c5/hdl/verilog/hls_video_processor.v" \
"../../../bd/design_1/ip/design_1_hls_video_processor_0_0/sim/design_1_hls_video_processor_0_0.v" \
"../../../bd/design_1/ip/design_1_triple_buffer_v1_0_0_0/sim/design_1_triple_buffer_v1_0_0_0.v" \
"../../../bd/design_1/ip/design_1_matrix_controller_0_0/sim/design_1_matrix_controller_0_0.v" \
"../../../bd/design_1/ip/design_1_ws2812b_driver_0_0/sim/design_1_ws2812b_driver_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconcat_1_0/sim/design_1_xlconcat_1_0.v" \
"../../../bd/design_1/ip/design_1_user_input_0_0/sim/design_1_user_input_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

