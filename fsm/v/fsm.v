module fsm (
    input wire clock,
    input wire reset,
    input wire en,
    output wire [7:0] y
);
    wire vcc;
    wire gnd;
    wire [7:0] t0;
    wire [7:0] t1;
    wire t2;
    wire t4;
    wire t5;
    wire t6;
    wire [7:0] t7;
    wire [7:0] t8;
    wire [7:0] t9;
    wire t10;
    wire t11;
    wire t12;
    wire t13;
    wire [7:0] t14;
    wire [7:0] t15;
    wire [7:0] t16;
    wire t17;
    wire t18;
    wire t19;
    wire t20;
    wire [7:0] t21;
    wire [7:0] t22;
    wire [7:0] t23;
    wire t24;
    wire t25;
    wire t26;
    wire t27;
    wire [7:0] t28;
    wire [7:0] t29;
    wire [7:0] t30;
    wire t31;
    wire t32;
    wire t33;
    wire t34;
    wire [7:0] t35;
    wire [7:0] t36;
    wire [7:0] t37;
    wire t38;
    wire t39;
    wire t40;
    wire t41;
    wire [7:0] t42;
    wire [7:0] t43;
    wire [7:0] t44;
    wire t45;
    wire t46;
    wire t47;
    wire t48;
    wire [7:0] t49;
    wire [7:0] t50;
    wire [7:0] t51;
    wire t52;
    wire t53;
    wire t54;
    wire t55;
    wire t56;
    wire t57;
    wire t58;
    wire t59;
    wire t60;
    wire t61;
    wire t62;
    wire [7:0] t3;
    wire [7:0] t63;
    VCC VCC (
        .P(vcc)
    );
    GND GND (
        .G(gnd)
    );
    LUT6 # (
        .INIT(64'h9009000000000000)
    ) i0 (
        .I0(t0[7]),
        .I1(t3[7]),
        .I2(t0[6]),
        .I3(t3[6]),
        .I4(t4),
        .I5(t5),
        .O(t2)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i1 (
        .I0(t3[3]),
        .I1(t0[3]),
        .I2(t0[5]),
        .I3(t3[5]),
        .I4(t0[4]),
        .I5(t3[4]),
        .O(t4)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i2 (
        .I0(t3[0]),
        .I1(t0[0]),
        .I2(t0[2]),
        .I3(t3[2]),
        .I4(t0[1]),
        .I5(t3[1]),
        .O(t5)
    );
    LUT2 # (
        .INIT(4'h8)
    ) i3 (
        .I0(en),
        .I1(t2),
        .O(t6)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i4 (
        .I0(t1[0]),
        .I1(t3[0]),
        .I2(t6),
        .O(t7[0])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i5 (
        .I0(t1[1]),
        .I1(t3[1]),
        .I2(t6),
        .O(t7[1])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i6 (
        .I0(t1[2]),
        .I1(t3[2]),
        .I2(t6),
        .O(t7[2])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i7 (
        .I0(t1[3]),
        .I1(t3[3]),
        .I2(t6),
        .O(t7[3])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i8 (
        .I0(t1[4]),
        .I1(t3[4]),
        .I2(t6),
        .O(t7[4])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i9 (
        .I0(t1[5]),
        .I1(t3[5]),
        .I2(t6),
        .O(t7[5])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i10 (
        .I0(t1[6]),
        .I1(t3[6]),
        .I2(t6),
        .O(t7[6])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i11 (
        .I0(t1[7]),
        .I1(t3[7]),
        .I2(t6),
        .O(t7[7])
    );
    LUT6 # (
        .INIT(64'h9009000000000000)
    ) i12 (
        .I0(t8[7]),
        .I1(t3[7]),
        .I2(t8[6]),
        .I3(t3[6]),
        .I4(t11),
        .I5(t12),
        .O(t10)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i13 (
        .I0(t3[3]),
        .I1(t8[3]),
        .I2(t8[5]),
        .I3(t3[5]),
        .I4(t8[4]),
        .I5(t3[4]),
        .O(t11)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i14 (
        .I0(t3[0]),
        .I1(t8[0]),
        .I2(t8[2]),
        .I3(t3[2]),
        .I4(t8[1]),
        .I5(t3[1]),
        .O(t12)
    );
    LUT2 # (
        .INIT(4'h8)
    ) i15 (
        .I0(en),
        .I1(t10),
        .O(t13)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i16 (
        .I0(t9[0]),
        .I1(t7[0]),
        .I2(t13),
        .O(t14[0])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i17 (
        .I0(t9[1]),
        .I1(t7[1]),
        .I2(t13),
        .O(t14[1])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i18 (
        .I0(t9[2]),
        .I1(t7[2]),
        .I2(t13),
        .O(t14[2])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i19 (
        .I0(t9[3]),
        .I1(t7[3]),
        .I2(t13),
        .O(t14[3])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i20 (
        .I0(t9[4]),
        .I1(t7[4]),
        .I2(t13),
        .O(t14[4])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i21 (
        .I0(t9[5]),
        .I1(t7[5]),
        .I2(t13),
        .O(t14[5])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i22 (
        .I0(t9[6]),
        .I1(t7[6]),
        .I2(t13),
        .O(t14[6])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i23 (
        .I0(t9[7]),
        .I1(t7[7]),
        .I2(t13),
        .O(t14[7])
    );
    LUT6 # (
        .INIT(64'h9009000000000000)
    ) i24 (
        .I0(t15[7]),
        .I1(t3[7]),
        .I2(t15[6]),
        .I3(t3[6]),
        .I4(t18),
        .I5(t19),
        .O(t17)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i25 (
        .I0(t3[3]),
        .I1(t15[3]),
        .I2(t15[5]),
        .I3(t3[5]),
        .I4(t15[4]),
        .I5(t3[4]),
        .O(t18)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i26 (
        .I0(t3[0]),
        .I1(t15[0]),
        .I2(t15[2]),
        .I3(t3[2]),
        .I4(t15[1]),
        .I5(t3[1]),
        .O(t19)
    );
    LUT2 # (
        .INIT(4'h8)
    ) i27 (
        .I0(en),
        .I1(t17),
        .O(t20)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i28 (
        .I0(t16[0]),
        .I1(t14[0]),
        .I2(t20),
        .O(t21[0])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i29 (
        .I0(t16[1]),
        .I1(t14[1]),
        .I2(t20),
        .O(t21[1])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i30 (
        .I0(t16[2]),
        .I1(t14[2]),
        .I2(t20),
        .O(t21[2])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i31 (
        .I0(t16[3]),
        .I1(t14[3]),
        .I2(t20),
        .O(t21[3])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i32 (
        .I0(t16[4]),
        .I1(t14[4]),
        .I2(t20),
        .O(t21[4])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i33 (
        .I0(t16[5]),
        .I1(t14[5]),
        .I2(t20),
        .O(t21[5])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i34 (
        .I0(t16[6]),
        .I1(t14[6]),
        .I2(t20),
        .O(t21[6])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i35 (
        .I0(t16[7]),
        .I1(t14[7]),
        .I2(t20),
        .O(t21[7])
    );
    LUT6 # (
        .INIT(64'h9009000000000000)
    ) i36 (
        .I0(t22[7]),
        .I1(t3[7]),
        .I2(t22[6]),
        .I3(t3[6]),
        .I4(t25),
        .I5(t26),
        .O(t24)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i37 (
        .I0(t3[3]),
        .I1(t22[3]),
        .I2(t22[5]),
        .I3(t3[5]),
        .I4(t22[4]),
        .I5(t3[4]),
        .O(t25)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i38 (
        .I0(t3[0]),
        .I1(t22[0]),
        .I2(t22[2]),
        .I3(t3[2]),
        .I4(t22[1]),
        .I5(t3[1]),
        .O(t26)
    );
    LUT2 # (
        .INIT(4'h8)
    ) i39 (
        .I0(en),
        .I1(t24),
        .O(t27)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i40 (
        .I0(t23[0]),
        .I1(t21[0]),
        .I2(t27),
        .O(t28[0])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i41 (
        .I0(t23[1]),
        .I1(t21[1]),
        .I2(t27),
        .O(t28[1])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i42 (
        .I0(t23[2]),
        .I1(t21[2]),
        .I2(t27),
        .O(t28[2])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i43 (
        .I0(t23[3]),
        .I1(t21[3]),
        .I2(t27),
        .O(t28[3])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i44 (
        .I0(t23[4]),
        .I1(t21[4]),
        .I2(t27),
        .O(t28[4])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i45 (
        .I0(t23[5]),
        .I1(t21[5]),
        .I2(t27),
        .O(t28[5])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i46 (
        .I0(t23[6]),
        .I1(t21[6]),
        .I2(t27),
        .O(t28[6])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i47 (
        .I0(t23[7]),
        .I1(t21[7]),
        .I2(t27),
        .O(t28[7])
    );
    LUT6 # (
        .INIT(64'h9009000000000000)
    ) i48 (
        .I0(t29[7]),
        .I1(t3[7]),
        .I2(t29[6]),
        .I3(t3[6]),
        .I4(t32),
        .I5(t33),
        .O(t31)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i49 (
        .I0(t3[3]),
        .I1(t29[3]),
        .I2(t29[5]),
        .I3(t3[5]),
        .I4(t29[4]),
        .I5(t3[4]),
        .O(t32)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i50 (
        .I0(t3[0]),
        .I1(t29[0]),
        .I2(t29[2]),
        .I3(t3[2]),
        .I4(t29[1]),
        .I5(t3[1]),
        .O(t33)
    );
    LUT2 # (
        .INIT(4'h8)
    ) i51 (
        .I0(en),
        .I1(t31),
        .O(t34)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i52 (
        .I0(t30[0]),
        .I1(t28[0]),
        .I2(t34),
        .O(t35[0])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i53 (
        .I0(t30[1]),
        .I1(t28[1]),
        .I2(t34),
        .O(t35[1])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i54 (
        .I0(t30[2]),
        .I1(t28[2]),
        .I2(t34),
        .O(t35[2])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i55 (
        .I0(t30[3]),
        .I1(t28[3]),
        .I2(t34),
        .O(t35[3])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i56 (
        .I0(t30[4]),
        .I1(t28[4]),
        .I2(t34),
        .O(t35[4])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i57 (
        .I0(t30[5]),
        .I1(t28[5]),
        .I2(t34),
        .O(t35[5])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i58 (
        .I0(t30[6]),
        .I1(t28[6]),
        .I2(t34),
        .O(t35[6])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i59 (
        .I0(t30[7]),
        .I1(t28[7]),
        .I2(t34),
        .O(t35[7])
    );
    LUT6 # (
        .INIT(64'h9009000000000000)
    ) i60 (
        .I0(t36[7]),
        .I1(t3[7]),
        .I2(t36[6]),
        .I3(t3[6]),
        .I4(t39),
        .I5(t40),
        .O(t38)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i61 (
        .I0(t3[3]),
        .I1(t36[3]),
        .I2(t36[5]),
        .I3(t3[5]),
        .I4(t36[4]),
        .I5(t3[4]),
        .O(t39)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i62 (
        .I0(t3[0]),
        .I1(t36[0]),
        .I2(t36[2]),
        .I3(t3[2]),
        .I4(t36[1]),
        .I5(t3[1]),
        .O(t40)
    );
    LUT2 # (
        .INIT(4'h8)
    ) i63 (
        .I0(en),
        .I1(t38),
        .O(t41)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i64 (
        .I0(t37[0]),
        .I1(t35[0]),
        .I2(t41),
        .O(t42[0])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i65 (
        .I0(t37[1]),
        .I1(t35[1]),
        .I2(t41),
        .O(t42[1])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i66 (
        .I0(t37[2]),
        .I1(t35[2]),
        .I2(t41),
        .O(t42[2])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i67 (
        .I0(t37[3]),
        .I1(t35[3]),
        .I2(t41),
        .O(t42[3])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i68 (
        .I0(t37[4]),
        .I1(t35[4]),
        .I2(t41),
        .O(t42[4])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i69 (
        .I0(t37[5]),
        .I1(t35[5]),
        .I2(t41),
        .O(t42[5])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i70 (
        .I0(t37[6]),
        .I1(t35[6]),
        .I2(t41),
        .O(t42[6])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i71 (
        .I0(t37[7]),
        .I1(t35[7]),
        .I2(t41),
        .O(t42[7])
    );
    LUT6 # (
        .INIT(64'h9009000000000000)
    ) i72 (
        .I0(t43[7]),
        .I1(t3[7]),
        .I2(t43[6]),
        .I3(t3[6]),
        .I4(t46),
        .I5(t47),
        .O(t45)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i73 (
        .I0(t3[3]),
        .I1(t43[3]),
        .I2(t43[5]),
        .I3(t3[5]),
        .I4(t43[4]),
        .I5(t3[4]),
        .O(t46)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i74 (
        .I0(t3[0]),
        .I1(t43[0]),
        .I2(t43[2]),
        .I3(t3[2]),
        .I4(t43[1]),
        .I5(t3[1]),
        .O(t47)
    );
    LUT2 # (
        .INIT(4'h8)
    ) i75 (
        .I0(en),
        .I1(t45),
        .O(t48)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i76 (
        .I0(t44[0]),
        .I1(t42[0]),
        .I2(t48),
        .O(t49[0])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i77 (
        .I0(t44[1]),
        .I1(t42[1]),
        .I2(t48),
        .O(t49[1])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i78 (
        .I0(t44[2]),
        .I1(t42[2]),
        .I2(t48),
        .O(t49[2])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i79 (
        .I0(t44[3]),
        .I1(t42[3]),
        .I2(t48),
        .O(t49[3])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i80 (
        .I0(t44[4]),
        .I1(t42[4]),
        .I2(t48),
        .O(t49[4])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i81 (
        .I0(t44[5]),
        .I1(t42[5]),
        .I2(t48),
        .O(t49[5])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i82 (
        .I0(t44[6]),
        .I1(t42[6]),
        .I2(t48),
        .O(t49[6])
    );
    LUT3 # (
        .INIT(8'hac)
    ) i83 (
        .I0(t44[7]),
        .I1(t42[7]),
        .I2(t48),
        .O(t49[7])
    );
    LUT6 # (
        .INIT(64'h9009000000000000)
    ) i84 (
        .I0(t50[7]),
        .I1(t3[7]),
        .I2(t50[6]),
        .I3(t3[6]),
        .I4(t53),
        .I5(t54),
        .O(t52)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i85 (
        .I0(t3[3]),
        .I1(t50[3]),
        .I2(t50[5]),
        .I3(t3[5]),
        .I4(t50[4]),
        .I5(t3[4]),
        .O(t53)
    );
    LUT6 # (
        .INIT(64'h9009000000009009)
    ) i86 (
        .I0(t3[0]),
        .I1(t50[0]),
        .I2(t50[2]),
        .I3(t3[2]),
        .I4(t50[1]),
        .I5(t3[1]),
        .O(t54)
    );
    LUT2 # (
        .INIT(4'h8)
    ) i87 (
        .I0(en),
        .I1(t52),
        .O(t55)
    );
    LUT2 # (
        .INIT(4'he)
    ) i88 (
        .I0(t6),
        .I1(t13),
        .O(t56)
    );
    LUT2 # (
        .INIT(4'he)
    ) i89 (
        .I0(t56),
        .I1(t20),
        .O(t57)
    );
    LUT2 # (
        .INIT(4'he)
    ) i90 (
        .I0(t57),
        .I1(t27),
        .O(t58)
    );
    LUT2 # (
        .INIT(4'he)
    ) i91 (
        .I0(t58),
        .I1(t34),
        .O(t59)
    );
    LUT2 # (
        .INIT(4'he)
    ) i92 (
        .I0(t59),
        .I1(t41),
        .O(t60)
    );
    LUT2 # (
        .INIT(4'he)
    ) i93 (
        .I0(t60),
        .I1(t48),
        .O(t61)
    );
    LUT2 # (
        .INIT(4'he)
    ) i94 (
        .I0(t61),
        .I1(t55),
        .O(t62)
    );
    FDRE # (
        .INIT(1'b0),
        .IS_C_INVERTED(1'b0),
        .IS_D_INVERTED(1'b0),
        .IS_R_INVERTED(1'b0)
    ) i96 (
        .C(clock),
        .CE(t62),
        .D(t63[0]),
        .Q(t3[0]),
        .R(reset)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i95 (
        .I0(t51[0]),
        .I1(t49[0]),
        .I2(t55),
        .O(t63[0])
    );
    FDRE # (
        .INIT(1'b0),
        .IS_C_INVERTED(1'b0),
        .IS_D_INVERTED(1'b0),
        .IS_R_INVERTED(1'b0)
    ) i98 (
        .C(clock),
        .CE(t62),
        .D(t63[1]),
        .Q(t3[1]),
        .R(reset)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i97 (
        .I0(t51[1]),
        .I1(t49[1]),
        .I2(t55),
        .O(t63[1])
    );
    FDRE # (
        .INIT(1'b0),
        .IS_C_INVERTED(1'b0),
        .IS_D_INVERTED(1'b0),
        .IS_R_INVERTED(1'b0)
    ) i100 (
        .C(clock),
        .CE(t62),
        .D(t63[2]),
        .Q(t3[2]),
        .R(reset)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i99 (
        .I0(t51[2]),
        .I1(t49[2]),
        .I2(t55),
        .O(t63[2])
    );
    FDRE # (
        .INIT(1'b0),
        .IS_C_INVERTED(1'b0),
        .IS_D_INVERTED(1'b0),
        .IS_R_INVERTED(1'b0)
    ) i102 (
        .C(clock),
        .CE(t62),
        .D(t63[3]),
        .Q(t3[3]),
        .R(reset)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i101 (
        .I0(t51[3]),
        .I1(t49[3]),
        .I2(t55),
        .O(t63[3])
    );
    FDRE # (
        .INIT(1'b0),
        .IS_C_INVERTED(1'b0),
        .IS_D_INVERTED(1'b0),
        .IS_R_INVERTED(1'b0)
    ) i104 (
        .C(clock),
        .CE(t62),
        .D(t63[4]),
        .Q(t3[4]),
        .R(reset)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i103 (
        .I0(t51[4]),
        .I1(t49[4]),
        .I2(t55),
        .O(t63[4])
    );
    FDRE # (
        .INIT(1'b0),
        .IS_C_INVERTED(1'b0),
        .IS_D_INVERTED(1'b0),
        .IS_R_INVERTED(1'b0)
    ) i106 (
        .C(clock),
        .CE(t62),
        .D(t63[5]),
        .Q(t3[5]),
        .R(reset)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i105 (
        .I0(t51[5]),
        .I1(t49[5]),
        .I2(t55),
        .O(t63[5])
    );
    FDRE # (
        .INIT(1'b0),
        .IS_C_INVERTED(1'b0),
        .IS_D_INVERTED(1'b0),
        .IS_R_INVERTED(1'b0)
    ) i108 (
        .C(clock),
        .CE(t62),
        .D(t63[6]),
        .Q(t3[6]),
        .R(reset)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i107 (
        .I0(t51[6]),
        .I1(t49[6]),
        .I2(t55),
        .O(t63[6])
    );
    FDRE # (
        .INIT(1'b0),
        .IS_C_INVERTED(1'b0),
        .IS_D_INVERTED(1'b0),
        .IS_R_INVERTED(1'b0)
    ) i110 (
        .C(clock),
        .CE(t62),
        .D(t63[7]),
        .Q(t3[7]),
        .R(reset)
    );
    LUT3 # (
        .INIT(8'hac)
    ) i109 (
        .I0(t51[7]),
        .I1(t49[7]),
        .I2(t55),
        .O(t63[7])
    );
    assign t0 = {gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd};
    assign t1 = {gnd, gnd, gnd, gnd, gnd, gnd, gnd, vcc};
    assign t8 = {gnd, gnd, gnd, gnd, gnd, gnd, gnd, vcc};
    assign t9 = {gnd, gnd, gnd, gnd, gnd, gnd, vcc, gnd};
    assign t15 = {gnd, gnd, gnd, gnd, gnd, gnd, vcc, gnd};
    assign t16 = {gnd, gnd, gnd, gnd, gnd, gnd, vcc, vcc};
    assign t22 = {gnd, gnd, gnd, gnd, gnd, gnd, vcc, vcc};
    assign t23 = {gnd, gnd, gnd, gnd, gnd, vcc, gnd, gnd};
    assign t29 = {gnd, gnd, gnd, gnd, gnd, vcc, gnd, gnd};
    assign t30 = {gnd, gnd, gnd, gnd, gnd, vcc, gnd, vcc};
    assign t36 = {gnd, gnd, gnd, gnd, gnd, vcc, gnd, vcc};
    assign t37 = {gnd, gnd, gnd, gnd, gnd, vcc, vcc, gnd};
    assign t43 = {gnd, gnd, gnd, gnd, gnd, vcc, vcc, gnd};
    assign t44 = {gnd, gnd, gnd, gnd, gnd, vcc, vcc, vcc};
    assign t50 = {gnd, gnd, gnd, gnd, gnd, vcc, vcc, vcc};
    assign t51 = {gnd, gnd, gnd, gnd, gnd, gnd, gnd, gnd};
    assign y = t3;
endmodule
