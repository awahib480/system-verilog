`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2026 10:04:46 PM
// Design Name: 
// Module Name: fullsubtractor
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


module fullsubtractor(
    input A,
    input B,
    input Bi,
    output D,
    output Bo
    );
    
    wire x1_out, x2_out;
        wire a1_out, a2_out, a3_out;
        wire o1_out;
        
        xor x1(x1_out, A, B);
        xor x2(x2_out, x1_out, Bi);
        
        and a1(a1_out, ~A, Bi);
        and a2(a2_out, ~B, Bi);
        and a3(a3_out, ~A, B);
       
        or o1(o1_out, a1_out, a2_out, a3_out);
        
        assign D = x2_out;
        assign Bo = o1_out;
endmodule
