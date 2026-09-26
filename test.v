`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2026 09:03:54 PM
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
    reg a;
    reg b;
    wire c;

    ANDgate uut (
        .a(a),
        .b(b),
        .c(c)
        );
        
    initial begin
    a = 0;
    b = 0;
    
    #100;
    a = 0;
    b = 1;
    
    #100;
    a = 1;
    b = 0;
    
    #100;
    a = 1;
    b = 1;
    
    #100;
    
    end
    
endmodule
