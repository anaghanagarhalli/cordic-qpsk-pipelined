`timescale 1ns / 1ps

module sps_imp_pipelined #(
    parameter integer SPS_COUNT = 10 // Clock cycles per symbol
)(
    input  wire clk,
    input  wire rst,
    output reg  SPS_active
);

    localparam CNT_WIDTH = $clog2(SPS_COUNT);
    reg [CNT_WIDTH-1:0] count;

    always @(posedge clk) begin
        if (rst) begin
            count      <= 0;
            SPS_active <= 1'b0;
        end else begin
            if (count == (SPS_COUNT - 1)) begin
                SPS_active <= 1'b1;
                count      <= 0;
            end else begin
                SPS_active <= 1'b0;
                count      <= count + 1'b1;
            end
        end
    end
endmodule