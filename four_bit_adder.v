`timescale 1ns / 1ps
// Module Name: four_bit_adder

module full_adder(input a, input b, input ci, output s, output co);
    assign s = a ^ b ^ ci;
    assign co = (a & b) | (b & ci) | (a & ci);
endmodule

module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
    );
    wire w1, w2, w3;
    
    full_adder FA1(.a(A[0]), .b(B[0]), .ci(Cin), .s(S[0]), .co(w1));
    full_adder FA2(.a(A[1]), .b(B[1]), .ci(w1), .s(S[1]), .co(w2));
    full_adder FA3(.a(A[2]), .b(B[2]), .ci(w2), .s(S[2]), .co(w3));
    full_adder FA4(.a(A[3]), .b(B[3]), .ci(w3), .s(S[3]), .co(Cout));
    
endmodule
