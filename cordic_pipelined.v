`timescale 1ns / 1ps

module cordic_pipelined #(
    parameter DATA_WIDTH = 16,
    parameter ITERATIONS = 16
)(
    input  wire                      clk_i,
    input  wire                      rst_i,
    input  wire                      valid_i,   // High when input data is valid
    
    // Quadrant-reduced vector inputs
    input  wire signed [15:0]        x0_i,
    input  wire signed [15:0]        y0_i,
    input  wire signed [15:0]        z0_i,
    
    output reg  signed [15:0]        cos_o,
    output reg  signed [15:0]        sin_o,
    output reg                       valid_o   // Strobe/High when output data is valid
);

    // Arctangent ROM values (1.0 = 180 degrees = 16384)
    wire signed [15:0] atan_rom [0:15];
    assign atan_rom[0]  = 16'd4096;  // 45.00 deg
    assign atan_rom[1]  = 16'd2417;  // 26.56 deg
    assign atan_rom[2]  = 16'd1277;  // 14.04 deg
    assign atan_rom[3]  = 16'd648;   // 7.13 deg
    assign atan_rom[4]  = 16'd325;   // 3.58 deg
    assign atan_rom[5]  = 16'd163;   // 1.79 deg
    assign atan_rom[6]  = 16'd81;    // 0.89 deg
    assign atan_rom[7]  = 16'd41;    // 0.45 deg
    assign atan_rom[8]  = 16'd20;    // 0.22 deg
    assign atan_rom[9]  = 16'd10;    // 0.11 deg
    assign atan_rom[10] = 16'd5;     // 0.06 deg
    assign atan_rom[11] = 16'd3;     // 0.03 deg
    assign atan_rom[12] = 16'd1;     // 0.01 deg
    assign atan_rom[13] = 16'd0;
    assign atan_rom[14] = 16'd0;
    assign atan_rom[15] = 16'd0;

    // Pipeline Register Arrays across 16 stages
    reg signed [15:0] x_pipe [0:ITERATIONS];
    reg signed [15:0] y_pipe [0:ITERATIONS];
    reg signed [15:0] z_pipe [0:ITERATIONS];
    reg               v_pipe [0:ITERATIONS];

    // Stage 0 Input Sample
    always @(posedge clk_i) begin
        if (rst_i) begin
            x_pipe[0] <= 16'sd0;
            y_pipe[0] <= 16'sd0;
            z_pipe[0] <= 16'sd0;
            v_pipe[0] <= 1'b0;
        end else begin
            x_pipe[0] <= x0_i;
            y_pipe[0] <= y0_i;
            z_pipe[0] <= z0_i;
            v_pipe[0] <= valid_i;
        end
    end

    // Unroll 16 Concurrent Pipeline Stages
    genvar idx;
    generate
        for (idx = 0; idx < ITERATIONS; idx = idx + 1) begin : CORDIC_STAGE
            always @(posedge clk_i) begin
                if (rst_i) begin
                    x_pipe[idx+1] <= 16'sd0;
                    y_pipe[idx+1] <= 16'sd0;
                    z_pipe[idx+1] <= 16'sd0;
                    v_pipe[idx+1] <= 1'b0;
                end else begin
                    v_pipe[idx+1] <= v_pipe[idx];
                    
                    if (z_pipe[idx] < 0) begin
                        x_pipe[idx+1] <= x_pipe[idx] + (y_pipe[idx] >>> idx);
                        y_pipe[idx+1] <= y_pipe[idx] - (x_pipe[idx] >>> idx);
                        z_pipe[idx+1] <= z_pipe[idx] + atan_rom[idx];
                    end else begin
                        x_pipe[idx+1] <= x_pipe[idx] - (y_pipe[idx] >>> idx);
                        y_pipe[idx+1] <= y_pipe[idx] + (x_pipe[idx] >>> idx);
                        z_pipe[idx+1] <= z_pipe[idx] - atan_rom[idx];
                    end
                end
            end
        end
    endgenerate

    // Final Stage Output
    always @(posedge clk_i) begin
        if (rst_i) begin
            cos_o   <= 16'sd0;
            sin_o   <= 16'sd0;
            valid_o <= 1'b0;
        end else begin
            cos_o   <= x_pipe[ITERATIONS];
            sin_o   <= y_pipe[ITERATIONS];
            valid_o <= v_pipe[ITERATIONS];
        end
    end

endmodule