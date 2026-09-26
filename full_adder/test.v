`timescale 1ns / 1ps
// Module Name: test

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
