`timescale 1ns / 1ps
// Module Name: test

module test;
    reg En; reg i1; reg i0;
    wire o3; wire o2; wire o1; wire o0;
    
    twobyfour uut (
        .En(En), .i1(i1), .i0(i0), .o3(o3), .o2(o2), .o1(o1), .o0(o0)
        );
        
    initial begin
        En = 0; i1 = 0; i0 = 0; #100;
        En = 0; i1 = 0; i0 = 1; #100;
        En = 0; i1 = 1; i0 = 0; #100;
        En = 0; i1 = 1; i0 = 1; #100;
        En = 1; i1 = 0; i0 = 0; #100;
        En = 1; i1 = 0; i0 = 1; #100;
        En = 1; i1 = 1; i0 = 0; #100;
        En = 1; i1 = 1; i0 = 1; #100;

    end
endmodule
