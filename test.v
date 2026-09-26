`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2026 09:39:22 PM
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
    reg X; reg Y; reg Ci;
    wire S; wire Co;
    
    fullsubtractor uut(
        .A(X), .B(Y), .Bi(Ci), .D(S), .Bo(Co)
        );
        
    initial begin
        X = 0; Y = 0; Ci = 0;
        #100;
        X = 0; Y = 0; Ci = 1;
        #100;
        X = 0; Y = 1; Ci = 0;
        #100;
        X = 0; Y = 1; Ci = 1;
        #100;
        X = 1; Y = 0; Ci = 0;
        #100;
        X = 1; Y = 0; Ci = 1;
        #100;
        X = 1; Y = 1; Ci = 0;
        #100;
        X = 1; Y = 1; Ci = 1;
        #100;
    end
endmodule
