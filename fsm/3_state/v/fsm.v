module fsm (
    input wire clock,
    input wire reset,
    input wire i0,
    input wire i1,
    input wire i2,
    input wire en,
    output wire [1:0] y
);
    reg [1:0] st;
    wire [1:0] c0, c1, c2;
    wire [1:0] m0, m1, m2;
    wire [1:0] q0, q1, q2;
    wire a0, a1, a2;
    wire e0, e1, e2;
    assign c0 = 0;
    assign c1 = 1;
    assign c2 = 2;
    assign e0 = st == c0; 
    assign e1 = st == c1; 
    assign e2 = st == c2; 
    assign a0 = e0 & i0; 
    assign a1 = e1 & i1; 
    assign a2 = e2 & i2; 
    assign m0 = a0 ? c1 : st;
    assign m1 = a1 ? c2 : m0;
    assign m2 = a2 ? c0 : m1;
    always @(posedge clock) begin
        if (reset) begin
            st <= c0;
        end else if (en) begin
            st <= m2;
        end
    end
    assign y = st;
endmodule
