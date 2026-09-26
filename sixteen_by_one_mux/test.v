`timescale 1ns / 1ps
// Module Name: test

module tb_sixteen_by_oneMUX;
    reg a, b, c, d, e, f, g, h;
    reg i, j, k, l, m, n, o, p;
    reg [3:0] s;
    wire y;

    sixteen_by_oneMUX uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .h(h),
        .i(i),
        .j(j),
        .k(k),
        .l(l),
        .m(m),
        .n(n),
        .o(o),
        .p(p),
        .s(s),
        .y(y)
    );

    initial begin
        a = 0;
        b = 1;
        c = 0;
        d = 1;
        e = 0;
        f = 1;
        g = 0;
        h = 1;
        i = 0;
        j = 1;
        k = 0;
        l = 1;
        m = 0;
        n = 1;
        o = 0;
        p = 1;

        // Test all 16 select combinations
        s = 4'b0000; #10;
        s = 4'b0001; #10;
        s = 4'b0010; #10;
        s = 4'b0011; #10;
        s = 4'b0100; #10;
        s = 4'b0101; #10;
        s = 4'b0110; #10;
        s = 4'b0111; #10;
        s = 4'b1000; #10;
        s = 4'b1001; #10;
        s = 4'b1010; #10;
        s = 4'b1011; #10;
        s = 4'b1100; #10;
        s = 4'b1101; #10;
        s = 4'b1110; #10;
        s = 4'b1111; #10;

    end
endmodule
