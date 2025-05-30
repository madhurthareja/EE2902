`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2025 03:34:08 PM
// Design Name: 
// Module Name: mult
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


module mult(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
    );
    wire [63:0] a2 = a * a;
    wire [63:0] b2 = b * b;
    assign c = (a2 + b2)[31:0];
endmodule
