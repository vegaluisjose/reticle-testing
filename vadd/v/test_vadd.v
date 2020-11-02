module test_vadd(
    input clock,
    input reset,
    output fail,
    output finish);

    reg [31:0] step;
    reg t_fail;
    reg t_finish;

    reg en;
    reg [7:0] a0_0;
    reg [7:0] a0_1;
    reg [7:0] a0_2;
    reg [7:0] a0_3;
    reg [7:0] b0_0;
    reg [7:0] b0_1;
    reg [7:0] b0_2;
    reg [7:0] b0_3;
    wire [7:0] y0_0;
    wire [7:0] y0_1;
    wire [7:0] y0_2;
    wire [7:0] y0_3;

    always @(posedge clock) begin
        if (reset) begin
            step <= 0;
            en <= 1'b1;
            a0_0 <= 8'd2;
            a0_1 <= 8'd2;
            a0_2 <= 8'd8;
            a0_3 <= -8'd10;
            b0_0 <= 8'd0;
            b0_1 <= 8'd4;
            b0_2 <= 8'd8;
            b0_3 <= 8'd1;
            t_fail <= 1'b0;
            t_finish <= 1'b0;
        end
        else begin
            case (step)
                0: begin
                    step <= 1;
                    $display("-------------------------------");
                    $display("[step-0] a[0]:%d b[0]:%d y[0]:%d", $signed(a0_0), $signed(b0_0), $signed(y0_0));
                    $display("[step-0] a[1]:%d b[1]:%d y[1]:%d", $signed(a0_1), $signed(b0_1), $signed(y0_1));
                    $display("[step-0] a[2]:%d b[2]:%d y[2]:%d", $signed(a0_2), $signed(b0_2), $signed(y0_2));
                    $display("[step-0] a[3]:%d b[3]:%d y[3]:%d", $signed(a0_3), $signed(b0_3), $signed(y0_3));
                end
                1: begin
                    step <= 2;
                    $display("-------------------------------");
                    $display("[step-0] a[0]:%d b[0]:%d y[0]:%d", $signed(a0_0), $signed(b0_0), $signed(y0_0));
                    $display("[step-0] a[1]:%d b[1]:%d y[1]:%d", $signed(a0_1), $signed(b0_1), $signed(y0_1));
                    $display("[step-0] a[2]:%d b[2]:%d y[2]:%d", $signed(a0_2), $signed(b0_2), $signed(y0_2));
                    $display("[step-0] a[3]:%d b[3]:%d y[3]:%d", $signed(a0_3), $signed(b0_3), $signed(y0_3));
                end
                2: begin
                    step <= 3;
                    $display("-------------------------------");
                    $display("[step-0] a[0]:%d b[0]:%d y[0]:%d", $signed(a0_0), $signed(b0_0), $signed(y0_0));
                    $display("[step-0] a[1]:%d b[1]:%d y[1]:%d", $signed(a0_1), $signed(b0_1), $signed(y0_1));
                    $display("[step-0] a[2]:%d b[2]:%d y[2]:%d", $signed(a0_2), $signed(b0_2), $signed(y0_2));
                    $display("[step-0] a[3]:%d b[3]:%d y[3]:%d", $signed(a0_3), $signed(b0_3), $signed(y0_3));
                end
                3: begin
                    $display("-------------------------------");
                    $display("[step-0] a[0]:%d b[0]:%d y[0]:%d", $signed(a0_0), $signed(b0_0), $signed(y0_0));
                    $display("[step-0] a[1]:%d b[1]:%d y[1]:%d", $signed(a0_1), $signed(b0_1), $signed(y0_1));
                    $display("[step-0] a[2]:%d b[2]:%d y[2]:%d", $signed(a0_2), $signed(b0_2), $signed(y0_2));
                    $display("[step-0] a[3]:%d b[3]:%d y[3]:%d", $signed(a0_3), $signed(b0_3), $signed(y0_3));
                    t_finish <= 1'b1;
                end
            endcase
        end
    end

    vadd dut(
        .clock(clock),
        .reset(reset),
        .en(en),
        .a0_0(a0_0),
        .a0_1(a0_1), 
        .a0_2(a0_2), 
        .a0_3(a0_3), 
        .b0_0(b0_0),
        .b0_1(b0_1), 
        .b0_2(b0_2), 
        .b0_3(b0_3), 
        .y0_0(y0_0),
        .y0_1(y0_1), 
        .y0_2(y0_2), 
        .y0_3(y0_3)
    );

    assign fail = t_fail;
    assign finish = t_finish;

endmodule

