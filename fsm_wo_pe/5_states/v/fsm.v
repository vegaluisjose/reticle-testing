module fsm (
    input wire clock,
    input wire reset,
    input wire i0,
    input wire i1,
    input wire i2,
    input wire i3,
    input wire i4,
    input wire en,
    input wire [2:0] c0, c1, c2, c3, c4, a,
    output wire [2:0] y
);
    wire [2:0] m0, m1, m2, m3, m4;
    wire [2:0] q0, q1, q2, q3, q4;
    wire a0, a1, a2, a3, a4;
    wire e0, e1, e2, e3, e4;
    assign e0 = a == c0; 
    assign e1 = a == c1; 
    assign e2 = a == c2; 
    assign e3 = a == c3; 
    assign e4 = a == c4; 
    assign a0 = e0 & i0; 
    assign a1 = e1 & i1; 
    assign a2 = e2 & i2; 
    assign a3 = e3 & i3; 
    assign a4 = e4 & i4; 
    assign m0 = a0 ? c1 : a;
    assign m1 = a1 ? c2 : m0;
    assign m2 = a2 ? c3 : m1;
    assign m3 = a3 ? c4 : m2;
    assign m4 = a4 ? c0 : m3;
    reg [2:0] st;
    always @(posedge clock) begin
        if (reset) begin
            st <= c0;
        end else if (en) begin
            st <= m4;
        end
    end
    assign y = st;
endmodule
