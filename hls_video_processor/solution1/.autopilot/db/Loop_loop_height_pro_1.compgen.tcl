# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 26
set hasByteEnable 0
set MemName Loop_loop_height_bkb
set CoreName ap_simcore_mem
set PortList { 1 1 1 }
set DataWd 12
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "000000000000" "000000000001" "000000000010" "000000000100" "000000000101" "000000000110" "000000000111" "000000001001" "000000001010" "000000001011" "000000001100" "000000001110" "000000001111" "000000010000" "000000010010" "000000010011" "000000010101" "000000010111" "000000011001" "000000011011" "000000011101" "000000011111" "000000100001" "000000100011" "000000100101" "000000101000" "000000101010" "000000101101" "000000101111" "000000110010" "000000110101" "000000111000" "000000111011" "000000111110" "000001000001" "000001000101" "000001001000" "000001001011" "000001001111" "000001010011" "000001010111" "000001011010" "000001011110" "000001100011" "000001100111" "000001101011" "000001101111" "000001110100" "000001111001" "000001111101" "000010000010" "000010000111" "000010001100" "000010010001" "000010010111" "000010011100" "000010100001" "000010100111" "000010101101" "000010110010" "000010111000" "000010111110" "000011000101" "000011001011" "000011010001" "000011011000" "000011011110" "000011100101" "000011101100" "000011110011" "000011111010" "000100000001" "000100001000" "000100010000" "000100010111" "000100011111" "000100100111" "000100101111" "000100110111" "000100111111" "000101000111" "000101010000" "000101011000" "000101100001" "000101101010" "000101110011" "000101111100" "000110000101" "000110001110" "000110011000" "000110100001" "000110101011" "000110110101" "000110111111" "000111001001" "000111010011" "000111011101" "000111101000" "000111110010" "000111111101" "001000001000" "001000010011" "001000011110" "001000101001" "001000110101" "001001000000" "001001001100" "001001011000" "001001100100" "001001110000" "001001111100" "001010001001" "001010010101" "001010100010" "001010101111" "001010111011" "001011001001" "001011010110" "001011100011" "001011110001" "001011111110" "001100001100" "001100011010" "001100101000" "001100110110" "001101000101" "001101010011" "001101100010" "001101110001" "001110000000" "001110001111" "001110011110" "001110101101" "001110111101" "001111001101" "001111011101" "001111101101" "001111111101" "010000001101" "010000011101" "010000101110" "010000111111" "010001010000" "010001100001" "010001110010" "010010000011" "010010010101" "010010100110" "010010111000" "010011001010" "010011011100" "010011101111" "010100000001" "010100010100" "010100100110" "010100111001" "010101001100" "010101100000" "010101110011" "010110000111" "010110011010" "010110101110" "010111000010" "010111010110" "010111101011" "010111111111" "011000010100" "011000101001" "011000111110" "011001010011" "011001101000" "011001111110" "011010010011" "011010101001" "011010111111" "011011010101" "011011101011" "011100000010" "011100011000" "011100101111" "011101000110" "011101011101" "011101110101" "011110001100" "011110100100" "011110111011" "011111010011" "011111101011" "100000000100" "100000011100" "100000110101" "100001001110" "100001100111" "100010000000" "100010011001" "100010110011" "100011001100" "100011100110" "100100000000" "100100011010" "100100110101" "100101001111" "100101101010" "100110000101" "100110100000" "100110111011" "100111010110" "100111110010" "101000001101" "101000101001" "101001000101" "101001100010" "101001111110" "101010011011" "101010111000" "101011010101" "101011110010" "101100001111" "101100101100" "101101001010" "101101101000" "101110000110" "101110100100" "101111000011" "101111100001" "110000000000" "110000011111" "110000111110" "110001011101" "110001111101" "110010011100" "110010111100" "110011011100" "110011111101" "110100011101" "110100111110" "110101011110" "110101111111" "110110100000" "110111000010" "110111100011" "111000000101" "111000100111" "111001001001" "111001101011" "111010001101" "111010110000" "111011010011" "111011110110" "111100011001" "111100111100" "111101100000" "111110000100" "111110101000" "111111001100" "111111110000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 6.6
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 3 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 3 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name img_crop_data_stream_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_crop_data_stream_0_V \
    op interface \
    ports { img_crop_data_stream_0_V_dout { I 8 vector } img_crop_data_stream_0_V_empty_n { I 1 bit } img_crop_data_stream_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name img_crop_data_stream_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_crop_data_stream_1_V \
    op interface \
    ports { img_crop_data_stream_1_V_dout { I 8 vector } img_crop_data_stream_1_V_empty_n { I 1 bit } img_crop_data_stream_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name img_crop_data_stream_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_crop_data_stream_2_V \
    op interface \
    ports { img_crop_data_stream_2_V_dout { I 8 vector } img_crop_data_stream_2_V_empty_n { I 1 bit } img_crop_data_stream_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name img_nogamma_data_stream_0_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_nogamma_data_stream_0_V \
    op interface \
    ports { img_nogamma_data_stream_0_V_din { O 32 vector } img_nogamma_data_stream_0_V_full_n { I 1 bit } img_nogamma_data_stream_0_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name img_nogamma_data_stream_1_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_nogamma_data_stream_1_V \
    op interface \
    ports { img_nogamma_data_stream_1_V_din { O 32 vector } img_nogamma_data_stream_1_V_full_n { I 1 bit } img_nogamma_data_stream_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name img_nogamma_data_stream_2_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_nogamma_data_stream_2_V \
    op interface \
    ports { img_nogamma_data_stream_2_V_din { O 32 vector } img_nogamma_data_stream_2_V_full_n { I 1 bit } img_nogamma_data_stream_2_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


