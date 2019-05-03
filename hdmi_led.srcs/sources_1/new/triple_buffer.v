`timescale 1 ns / 1 ps

/*
The triple buffer interfaces between the incoming AXI Streaming
video format and the outgoing "pixel array" format. The buffer
stores the incoming stream at the rate that it arrives (no back
pressure), swapping between a write buffer and a middle buffer.
On the outgoing side, data is made available a clock cycle after
array locations are given. A next_frame signal swaps between a
read buffer and the middle buffer.
*/

module triple_buffer_v1_0 #(
    // Users to add parameters here
    parameter WIDTH  = 60,
    parameter HEIGHT = 30,
    // User parameters ends
    // Do not modify the parameters beyond this line
    
    // Parameters of Axi Slave Bus Interface S00_AXIS
    parameter integer C_S00_AXIS_TDATA_WIDTH	= 24
)(
    // Users to add ports here
    input [7:0] read_x,
    input [7:0] read_y,
    input next_frame,
    input output_enable,
    output [23:0] data_out,
    // User ports ends
    // Do not modify the ports beyond this line

    // Ports of Axi Slave Bus Interface S00_AXIS
    input wire  s00_axis_aclk,
    input wire  s00_axis_aresetn,
    output wire  s00_axis_tready,
    input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
    input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
    input wire  s00_axis_tuser,
    input wire  s00_axis_tlast,
    input wire  s00_axis_tvalid
);

// Add user logic here

// output register
reg [23:0] data_out_reg;

// write location
reg [5:0] write_x_counter = 0;
reg [5:0] write_y_counter = 0;
wire [5:0] write_x;
wire [5:0] write_y;

// buffer management
reg [1:0] read_buf   = 2'd0;
reg [1:0] middle_buf = 2'd1;
reg [1:0] write_buf  = 2'd2;
reg       middle_buf_fresh = 1'b0;

// buffer memory
// holds the three buffers, separated by highest order bits of address
// we need 2^(6+2+2) = 16384 cells in the memory
reg [23:0] buffer [16384-1:0];

// addresses of the form
// {buffer_number, y_address, x_address}
wire [6+6+2-1:0] write_addr;
wire [6+6+2-1:0] read_addr;
wire write_enable;

// always ready
assign s00_axis_tready = 1'b1;

// check range and assign addresses
assign write_x = write_x_counter < WIDTH?  write_x_counter : WIDTH-1;
assign write_y = write_y_counter < HEIGHT? write_y_counter : HEIGHT-1;
assign write_addr = {write_buf, write_y, write_x};
assign read_addr  = {read_buf, read_y[5:0], read_x[5:0]};
assign write_enable = (s00_axis_tvalid && s00_axis_tready);

// write input to memory
always @(posedge s00_axis_aclk) begin
    if(write_enable) begin
        buffer[write_addr] <= s00_axis_tdata;
    end
end

// read output from memory
always @(posedge s00_axis_aclk) begin
    data_out_reg <= buffer[read_addr];
end

// output enable
assign data_out = output_enable? data_out_reg : 24'b0;

// control logic
always @(posedge s00_axis_aclk) begin
    // active low reset
    if(!s00_axis_aresetn) begin
        write_x_counter <= 6'b0;
        write_y_counter <= 6'b0;
        read_buf   <= 2'd0;
        middle_buf <= 2'd1;
        write_buf  <= 2'd2;
        middle_buf_fresh <= 1'b0;
    end
    
    // no reset, go through normal operation
    else begin
        // upon input data
        if(write_enable) begin
            // new frame started, but we are out of sync
            if(s00_axis_tuser && (write_x_counter != 0 || write_y_counter != 0)) begin
                // we missed the first pixel, but the next one goes to (1,0)
                write_x_counter <= 6'b1;
                write_y_counter <= 6'b0;
                // no buffer swap here, just overwrite the current buffer
            end
            
            // last pixel of current frame
            else if(write_y_counter >= HEIGHT-1 && s00_axis_tlast) begin
                // next pixel goes to (0,0) of new buffer
                write_x_counter <= 6'b0;
                write_y_counter <= 6'b0;
                
                // time to swap buffers
                // if output side wants new frame, swap directly with read
                if(next_frame) begin
                    read_buf  <= write_buf;
                    write_buf <= read_buf;
                    middle_buf_fresh <= 1'b0;
                end
                // swap with middle
                else begin
                    write_buf  <= middle_buf;
                    middle_buf <= write_buf;
                    middle_buf_fresh <= 1'b1;
                end
            end
            
            // middle of frame
            else begin
                // end of line
                if(s00_axis_tlast) begin
                    // next pixel goes to (0, y+1)
                    write_x_counter <= 6'b0;
                    write_y_counter <= write_y_counter + 1;
                end
                
                // middle of line
                else begin
                    // next pixel goes to (x+1, y)
                    write_x_counter <= write_x_counter + 1;
                end
                
                // if output side wants new frame
                // we haven't completed the write frame here so we can
                // freely swap the read and middle buffers
                if(next_frame && middle_buf_fresh) begin
                    read_buf   <= middle_buf;
                    middle_buf <= read_buf;
                    middle_buf_fresh <= 1'b0;
                end
            end
        end
       
        // no input to write
        else begin
            // output side wants new frame
            if(next_frame && middle_buf_fresh) begin
                read_buf   <= middle_buf;
                middle_buf <= read_buf;
                middle_buf_fresh <= 1'b0;
            end
        end
    end
end


// User logic ends


endmodule
