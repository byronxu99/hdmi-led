`timescale 1ns / 1ps
/*

The WS2812B driver is responsible for generating the waveform
needed to send RGB data to the LEDs and the associated timing
needed for generating this waveform.

It expects the matrix controller to supply RGB888 pixel data
(24 bit packed in RBG order, same as AXI streaming video)
as fast as it can send out data.

The 'next' signal is strobed when the RGB data for a pixel has
been successfully latched. Upon this signal, the matrix controller
should begin presenting the RGB data for the next pixel.

To signal the end of a data sequence, the matrix controller should
bring the 'reset' line HIGH until it receives a 'next' signal.
Afterwards, it should begin presenting the RGB data for pixel 0
of the next data sequence.

*/

module ws2812b_driver #(
    // timing values for 150 MHz clock
    parameter PIXEL_CLKS = 32'd3456,
    parameter BIT_CLKS = 32'd188,
    parameter T0H_CLKS = 32'd60,
    parameter T1H_CLKS = 32'd120,
    parameter RESET_CLKS = 32'd7500
)(
    input clk, // 150 MHz
    input [23:0] data,
    input reset, // flush the output data (reset active high)
    
    // output to LED strip
    output reg led_out,
    
    // output to matrix controller
    output next_data,
    
    // debug signals
    // the current bit being sent to the LEDs
    output bit_out,
    output bit_strb
);

initial led_out = 0;

// extract rgb components (order is r, b, g)
wire [7:0] data_r;
wire [7:0] data_g;
wire [7:0] data_b;
assign data_r = data[23:16];
assign data_b = data[15:8];
assign data_g = data[7:0];

// output bits to led (GRB order)
wire [23:0] data_sequence;
assign data_sequence = {data_g, data_r, data_b};
reg [23:0] data_buf;

// counters
reg [31:0] pixel_clk_counter = 0; // starts at 0 every pixel/reset
reg [31:0] bit_clk_counter = 0;   // starts at 0 every bit
reg [4:0]  bit_index = 0;         // starts at 23 every pixel, down to 0

// states
localparam STATE_RESET  = 1'b0;
localparam STATE_ACTIVE = 1'b1;
reg state = STATE_RESET;

always @(posedge clk) begin
    if(state == STATE_RESET) begin
        if(pixel_clk_counter >= RESET_CLKS-1) begin
            // reset finished, load a new pixel
            state <= STATE_ACTIVE;
            pixel_clk_counter <= 0;
            bit_clk_counter <= 0;
            bit_index <= 5'd23;
            
            // store the latest input data
            data_buf <= data_sequence;
            
            // begin output
            led_out <= 1;
        end else begin
            // reset in progress
            // increment counter to keep track of reset time
            led_out <= 0;
            pixel_clk_counter <= pixel_clk_counter + 1;
            bit_clk_counter <= bit_clk_counter + 1;
        end
    end else begin // STATE_ACTIVE
        if(bit_index == 0 && bit_clk_counter >= BIT_CLKS-1) begin
            // check for reset or new pixel
            if(reset) begin
                // end of pixel stream, pull output to 0 and do a reset
                state <= STATE_RESET;
                pixel_clk_counter <= 0;
                bit_clk_counter <= 0;
                led_out <= 0;
            end else begin
                // load a new pixel
                pixel_clk_counter <= 0;
                bit_clk_counter <= 0;
                bit_index <= 5'd23;
                
                // store the latest input data
                data_buf <= data_sequence;
                
                // begin output
                led_out <= 1;
            end
        end else if(bit_clk_counter >= BIT_CLKS-1) begin
            // load a new bit
            bit_clk_counter <= 0;
            bit_index <= bit_index - 1;
            
            // begin output
            led_out <= 1;
            
            pixel_clk_counter <= pixel_clk_counter + 1;
        end else begin
            // continue to output current bit
            if(data_buf[bit_index] == 0 && bit_clk_counter >= T0H_CLKS-1) begin
                // current bit is 0, T0H_CLKS elapsed
                led_out <= 0;
            end else if(data_buf[bit_index] == 1 && bit_clk_counter >= T1H_CLKS-1) begin
                // current bit is 1, T1H_CLKS elapsed
                led_out <= 0;
            end else begin
                led_out <= 1;
            end
            
            bit_clk_counter <= bit_clk_counter + 1;
            pixel_clk_counter <= pixel_clk_counter + 1;
        end
    end
end

// at the start of each new pixel/reset
// we signal for the matrix controller to
// begin loading the next value
assign next_data = (pixel_clk_counter == 0);

// debug signals
assign bit_out  = data_buf[bit_index];
assign bit_strb = (bit_clk_counter == 0); 

endmodule
