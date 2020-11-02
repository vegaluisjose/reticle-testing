module vadd (
    input wire clock,
    input wire reset,
    input wire en,
    input wire [7:0] a0_0,
    input wire [7:0] a0_1,
    input wire [7:0] a0_2,
    input wire [7:0] a0_3,
    input wire [7:0] b0_0,
    input wire [7:0] b0_1,
    input wire [7:0] b0_2,
    input wire [7:0] b0_3,
    output wire [7:0] y0_0,
    output wire [7:0] y0_1,
    output wire [7:0] y0_2,
    output wire [7:0] y0_3
);
    wire vcc;
    wire gnd;
    wire [47:0] t0;
    wire [47:0] t1;
    wire [47:0] t2;
    VCC VCC (
        .P(vcc)
    );
    GND GND (
        .G(gnd)
    );
    (*LOC = "DSP48E2_X0Y0"*)
    DSP48E2 # (
        .ACASCREG(2),
        .ADREG(0),
        .ALUMODEREG(0),
        .AMULTSEL("A"),
        .AREG(2),
        .AUTORESET_PATDET("NO_RESET"),
        .AUTORESET_PRIORITY("RESET"),
        .A_INPUT("DIRECT"),
        .BCASCREG(2),
        .BMULTSEL("B"),
        .BREG(2),
        .B_INPUT("DIRECT"),
        .CARRYINREG(0),
        .CARRYINSELREG(0),
        .CREG(1),
        .DREG(0),
        .INMODEREG(0),
        .IS_ALUMODE_INVERTED(4'b0000),
        .IS_CARRYIN_INVERTED(1'b0),
        .IS_CLK_INVERTED(1'b0),
        .IS_INMODE_INVERTED(5'b00000),
        .IS_OPMODE_INVERTED(9'b000000000),
        .IS_RSTALLCARRYIN_INVERTED(1'b0),
        .IS_RSTALUMODE_INVERTED(1'b0),
        .IS_RSTA_INVERTED(1'b0),
        .IS_RSTB_INVERTED(1'b0),
        .IS_RSTCTRL_INVERTED(1'b0),
        .IS_RSTC_INVERTED(1'b0),
        .IS_RSTD_INVERTED(1'b0),
        .IS_RSTINMODE_INVERTED(1'b0),
        .IS_RSTM_INVERTED(1'b0),
        .IS_RSTP_INVERTED(1'b0),
        .MASK(48'h3fffffffffff),
        .MREG(0),
        .OPMODEREG(0),
        .PATTERN(48'h0),
        .PREADDINSEL("A"),
        .PREG(1),
        .RND(48'h0),
        .SEL_MASK("MASK"),
        .SEL_PATTERN("PATTERN"),
        .USE_MULT("NONE"),
        .USE_PATTERN_DETECT("NO_PATDET"),
        .USE_SIMD("FOUR12"),
        .USE_WIDEXOR("FALSE"),
        .XORSIMD("XOR24_48_96")
    ) i0 (
        .A(t1[47:18]),
        .ACIN({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .ACOUT(),
        .ALUMODE({gnd, gnd, gnd, gnd}),
        .B(t1[17:0]),
        .BCIN({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .BCOUT(),
        .C(t0),
        .CARRYCASCIN(gnd),
        .CARRYCASCOUT(),
        .CARRYIN(gnd),
        .CARRYINSEL({gnd, gnd, gnd}),
        .CARRYOUT(),
        .CEA1(en),
        .CEA2(en),
        .CEAD(gnd),
        .CEALUMODE(gnd),
        .CEB1(en),
        .CEB2(en),
        .CEC(en),
        .CECARRYIN(gnd),
        .CECTRL(gnd),
        .CED(gnd),
        .CEINMODE(gnd),
        .CEM(gnd),
        .CEP(en),
        .CLK(clock),
        .D({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .INMODE({gnd, gnd, gnd, gnd, gnd}),
        .MULTSIGNIN(gnd),
        .MULTSIGNOUT(),
        .OPMODE({gnd, gnd, gnd, vcc, vcc, gnd, gnd, vcc, vcc}),
        .OVERFLOW(),
        .P(t2),
        .PATTERNBDETECT(),
        .PATTERNDETECT(),
        .PCIN({gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd}),
        .PCOUT(),
        .RSTA(reset),
        .RSTALLCARRYIN(reset),
        .RSTALUMODE(reset),
        .RSTB(reset),
        .RSTC(reset),
        .RSTCTRL(reset),
        .RSTD(reset),
        .RSTINMODE(reset),
        .RSTM(reset),
        .RSTP(reset),
        .UNDERFLOW(),
        .XOROUT()
    );
    assign t0 = {gnd, gnd, gnd, gnd, a0_3, gnd, gnd, gnd, gnd, a0_2, gnd, gnd, gnd, gnd, a0_1, gnd, gnd, gnd, gnd, a0_0};
    assign t1 = {gnd, gnd, gnd, gnd, b0_3, gnd, gnd, gnd, gnd, b0_2, gnd, gnd, gnd, gnd, b0_1, gnd, gnd, gnd, gnd, b0_0};
    assign y0_0 = t2[7:0];
    assign y0_1 = t2[19:12];
    assign y0_2 = t2[31:24];
    assign y0_3 = t2[43:36];
endmodule
