`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2019 09:54:45 PM
// Design Name: 
// Module Name: user_input
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/*
This module takes user input, in the form of
buttons and switches, and outputs the appropriate
settings for other blocks. Brightness is a 4-bit
integer from 4'b0000 to 4'b1111, and is incremented
or decremented with button presses. Other outputs
are simple boolean values.
*/
module user_input #(
    // map button functionalities
    parameter BRIGHTNESS_DECREASE  = 0,
    parameter BRIGHTNESS_INCREASE  = 1,
    parameter COLOR_CORRECT_TOGGLE = 2,
    parameter SHOW_HIDE_IMAGE      = 3
)(
    input clk,
    input [3:0] buttons,
    input [1:0] switches,
    output [3:0] brightness,
    output color_correct,
    output flip_even,
    output flip_odd,
    output output_enable,
    output output_disable
);

// debouncer output
wire [3:0] buttons_debounced;
reg  [3:0] prev_buttons_debounced = 4'b0;

// state registers
reg [3:0] brightness_reg = 4'b1111;
reg color_correct_reg = 1'b1;
reg output_enable_reg = 1'b1;

// debounce buttons
debounce debounce_button_0(.clk(clk), .in(buttons[0]), .out(buttons_debounced[0]));
debounce debounce_button_1(.clk(clk), .in(buttons[1]), .out(buttons_debounced[1]));
debounce debounce_button_2(.clk(clk), .in(buttons[2]), .out(buttons_debounced[2]));
debounce debounce_button_3(.clk(clk), .in(buttons[3]), .out(buttons_debounced[3]));

// flip_even and flip_odd are just debounced switch inputs
debounce debounce_flip_even(.clk(clk), .in(switches[0]), .out(flip_even));
debounce debounce_flip_odd (.clk(clk), .in(switches[1]), .out(flip_odd ));

// remaining outputs should be the current states
assign brightness = brightness_reg;
assign color_correct = color_correct_reg;
assign output_enable = output_enable_reg;
assign output_disable = !output_enable_reg;

// control logic
always @(posedge clk) begin
    // only when button is pressed, not held
    if(buttons_debounced[BRIGHTNESS_INCREASE] && !prev_buttons_debounced[BRIGHTNESS_INCREASE]) begin
        brightness_reg <= (brightness_reg == 4'b1111)? 4'b1111 : brightness_reg + 1;
    end
    
    if(buttons_debounced[BRIGHTNESS_DECREASE] && !prev_buttons_debounced[BRIGHTNESS_DECREASE]) begin
        brightness_reg <= (brightness_reg == 4'b0)? 4'b0 : brightness_reg - 1;
    end
    
    if(buttons_debounced[COLOR_CORRECT_TOGGLE] && !prev_buttons_debounced[COLOR_CORRECT_TOGGLE]) begin
        color_correct_reg <= !color_correct_reg;
    end
    
    if(buttons_debounced[SHOW_HIDE_IMAGE] && !prev_buttons_debounced[SHOW_HIDE_IMAGE]) begin
        output_enable_reg <= !output_enable_reg;
    end
    
    // update previous button states
    prev_buttons_debounced <= buttons_debounced;
end

endmodule


/*
Debounce button and switch inputs
*/
module debounce #(
    parameter DEBOUNCE_CLKS = 1000000
)(
    input clk,
    input in,
    output reg out
);

reg [23:0] counter = 0;
reg new_value = 0;

initial out = 0;

always @(posedge clk) begin
    if(counter >= DEBOUNCE_CLKS) begin
        // input has matched new_value for long enough
        out <= new_value;
        counter <= 24'b0;
    end else if(in != new_value) begin
        // input changed, so update new_value and reset counter
        new_value <= in;
        counter <= 24'b0;
    end else begin
        // input matches new_value, so increment counter
        counter <= counter + 1;
    end
end

endmodule
