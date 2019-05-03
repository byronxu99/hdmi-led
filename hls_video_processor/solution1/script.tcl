############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_video_processor
set_top hls_video_processor
add_files hls_video_processor/hls_video_processor.h
add_files hls_video_processor/hls_video_processor.cpp
add_files -tb hls_video_processor/test_img -cflags "-Wno-unknown-pragmas"
add_files -tb hls_video_processor/hls_video_processor_testbench.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 6.6 -name default
config_export -format ip_catalog -rtl verilog
#source "./hls_video_processor/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
