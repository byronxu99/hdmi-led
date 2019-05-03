`timescale 1ns / 1ps
/*

The matrix controller is responsible for reading array RGB
data in the proper sequence and and presenting the data to the
driver. Upon the end of the sequence, it must instruct the driver
to reset and instruct the memory unit to load the next frame.

*/

module matrix_controller #(
    parameter WIDTH  = 60,
    parameter HEIGHT = 30
)(
    input clk,
    
    // matrix configuration
    //input [7:0] width,
    //input [7:0] height,
    input flip_even,
    input flip_odd,
    //input gamma_correct,
    
    // data from array buffer
    //input [23:0] data_in,
    
    // data from gamma correction
    //input [23:0] gamma_lut_in,
    
    // next pixel signal from LED driver
    input next_data,
        
    // to gamma correction
    //output [23:0] gamma_lut_out,
    
    // to LED driver
    //output [23:0] data_out,
    output reg reset = 0,
    
    // to array buffer
    output [7:0] array_x,
    output [7:0] array_y,
    output reg next_frame = 0
);

// internal x and y coordinates
// scan order is:
// for(y=0; y<height; y++)
//     for(x=0; x<width; x++)
reg [7:0] x = 0;
reg [7:0] y = 0;

// output coordinates to array buffer
assign array_x = ((flip_even && y[0] == 0) || (flip_odd && y[0] == 1))? (WIDTH - 8'd1 - x) : x;
assign array_y = y;

// output to LED driver
//assign data_out = gamma_correct? gamma_lut_in : data_in;
//assign gamma_lut_out = gamma_correct? data_in : 24'b0;

always @(posedge clk) begin
    // upon receiving a next pixel/reset signal
    if(next_data) begin
        if(reset) begin
            // LED driver has acknowledged a reset signal
            reset <= 0;
            x <= 0;
            y <= 0;
        end else begin
            // LED driver has stored the current pixel data
            // load data for next pixel
            if(x >= WIDTH-1) begin
                if(y >= HEIGHT-1) begin
                    // end of frame
                    next_frame <= 1;
                    reset <= 1;
                end else begin
                    // end of line
                    y <= y + 1;
                    x <= 0;
                end
            end else begin
                // middle of line
                x <= x + 1;
            end
        end
    end else begin // no next pixel/reset signal
        // reset the next_frame signal after one clock cycle
        if(next_frame) begin
            next_frame <= 0;
        end
    end
end

endmodule
