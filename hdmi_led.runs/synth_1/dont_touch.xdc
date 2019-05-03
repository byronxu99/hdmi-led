# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/6.S193/base.xdc

# Block Designs: bd/design_1/design_1.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1 || ORIG_REF_NAME==design_1} -quiet] -quiet

# IP: bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_processing_system7_0_0 || ORIG_REF_NAME==design_1_processing_system7_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_clk_wiz_0_0 || ORIG_REF_NAME==design_1_clk_wiz_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_xlconstant_0_0/design_1_xlconstant_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_xlconstant_0_0 || ORIG_REF_NAME==design_1_xlconstant_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_xlconcat_0_0/design_1_xlconcat_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_xlconcat_0_0 || ORIG_REF_NAME==design_1_xlconcat_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_proc_sys_reset_0_0 || ORIG_REF_NAME==design_1_proc_sys_reset_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_dvi2rgb_1_0/design_1_dvi2rgb_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_dvi2rgb_1_0 || ORIG_REF_NAME==design_1_dvi2rgb_1_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/ila_refclk.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ila_refclk || ORIG_REF_NAME==ila_refclk} -quiet] -quiet

# IP: bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/ila_pixclk.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ila_pixclk || ORIG_REF_NAME==ila_pixclk} -quiet] -quiet

# IP: bd/design_1/ip/design_1_blinky_0_0/design_1_blinky_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_blinky_0_0 || ORIG_REF_NAME==design_1_blinky_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/design_1_v_vid_in_axi4s_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_v_vid_in_axi4s_0_0 || ORIG_REF_NAME==design_1_v_vid_in_axi4s_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_hls_video_processor_0_0/design_1_hls_video_processor_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_hls_video_processor_0_0 || ORIG_REF_NAME==design_1_hls_video_processor_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_triple_buffer_v1_0_0_0/design_1_triple_buffer_v1_0_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_triple_buffer_v1_0_0_0 || ORIG_REF_NAME==design_1_triple_buffer_v1_0_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_matrix_controller_0_0/design_1_matrix_controller_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_matrix_controller_0_0 || ORIG_REF_NAME==design_1_matrix_controller_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_ws2812b_driver_0_0/design_1_ws2812b_driver_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_ws2812b_driver_0_0 || ORIG_REF_NAME==design_1_ws2812b_driver_0_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_xlconcat_1_0/design_1_xlconcat_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_xlconcat_1_0 || ORIG_REF_NAME==design_1_xlconcat_1_0} -quiet] -quiet

# IP: bd/design_1/ip/design_1_user_input_0_0/design_1_user_input_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==design_1_user_input_0_0 || ORIG_REF_NAME==design_1_user_input_0_0} -quiet] -quiet

# XDC: bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_processing_system7_0_0 || ORIG_REF_NAME==design_1_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_clk_wiz_0_0 || ORIG_REF_NAME==design_1_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_clk_wiz_0_0 || ORIG_REF_NAME==design_1_clk_wiz_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_proc_sys_reset_0_0 || ORIG_REF_NAME==design_1_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_proc_sys_reset_0_0 || ORIG_REF_NAME==design_1_proc_sys_reset_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_timing_workaround.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_dvi2rgb_1_0 || ORIG_REF_NAME==design_1_dvi2rgb_1_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_dvi2rgb_1_0/src/dvi2rgb.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_dvi2rgb_1_0 || ORIG_REF_NAME==design_1_dvi2rgb_1_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_dvi2rgb_1_0/src/dvi2rgb_ooc.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_dvi2rgb_1_0 || ORIG_REF_NAME==design_1_dvi2rgb_1_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/ila_v6_2/constraints/ila.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ila_refclk || ORIG_REF_NAME==ila_refclk} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_refclk/ila_refclk_ooc.xdc

# XDC: bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/ila_v6_2/constraints/ila.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ila_pixclk || ORIG_REF_NAME==ila_pixclk} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_dvi2rgb_1_0/src/ila_pixclk/ila_pixclk_ooc.xdc

# XDC: bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/design_1_v_vid_in_axi4s_0_0_clocks.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_v_vid_in_axi4s_0_0 || ORIG_REF_NAME==design_1_v_vid_in_axi4s_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/design_1_v_vid_in_axi4s_0_0_ooc.xdc

# XDC: bd/design_1/ip/design_1_hls_video_processor_0_0/constraints/hls_video_processor.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==design_1_hls_video_processor_0_0 || ORIG_REF_NAME==design_1_hls_video_processor_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: bd/design_1/ip/design_1_hls_video_processor_0_0/constraints/hls_video_processor_ooc.xdc

# XDC: bd/design_1/design_1_ooc.xdc