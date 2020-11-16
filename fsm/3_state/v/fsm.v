module fsm (
    input wire clock,
    input wire reset,
    input wire i0,
    input wire i1,
    input wire i2,
    input wire [1:0] a,
    output wire [1:0] y
);
    wire [1:0] c0, c1, c2;
    wire [1:0] m0, m1, m2;
    wire [1:0] q0, q1, q2;
    wire a0, a1, a2;
    wire e0, e1, e2;
    assign c0 = 0;
    assign c1 = 1;
    assign c2 = 2;
    assign e0 = a == c0; 
    assign e1 = a == c1; 
    assign e2 = a == c2; 
    assign a0 = e0 & i0; 
    assign a1 = e1 & i1; 
    assign a2 = e2 & i2; 
    assign m0 = a0 ? c1 : a;
    assign m1 = a1 ? c2 : m0;
    assign m2 = a2 ? c0 : m1;
    assign y = m2;
endmodule
