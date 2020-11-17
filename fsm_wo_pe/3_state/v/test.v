module test();

    reg clock = 1'b0;
    reg start = 1'b0;

    always #500 clock = ~clock;

    initial begin
        start = 1'b0;
        repeat(16)@(negedge clock);
        start = 1'b1;
    end

    wire reset;

    assign reset = ~start | glbl.GSR;

    reg [7:0] cycles;

    always @(posedge clock) begin
        if (reset)
            cycles <= 0;
        else
            cycles <= cycles + 1'b1;
    end

    wire [1:0] y;
    
    fsm dut (
        .clock(clock),
        .reset(reset),
        .i0(1'b1),
        .i1(1'b1),
        .i2(1'b1),
        .c0(0),
        .c1(1),
        .c2(2),
        .en(1),
        .a(y),
        .y(y));

    always @(posedge clock) begin
        if (~reset) begin
            $display("cycles:%d y:%d", cycles, y);
        end
        if (cycles == 10) begin
            $finish;
        end
    end

endmodule
