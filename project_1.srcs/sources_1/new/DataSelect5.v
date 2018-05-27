`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/25 17:06:51
// Design Name: 
// Module Name: DataSelect5
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


module DataSelect5(
    input [4:0] A,
    input [4:0] B,
    input Control,
    output [4:0] S
    );
    assign S = (Control == 1'b0 ? A : B);
endmodule
