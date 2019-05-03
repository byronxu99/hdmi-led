// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:user_input:1.0
// IP Revision: 1

(* X_CORE_INFO = "user_input,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "design_1_user_input_0_0,user_input,{}" *)
(* CORE_GENERATION_INFO = "design_1_user_input_0_0,user_input,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=user_input,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,BRIGHTNESS_DECREASE=0,BRIGHTNESS_INCREASE=1,COLOR_CORRECT_TOGGLE=2,SHOW_HIDE_IMAGE=3}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_user_input_0_0 (
  clk,
  buttons,
  switches,
  brightness,
  color_correct,
  flip_even,
  flip_odd,
  output_enable,
  output_disable
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 150000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire [3 : 0] buttons;
input wire [1 : 0] switches;
output wire [3 : 0] brightness;
output wire color_correct;
output wire flip_even;
output wire flip_odd;
output wire output_enable;
output wire output_disable;

  user_input #(
    .BRIGHTNESS_DECREASE(0),
    .BRIGHTNESS_INCREASE(1),
    .COLOR_CORRECT_TOGGLE(2),
    .SHOW_HIDE_IMAGE(3)
  ) inst (
    .clk(clk),
    .buttons(buttons),
    .switches(switches),
    .brightness(brightness),
    .color_correct(color_correct),
    .flip_even(flip_even),
    .flip_odd(flip_odd),
    .output_enable(output_enable),
    .output_disable(output_disable)
  );
endmodule
