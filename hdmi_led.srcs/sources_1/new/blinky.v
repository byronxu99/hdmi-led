`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2019 11:25:35 PM
// Design Name: 
// Module Name: blinky
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

Blink one of the FPGA builtin LEDs.
A test to make sure things are running.

*/

module blinky (
    input clk,
    output reg led
);

reg [31:0] counter = 0;
initial led = 0;

always @(posedge clk) begin
    if(counter >= 32'd75000000) begin
        counter <= 0;
        led <= !led;
    end else begin
        counter <= counter + 1;
        led <= led;
    end
end

endmodule
