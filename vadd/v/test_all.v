module test_all();

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

    wire fail;
    wire finish;

    test_vadd t0(.clock(clock), .reset(reset), .fail(fail), .finish(finish));

    always @(posedge clock) begin
        if (fail) begin
            $finish;
        end
        if (finish) begin
            $finish;
        end
    end

endmodule

