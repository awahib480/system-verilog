`timescale 1ns / 1ps
// Module Name: fulladder

module fulladder(
    input X,
    input Y,
    input Ci,
    output S,
    output Co
    );
    
    wire x1_out, x2_out;
    wire a1_out, a2_out, a3_out;
    wire o1_out;
    
    xor x1(x1_out, X, Y);
    xor x2(x2_out, x1_out, Ci);
    
    and a1(a1_out, X, Ci);
    and a2(a2_out, Y, Ci);
    and a3(a3_out, X, Y);
    
    or o1(o1_out, a1_out, a2_out, a3_out);
    
    assign S = x2_out;
    assign Co = o1_out;
    
endmodule
