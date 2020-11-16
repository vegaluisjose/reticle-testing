module fsm (
    input wire clock,
    input wire reset,
    input wire i0,
    input wire i1,
    input wire i2,
    input wire i3,
    input wire i4,
    input wire i5,
    input wire i6,
    input wire i7,
    input wire i8,
    input wire i9,
    input wire i10,
    input wire i11,
    input wire i12,
    input wire i13,
    input wire i14,
    input wire [3:0] a,
    output wire [3:0] y
);
    wire [3:0] c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14;
    wire [3:0] m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14;
    wire [3:0] q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14;
    wire a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14;
    wire e0, e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14;
    assign c0 = 0;
    assign c1 = 1;
    assign c2 = 2;
    assign c3 = 3;
    assign c4 = 4;
    assign c5 = 5;
    assign c6 = 6;
    assign c7 = 7;
    assign c8 = 8;
    assign c9 = 9;
    assign c10 = 10;
    assign c11 = 11;
    assign c12 = 12;
    assign c13 = 13;
    assign c14 = 14;
    assign e0 = a == c0; 
    assign e1 = a == c1; 
    assign e2 = a == c2; 
    assign e3 = a == c3; 
    assign e4 = a == c4; 
    assign e5 = a == c5; 
    assign e6 = a == c6; 
    assign e7 = a == c7; 
    assign e8 = a == c8; 
    assign e9 = a == c9; 
    assign e10 = a == c10; 
    assign e11 = a == c11; 
    assign e12 = a == c12; 
    assign e13 = a == c13; 
    assign e14 = a == c14; 
    assign a0 = e0 & i0; 
    assign a1 = e1 & i1; 
    assign a2 = e2 & i2; 
    assign a3 = e3 & i3; 
    assign a4 = e4 & i4; 
    assign a5 = e5 & i5; 
    assign a6 = e6 & i6; 
    assign a7 = e7 & i7; 
    assign a8 = e8 & i8; 
    assign a9 = e9 & i9; 
    assign a10 = e10 & i10; 
    assign a11 = e11 & i11; 
    assign a12 = e12 & i12; 
    assign a13 = e13 & i13; 
    assign a14 = e14 & i14; 
    assign m0 = a0 ? c1 : a;
    assign m1 = a1 ? c2 : m0;
    assign m2 = a2 ? c3 : m1;
    assign m3 = a3 ? c4 : m2;
    assign m4 = a4 ? c5 : m3;
    assign m5 = a5 ? c6 : m4;
    assign m6 = a6 ? c7 : m5;
    assign m7 = a7 ? c8 : m6;
    assign m8 = a8 ? c9 : m7;
    assign m9 = a9 ? c10 : m8;
    assign m10 = a10 ? c11 : m9;
    assign m11 = a11 ? c12 : m10;
    assign m12 = a12 ? c13 : m11;
    assign m13 = a13 ? c14 : m12;
    assign m14 = a14 ? c0 : m13;
    assign y = m14;
endmodule
