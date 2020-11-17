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
    input wire en,
    output wire [2:0] y
);
    reg [2:0] st;
    wire [2:0] c0, c1, c2, c3, c4, c5, c6;
    wire [2:0] m0, m1, m2, m3, m4, m5, m6;
    wire [2:0] q0, q1, q2, q3, q4, q5, q6;
    wire a0, a1, a2, a3, a4, a5, a6;
    wire e0, e1, e2, e3, e4, e5, e6;
    assign c0 = 0;
    assign c1 = 1;
    assign c2 = 2;
    assign c3 = 3;
    assign c4 = 4;
    assign c5 = 5;
    assign c6 = 6;
    assign e0 = st == c0; 
    assign e1 = st == c1; 
    assign e2 = st == c2; 
    assign e3 = st == c3; 
    assign e4 = st == c4; 
    assign e5 = st == c5; 
    assign e6 = st == c6; 
    assign a0 = e0 & i0; 
    assign a1 = e1 & i1; 
    assign a2 = e2 & i2; 
    assign a3 = e3 & i3; 
    assign a4 = e4 & i4; 
    assign a5 = e5 & i5; 
    assign a6 = e6 & i6; 
    assign m0 = a0 ? c1 : st;
    assign m1 = a1 ? c2 : m0;
    assign m2 = a2 ? c3 : m1;
    assign m3 = a3 ? c4 : m2;
    assign m4 = a4 ? c5 : m3;
    assign m5 = a5 ? c6 : m4;
    assign m6 = a6 ? c0 : m5;
    always @(posedge clock) begin
        if (reset) begin
            st <= c0;
        end else if (en) begin
            st <= m6;
        end
    end
    assign y = st;
endmodule
