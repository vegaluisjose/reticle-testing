module tdot (
    input wire clock,
    input wire reset,
    input wire [7:0] a0,
    input wire [7:0] c0,
    input wire [7:0] e0,
    input wire [7:0] g0,
    input wire [7:0] i0,
    input wire [7:0] a1,
    input wire [7:0] c1,
    input wire [7:0] e1,
    input wire [7:0] g1,
    input wire [7:0] i1,
    input wire [7:0] a2,
    input wire [7:0] c2,
    input wire [7:0] e2,
    input wire [7:0] g2,
    input wire [7:0] i2,
    input wire [7:0] b0,
    input wire [7:0] d0,
    input wire [7:0] f0,
    input wire [7:0] h0,
    input wire [7:0] j0,
    input wire [7:0] b1,
    input wire [7:0] d1,
    input wire [7:0] f1,
    input wire [7:0] h1,
    input wire [7:0] j1,
    input wire [7:0] b2,
    input wire [7:0] d2,
    input wire [7:0] f2,
    input wire [7:0] h2,
    input wire [7:0] j2,
    input wire [7:0] m,
    input wire [7:0] n,
    input wire [7:0] o,
    input wire [7:0] p,
    input wire [7:0] q,
    input wire en,
    output reg [7:0] v,
    output reg [7:0] w,
    output reg [7:0] x,
    output reg [7:0] y,
    output reg [7:0] z
);
    reg [7:0] t0;
    reg [7:0] t1;
    wire [7:0] t2;
    reg [7:0] t3;
    wire [7:0] t4;
    reg [7:0] t5;
    reg [7:0] t6;
    reg [7:0] t7;
    wire [7:0] t8;
    reg [7:0] t9;
    wire [7:0] t10;
    reg [7:0] t11;
    reg [7:0] t12;
    reg [7:0] t13;
    wire [7:0] t14;
    reg [7:0] t15;
    wire [7:0] t16;
    reg [7:0] t18;
    reg [7:0] t19;
    wire [7:0] t20;
    reg [7:0] t21;
    wire [7:0] t22;
    reg [7:0] t23;
    reg [7:0] t24;
    reg [7:0] t25;
    wire [7:0] t26;
    reg [7:0] t27;
    wire [7:0] t28;
    reg [7:0] t29;
    reg [7:0] t30;
    reg [7:0] t31;
    wire [7:0] t32;
    reg [7:0] t33;
    wire [7:0] t34;
    reg [7:0] t36;
    reg [7:0] t37;
    wire [7:0] t38;
    reg [7:0] t39;
    wire [7:0] t40;
    reg [7:0] t41;
    reg [7:0] t42;
    reg [7:0] t43;
    wire [7:0] t44;
    reg [7:0] t45;
    wire [7:0] t46;
    reg [7:0] t47;
    reg [7:0] t48;
    reg [7:0] t49;
    wire [7:0] t50;
    reg [7:0] t51;
    wire [7:0] t52;
    reg [7:0] t54;
    reg [7:0] t55;
    wire [7:0] t56;
    reg [7:0] t57;
    wire [7:0] t58;
    reg [7:0] t59;
    reg [7:0] t60;
    reg [7:0] t61;
    wire [7:0] t62;
    reg [7:0] t63;
    wire [7:0] t64;
    reg [7:0] t65;
    reg [7:0] t66;
    reg [7:0] t67;
    wire [7:0] t68;
    reg [7:0] t69;
    wire [7:0] t70;
    reg [7:0] t72;
    reg [7:0] t73;
    wire [7:0] t74;
    reg [7:0] t75;
    wire [7:0] t76;
    reg [7:0] t77;
    reg [7:0] t78;
    reg [7:0] t79;
    wire [7:0] t80;
    reg [7:0] t81;
    wire [7:0] t82;
    reg [7:0] t83;
    reg [7:0] t84;
    reg [7:0] t85;
    wire [7:0] t86;
    reg [7:0] t87;
    wire [7:0] t88;
    always @(posedge clock) begin
        if(reset) begin
            t0 <= 0;
        end else if(en) begin
            t0 <= a0;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t1 <= 0;
        end else if(en) begin
            t1 <= b0;
        end
    end
    assign t2 = ($signed(t0) * $signed(t1));
    always @(posedge clock) begin
        if(reset) begin
            t3 <= 0;
        end else if(en) begin
            t3 <= t2;
        end
    end
    assign t4 = ($signed(t3) + $signed(m));
    always @(posedge clock) begin
        if(reset) begin
            t5 <= 0;
        end else if(en) begin
            t5 <= t4;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t6 <= 0;
        end else if(en) begin
            t6 <= a1;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t7 <= 0;
        end else if(en) begin
            t7 <= b1;
        end
    end
    assign t8 = ($signed(t6) * $signed(t7));
    always @(posedge clock) begin
        if(reset) begin
            t9 <= 0;
        end else if(en) begin
            t9 <= t8;
        end
    end
    assign t10 = ($signed(t9) + $signed(t5));
    always @(posedge clock) begin
        if(reset) begin
            t11 <= 0;
        end else if(en) begin
            t11 <= t10;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t12 <= 0;
        end else if(en) begin
            t12 <= a2;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t13 <= 0;
        end else if(en) begin
            t13 <= b2;
        end
    end
    assign t14 = ($signed(t12) * $signed(t13));
    always @(posedge clock) begin
        if(reset) begin
            t15 <= 0;
        end else if(en) begin
            t15 <= t14;
        end
    end
    assign t16 = ($signed(t15) + $signed(t11));
    always @(posedge clock) begin
        if(reset) begin
            v <= 0;
        end else if(en) begin
            v <= t16;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t18 <= 0;
        end else if(en) begin
            t18 <= c0;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t19 <= 0;
        end else if(en) begin
            t19 <= d0;
        end
    end
    assign t20 = ($signed(t18) * $signed(t19));
    always @(posedge clock) begin
        if(reset) begin
            t21 <= 0;
        end else if(en) begin
            t21 <= t20;
        end
    end
    assign t22 = ($signed(t21) + $signed(n));
    always @(posedge clock) begin
        if(reset) begin
            t23 <= 0;
        end else if(en) begin
            t23 <= t22;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t24 <= 0;
        end else if(en) begin
            t24 <= c1;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t25 <= 0;
        end else if(en) begin
            t25 <= d1;
        end
    end
    assign t26 = ($signed(t24) * $signed(t25));
    always @(posedge clock) begin
        if(reset) begin
            t27 <= 0;
        end else if(en) begin
            t27 <= t26;
        end
    end
    assign t28 = ($signed(t27) + $signed(t23));
    always @(posedge clock) begin
        if(reset) begin
            t29 <= 0;
        end else if(en) begin
            t29 <= t28;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t30 <= 0;
        end else if(en) begin
            t30 <= c2;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t31 <= 0;
        end else if(en) begin
            t31 <= d2;
        end
    end
    assign t32 = ($signed(t30) * $signed(t31));
    always @(posedge clock) begin
        if(reset) begin
            t33 <= 0;
        end else if(en) begin
            t33 <= t32;
        end
    end
    assign t34 = ($signed(t33) + $signed(t29));
    always @(posedge clock) begin
        if(reset) begin
            w <= 0;
        end else if(en) begin
            w <= t34;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t36 <= 0;
        end else if(en) begin
            t36 <= e0;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t37 <= 0;
        end else if(en) begin
            t37 <= f0;
        end
    end
    assign t38 = ($signed(t36) * $signed(t37));
    always @(posedge clock) begin
        if(reset) begin
            t39 <= 0;
        end else if(en) begin
            t39 <= t38;
        end
    end
    assign t40 = ($signed(t39) + $signed(o));
    always @(posedge clock) begin
        if(reset) begin
            t41 <= 0;
        end else if(en) begin
            t41 <= t40;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t42 <= 0;
        end else if(en) begin
            t42 <= e1;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t43 <= 0;
        end else if(en) begin
            t43 <= f1;
        end
    end
    assign t44 = ($signed(t42) * $signed(t43));
    always @(posedge clock) begin
        if(reset) begin
            t45 <= 0;
        end else if(en) begin
            t45 <= t44;
        end
    end
    assign t46 = ($signed(t45) + $signed(t41));
    always @(posedge clock) begin
        if(reset) begin
            t47 <= 0;
        end else if(en) begin
            t47 <= t46;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t48 <= 0;
        end else if(en) begin
            t48 <= e2;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t49 <= 0;
        end else if(en) begin
            t49 <= f2;
        end
    end
    assign t50 = ($signed(t48) * $signed(t49));
    always @(posedge clock) begin
        if(reset) begin
            t51 <= 0;
        end else if(en) begin
            t51 <= t50;
        end
    end
    assign t52 = ($signed(t51) + $signed(t47));
    always @(posedge clock) begin
        if(reset) begin
            x <= 0;
        end else if(en) begin
            x <= t52;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t54 <= 0;
        end else if(en) begin
            t54 <= g0;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t55 <= 0;
        end else if(en) begin
            t55 <= h0;
        end
    end
    assign t56 = ($signed(t54) * $signed(t55));
    always @(posedge clock) begin
        if(reset) begin
            t57 <= 0;
        end else if(en) begin
            t57 <= t56;
        end
    end
    assign t58 = ($signed(t57) + $signed(p));
    always @(posedge clock) begin
        if(reset) begin
            t59 <= 0;
        end else if(en) begin
            t59 <= t58;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t60 <= 0;
        end else if(en) begin
            t60 <= g1;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t61 <= 0;
        end else if(en) begin
            t61 <= h1;
        end
    end
    assign t62 = ($signed(t60) * $signed(t61));
    always @(posedge clock) begin
        if(reset) begin
            t63 <= 0;
        end else if(en) begin
            t63 <= t62;
        end
    end
    assign t64 = ($signed(t63) + $signed(t59));
    always @(posedge clock) begin
        if(reset) begin
            t65 <= 0;
        end else if(en) begin
            t65 <= t64;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t66 <= 0;
        end else if(en) begin
            t66 <= g2;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t67 <= 0;
        end else if(en) begin
            t67 <= h2;
        end
    end
    assign t68 = ($signed(t66) * $signed(t67));
    always @(posedge clock) begin
        if(reset) begin
            t69 <= 0;
        end else if(en) begin
            t69 <= t68;
        end
    end
    assign t70 = ($signed(t69) + $signed(t65));
    always @(posedge clock) begin
        if(reset) begin
            y <= 0;
        end else if(en) begin
            y <= t70;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t72 <= 0;
        end else if(en) begin
            t72 <= i0;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t73 <= 0;
        end else if(en) begin
            t73 <= j0;
        end
    end
    assign t74 = ($signed(t72) * $signed(t73));
    always @(posedge clock) begin
        if(reset) begin
            t75 <= 0;
        end else if(en) begin
            t75 <= t74;
        end
    end
    assign t76 = ($signed(t75) + $signed(q));
    always @(posedge clock) begin
        if(reset) begin
            t77 <= 0;
        end else if(en) begin
            t77 <= t76;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t78 <= 0;
        end else if(en) begin
            t78 <= i1;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t79 <= 0;
        end else if(en) begin
            t79 <= j1;
        end
    end
    assign t80 = ($signed(t78) * $signed(t79));
    always @(posedge clock) begin
        if(reset) begin
            t81 <= 0;
        end else if(en) begin
            t81 <= t80;
        end
    end
    assign t82 = ($signed(t81) + $signed(t77));
    always @(posedge clock) begin
        if(reset) begin
            t83 <= 0;
        end else if(en) begin
            t83 <= t82;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t84 <= 0;
        end else if(en) begin
            t84 <= i2;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            t85 <= 0;
        end else if(en) begin
            t85 <= j2;
        end
    end
    assign t86 = ($signed(t84) * $signed(t85));
    always @(posedge clock) begin
        if(reset) begin
            t87 <= 0;
        end else if(en) begin
            t87 <= t86;
        end
    end
    assign t88 = ($signed(t87) + $signed(t83));
    always @(posedge clock) begin
        if(reset) begin
            z <= 0;
        end else if(en) begin
            z <= t88;
        end
    end
endmodule
