`timescale 1ns / 1ps
// Module Name: twobyfour

module twobyfour(
    input En,
    input i1,
    input i0,
    output o3,
    output o2,
    output o1,
    output o0
    );
    
    assign o3 = ~(En & (i1 & i0));
    assign o2 = ~(En & (i1 & ~i0));
    assign o1 = ~(En & (~i1 & i0));
    assign o0 = ~(En & (~i1 & ~i0));
    
endmodule
