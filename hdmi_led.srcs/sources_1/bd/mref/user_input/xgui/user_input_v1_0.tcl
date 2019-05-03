# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BRIGHTNESS_DECREASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BRIGHTNESS_INCREASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COLOR_CORRECT_TOGGLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SHOW_HIDE_IMAGE" -parent ${Page_0}


}

proc update_PARAM_VALUE.BRIGHTNESS_DECREASE { PARAM_VALUE.BRIGHTNESS_DECREASE } {
	# Procedure called to update BRIGHTNESS_DECREASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRIGHTNESS_DECREASE { PARAM_VALUE.BRIGHTNESS_DECREASE } {
	# Procedure called to validate BRIGHTNESS_DECREASE
	return true
}

proc update_PARAM_VALUE.BRIGHTNESS_INCREASE { PARAM_VALUE.BRIGHTNESS_INCREASE } {
	# Procedure called to update BRIGHTNESS_INCREASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRIGHTNESS_INCREASE { PARAM_VALUE.BRIGHTNESS_INCREASE } {
	# Procedure called to validate BRIGHTNESS_INCREASE
	return true
}

proc update_PARAM_VALUE.COLOR_CORRECT_TOGGLE { PARAM_VALUE.COLOR_CORRECT_TOGGLE } {
	# Procedure called to update COLOR_CORRECT_TOGGLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COLOR_CORRECT_TOGGLE { PARAM_VALUE.COLOR_CORRECT_TOGGLE } {
	# Procedure called to validate COLOR_CORRECT_TOGGLE
	return true
}

proc update_PARAM_VALUE.SHOW_HIDE_IMAGE { PARAM_VALUE.SHOW_HIDE_IMAGE } {
	# Procedure called to update SHOW_HIDE_IMAGE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SHOW_HIDE_IMAGE { PARAM_VALUE.SHOW_HIDE_IMAGE } {
	# Procedure called to validate SHOW_HIDE_IMAGE
	return true
}


proc update_MODELPARAM_VALUE.BRIGHTNESS_DECREASE { MODELPARAM_VALUE.BRIGHTNESS_DECREASE PARAM_VALUE.BRIGHTNESS_DECREASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRIGHTNESS_DECREASE}] ${MODELPARAM_VALUE.BRIGHTNESS_DECREASE}
}

proc update_MODELPARAM_VALUE.BRIGHTNESS_INCREASE { MODELPARAM_VALUE.BRIGHTNESS_INCREASE PARAM_VALUE.BRIGHTNESS_INCREASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRIGHTNESS_INCREASE}] ${MODELPARAM_VALUE.BRIGHTNESS_INCREASE}
}

proc update_MODELPARAM_VALUE.COLOR_CORRECT_TOGGLE { MODELPARAM_VALUE.COLOR_CORRECT_TOGGLE PARAM_VALUE.COLOR_CORRECT_TOGGLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COLOR_CORRECT_TOGGLE}] ${MODELPARAM_VALUE.COLOR_CORRECT_TOGGLE}
}

proc update_MODELPARAM_VALUE.SHOW_HIDE_IMAGE { MODELPARAM_VALUE.SHOW_HIDE_IMAGE PARAM_VALUE.SHOW_HIDE_IMAGE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SHOW_HIDE_IMAGE}] ${MODELPARAM_VALUE.SHOW_HIDE_IMAGE}
}

