`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2019 01:46:43 AM
// Design Name: 
// Module Name: triple_buffer_testbench
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


module triple_buffer_testbench(

    );
// size to test
parameter WIDTH = 6;
parameter HEIGHT = 3;

// clock
reg clk;

// pixel array interface
reg [7:0] read_x;
reg [7:0] read_y;
reg next_frame = 0;
wire [23:0] data_out;

// AXI Stream video interface
reg axis_aresetn = 1;
reg [31:0] axis_tdata;
reg axis_tuser;
reg axis_tlast;
reg axis_tvalid;

triple_buffer_v1_0 #(
    .WIDTH(WIDTH),
    .HEIGHT(HEIGHT)
) triple_buffer_v1_0_0 (
    .read_x(read_x),
    .read_y(read_y),
    .next_frame(next_frame),
    .data_out(data_out),
    .s00_axis_aclk(clk),
    .s00_axis_aresetn(axis_aresetn),
    .s00_axis_tdata(axis_tdata),
    .s00_axis_tuser(axis_tuser),
    .s00_axis_tlast(axis_tlast),
    .s00_axis_tvalid(axis_tvalid)
);

always begin
    // 10 ns clock period
    clk = 1;
    #5;
    clk = 0;
    #5;
end

// test input side
reg [5:0] n_input_frames;
reg [5:0] x;
reg [5:0] y;
reg [31:0] count = 0;
initial begin
    axis_tvalid = 1;
    
    
    // desynchronize
    axis_tdata = 0;
    axis_tuser = 0;
    axis_tlast = 0;
    #50;
    
    
    for(n_input_frames = 0; n_input_frames < 10; n_input_frames = n_input_frames+1) begin
        for(y = 0; y < HEIGHT; y = y+1) begin
            for(x = 0; x < WIDTH; x = x+1) begin
                axis_tdata = count;
                axis_tuser = (x == 0 && y == 0);
                axis_tlast = (x == WIDTH-1);
                #10;
                count = count + 1;
            end
        end
    end
    axis_tvalid = 0;
end

// test output side
reg [5:0] n_output_frames;
initial begin
    for(n_output_frames = 0; n_output_frames < 10; n_output_frames = n_output_frames + 1) begin
        for(read_y = 0; read_y < HEIGHT; read_y = read_y+1) begin
            for(read_x = 0; read_x < WIDTH; read_x = read_x+1) begin
                #10;
            end
        end
        // request new frame
        next_frame = 1;
        #10;
        next_frame = 0;
    end
end


endmodule
