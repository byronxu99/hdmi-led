# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name img_input_cols_V_c20 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_input_cols_V_c20 \
    op interface \
    ports { img_input_cols_V_c20_dout { I 12 vector } img_input_cols_V_c20_empty_n { I 1 bit } img_input_cols_V_c20_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name extLd_loc_channel \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_extLd_loc_channel \
    op interface \
    ports { extLd_loc_channel { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name img_input_data_strea \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_input_data_strea \
    op interface \
    ports { img_input_data_strea_dout { I 8 vector } img_input_data_strea_empty_n { I 1 bit } img_input_data_strea_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name img_input_data_strea_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_input_data_strea_1 \
    op interface \
    ports { img_input_data_strea_1_dout { I 8 vector } img_input_data_strea_1_empty_n { I 1 bit } img_input_data_strea_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name img_input_data_strea_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_input_data_strea_2 \
    op interface \
    ports { img_input_data_strea_2_dout { I 8 vector } img_input_data_strea_2_empty_n { I 1 bit } img_input_data_strea_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name img_crop_data_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_crop_data_stream \
    op interface \
    ports { img_crop_data_stream_din { O 8 vector } img_crop_data_stream_full_n { I 1 bit } img_crop_data_stream_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name img_crop_data_stream_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_crop_data_stream_1 \
    op interface \
    ports { img_crop_data_stream_1_din { O 8 vector } img_crop_data_stream_1_full_n { I 1 bit } img_crop_data_stream_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name img_crop_data_stream_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_img_crop_data_stream_2 \
    op interface \
    ports { img_crop_data_stream_2_din { O 8 vector } img_crop_data_stream_2_full_n { I 1 bit } img_crop_data_stream_2_write { O 1 bit } } \
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


