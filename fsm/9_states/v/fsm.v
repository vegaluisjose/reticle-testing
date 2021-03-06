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
    input wire en,
    output wire [3:0] y
);
    reg [3:0] st;
    wire [3:0] c0, c1, c2, c3, c4, c5, c6, c7, c8;
    wire [3:0] m0, m1, m2, m3, m4, m5, m6, m7, m8;
    wire [3:0] q0, q1, q2, q3, q4, q5, q6, q7, q8;
    wire a0, a1, a2, a3, a4, a5, a6, a7, a8;
    wire e0, e1, e2, e3, e4, e5, e6, e7, e8;
    assign c0 = 0;
    assign c1 = 1;
    assign c2 = 2;
    assign c3 = 3;
    assign c4 = 4;
    assign c5 = 5;
    assign c6 = 6;
    assign c7 = 7;
    assign c8 = 8;
    assign e0 = st == c0; 
    assign e1 = st == c1; 
    assign e2 = st == c2; 
    assign e3 = st == c3; 
    assign e4 = st == c4; 
    assign e5 = st == c5; 
    assign e6 = st == c6; 
    assign e7 = st == c7; 
    assign e8 = st == c8; 
    assign a0 = e0 & i0; 
    assign a1 = e1 & i1; 
    assign a2 = e2 & i2; 
    assign a3 = e3 & i3; 
    assign a4 = e4 & i4; 
    assign a5 = e5 & i5; 
    assign a6 = e6 & i6; 
    assign a7 = e7 & i7; 
    assign a8 = e8 & i8; 
    assign m0 = a0 ? c1 : st;
    assign m1 = a1 ? c2 : m0;
    assign m2 = a2 ? c3 : m1;
    assign m3 = a3 ? c4 : m2;
    assign m4 = a4 ? c5 : m3;
    assign m5 = a5 ? c6 : m4;
    assign m6 = a6 ? c7 : m5;
    assign m7 = a7 ? c8 : m6;
    assign m8 = a8 ? c0 : m7;
    always @(posedge clock) begin
        if (reset) begin
            st <= c0;
        end else if (en) begin
            st <= m8;
        end
    end
    assign y = st;
endmodule
