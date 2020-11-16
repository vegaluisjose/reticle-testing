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

    wire [3:0] y;
    reg [3:0] a;

    always @(posedge clock) begin
        if (reset) begin
            a <= 0;
        end else begin
            a <= y;
        end
    end
    
    fsm dut (
      .clock(clock),
      .reset(reset),
      .i0(1'b1),
      .i1(1'b1),
      .i2(1'b1),
      .i3(1'b1),
      .i4(1'b1),
      .i5(1'b1),
      .i6(1'b1),
      .i7(1'b1),
      .i8(1'b1),
      .a(a),
      .y(y));

    always @(posedge clock) begin
        if (~reset) begin
            $display("cycles:%d y:%d", cycles, y);
        end
        if (cycles == 20) begin
            $finish;
        end
    end

endmodule
