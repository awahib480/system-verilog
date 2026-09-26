`timescale 1ns / 1ps
// Module Name: sixteen_by_one_mux

module two_by_oneMUX(
input a,
input b,
input s,
output y
);
assign y = (~s & a) | (s & b);
endmodule

module four_by_oneMUX(
input a,
input b,
input c,
input d,
input [1:0] s,
output y
);
wire w0,w1;
two_by_oneMUX M0(a,b,s[0],w0);
two_by_oneMUX M1(c,d,s[0],w1);
two_by_oneMUX M3(w0,w1,s[1],y);
endmodule

module eight_by_oneMUX(
input a,
input b,
input c,
input d,
input e,
input f,
input g,
input h,
input [2:0]s,
output y
);
wire w0,w1;
four_by_oneMUX M0(a,b,c,d,s[1:0],w0);
four_by_oneMUX M1(e,f,g,h,s[1:0],w1);
two_by_oneMUX M3(w0,w1,s[2],y);
endmodule

module sixteen_by_oneMUX(
input a,
input b,
input c,
input d,
input e,
input f,
input g,
input h,

input i,
input j,
input k,
input l,
input m,
input n,
input o,
input p,
input [3:0]s,
output y
);

wire w0,w1;
eight_by_oneMUX M0(a,b,c,d,e,f,g,h,s[2:0],w0);
eight_by_oneMUX M1(i,j,k,l,m,n,o,p,s[2:0],w1);
two_by_oneMUX M3(w0,w1,s[3],y);
endmodule
