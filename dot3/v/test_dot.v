module test_dot(
    input clock,
    input reset,
    output fail,
    output finish);

    reg [31:0] step;
    reg t_fail;
    reg t_finish;

    reg en;
    reg [7:0] m;
    reg [7:0] a0;
    reg [7:0] b0;
    reg [7:0] a1;
    reg [7:0] b1;
    wire [7:0] w;
    wire [7:0] x;
    wire [7:0] y;
    wire [7:0] z;

    always @(posedge clock) begin
        if (reset) begin
            step <= 0;
            en <= 1'b1;
            m <= 8'd0;
            a0 <= -8'd2;
            b0 <= 8'd3;
            a1 <= 8'd0;
            b1 <= 8'd0;
            t_fail <= 1'b0;
            t_finish <= 1'b0;
        end
        else begin
            case (step)
                0: begin
                    step <= 1;
                    en <= 1'b1;
                    m <= 8'd0;
                    a0 <= 8'd1;
                    b0 <= 8'd2;
                    a1 <= 8'd7;
                    b1 <= 8'd2;
                    if (w != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(w));
                        t_fail <= 1'b1;
                    end
                    if (x != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(x));
                        t_fail <= 1'b1;
                    end
                    if (y != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(y));
                        t_fail <= 1'b1;
                    end
                    if (z != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(z));
                        t_fail <= 1'b1;
                    end
                end
                1: begin
                    step <= 2;
                    en <= 1'b1;
                    m <= 8'd3;
                    a0 <= 8'd0;
                    b0 <= 8'd0;
                    a1 <= -8'd3;
                    b1 <= 8'd4;
                    if (w != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(w));
                        t_fail <= 1'b1;
                    end
                    if (x != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(x));
                        t_fail <= 1'b1;
                    end
                    if (y != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(y));
                        t_fail <= 1'b1;
                    end
                    if (z != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(z));
                        t_fail <= 1'b1;
                    end
                end
                2: begin
                    step <= 3;
                    en <= 1'b1;
                    m <= 8'd9;
                    a0 <= 8'd0;
                    b0 <= 8'd0;
                    a1 <= 8'd0;
                    b1 <= 8'd0;
                    if (w != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(w));
                        t_fail <= 1'b1;
                    end
                    if (x != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(x));
                        t_fail <= 1'b1;
                    end
                    if (y != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(y));
                        t_fail <= 1'b1;
                    end
                    if (z != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(z));
                        t_fail <= 1'b1;
                    end
                end
                3: begin
                    step <= 4;
                    en <= 1'b1;
                    m <= 8'd0;
                    a0 <= 8'd0;
                    b0 <= 8'd0;
                    a1 <= 8'd0;
                    b1 <= 8'd0;
                    if (w != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(w));
                        t_fail <= 1'b1;
                    end
                    if (x != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(x));
                        t_fail <= 1'b1;
                    end
                    if (y != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(y));
                        t_fail <= 1'b1;
                    end
                    if (z != 8'd0) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:0", $signed(z));
                        t_fail <= 1'b1;
                    end
                end
                4: begin
                    step <= 5;
                    en <= 1'b0;
                    m <= 8'd0;
                    a0 <= 8'd0;
                    b0 <= 8'd0;
                    a1 <= 8'd0;
                    b1 <= 8'd0;
                    if (w != 8'd11) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:11", $signed(w));
                        t_fail <= 1'b1;
                    end
                    if (x != 8'd11) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:11", $signed(x));
                        t_fail <= 1'b1;
                    end
                    if (y != 8'd11) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:11", $signed(y));
                        t_fail <= 1'b1;
                    end
                    if (z != 8'd11) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:11", $signed(z));
                        t_fail <= 1'b1;
                    end
                end
                5: begin
                    if (w != -8'd1) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:-1", $signed(w));
                        t_fail <= 1'b1;
                    end
                    if (x != -8'd1) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:-1", $signed(x));
                        t_fail <= 1'b1;
                    end
                    if (y != -8'd1) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:-1", $signed(y));
                        t_fail <= 1'b1;
                    end
                    if (z != -8'd1) begin
                        $display("[test_dot] ~~FAIL~~ res:%d exp:-1", $signed(z));
                        t_fail <= 1'b1;
                    end
                    t_finish <= 1'b1;
                end
            endcase
        end
    end

    dot dut(
      .clock(clock),
      .reset(reset),
      .en(en),
      .m(m),
      .n(m),
      .o(m),
      .p(m),
      .a0(a0),
      .b0(b0),
      .a1(a1),
      .b1(b1),
      .c0(a0),
      .d0(b0),
      .c1(a1),
      .d1(b1),
      .e0(a0),
      .f0(b0),
      .e1(a1),
      .f1(b1),
      .g0(a0),
      .h0(b0),
      .g1(a1),
      .h1(b1),
      .w(w),
      .x(x),
      .y(y),
      .z(z));

    assign fail = t_fail;
    assign finish = t_finish;

endmodule

