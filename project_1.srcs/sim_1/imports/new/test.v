`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/05/26 11:09:24
// Design Name: 
// Module Name: test
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

module test;
    
    // input
    reg CLK;
    reg Reset;
    
    // output
    wire [31:0] nowInstruction;
    wire [31:0] nextAddress;
    wire [31:0] aluResult;
    wire [31:0] WriteData;
    wire [31:0] a;
    wire [31:0] b;
    wire [31:0] extendData;
    wire [31:0] dataOut;
    wire [2:0] aluOp;
    wire zero;
    wire [1:0]pcSrc;
    wire [5:0] Instruction;
    
    main main(CLK, Reset, nowInstruction, nextAddress, aluResult, WriteData, a, b, extendData, dataOut, aluOp, zero, pcSrc, Instruction);
    
    initial 
    begin
        // Initialize Inputs
        CLK = 0;
        Reset = 1;
        #50;
            CLK = !CLK;
        #50;
            Reset = 0;
        forever #50 
        begin
            CLK = !CLK;
        end
    end
        
endmodule
