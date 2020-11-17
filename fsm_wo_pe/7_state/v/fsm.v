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
    input wire [2:0] c0, c1, c2, c3, c4, c5, c6, a,
    output wire [2:0] y
);
    wire [2:0] m0, m1, m2, m3, m4, m5, m6;
    wire [2:0] q0, q1, q2, q3, q4, q5, q6;
    wire a0, a1, a2, a3, a4, a5, a6;
    wire e0, e1, e2, e3, e4, e5, e6;
    assign e0 = a == c0; 
    assign e1 = a == c1; 
    assign e2 = a == c2; 
    assign e3 = a == c3; 
    assign e4 = a == c4; 
    assign e5 = a == c5; 
    assign e6 = a == c6; 
    assign a0 = e0 & i0; 
    assign a1 = e1 & i1; 
    assign a2 = e2 & i2; 
    assign a3 = e3 & i3; 
    assign a4 = e4 & i4; 
    assign a5 = e5 & i5; 
    assign a6 = e6 & i6; 
    assign m0 = a0 ? c1 : a;
    assign m1 = a1 ? c2 : m0;
    assign m2 = a2 ? c3 : m1;
    assign m3 = a3 ? c4 : m2;
    assign m4 = a4 ? c5 : m3;
    assign m5 = a5 ? c6 : m4;
    assign m6 = a6 ? c0 : m5;
    reg [2:0] st;
    always @(posedge clock) begin
        if (reset) begin
            st <= c0;
        end else if (en) begin
            st <= m6;
        end
    end
    assign y = st;
endmodule
