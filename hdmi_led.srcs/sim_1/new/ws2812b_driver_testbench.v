`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2019 09:45:33 PM
// Design Name: 
// Module Name: ws2812b_driver_testbench
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


module ws2812b_driver_testbench(

    );

// clock
reg clk;

// data
reg [23:0] data;
reg reset;

// output
wire led_out;
wire next_data;
wire bit_out;
wire bit_strb;

ws2812b_driver ws2812b_driver_0 (
    .clk(clk),
    .data(data),
    .reset(reset),
    .led_out(led_out),
    .next_data(next_data),
    .bit_out(bit_out),
    .bit_strb(bit_strb)
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
    // wait for driver to initialize
    while(next_data == 0) begin
        #10;
    end

    // output some pixels
    for(i = 0; i < 5; i=i+1) begin
        reset = 0;
        data = i;
        #10;
        while(next_data == 0) begin
            #10;
        end
    end
    
    // do a reset
    reset = 1;
    #10;
    while(next_data == 0) begin
        #10;
    end
    
    // output some more pixels
    for(i = 100; i < 105; i=i+1) begin
        reset = 0;
        data = i;
        #10;
        while(next_data == 0) begin
            #10;
        end
    end
end

endmodule
