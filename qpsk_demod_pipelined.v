`timescale 1ns / 1ps

module qpsk_demod_pipelined (
    input  wire clk,
    input  wire rst,
    input  wire signed [15:0] rf_in,      
    input  wire signed [15:0] local_cos,  
    input  wire signed [15:0] local_sin,  
    output reg  signed [31:0] filtered_i,
    output reg  signed [31:0] filtered_q
);

    // Continuous multiplication on every clock cycle
    wire signed [31:0] mixed_i = rf_in * local_cos;
    wire signed [31:0] mixed_q = -(rf_in * local_sin); 

    // Pipeline delay lines for the Moving Average Filter
    reg signed [31:0] i_delay [0:3];
    reg signed [31:0] q_delay [0:3];

    always @(posedge clk) begin
        if (rst) begin
            filtered_i <= 0;
            filtered_q <= 0;
            i_delay[0] <= 0; i_delay[1] <= 0; i_delay[2] <= 0; i_delay[3] <= 0;
            q_delay[0] <= 0; q_delay[1] <= 0; q_delay[2] <= 0; q_delay[3] <= 0;
        end else begin 
            // Shift registers update continuously
            i_delay[0] <= mixed_i;
            i_delay[1] <= i_delay[0];
            i_delay[2] <= i_delay[1];
            i_delay[3] <= i_delay[2];

            q_delay[0] <= mixed_q;
            q_delay[1] <= q_delay[0];
            q_delay[2] <= q_delay[1];
            q_delay[3] <= q_delay[2];

            // Moving average sum and bit-shift (divide by 4)
            filtered_i <= (i_delay[0] + i_delay[1] + i_delay[2] + i_delay[3]) >>> 2;
            filtered_q <= (q_delay[0] + q_delay[1] + q_delay[2] + q_delay[3]) >>> 2;
        end
    end
endmodule