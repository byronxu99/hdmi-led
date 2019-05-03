# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BIT_CLKS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PIXEL_CLKS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESET_CLKS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "T0H_CLKS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "T1H_CLKS" -parent ${Page_0}


}

proc update_PARAM_VALUE.BIT_CLKS { PARAM_VALUE.BIT_CLKS } {
	# Procedure called to update BIT_CLKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BIT_CLKS { PARAM_VALUE.BIT_CLKS } {
	# Procedure called to validate BIT_CLKS
	return true
}

proc update_PARAM_VALUE.PIXEL_CLKS { PARAM_VALUE.PIXEL_CLKS } {
	# Procedure called to update PIXEL_CLKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PIXEL_CLKS { PARAM_VALUE.PIXEL_CLKS } {
	# Procedure called to validate PIXEL_CLKS
	return true
}

proc update_PARAM_VALUE.RESET_CLKS { PARAM_VALUE.RESET_CLKS } {
	# Procedure called to update RESET_CLKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESET_CLKS { PARAM_VALUE.RESET_CLKS } {
	# Procedure called to validate RESET_CLKS
	return true
}

proc update_PARAM_VALUE.T0H_CLKS { PARAM_VALUE.T0H_CLKS } {
	# Procedure called to update T0H_CLKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.T0H_CLKS { PARAM_VALUE.T0H_CLKS } {
	# Procedure called to validate T0H_CLKS
	return true
}

proc update_PARAM_VALUE.T1H_CLKS { PARAM_VALUE.T1H_CLKS } {
	# Procedure called to update T1H_CLKS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.T1H_CLKS { PARAM_VALUE.T1H_CLKS } {
	# Procedure called to validate T1H_CLKS
	return true
}


proc update_MODELPARAM_VALUE.PIXEL_CLKS { MODELPARAM_VALUE.PIXEL_CLKS PARAM_VALUE.PIXEL_CLKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PIXEL_CLKS}] ${MODELPARAM_VALUE.PIXEL_CLKS}
}

proc update_MODELPARAM_VALUE.BIT_CLKS { MODELPARAM_VALUE.BIT_CLKS PARAM_VALUE.BIT_CLKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BIT_CLKS}] ${MODELPARAM_VALUE.BIT_CLKS}
}

proc update_MODELPARAM_VALUE.T0H_CLKS { MODELPARAM_VALUE.T0H_CLKS PARAM_VALUE.T0H_CLKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.T0H_CLKS}] ${MODELPARAM_VALUE.T0H_CLKS}
}

proc update_MODELPARAM_VALUE.T1H_CLKS { MODELPARAM_VALUE.T1H_CLKS PARAM_VALUE.T1H_CLKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.T1H_CLKS}] ${MODELPARAM_VALUE.T1H_CLKS}
}

proc update_MODELPARAM_VALUE.RESET_CLKS { MODELPARAM_VALUE.RESET_CLKS PARAM_VALUE.RESET_CLKS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESET_CLKS}] ${MODELPARAM_VALUE.RESET_CLKS}
}

