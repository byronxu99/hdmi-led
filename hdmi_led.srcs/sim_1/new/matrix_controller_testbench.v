`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2019 09:45:33 PM
// Design Name: 
// Module Name: matrix_controller_testbench
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


module matrix_controller_testbench(

    );

// clock
reg clk;

// config
reg flip_even;
reg flip_odd;

// led driver signals
reg next_data;
wire reset;

// array buffer signals
wire [7:0] array_x;
wire [7:0] array_y;
wire next_frame;

    
matrix_controller matrix_controller_0(
    .clk(clk),
    .flip_even(flip_even),
    .flip_odd(flip_odd),
    .next_data(next_data),
    .reset(reset),
    .array_x(array_x),
    .array_y(array_y),
    .next_frame(next_frame)
);

always begin
    // 10 ns clock period
    clk = 1;
    #5;
    clk = 0;
    #5;
end

reg [23:0] i;
initial begin
    flip_even = 1;
    flip_odd = 0;
    
    #50;
    
    for(i = 0; i < 2000; i=i+1) begin
        next_data = 0;
        #90;
        next_data = 1;
        #10;
    end
    
end

endmodule
