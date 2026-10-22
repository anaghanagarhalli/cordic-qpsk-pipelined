`timescale 1ns / 1ps

module phase_accumulator_pipelined (
    input  wire        clk_i,
    input  wire        rst_i,
    input  wire [14:0] phase_inc_i, 
    output reg  [14:0] phase_acc_o
); 
    // Free-running accumulator - advances 1 step per clock cycle
    always @(posedge clk_i) begin
        if (rst_i) begin
            phase_acc_o <= 15'd0;
        end else begin
            phase_acc_o <= phase_acc_o + phase_inc_i;
        end
    end
endmodule