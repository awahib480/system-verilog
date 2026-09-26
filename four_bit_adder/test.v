`timescale 1ns / 1ps
// Module Name: test

module test;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] S;
    wire Cout;
    
    four_bit_adder uut(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
    
    initial begin
        A = 4'b0000; B = 4'b0001; Cin = 0; #100;
        A = 4'b0010; B = 4'b0010; Cin = 0; #100;
        A = 4'b0010; B = 4'b0010; Cin = 1; #100;
        A = 4'b1111; B = 4'b0110; Cin = 0; #100;
    end
endmodule
