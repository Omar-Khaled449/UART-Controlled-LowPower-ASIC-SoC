/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct  7 19:44:17 2026
/////////////////////////////////////////////////////////////


module rst_sync_NUM_STAGES2_0 ( CLK, RST, sync_rst );
  input CLK, RST;
  output sync_rst;
  wire   sync_reg_1_;

  SDFFRQX2M sync_reg_reg_0_ ( .D(sync_reg_1_), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_rst) );
  SDFFRQX2M sync_reg_reg_1_ ( .D(1'b1), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(sync_reg_1_) );
endmodule


module rst_sync_NUM_STAGES2_1 ( CLK, RST, sync_rst );
  input CLK, RST;
  output sync_rst;
  wire   sync_reg_1_;

  SDFFRQX2M sync_reg_reg_0_ ( .D(sync_reg_1_), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(RST), .Q(sync_rst) );
  SDFFRQX2M sync_reg_reg_1_ ( .D(1'b1), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        RST), .Q(sync_reg_1_) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:1] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVXLM U1 ( .A(A[0]), .Y(n1) );
  NAND2BX2M U2 ( .AN(n9), .B(n1), .Y(carry[1]) );
  XNOR2XLM U3 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U4 ( .A(B[0]), .Y(n9) );
  INVXLM U5 ( .A(B[2]), .Y(n7) );
  INVXLM U6 ( .A(B[3]), .Y(n6) );
  INVXLM U7 ( .A(B[4]), .Y(n5) );
  INVXLM U8 ( .A(B[5]), .Y(n4) );
  INVXLM U9 ( .A(B[1]), .Y(n8) );
  INVXLM U10 ( .A(B[6]), .Y(n3) );
  INVXLM U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:2] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X1M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XLM U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  AOI2BB1X4M U2 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  OA21X2M U3 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  OA21X2M U4 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  NOR2X2M U5 ( .A(B[11]), .B(A[11]), .Y(n19) );
  NOR2X1M U6 ( .A(B[9]), .B(A[9]), .Y(n11) );
  NOR2X2M U7 ( .A(B[8]), .B(A[8]), .Y(n14) );
  OAI2BB1XLM U8 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  XOR2X2M U9 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  OAI21BX4M U10 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  NOR2X2M U11 ( .A(B[10]), .B(A[10]), .Y(n23) );
  NAND2X1M U12 ( .A(B[10]), .B(A[10]), .Y(n25) );
  OAI21X2M U13 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  NOR2XLM U14 ( .A(n10), .B(n11), .Y(n9) );
  XOR2XLM U15 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  NAND2X2M U16 ( .A(A[7]), .B(B[7]), .Y(n13) );
  INVX2M U17 ( .A(A[6]), .Y(n7) );
  INVX2M U18 ( .A(n7), .Y(SUM[6]) );
  BUFX2M U19 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U20 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U21 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U22 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U23 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U24 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U25 ( .A(n8), .B(n9), .Y(SUM[9]) );
  CLKXOR2X2M U26 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U27 ( .AN(n14), .B(n15), .Y(n12) );
  XOR3XLM U28 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  XNOR2X1M U29 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U30 ( .A(n21), .B(n19), .Y(n22) );
  AND2X1M U31 ( .A(B[11]), .B(A[11]), .Y(n21) );
  CLKXOR2X2M U32 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AND2X1M U33 ( .A(B[9]), .B(A[9]), .Y(n10) );
  CLKNAND2X2M U34 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NAND2BX1M U35 ( .AN(n23), .B(n25), .Y(n26) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   ab_7__7_, ab_7__6_, ab_7__5_, ab_7__4_, ab_7__3_, ab_7__2_, ab_7__1_,
         ab_7__0_, ab_6__7_, ab_6__6_, ab_6__5_, ab_6__4_, ab_6__3_, ab_6__2_,
         ab_6__1_, ab_6__0_, ab_5__7_, ab_5__6_, ab_5__5_, ab_5__4_, ab_5__3_,
         ab_5__2_, ab_5__1_, ab_5__0_, ab_4__7_, ab_4__6_, ab_4__5_, ab_4__4_,
         ab_4__3_, ab_4__2_, ab_4__1_, ab_4__0_, ab_3__7_, ab_3__6_, ab_3__5_,
         ab_3__4_, ab_3__3_, ab_3__2_, ab_3__1_, ab_3__0_, ab_2__7_, ab_2__6_,
         ab_2__5_, ab_2__4_, ab_2__3_, ab_2__2_, ab_2__1_, ab_2__0_, ab_1__7_,
         ab_1__6_, ab_1__5_, ab_1__4_, ab_1__3_, ab_1__2_, ab_1__1_, ab_1__0_,
         ab_0__7_, ab_0__6_, ab_0__5_, ab_0__4_, ab_0__3_, ab_0__2_, ab_0__1_,
         CARRYB_7__6_, CARRYB_7__5_, CARRYB_7__4_, CARRYB_7__3_, CARRYB_7__2_,
         CARRYB_7__1_, CARRYB_7__0_, CARRYB_6__6_, CARRYB_6__5_, CARRYB_6__4_,
         CARRYB_6__3_, CARRYB_6__2_, CARRYB_6__1_, CARRYB_6__0_, CARRYB_5__6_,
         CARRYB_5__5_, CARRYB_5__4_, CARRYB_5__3_, CARRYB_5__2_, CARRYB_5__1_,
         CARRYB_5__0_, CARRYB_4__6_, CARRYB_4__5_, CARRYB_4__4_, CARRYB_4__3_,
         CARRYB_4__2_, CARRYB_4__1_, CARRYB_4__0_, CARRYB_3__6_, CARRYB_3__5_,
         CARRYB_3__4_, CARRYB_3__3_, CARRYB_3__2_, CARRYB_3__1_, CARRYB_3__0_,
         CARRYB_2__6_, CARRYB_2__5_, CARRYB_2__4_, CARRYB_2__3_, CARRYB_2__2_,
         CARRYB_2__1_, CARRYB_2__0_, SUMB_7__6_, SUMB_7__5_, SUMB_7__4_,
         SUMB_7__3_, SUMB_7__2_, SUMB_7__1_, SUMB_7__0_, SUMB_6__6_,
         SUMB_6__5_, SUMB_6__4_, SUMB_6__3_, SUMB_6__2_, SUMB_6__1_,
         SUMB_5__6_, SUMB_5__5_, SUMB_5__4_, SUMB_5__3_, SUMB_5__2_,
         SUMB_5__1_, SUMB_4__6_, SUMB_4__5_, SUMB_4__4_, SUMB_4__3_,
         SUMB_4__2_, SUMB_4__1_, SUMB_3__6_, SUMB_3__5_, SUMB_3__4_,
         SUMB_3__3_, SUMB_3__2_, SUMB_3__1_, SUMB_2__6_, SUMB_2__5_,
         SUMB_2__4_, SUMB_2__3_, SUMB_2__2_, SUMB_2__1_, SUMB_1__6_,
         SUMB_1__5_, SUMB_1__4_, SUMB_1__3_, SUMB_1__2_, SUMB_1__1_, A1_12_,
         A1_11_, A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, A1_4_, A1_3_, A1_2_,
         A1_1_, A1_0_, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;

  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, A1_11_, 
        A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, SUMB_7__0_, A1_4_, A1_3_, A1_2_, 
        A1_1_, A1_0_}), .B({n10, n16, n15, n13, n14, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  ADDFX2M S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  ADDFX2M S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  ADDFX2M S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  ADDFX2M S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  ADDFX2M S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  ADDFX2M S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  ADDFX2M S2_2_2 ( .A(ab_2__2_), .B(n7), .CI(SUMB_1__3_), .CO(CARRYB_2__2_), 
        .S(SUMB_2__2_) );
  ADDFX2M S1_2_0 ( .A(ab_2__0_), .B(n5), .CI(SUMB_1__1_), .CO(CARRYB_2__0_), 
        .S(A1_0_) );
  ADDFX2M S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  ADDFX2M S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  ADDFX2M S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  ADDFX2M S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  ADDFX2M S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  ADDFX2M S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  ADDFX2M S2_2_4 ( .A(ab_2__4_), .B(n9), .CI(SUMB_1__5_), .CO(CARRYB_2__4_), 
        .S(SUMB_2__4_) );
  ADDFX2M S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  ADDFX2M S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  ADDFX2M S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  ADDFX2M S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  ADDFX2M S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  ADDFX2M S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  ADDFX2M S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  ADDFX2M S2_2_5 ( .A(ab_2__5_), .B(n8), .CI(SUMB_1__6_), .CO(CARRYB_2__5_), 
        .S(SUMB_2__5_) );
  ADDFX2M S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  ADDFX2M S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(
        CARRYB_7__6_), .S(SUMB_7__6_) );
  ADDFX2M S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  ADDFX2M S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  ADDFX2M S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  ADDFX2M S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  ADDFX2M S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  ADDFX2M S2_2_1 ( .A(ab_2__1_), .B(n6), .CI(SUMB_1__2_), .CO(CARRYB_2__1_), 
        .S(SUMB_2__1_) );
  ADDFX2M S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  ADDFX2M S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  ADDFX2M S3_2_6 ( .A(ab_2__6_), .B(n4), .CI(ab_1__7_), .CO(CARRYB_2__6_), .S(
        SUMB_2__6_) );
  ADDFX2M S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  ADDFX2M S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  ADDFX2M S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  ADDFX2M S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  ADDFX2M S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  ADDFX2M S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  ADDFHX1M S2_2_3 ( .A(ab_2__3_), .B(n3), .CI(SUMB_1__4_), .CO(CARRYB_2__3_), 
        .S(SUMB_2__3_) );
  CLKXOR2X2M U2 ( .A(ab_1__4_), .B(ab_0__5_), .Y(SUMB_1__4_) );
  INVX2M U3 ( .A(B[7]), .Y(n17) );
  INVX1M U4 ( .A(A[6]), .Y(n26) );
  CLKXOR2X2M U5 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(A1_8_) );
  INVX2M U6 ( .A(B[5]), .Y(n19) );
  AND2X2M U7 ( .A(ab_0__4_), .B(ab_1__3_), .Y(n3) );
  AND2X2M U8 ( .A(ab_0__7_), .B(ab_1__6_), .Y(n4) );
  AND2X2M U9 ( .A(ab_0__1_), .B(ab_1__0_), .Y(n5) );
  AND2X2M U10 ( .A(ab_0__2_), .B(ab_1__1_), .Y(n6) );
  AND2X2M U11 ( .A(ab_0__3_), .B(ab_1__2_), .Y(n7) );
  AND2X2M U12 ( .A(ab_0__6_), .B(ab_1__5_), .Y(n8) );
  AND2X2M U13 ( .A(ab_0__5_), .B(ab_1__4_), .Y(n9) );
  AND2X2M U14 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(n10) );
  INVX2M U15 ( .A(B[3]), .Y(n21) );
  INVX2M U16 ( .A(B[2]), .Y(n22) );
  CLKINVX2M U17 ( .A(B[1]), .Y(n23) );
  INVX2M U18 ( .A(B[6]), .Y(n18) );
  INVX2M U19 ( .A(B[0]), .Y(n24) );
  INVX2M U20 ( .A(B[4]), .Y(n20) );
  NOR2X1M U21 ( .A(n23), .B(n31), .Y(ab_1__1_) );
  NOR2XLM U22 ( .A(n24), .B(n26), .Y(ab_6__0_) );
  NOR2XLM U23 ( .A(n22), .B(n26), .Y(ab_6__2_) );
  NOR2XLM U24 ( .A(n21), .B(n26), .Y(ab_6__3_) );
  NOR2XLM U25 ( .A(n19), .B(n26), .Y(ab_6__5_) );
  NOR2XLM U26 ( .A(n17), .B(n26), .Y(ab_6__7_) );
  NOR2XLM U27 ( .A(n18), .B(n26), .Y(ab_6__6_) );
  NOR2XLM U28 ( .A(n20), .B(n26), .Y(ab_6__4_) );
  NOR2XLM U29 ( .A(n25), .B(n23), .Y(ab_7__1_) );
  NOR2XLM U30 ( .A(n23), .B(n26), .Y(ab_6__1_) );
  NOR2XLM U31 ( .A(n23), .B(n27), .Y(ab_5__1_) );
  NOR2XLM U32 ( .A(n23), .B(n28), .Y(ab_4__1_) );
  NOR2XLM U33 ( .A(n23), .B(n29), .Y(ab_3__1_) );
  NOR2XLM U34 ( .A(n23), .B(n30), .Y(ab_2__1_) );
  CLKXOR2X2M U35 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(A1_7_) );
  INVX2M U36 ( .A(A[1]), .Y(n31) );
  INVX2M U37 ( .A(A[0]), .Y(n32) );
  XOR2X2M U38 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(A1_10_) );
  NOR2XLM U39 ( .A(n25), .B(n18), .Y(ab_7__6_) );
  XOR2X2M U40 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(A1_9_) );
  AND2X1M U41 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(n12) );
  AND2X1M U42 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(n15) );
  NOR2XLM U43 ( .A(n18), .B(n29), .Y(ab_3__6_) );
  XOR2XLM U44 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(A1_6_) );
  NOR2XLM U45 ( .A(n25), .B(n17), .Y(ab_7__7_) );
  NOR2X2M U46 ( .A(n22), .B(n31), .Y(ab_1__2_) );
  NOR2X2M U47 ( .A(n20), .B(n32), .Y(ab_0__4_) );
  NOR2XLM U48 ( .A(n18), .B(n31), .Y(ab_1__6_) );
  NOR2X2M U49 ( .A(n19), .B(n31), .Y(ab_1__5_) );
  NOR2X2M U50 ( .A(n24), .B(n31), .Y(ab_1__0_) );
  NOR2X2M U51 ( .A(n19), .B(n32), .Y(ab_0__5_) );
  XOR2X2M U52 ( .A(ab_1__5_), .B(ab_0__6_), .Y(SUMB_1__5_) );
  XOR2X2M U53 ( .A(ab_1__6_), .B(ab_0__7_), .Y(SUMB_1__6_) );
  NOR2XLM U54 ( .A(n24), .B(n32), .Y(PRODUCT[0]) );
  XOR2XLM U55 ( .A(ab_1__0_), .B(ab_0__1_), .Y(PRODUCT[1]) );
  CLKXOR2X2M U56 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(A1_12_) );
  CLKXOR2X2M U57 ( .A(ab_1__2_), .B(ab_0__3_), .Y(SUMB_1__2_) );
  AND2X2M U58 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(n11) );
  AND2X2M U59 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(n13) );
  AND2X2M U60 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(n14) );
  CLKXOR2X2M U61 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(A1_11_) );
  AND2X2M U62 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(n16) );
  CLKXOR2X2M U63 ( .A(ab_1__1_), .B(ab_0__2_), .Y(SUMB_1__1_) );
  CLKXOR2X2M U64 ( .A(ab_1__3_), .B(ab_0__4_), .Y(SUMB_1__3_) );
  INVX2M U65 ( .A(A[2]), .Y(n30) );
  INVX2M U66 ( .A(A[3]), .Y(n29) );
  INVX2M U67 ( .A(A[4]), .Y(n28) );
  INVX2M U68 ( .A(A[7]), .Y(n25) );
  INVX2M U69 ( .A(A[5]), .Y(n27) );
  NOR2X1M U71 ( .A(n25), .B(n19), .Y(ab_7__5_) );
  NOR2X1M U72 ( .A(n25), .B(n20), .Y(ab_7__4_) );
  NOR2X1M U73 ( .A(n25), .B(n21), .Y(ab_7__3_) );
  NOR2X1M U74 ( .A(n25), .B(n22), .Y(ab_7__2_) );
  NOR2X1M U75 ( .A(n25), .B(n24), .Y(ab_7__0_) );
  NOR2X1M U76 ( .A(n17), .B(n27), .Y(ab_5__7_) );
  NOR2X1M U77 ( .A(n18), .B(n27), .Y(ab_5__6_) );
  NOR2X1M U78 ( .A(n19), .B(n27), .Y(ab_5__5_) );
  NOR2X1M U79 ( .A(n20), .B(n27), .Y(ab_5__4_) );
  NOR2X1M U80 ( .A(n21), .B(n27), .Y(ab_5__3_) );
  NOR2X1M U81 ( .A(n22), .B(n27), .Y(ab_5__2_) );
  NOR2X1M U82 ( .A(n24), .B(n27), .Y(ab_5__0_) );
  NOR2X1M U83 ( .A(n17), .B(n28), .Y(ab_4__7_) );
  NOR2X1M U84 ( .A(n18), .B(n28), .Y(ab_4__6_) );
  NOR2X1M U85 ( .A(n19), .B(n28), .Y(ab_4__5_) );
  NOR2X1M U86 ( .A(n20), .B(n28), .Y(ab_4__4_) );
  NOR2X1M U87 ( .A(n21), .B(n28), .Y(ab_4__3_) );
  NOR2X1M U88 ( .A(n22), .B(n28), .Y(ab_4__2_) );
  NOR2X1M U89 ( .A(n24), .B(n28), .Y(ab_4__0_) );
  NOR2X1M U90 ( .A(n17), .B(n29), .Y(ab_3__7_) );
  NOR2X1M U91 ( .A(n19), .B(n29), .Y(ab_3__5_) );
  NOR2X1M U92 ( .A(n20), .B(n29), .Y(ab_3__4_) );
  NOR2X1M U93 ( .A(n21), .B(n29), .Y(ab_3__3_) );
  NOR2X1M U94 ( .A(n22), .B(n29), .Y(ab_3__2_) );
  NOR2X1M U95 ( .A(n24), .B(n29), .Y(ab_3__0_) );
  NOR2X1M U96 ( .A(n17), .B(n30), .Y(ab_2__7_) );
  NOR2X1M U97 ( .A(n18), .B(n30), .Y(ab_2__6_) );
  NOR2X1M U98 ( .A(n19), .B(n30), .Y(ab_2__5_) );
  NOR2X1M U99 ( .A(n20), .B(n30), .Y(ab_2__4_) );
  NOR2X1M U100 ( .A(n21), .B(n30), .Y(ab_2__3_) );
  NOR2X1M U101 ( .A(n22), .B(n30), .Y(ab_2__2_) );
  NOR2X1M U102 ( .A(n24), .B(n30), .Y(ab_2__0_) );
  NOR2X1M U103 ( .A(n17), .B(n31), .Y(ab_1__7_) );
  NOR2X1M U104 ( .A(n20), .B(n31), .Y(ab_1__4_) );
  NOR2X1M U105 ( .A(n21), .B(n31), .Y(ab_1__3_) );
  NOR2X1M U106 ( .A(n17), .B(n32), .Y(ab_0__7_) );
  NOR2X1M U107 ( .A(n18), .B(n32), .Y(ab_0__6_) );
  NOR2X1M U108 ( .A(n21), .B(n32), .Y(ab_0__3_) );
  NOR2X1M U109 ( .A(n22), .B(n32), .Y(ab_0__2_) );
  NOR2X1M U110 ( .A(n23), .B(n32), .Y(ab_0__1_) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_1 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   n121, u_div_SumTmp_2__2_, u_div_SumTmp_3__1_, u_div_CryTmp_0__1_,
         u_div_CryTmp_0__2_, u_div_CryTmp_0__3_, u_div_CryTmp_3__2_,
         u_div_CryTmp_4__1_, u_div_PartRem_1__1_, u_div_PartRem_1__2_,
         u_div_PartRem_1__4_, u_div_PartRem_1__5_, u_div_PartRem_1__6_,
         u_div_PartRem_2__3_, u_div_PartRem_2__4_, u_div_PartRem_2__5_,
         u_div_PartRem_2__6_, net10738, net10710, net10703, net10687, net10686,
         net10685, net10684, net10683, net11810, net11827, net14282, net14289,
         net14293, net14294, net14298, net14299, net14383, net14513, net14519,
         net14529, net14528, net14544, net14589, net14592, net14594, net14661,
         net14660, net14667, net14666, net14718, net14739, net14752, net14815,
         net15099, net15108, net15116, net15114, net15420, net15609, net15603,
         net15567, net15560, net15554, net15552, net15551, net15549, net15548,
         net15543, net15508, net15636, net15645, net15681, net14816,
         u_div_BInv_5_, net14295, net17060, net17194, net17191, net17160,
         net17275, net17336, u_div_CryTmp_0__7_, u_div_CryTmp_0__6_,
         u_div_CryTmp_0__4_, net17161, u_div_CryTmp_0__5_, net14948, net14947,
         net10719, u_div_SumTmp_2__5_, u_div_SumTmp_2__4_, u_div_SumTmp_2__3_,
         u_div_CryTmp_2__6_, u_div_CryTmp_2__5_, u_div_CryTmp_2__4_,
         u_div_CryTmp_2__3_, u_div_BInv_4_, net17227, net17226, net17222,
         net14543, net14542, net10724, net10722, u_div_CryTmp_5__1_, net17218,
         net15516, n_cell_11126_net12139, n_cell_11126_net12138,
         u_div_SumTmp_3__4_, u_div_SumTmp_3__3_, u_div_CryTmp_3__5_,
         u_div_CryTmp_3__4_, u_div_CryTmp_3__3_, u_div_CryTmp_2__2_, net14814,
         net14539, net14538, net14537, net10720, u_div_SumTmp_5__2_,
         u_div_SumTmp_5__0_, u_div_CryTmp_5__3_, u_div_CryTmp_5__2_, net14641,
         net14640, net14619, net14618, net14610, u_div_CryTmp_3__1_, net14943,
         net14942, net14183, net14182, net14181, u_div_SumTmp_2__0_,
         u_div_CryTmp_2__1_, u_div_CryTmp_1__2_, u_div_CryTmp_1__1_, net15454,
         net15024, net15023, net15022, net14524, net14523, u_div_SumTmp_1__6_,
         u_div_SumTmp_1__5_, u_div_SumTmp_1__4_, u_div_SumTmp_1__3_,
         u_div_PartRem_1__7_, u_div_CryTmp_1__7_, u_div_CryTmp_1__6_,
         u_div_CryTmp_1__5_, u_div_CryTmp_1__4_, u_div_CryTmp_1__3_, net14978,
         net14977, net14512, net14503, net10695, net10689, net17196, net17190,
         net17189, net17187, net14804, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n12, n13, n14, n15, n16, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120;
  wire   [6:0] u_div_BInv;

  ADDFHX8M u_div_u_fa_PartRem_0_0_4 ( .A(u_div_PartRem_1__4_), .B(
        u_div_BInv_4_), .CI(u_div_CryTmp_0__4_), .CO(u_div_CryTmp_0__5_) );
  ADDFHX8M u_div_u_fa_PartRem_0_2_3 ( .A(net14666), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(u_div_SumTmp_2__3_)
         );
  ADDFHX8M u_div_u_fa_PartRem_0_2_4 ( .A(net14293), .B(u_div_BInv_4_), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  ADDFHX8M u_div_u_fa_PartRem_0_2_5 ( .A(net14282), .B(u_div_BInv_5_), .CI(
        u_div_CryTmp_2__5_), .CO(u_div_CryTmp_2__6_), .S(u_div_SumTmp_2__5_)
         );
  ADDFHX8M u_div_u_fa_PartRem_0_5_2 ( .A(u_div_BInv[2]), .B(net15681), .CI(
        u_div_CryTmp_5__2_), .CO(u_div_CryTmp_5__3_), .S(u_div_SumTmp_5__2_)
         );
  ADDFHX8M u_div_u_fa_PartRem_0_1_3 ( .A(u_div_BInv[3]), .B(
        u_div_PartRem_2__3_), .CI(u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), 
        .S(u_div_SumTmp_1__3_) );
  ADDFHX8M u_div_u_fa_PartRem_0_1_4 ( .A(u_div_BInv_4_), .B(
        u_div_PartRem_2__4_), .CI(u_div_CryTmp_1__4_), .CO(u_div_CryTmp_1__5_), 
        .S(u_div_SumTmp_1__4_) );
  ADDFHX8M u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(
        u_div_BInv_5_), .CI(u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(
        u_div_SumTmp_1__5_) );
  ADDFHX8M u_div_u_fa_PartRem_0_1_6 ( .A(u_div_PartRem_2__6_), .B(
        u_div_BInv[6]), .CI(u_div_CryTmp_1__6_), .CO(u_div_CryTmp_1__7_), .S(
        u_div_SumTmp_1__6_) );
  ADDFHX8M u_div_u_fa_PartRem_0_3_4 ( .A(net14295), .B(u_div_BInv_4_), .CI(
        u_div_CryTmp_3__4_), .CO(u_div_CryTmp_3__5_), .S(u_div_SumTmp_3__4_)
         );
  ADDFHX8M u_div_u_fa_PartRem_0_3_3 ( .A(net14298), .B(u_div_BInv[3]), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_0 ( .A(a[2]), .B(u_div_BInv[0]), .CI(1'b1), 
        .CO(u_div_CryTmp_2__1_), .S(u_div_SumTmp_2__0_) );
  NAND2X4M U1 ( .A(n78), .B(net17191), .Y(n14) );
  INVX2M U2 ( .A(u_div_BInv[1]), .Y(n77) );
  AND2X2M U3 ( .A(net15560), .B(a[6]), .Y(n1) );
  MXI2X3M U4 ( .A(net14667), .B(n34), .S0(net14289), .Y(net14666) );
  MXI2X4M U5 ( .A(n3), .B(u_div_SumTmp_2__2_), .S0(quotient[2]), .Y(net10686)
         );
  NAND2X8M U6 ( .A(net14299), .B(u_div_BInv[2]), .Y(n94) );
  CLKINVX16M U7 ( .A(net14804), .Y(net17196) );
  CLKINVX2M U8 ( .A(b[2]), .Y(n37) );
  INVX8M U9 ( .A(b[1]), .Y(n79) );
  INVX5M U10 ( .A(n79), .Y(n81) );
  OR2X6M U11 ( .A(net15508), .B(n79), .Y(net15543) );
  INVX10M U12 ( .A(net15543), .Y(net15551) );
  NAND2BX8M U13 ( .AN(net17160), .B(net17161), .Y(net15567) );
  BUFX18M U14 ( .A(n56), .Y(n16) );
  NAND2X6M U15 ( .A(u_div_CryTmp_3__2_), .B(net14594), .Y(net14947) );
  NOR3X8M U16 ( .A(net15551), .B(n71), .C(n32), .Y(net15603) );
  AOI21X2M U17 ( .A0(n53), .A1(n54), .B0(n74), .Y(n46) );
  CLKINVX1M U18 ( .A(net14299), .Y(n2) );
  INVX2M U19 ( .A(n2), .Y(n3) );
  MX2X6M U20 ( .A(net17336), .B(u_div_SumTmp_3__1_), .S0(net14289), .Y(
        net14299) );
  NAND2X12M U21 ( .A(net14181), .B(u_div_CryTmp_3__1_), .Y(net14943) );
  NAND2X12M U22 ( .A(net14181), .B(u_div_BInv[1]), .Y(net14942) );
  NAND2BX12M U23 ( .AN(n71), .B(n16), .Y(n64) );
  INVXLM U24 ( .A(b[5]), .Y(n4) );
  INVX2M U25 ( .A(n4), .Y(n5) );
  INVXLM U26 ( .A(u_div_CryTmp_2__2_), .Y(n6) );
  INVX2M U27 ( .A(n6), .Y(n7) );
  CLKINVX6M U28 ( .A(b[0]), .Y(net15454) );
  OR2X12M U29 ( .A(n121), .B(n8), .Y(n118) );
  CLKINVX40M U30 ( .A(a[1]), .Y(n8) );
  CLKINVX16M U31 ( .A(n70), .Y(net17222) );
  NAND3X4M U32 ( .A(n67), .B(n65), .C(n60), .Y(n66) );
  INVX3M U33 ( .A(n79), .Y(net17275) );
  INVX1M U34 ( .A(n121), .Y(net14512) );
  NAND2X5M U35 ( .A(net15548), .B(n1), .Y(n104) );
  NOR2X4M U36 ( .A(n46), .B(n47), .Y(n45) );
  DLY1X1M U37 ( .A(n5), .Y(n9) );
  NAND2X6M U38 ( .A(u_div_CryTmp_3__2_), .B(u_div_BInv[2]), .Y(net14948) );
  INVXLM U39 ( .A(n32), .Y(net14610) );
  NOR2X6M U40 ( .A(net15551), .B(n32), .Y(n101) );
  INVX16M U41 ( .A(u_div_CryTmp_3__5_), .Y(net10720) );
  INVX20M U42 ( .A(n85), .Y(n121) );
  AOI21X8M U43 ( .A0(n53), .A1(n54), .B0(n74), .Y(n52) );
  NAND2BX12M U44 ( .AN(net14294), .B(n12), .Y(n53) );
  NOR2X8M U45 ( .A(n52), .B(n48), .Y(quotient[4]) );
  NAND3X12M U46 ( .A(net14948), .B(net14947), .C(n93), .Y(u_div_CryTmp_3__3_)
         );
  NAND2BX12M U47 ( .AN(u_div_BInv[3]), .B(n64), .Y(n54) );
  INVXLM U48 ( .A(n16), .Y(n61) );
  MX2X4M U49 ( .A(n73), .B(net17218), .S0(net14618), .Y(n56) );
  MXI2X12M U50 ( .A(net15609), .B(net14383), .S0(quotient[5]), .Y(net14294) );
  BUFX14M U51 ( .A(net11810), .Y(quotient[5]) );
  MXI2X6M U52 ( .A(u_div_SumTmp_5__0_), .B(a[5]), .S0(net14618), .Y(n10) );
  CLKINVX4M U53 ( .A(n48), .Y(n65) );
  NAND2BX12M U54 ( .AN(n76), .B(n49), .Y(n48) );
  NAND2BX12M U55 ( .AN(n71), .B(n16), .Y(n12) );
  INVX1M U56 ( .A(net15516), .Y(n58) );
  NAND2X2M U57 ( .A(n13), .B(n77), .Y(n15) );
  NAND2X4M U58 ( .A(n14), .B(n15), .Y(n57) );
  INVX4M U59 ( .A(n78), .Y(n13) );
  BUFX4M U60 ( .A(u_div_CryTmp_5__1_), .Y(n78) );
  XOR2X2M U61 ( .A(n57), .B(n58), .Y(n73) );
  INVXLM U62 ( .A(net17196), .Y(n76) );
  NOR2X4M U63 ( .A(n71), .B(net15508), .Y(net15549) );
  NAND2BX12M U64 ( .AN(a[6]), .B(b[0]), .Y(net15508) );
  CLKINVX12M U65 ( .A(n37), .Y(n71) );
  NAND2X8M U66 ( .A(u_div_CryTmp_0__7_), .B(net14977), .Y(n87) );
  CLKNAND2X12M U67 ( .A(u_div_CryTmp_2__2_), .B(u_div_BInv[2]), .Y(net14543)
         );
  CLKNAND2X8M U68 ( .A(u_div_CryTmp_2__2_), .B(net14299), .Y(net14542) );
  NAND2X8M U69 ( .A(u_div_CryTmp_0__7_), .B(u_div_PartRem_1__7_), .Y(n86) );
  INVX10M U70 ( .A(n69), .Y(net14295) );
  XNOR2X4M U71 ( .A(n66), .B(n62), .Y(n69) );
  NAND3X12M U72 ( .A(net14943), .B(net14942), .C(n91), .Y(u_div_CryTmp_3__2_)
         );
  XOR2XLM U73 ( .A(net14594), .B(u_div_BInv[2]), .Y(n106) );
  CLKNAND2X4M U74 ( .A(net14594), .B(u_div_BInv[2]), .Y(n93) );
  MXI2X12M U75 ( .A(net11827), .B(n33), .S0(quotient[4]), .Y(net14594) );
  XOR2X4M U76 ( .A(n71), .B(n40), .Y(n59) );
  NAND2X12M U77 ( .A(net14814), .B(u_div_BInv[1]), .Y(net14537) );
  NAND2X12M U78 ( .A(n102), .B(n99), .Y(net15552) );
  NAND2X12M U79 ( .A(u_div_PartRem_1__1_), .B(u_div_BInv[1]), .Y(n113) );
  INVX6M U80 ( .A(n109), .Y(u_div_PartRem_1__2_) );
  NAND2X8M U81 ( .A(u_div_PartRem_1__1_), .B(u_div_CryTmp_0__1_), .Y(n112) );
  NAND2X12M U82 ( .A(n83), .B(n82), .Y(net14804) );
  AND2X12M U83 ( .A(a[7]), .B(b[0]), .Y(net17190) );
  NAND2BX12M U84 ( .AN(a[6]), .B(b[0]), .Y(n18) );
  INVX3M U85 ( .A(a[6]), .Y(n100) );
  NAND2X12M U86 ( .A(net15516), .B(n78), .Y(net14640) );
  CLKNAND2X8M U87 ( .A(u_div_PartRem_1__2_), .B(u_div_BInv[2]), .Y(n116) );
  NAND2X12M U88 ( .A(u_div_CryTmp_0__5_), .B(u_div_BInv_5_), .Y(n24) );
  NAND2X6M U89 ( .A(u_div_CryTmp_0__6_), .B(u_div_PartRem_1__6_), .Y(n26) );
  CLKINVX2M U90 ( .A(n9), .Y(u_div_BInv_5_) );
  NAND2X8M U91 ( .A(u_div_CryTmp_0__5_), .B(u_div_PartRem_1__5_), .Y(n23) );
  NOR3X8M U92 ( .A(net15551), .B(n71), .C(n32), .Y(net15645) );
  MX2X4M U93 ( .A(net14295), .B(u_div_SumTmp_3__4_), .S0(quotient[3]), .Y(
        net14282) );
  XNOR2X8M U94 ( .A(n45), .B(n61), .Y(net14298) );
  XOR2XLM U95 ( .A(n3), .B(u_div_BInv[2]), .Y(n110) );
  NOR2X8M U96 ( .A(n51), .B(n48), .Y(n50) );
  NAND2X12M U97 ( .A(u_div_CryTmp_0__6_), .B(u_div_BInv[6]), .Y(n27) );
  CLKINVX6M U98 ( .A(b[3]), .Y(n70) );
  MXI2X12M U99 ( .A(net14182), .B(net14183), .S0(n50), .Y(net14181) );
  NAND2X6M U100 ( .A(n_cell_11126_net12138), .B(n_cell_11126_net12139), .Y(
        u_div_CryTmp_5__1_) );
  INVX2M U101 ( .A(a[3]), .Y(net14815) );
  XOR2X1M U102 ( .A(u_div_BInv[0]), .B(a[3]), .Y(net14816) );
  INVX4M U103 ( .A(net10685), .Y(u_div_PartRem_2__4_) );
  CLKINVX1M U104 ( .A(b[6]), .Y(u_div_BInv[6]) );
  NAND2BX4M U105 ( .AN(n48), .B(n59), .Y(n47) );
  NAND2BX1M U106 ( .AN(u_div_CryTmp_4__1_), .B(n77), .Y(n41) );
  CLKAND2X12M U107 ( .A(net14513), .B(n95), .Y(n30) );
  INVX2M U108 ( .A(net14592), .Y(net14667) );
  XNOR2X2M U109 ( .A(n43), .B(u_div_BInv[3]), .Y(n60) );
  INVX2M U110 ( .A(n12), .Y(n44) );
  INVX2M U111 ( .A(net17227), .Y(u_div_BInv_4_) );
  OR2X2M U112 ( .A(net14978), .B(net14752), .Y(net14718) );
  INVX2M U113 ( .A(a[2]), .Y(net15023) );
  NAND2X2M U114 ( .A(u_div_BInv[1]), .B(u_div_CryTmp_1__1_), .Y(n90) );
  NAND2X4M U115 ( .A(n107), .B(n108), .Y(n109) );
  NAND2X4M U116 ( .A(net15108), .B(net14544), .Y(n107) );
  NAND2X2M U117 ( .A(u_div_BInv[1]), .B(u_div_CryTmp_3__1_), .Y(n91) );
  XOR3XLM U118 ( .A(net17336), .B(u_div_BInv[1]), .C(u_div_CryTmp_3__1_), .Y(
        u_div_SumTmp_3__1_) );
  NAND2X2M U119 ( .A(u_div_BInv[1]), .B(u_div_CryTmp_2__1_), .Y(net14539) );
  XNOR2X4M U120 ( .A(net17187), .B(n84), .Y(net15548) );
  NAND2X2M U121 ( .A(a[6]), .B(net15636), .Y(n99) );
  MXI2X1M U122 ( .A(net10686), .B(net10710), .S0(net15099), .Y(
        u_div_PartRem_1__4_) );
  INVX2M U123 ( .A(u_div_SumTmp_1__3_), .Y(net10710) );
  MXI2X1M U124 ( .A(net10685), .B(net10703), .S0(net15099), .Y(
        u_div_PartRem_1__5_) );
  NAND2BX8M U125 ( .AN(net15552), .B(net15554), .Y(net15516) );
  INVX2M U126 ( .A(net10683), .Y(u_div_PartRem_2__6_) );
  INVX2M U127 ( .A(n68), .Y(n42) );
  INVX4M U128 ( .A(net17222), .Y(u_div_BInv[3]) );
  INVX4M U129 ( .A(a[7]), .Y(n84) );
  NAND2X2M U130 ( .A(u_div_PartRem_1__6_), .B(u_div_BInv[6]), .Y(n28) );
  NAND2BX2M U131 ( .AN(a[7]), .B(b[0]), .Y(net17194) );
  INVX16M U132 ( .A(net10738), .Y(quotient[2]) );
  INVX8M U133 ( .A(n103), .Y(quotient[6]) );
  NOR2X2M U134 ( .A(net17222), .B(n71), .Y(n38) );
  NOR2BX2M U135 ( .AN(net17194), .B(n76), .Y(n39) );
  AND3XLM U136 ( .A(net14943), .B(net14942), .C(n91), .Y(n19) );
  INVX2M U137 ( .A(n19), .Y(n20) );
  NAND2X6M U138 ( .A(u_div_CryTmp_0__2_), .B(u_div_PartRem_1__2_), .Y(n115) );
  NAND2X8M U139 ( .A(u_div_CryTmp_0__2_), .B(u_div_BInv[2]), .Y(n117) );
  CLKNAND2X8M U140 ( .A(net15114), .B(u_div_BInv[2]), .Y(n88) );
  INVXLM U141 ( .A(net15114), .Y(net10687) );
  XOR2XLM U142 ( .A(net15114), .B(u_div_BInv[2]), .Y(n111) );
  INVXLM U143 ( .A(u_div_CryTmp_1__2_), .Y(n21) );
  INVX2M U144 ( .A(n21), .Y(n22) );
  NAND2X4M U145 ( .A(u_div_PartRem_1__5_), .B(u_div_BInv_5_), .Y(n25) );
  NAND3X12M U146 ( .A(n23), .B(n24), .C(n25), .Y(u_div_CryTmp_0__6_) );
  NAND3X12M U147 ( .A(n26), .B(n27), .C(n28), .Y(u_div_CryTmp_0__7_) );
  MXI2X3M U148 ( .A(net10684), .B(net10695), .S0(quotient[1]), .Y(
        u_div_PartRem_1__6_) );
  XNOR2XLM U149 ( .A(n106), .B(n20), .Y(n34) );
  XOR2X2M U150 ( .A(net17275), .B(n18), .Y(n105) );
  NAND2BX8M U151 ( .AN(n81), .B(n18), .Y(net15560) );
  CLKNAND2X12M U152 ( .A(n30), .B(u_div_BInv[3]), .Y(n97) );
  BUFX2M U153 ( .A(net14289), .Y(quotient[3]) );
  MX2X1M U154 ( .A(net14298), .B(u_div_SumTmp_3__3_), .S0(net14289), .Y(
        net14293) );
  CLKNAND2X12M U155 ( .A(u_div_CryTmp_1__2_), .B(u_div_BInv[2]), .Y(net14529)
         );
  NAND2BX8M U156 ( .AN(net14294), .B(net17222), .Y(n49) );
  MXI2X2M U157 ( .A(net14666), .B(u_div_SumTmp_2__3_), .S0(quotient[2]), .Y(
        net10685) );
  XNOR2XLM U158 ( .A(n111), .B(n22), .Y(n29) );
  INVX6M U159 ( .A(n71), .Y(u_div_BInv[2]) );
  INVX4M U160 ( .A(net15560), .Y(net17160) );
  XNOR3X2M U161 ( .A(net14589), .B(u_div_BInv[1]), .C(u_div_CryTmp_1__1_), .Y(
        n31) );
  OR2X12M U162 ( .A(net14804), .B(net17222), .Y(n32) );
  XNOR2X2M U163 ( .A(n120), .B(n80), .Y(n33) );
  CLKXOR2X2M U164 ( .A(u_div_BInv[0]), .B(a[1]), .Y(n35) );
  AND3X2M U165 ( .A(n38), .B(net17191), .C(n39), .Y(quotient[7]) );
  INVX2M U166 ( .A(net14512), .Y(quotient[1]) );
  INVX4M U167 ( .A(net14544), .Y(net15099) );
  NAND2X2M U168 ( .A(u_div_PartRem_1__7_), .B(net14977), .Y(net14503) );
  MXI2X1M U169 ( .A(net10683), .B(net10689), .S0(quotient[1]), .Y(
        u_div_PartRem_1__7_) );
  INVX2M U170 ( .A(net14610), .Y(net14619) );
  AOI21X8M U171 ( .A0(n53), .A1(n54), .B0(n72), .Y(n51) );
  NAND2BX1M U172 ( .AN(n77), .B(u_div_CryTmp_4__1_), .Y(n68) );
  OA22X8M U173 ( .A0(n16), .A1(u_div_BInv[2]), .B0(n55), .B1(n42), .Y(n72) );
  INVXLM U174 ( .A(n74), .Y(n63) );
  OA22X8M U175 ( .A0(u_div_BInv[2]), .A1(n16), .B0(n42), .B1(n55), .Y(n74) );
  AOI2BB1X8M U176 ( .A0N(u_div_CryTmp_4__1_), .A1N(u_div_BInv[1]), .B0(n10), 
        .Y(n55) );
  INVXLM U177 ( .A(net14294), .Y(n62) );
  INVX2M U178 ( .A(n75), .Y(net17336) );
  INVXLM U179 ( .A(net14181), .Y(n75) );
  INVX8M U180 ( .A(net17275), .Y(u_div_BInv[1]) );
  NOR2X3M U181 ( .A(n74), .B(n44), .Y(n43) );
  INVX2M U182 ( .A(n10), .Y(n80) );
  AOI2B1X2M U183 ( .A1N(n10), .A0(n41), .B0(n42), .Y(n40) );
  OAI2BB1X2M U184 ( .A0N(n53), .A1N(n54), .B0(n63), .Y(n67) );
  NAND3X12M U185 ( .A(net17190), .B(net17196), .C(net17189), .Y(net17187) );
  XNOR2X8M U186 ( .A(net17187), .B(n84), .Y(net17060) );
  XNOR2X8M U187 ( .A(net17187), .B(n84), .Y(net17161) );
  NOR3X12M U188 ( .A(b[1]), .B(b[3]), .C(b[2]), .Y(net17189) );
  NOR2X12M U189 ( .A(b[7]), .B(b[5]), .Y(n82) );
  NOR2X12M U190 ( .A(b[4]), .B(b[6]), .Y(n83) );
  INVX2M U191 ( .A(b[7]), .Y(net14977) );
  INVXLM U192 ( .A(b[4]), .Y(net17226) );
  NAND3X12M U193 ( .A(n86), .B(n87), .C(net14503), .Y(quotient[0]) );
  NAND2BX12M U194 ( .AN(net14978), .B(u_div_CryTmp_1__7_), .Y(n85) );
  INVX2M U195 ( .A(net14977), .Y(net14978) );
  NAND2X4M U196 ( .A(net10687), .B(net14512), .Y(net14513) );
  CLKINVX2M U197 ( .A(u_div_SumTmp_1__6_), .Y(net10689) );
  CLKINVX2M U198 ( .A(u_div_SumTmp_1__5_), .Y(net10695) );
  CLKINVX2M U199 ( .A(u_div_SumTmp_1__4_), .Y(net10703) );
  NAND3X12M U200 ( .A(net14529), .B(net14528), .C(n88), .Y(u_div_CryTmp_1__3_)
         );
  NAND3X12M U201 ( .A(net14523), .B(net14524), .C(n90), .Y(u_div_CryTmp_1__2_)
         );
  CLKNAND2X12M U202 ( .A(u_div_CryTmp_1__2_), .B(net15114), .Y(net14528) );
  CLKNAND2X16M U203 ( .A(net15022), .B(u_div_CryTmp_1__1_), .Y(net14524) );
  CLKNAND2X12M U204 ( .A(net15022), .B(u_div_BInv[1]), .Y(net14523) );
  NAND2X2M U205 ( .A(b[0]), .B(n89), .Y(u_div_CryTmp_1__1_) );
  INVX2M U206 ( .A(a[1]), .Y(n89) );
  BUFX2M U207 ( .A(net15454), .Y(u_div_BInv[0]) );
  INVX1M U208 ( .A(net15454), .Y(n_cell_11126_net12138) );
  MXI2X12M U209 ( .A(net15023), .B(net15024), .S0(net10722), .Y(net15022) );
  INVX2M U210 ( .A(u_div_SumTmp_2__0_), .Y(net15024) );
  MX2XLM U211 ( .A(net15023), .B(net15024), .S0(quotient[2]), .Y(net15108) );
  XNOR3X2M U212 ( .A(net14661), .B(u_div_BInv[1]), .C(u_div_CryTmp_2__1_), .Y(
        net15116) );
  NAND2X12M U213 ( .A(net14814), .B(u_div_CryTmp_2__1_), .Y(net14538) );
  INVX2M U214 ( .A(a[4]), .Y(net14182) );
  OR2X1M U215 ( .A(u_div_BInv[0]), .B(a[3]), .Y(u_div_CryTmp_3__1_) );
  OR2X4M U216 ( .A(u_div_BInv[0]), .B(a[4]), .Y(u_div_CryTmp_4__1_) );
  CLKXOR2X2M U217 ( .A(u_div_BInv[0]), .B(a[4]), .Y(net14183) );
  XNOR2XLM U218 ( .A(u_div_BInv[0]), .B(a[5]), .Y(u_div_SumTmp_5__0_) );
  INVX2M U219 ( .A(a[5]), .Y(n_cell_11126_net12139) );
  NAND2BX12M U220 ( .AN(net14619), .B(u_div_CryTmp_5__3_), .Y(net14618) );
  INVX2M U221 ( .A(net14618), .Y(net11810) );
  INVX3M U222 ( .A(u_div_SumTmp_5__2_), .Y(net14383) );
  NAND3X12M U223 ( .A(net14640), .B(net14641), .C(n14), .Y(u_div_CryTmp_5__2_)
         );
  NAND2X12M U224 ( .A(net17218), .B(u_div_BInv[1]), .Y(net14641) );
  NAND3X12M U225 ( .A(net14537), .B(net14538), .C(net14539), .Y(
        u_div_CryTmp_2__2_) );
  MXI2X12M U226 ( .A(net14815), .B(net14816), .S0(n92), .Y(net14814) );
  INVXLM U227 ( .A(net14814), .Y(net14660) );
  NOR2X12M U228 ( .A(net10720), .B(net10719), .Y(n92) );
  NOR2X12M U229 ( .A(net10720), .B(net10719), .Y(net14289) );
  NAND2BX12M U230 ( .AN(net15552), .B(net15554), .Y(net17218) );
  NOR2X12M U231 ( .A(net10724), .B(net14718), .Y(net10722) );
  CLKINVX16M U232 ( .A(u_div_CryTmp_2__6_), .Y(net10724) );
  OR2X12M U233 ( .A(net10724), .B(net14718), .Y(net10738) );
  MXI2X1M U234 ( .A(net14282), .B(u_div_SumTmp_2__5_), .S0(quotient[2]), .Y(
        net10683) );
  MXI2X1M U235 ( .A(net14293), .B(u_div_SumTmp_2__4_), .S0(quotient[2]), .Y(
        net10684) );
  NAND3X12M U236 ( .A(net14542), .B(net14543), .C(n94), .Y(u_div_CryTmp_2__3_)
         );
  INVX2M U237 ( .A(net17226), .Y(net17227) );
  NAND2BX1M U238 ( .AN(net14718), .B(u_div_BInv_5_), .Y(net10719) );
  NAND3X12M U239 ( .A(n96), .B(net14519), .C(n97), .Y(u_div_CryTmp_0__4_) );
  NAND2X6M U240 ( .A(u_div_CryTmp_0__3_), .B(n30), .Y(n96) );
  NAND2X1M U241 ( .A(n29), .B(n121), .Y(n95) );
  DLY1X1M U242 ( .A(net14594), .Y(net14592) );
  INVX2M U243 ( .A(net15420), .Y(net14739) );
  MXI2X8M U244 ( .A(net14739), .B(n98), .S0(quotient[6]), .Y(net15681) );
  INVX12M U245 ( .A(net17060), .Y(net15420) );
  INVXLM U246 ( .A(net17275), .Y(net17191) );
  XOR2X4M U247 ( .A(net15420), .B(n105), .Y(n98) );
  INVXLM U248 ( .A(b[0]), .Y(net15636) );
  OAI21X8M U249 ( .A0(net15420), .A1(net17160), .B0(net15645), .Y(n103) );
  OA21X8M U251 ( .A0(net15603), .A1(n100), .B0(n104), .Y(net15554) );
  NAND3X12M U252 ( .A(net15567), .B(net15549), .C(n101), .Y(n102) );
  INVXLM U253 ( .A(net15681), .Y(net15609) );
  MXI2X12M U254 ( .A(net14660), .B(net15116), .S0(quotient[2]), .Y(net15114)
         );
  CLKINVX8M U255 ( .A(n121), .Y(net14544) );
  INVX2M U256 ( .A(net15108), .Y(net14589) );
  NAND2BX12M U257 ( .AN(n35), .B(n121), .Y(n119) );
  NAND2X2M U258 ( .A(n31), .B(n121), .Y(n108) );
  INVXLM U259 ( .A(u_div_BInv[6]), .Y(net14752) );
  INVX6M U260 ( .A(net10686), .Y(u_div_PartRem_2__3_) );
  INVX3M U261 ( .A(net14660), .Y(net14661) );
  NAND2X12M U262 ( .A(n119), .B(n118), .Y(u_div_PartRem_1__1_) );
  XOR2XLM U263 ( .A(n110), .B(n7), .Y(u_div_SumTmp_2__2_) );
  NAND2X8M U264 ( .A(u_div_CryTmp_0__3_), .B(u_div_BInv[3]), .Y(net14519) );
  NAND2X2M U265 ( .A(u_div_CryTmp_0__1_), .B(u_div_BInv[1]), .Y(n114) );
  NAND3X12M U266 ( .A(n112), .B(n113), .C(n114), .Y(u_div_CryTmp_0__2_) );
  NAND3X12M U267 ( .A(n115), .B(n117), .C(n116), .Y(u_div_CryTmp_0__3_) );
  XOR2XLM U268 ( .A(u_div_BInv[1]), .B(u_div_CryTmp_4__1_), .Y(n120) );
  INVX2M U269 ( .A(net10684), .Y(u_div_PartRem_2__5_) );
  OR2X1M U270 ( .A(u_div_BInv[0]), .B(a[0]), .Y(u_div_CryTmp_0__1_) );
  INVXLM U271 ( .A(n80), .Y(net11827) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16 ( CLK, RST, A, B, EN, ALU_FUN, ALU_OUT, 
        OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, EN;
  output OUT_VALID;
  wire   N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106,
         N107, N108, N157, N159, n48, n49, n50, n51, n53, n60, n61, n62, n63,
         n64, n65, n71, n72, n73, n77, n78, n79, n83, n84, n85, n89, n90, n91,
         n95, n96, n97, n105, n106, n107, n109, n118, n120, n121, n123, n3, n4,
         n5, n6, n7, n8, n9, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n52, n54, n55,
         n56, n57, n58, n59, n66, n67, n68, n69, n70, n74, n75, n76, n80, n81,
         n82, n86, n87, n88, n92, n93, n94, n98, n99, n100, n101, n102, n103,
         n104, n108, n110, n111, n112, n113, n114, n115, n116, n117, n119,
         n122, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8;
  wire   [15:0] ALU_OUT_Comb;

  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_40 ( .A({1'b0, n35, n4, n67, n66, 
        n59, n58, A[1:0]}), .B({1'b0, n40, n42, n34, n30, n9, n32, n7, n38}), 
        .CI(1'b0), .DIFF({N84, N83, N82, N81, N80, N79, N78, N77, N76}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 add_37 ( .A({1'b0, n36, n4, n67, n66, 
        n59, n58, A[1:0]}), .B({1'b0, n40, n42, n34, n30, n9, n32, n7, n38}), 
        .CI(1'b0), .SUM({N75, N74, N73, N72, N71, N70, N69, N68, N67}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_43 ( .A({n36, n4, n67, n66, n59, 
        n58, A[1:0]}), .B({n40, n42, n34, n30, n9, n32, n3, n38}), .TC(1'b0), 
        .PRODUCT({N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, 
        N88, N87, N86, N85}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_1 div_46 ( .a({n69, n68, n67, n66, 
        n59, n58, A[1:0]}), .b({B[7:2], n57, n28}), .quotient({N108, N107, 
        N106, N105, N104, N103, N102, N101}), .remainder({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, 
        SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8}) );
  SDFFRQX2M ALU_OUT_reg_14_ ( .D(ALU_OUT_Comb[14]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[14]) );
  SDFFRQX2M ALU_OUT_reg_13_ ( .D(ALU_OUT_Comb[13]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[13]) );
  SDFFRQX2M ALU_OUT_reg_12_ ( .D(ALU_OUT_Comb[12]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[12]) );
  SDFFRQX2M ALU_OUT_reg_11_ ( .D(ALU_OUT_Comb[11]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[11]) );
  SDFFRQX2M ALU_OUT_reg_10_ ( .D(ALU_OUT_Comb[10]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[10]) );
  SDFFRQX2M ALU_OUT_reg_9_ ( .D(ALU_OUT_Comb[9]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[9]) );
  SDFFRQX2M ALU_OUT_reg_8_ ( .D(ALU_OUT_Comb[8]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[8]) );
  SDFFRQX2M ALU_OUT_reg_7_ ( .D(ALU_OUT_Comb[7]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[7]) );
  SDFFRQX2M ALU_OUT_reg_6_ ( .D(ALU_OUT_Comb[6]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[6]) );
  SDFFRQX2M ALU_OUT_reg_5_ ( .D(ALU_OUT_Comb[5]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[5]) );
  SDFFRQX2M ALU_OUT_reg_4_ ( .D(ALU_OUT_Comb[4]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[4]) );
  SDFFRQX2M ALU_OUT_reg_3_ ( .D(ALU_OUT_Comb[3]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n74), .Q(ALU_OUT[3]) );
  SDFFRQX1M ALU_OUT_reg_1_ ( .D(ALU_OUT_Comb[1]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n74), .Q(ALU_OUT[1]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n70), 
        .Q(OUT_VALID) );
  SDFFRQX1M ALU_OUT_reg_15_ ( .D(ALU_OUT_Comb[15]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n70), .Q(ALU_OUT[15]) );
  SDFFRQX1M ALU_OUT_reg_2_ ( .D(ALU_OUT_Comb[2]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n74), .Q(ALU_OUT[2]) );
  SDFFRHQX8M ALU_OUT_reg_0_ ( .D(ALU_OUT_Comb[0]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n74), .Q(ALU_OUT[0]) );
  BUFX18M U7 ( .A(B[1]), .Y(n57) );
  CLKINVX2M U23 ( .A(n8), .Y(n7) );
  INVX20M U24 ( .A(B[0]), .Y(n27) );
  CLKINVX4M U25 ( .A(n8), .Y(n3) );
  BUFX2M U26 ( .A(A[6]), .Y(n4) );
  BUFX18M U27 ( .A(A[6]), .Y(n68) );
  INVX4M U28 ( .A(n37), .Y(n38) );
  INVX6M U29 ( .A(n29), .Y(n30) );
  INVX2M U30 ( .A(B[3]), .Y(n192) );
  BUFX14M U31 ( .A(A[7]), .Y(n69) );
  NAND2BX2M U32 ( .AN(n117), .B(n138), .Y(n39) );
  BUFX4M U33 ( .A(A[3]), .Y(n59) );
  BUFX4M U34 ( .A(A[4]), .Y(n66) );
  BUFX2M U35 ( .A(A[7]), .Y(n36) );
  BUFX2M U36 ( .A(A[7]), .Y(n35) );
  NOR2X6M U37 ( .A(n43), .B(n5), .Y(ALU_OUT_Comb[0]) );
  INVXLM U38 ( .A(B[4]), .Y(n29) );
  OR2X2M U39 ( .A(n44), .B(n195), .Y(n5) );
  AND3X2M U40 ( .A(n45), .B(ALU_FUN[1]), .C(n80), .Y(n6) );
  INVX2M U41 ( .A(n4), .Y(n199) );
  INVX2M U42 ( .A(n192), .Y(n9) );
  INVX2M U43 ( .A(n31), .Y(n32) );
  INVX2M U44 ( .A(n41), .Y(n42) );
  AOI32XLM U45 ( .A0(n184), .A1(n183), .A2(n182), .B0(n4), .B1(n41), .Y(n187)
         );
  AOI22XLM U46 ( .A0(N82), .A1(n47), .B0(n4), .B1(n159), .Y(n112) );
  AOI22XLM U47 ( .A0(n4), .A1(n55), .B0(N106), .B1(n148), .Y(n108) );
  INVXLM U48 ( .A(n57), .Y(n8) );
  CLKINVX40M U49 ( .A(n27), .Y(n28) );
  MX2XLM U50 ( .A(n142), .B(n141), .S0(n7), .Y(n143) );
  MX2XLM U51 ( .A(n150), .B(n149), .S0(n7), .Y(n154) );
  INVXLM U52 ( .A(B[2]), .Y(n31) );
  INVXLM U53 ( .A(B[5]), .Y(n33) );
  INVX2M U54 ( .A(n33), .Y(n34) );
  NAND2BXLM U55 ( .AN(n66), .B(n30), .Y(n167) );
  INVXLM U56 ( .A(n28), .Y(n37) );
  NOR2X12M U57 ( .A(N101), .B(n39), .Y(n43) );
  INVX2M U58 ( .A(n196), .Y(n40) );
  INVXLM U59 ( .A(B[6]), .Y(n41) );
  BUFX20M U60 ( .A(A[5]), .Y(n67) );
  NOR2X2M U61 ( .A(n133), .B(n132), .Y(n137) );
  AND2X2M U62 ( .A(n137), .B(n136), .Y(n44) );
  BUFX4M U63 ( .A(A[2]), .Y(n58) );
  NOR3BX2M U64 ( .AN(n134), .B(n132), .C(n127), .Y(n138) );
  NOR2XLM U65 ( .A(n37), .B(A[0]), .Y(n163) );
  AOI21XLM U66 ( .A0(n163), .A1(n160), .B0(n7), .Y(n164) );
  CLKINVX1M U67 ( .A(A[1]), .Y(n160) );
  NAND2XLM U68 ( .A(A[0]), .B(n37), .Y(n173) );
  MX2XLM U69 ( .A(n125), .B(n124), .S0(A[0]), .Y(n126) );
  NAND2XLM U70 ( .A(n55), .B(A[1]), .Y(n129) );
  MX2XLM U71 ( .A(n145), .B(n144), .S0(A[1]), .Y(n147) );
  INVX2M U72 ( .A(n188), .Y(n193) );
  INVX2M U73 ( .A(n109), .Y(n194) );
  AOI211X2M U74 ( .A0(N84), .A1(n47), .B0(n158), .C0(n64), .Y(n109) );
  INVX2M U75 ( .A(n150), .Y(n158) );
  INVX2M U76 ( .A(n149), .Y(n159) );
  INVX2M U77 ( .A(n64), .Y(n139) );
  INVX2M U78 ( .A(n65), .Y(n141) );
  AO22X1M U79 ( .A0(N73), .A1(n46), .B0(n199), .B1(n158), .Y(n110) );
  INVX4M U80 ( .A(n75), .Y(n70) );
  INVX2M U81 ( .A(n75), .Y(n74) );
  NAND3X2M U82 ( .A(n131), .B(n135), .C(n128), .Y(n117) );
  AND3X2M U83 ( .A(n154), .B(n153), .C(n152), .Y(n155) );
  AOI211X2M U84 ( .A0(n58), .A1(n55), .B0(n147), .C0(n146), .Y(n157) );
  AOI22XLM U85 ( .A0(N102), .A1(n148), .B0(N77), .B1(n47), .Y(n156) );
  AOI22X1M U86 ( .A0(N78), .A1(n47), .B0(n159), .B1(n58), .Y(n86) );
  AOI211X2M U87 ( .A0(N87), .A1(n6), .B0(n81), .C0(n95), .Y(n82) );
  OAI2BB1X2M U88 ( .A0N(N100), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U89 ( .A0N(N99), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  AOI22X1M U90 ( .A0(N79), .A1(n47), .B0(n59), .B1(n159), .Y(n93) );
  AOI211X2M U91 ( .A0(N88), .A1(n6), .B0(n88), .C0(n89), .Y(n92) );
  AOI22X1M U92 ( .A0(n66), .A1(n55), .B0(N104), .B1(n148), .Y(n94) );
  OAI2BB1X2M U93 ( .A0N(N97), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  OAI2BB1X2M U94 ( .A0N(N98), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  INVX2M U95 ( .A(n174), .Y(n191) );
  INVX2M U96 ( .A(n129), .Y(n127) );
  OAI2BB1X2M U97 ( .A0N(N95), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U98 ( .A0N(N96), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  AOI22X1M U99 ( .A0(N80), .A1(n47), .B0(n66), .B1(n159), .Y(n100) );
  AOI211X2M U100 ( .A0(N89), .A1(n6), .B0(n98), .C0(n83), .Y(n99) );
  AOI22X1M U101 ( .A0(n35), .A1(n159), .B0(n198), .B1(n158), .Y(n115) );
  AOI221XLM U102 ( .A0(N74), .A1(n46), .B0(N92), .B1(n6), .C0(n60), .Y(n114)
         );
  AOI22XLM U103 ( .A0(n36), .A1(n55), .B0(N107), .B1(n148), .Y(n113) );
  AOI211X2M U104 ( .A0(N91), .A1(n6), .B0(n110), .C0(n71), .Y(n111) );
  OAI2BB1X2M U105 ( .A0N(N94), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  AOI21X2M U106 ( .A0(n50), .A1(n51), .B0(n195), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U107 ( .A0(N75), .A1(n46), .B0(n194), .Y(n50) );
  AOI2BB2XLM U108 ( .B0(N93), .B1(n6), .A0N(n198), .A1N(n53), .Y(n51) );
  AOI221XLM U109 ( .A0(n63), .A1(n199), .B0(n4), .B1(n65), .C0(n159), .Y(n72)
         );
  AOI221XLM U110 ( .A0(n4), .A1(n63), .B0(n64), .B1(n199), .C0(n158), .Y(n73)
         );
  AOI221XLM U111 ( .A0(n63), .A1(n198), .B0(n36), .B1(n65), .C0(n159), .Y(n61)
         );
  AOI221XLM U112 ( .A0(n63), .A1(n35), .B0(n64), .B1(n198), .C0(n158), .Y(n62)
         );
  OAI2BB1X2M U113 ( .A0N(n56), .A1N(n54), .B0(n118), .Y(n64) );
  OAI2BB1X2M U114 ( .A0N(n45), .A1N(n52), .B0(n118), .Y(n65) );
  AOI22X1M U115 ( .A0(N81), .A1(n47), .B0(n67), .B1(n159), .Y(n104) );
  AOI211X2M U116 ( .A0(N90), .A1(n6), .B0(n102), .C0(n77), .Y(n103) );
  AND2X2M U117 ( .A(n76), .B(n162), .Y(n45) );
  INVX2M U118 ( .A(n130), .Y(n148) );
  AOI22X1M U119 ( .A0(N68), .A1(n46), .B0(N86), .B1(n6), .Y(n152) );
  INVX2M U120 ( .A(n63), .Y(n142) );
  AND2X2M U121 ( .A(n123), .B(n45), .Y(n46) );
  AND2X2M U122 ( .A(n54), .B(n123), .Y(n47) );
  NAND4X2M U123 ( .A(n131), .B(n130), .C(n129), .D(n128), .Y(n133) );
  INVX2M U124 ( .A(n36), .Y(n198) );
  AO22X1M U125 ( .A0(N69), .A1(n46), .B0(n203), .B1(n158), .Y(n81) );
  AO22X1M U126 ( .A0(N70), .A1(n46), .B0(n202), .B1(n158), .Y(n88) );
  AO22X1M U127 ( .A0(N71), .A1(n46), .B0(n201), .B1(n158), .Y(n98) );
  AO22X1M U128 ( .A0(N72), .A1(n46), .B0(n200), .B1(n158), .Y(n102) );
  NOR2BX4M U129 ( .AN(n6), .B(n195), .Y(n48) );
  INVX2M U130 ( .A(n59), .Y(n202) );
  INVX2M U131 ( .A(n66), .Y(n201) );
  INVX2M U132 ( .A(n58), .Y(n203) );
  INVX2M U133 ( .A(n67), .Y(n200) );
  INVX2M U134 ( .A(RST), .Y(n75) );
  AND2X2M U135 ( .A(n135), .B(n134), .Y(n136) );
  AOI31X2M U136 ( .A0(N157), .A1(ALU_FUN[3]), .A2(n121), .B0(n107), .Y(n120)
         );
  INVX2M U137 ( .A(n163), .Y(n189) );
  INVXLM U138 ( .A(n32), .Y(n190) );
  AND4X2M U139 ( .A(N159), .B(n52), .C(ALU_FUN[3]), .D(n162), .Y(n107) );
  INVX2M U140 ( .A(n105), .Y(n146) );
  AOI31X2M U141 ( .A0(n193), .A1(ALU_FUN[3]), .A2(n106), .B0(n107), .Y(n105)
         );
  NOR3X2M U142 ( .A(n162), .B(ALU_FUN[2]), .C(n161), .Y(n106) );
  NAND2X2M U143 ( .A(EN), .B(n194), .Y(n49) );
  INVX2M U144 ( .A(ALU_FUN[0]), .Y(n162) );
  INVX2M U145 ( .A(ALU_FUN[1]), .Y(n161) );
  AND2X2M U146 ( .A(ALU_FUN[2]), .B(n161), .Y(n52) );
  AND2X2M U147 ( .A(ALU_FUN[0]), .B(n76), .Y(n54) );
  INVX2M U148 ( .A(ALU_FUN[3]), .Y(n76) );
  OAI222XLM U149 ( .A0(n96), .A1(n190), .B0(n32), .B1(n97), .C0(n53), .C1(n160), .Y(n95) );
  AOI221XLM U150 ( .A0(n63), .A1(n203), .B0(n58), .B1(n65), .C0(n159), .Y(n96)
         );
  AOI221XLM U151 ( .A0(n58), .A1(n63), .B0(n64), .B1(n203), .C0(n158), .Y(n97)
         );
  OAI222XLM U152 ( .A0(n90), .A1(n192), .B0(n9), .B1(n91), .C0(n53), .C1(n203), 
        .Y(n89) );
  AOI221XLM U153 ( .A0(n63), .A1(n202), .B0(n59), .B1(n65), .C0(n159), .Y(n90)
         );
  AOI221XLM U154 ( .A0(n59), .A1(n63), .B0(n64), .B1(n202), .C0(n158), .Y(n91)
         );
  OAI222XLM U155 ( .A0(n84), .A1(n29), .B0(n30), .B1(n85), .C0(n53), .C1(n202), 
        .Y(n83) );
  AOI221XLM U156 ( .A0(n63), .A1(n201), .B0(n66), .B1(n65), .C0(n159), .Y(n84)
         );
  AOI221XLM U157 ( .A0(n66), .A1(n63), .B0(n64), .B1(n201), .C0(n158), .Y(n85)
         );
  OAI222XLM U158 ( .A0(n78), .A1(n197), .B0(n34), .B1(n79), .C0(n53), .C1(n201), .Y(n77) );
  INVXLM U159 ( .A(n34), .Y(n197) );
  AOI221XLM U160 ( .A0(n63), .A1(n200), .B0(n67), .B1(n65), .C0(n159), .Y(n78)
         );
  AOI221XLM U161 ( .A0(n67), .A1(n63), .B0(n64), .B1(n200), .C0(n158), .Y(n79)
         );
  AND3X2M U162 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .C(n52), .Y(n55) );
  NOR2X2M U163 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  INVX2M U164 ( .A(n53), .Y(n151) );
  MX2XLM U165 ( .A(n150), .B(n149), .S0(n38), .Y(n131) );
  NAND3X2M U166 ( .A(n123), .B(ALU_FUN[0]), .C(ALU_FUN[3]), .Y(n118) );
  MX2XLM U167 ( .A(n142), .B(n141), .S0(n38), .Y(n122) );
  AND2X2M U168 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n56) );
  AND3X2M U169 ( .A(n123), .B(n162), .C(ALU_FUN[3]), .Y(n63) );
  MX2XLM U170 ( .A(n139), .B(n142), .S0(n7), .Y(n140) );
  MX2XLM U171 ( .A(n139), .B(n142), .S0(n38), .Y(n119) );
  NOR3X2M U172 ( .A(n161), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  INVX2M U173 ( .A(ALU_FUN[2]), .Y(n80) );
  INVX2M U174 ( .A(EN), .Y(n195) );
  AOI22XLM U175 ( .A0(n67), .A1(n55), .B0(N105), .B1(n148), .Y(n101) );
  AOI22XLM U176 ( .A0(n59), .A1(n55), .B0(N103), .B1(n148), .Y(n87) );
  INVXLM U177 ( .A(B[7]), .Y(n196) );
  OAI222XLM U178 ( .A0(n72), .A1(n41), .B0(n42), .B1(n73), .C0(n53), .C1(n200), 
        .Y(n71) );
  AOI32XLM U179 ( .A0(n169), .A1(n179), .A2(n182), .B0(n42), .B1(n199), .Y(
        n170) );
  XNOR2XLM U180 ( .A(n4), .B(n42), .Y(n182) );
  AOI22XLM U181 ( .A0(N108), .A1(n148), .B0(N83), .B1(n47), .Y(n116) );
  NAND2XLM U182 ( .A(n40), .B(n198), .Y(n186) );
  OAI222XLM U183 ( .A0(n61), .A1(n196), .B0(n40), .B1(n62), .C0(n53), .C1(n199), .Y(n60) );
  NOR2XLM U184 ( .A(n198), .B(n40), .Y(n185) );
  NAND3X2M U185 ( .A(n54), .B(ALU_FUN[1]), .C(n80), .Y(n130) );
  NAND2X2M U186 ( .A(n52), .B(n54), .Y(n149) );
  NAND2X2M U187 ( .A(n56), .B(n45), .Y(n150) );
  AOI31X2M U188 ( .A0(n87), .A1(n86), .A2(n82), .B0(n195), .Y(ALU_OUT_Comb[2])
         );
  AOI31X2M U189 ( .A0(n94), .A1(n93), .A2(n92), .B0(n195), .Y(ALU_OUT_Comb[3])
         );
  AOI31X2M U190 ( .A0(n101), .A1(n100), .A2(n99), .B0(n195), .Y(
        ALU_OUT_Comb[4]) );
  AOI31X2M U191 ( .A0(n108), .A1(n104), .A2(n103), .B0(n195), .Y(
        ALU_OUT_Comb[5]) );
  AOI31X2M U192 ( .A0(n113), .A1(n112), .A2(n111), .B0(n195), .Y(
        ALU_OUT_Comb[6]) );
  AOI31X2M U193 ( .A0(n116), .A1(n115), .A2(n114), .B0(n195), .Y(
        ALU_OUT_Comb[7]) );
  NAND2X2M U194 ( .A(N67), .B(n46), .Y(n135) );
  NAND2X2M U195 ( .A(N76), .B(n47), .Y(n128) );
  NAND2X2M U196 ( .A(N85), .B(n6), .Y(n134) );
  NAND2X2M U197 ( .A(n119), .B(n150), .Y(n125) );
  NAND2X2M U198 ( .A(n122), .B(n149), .Y(n124) );
  NAND2BX2M U199 ( .AN(n126), .B(n120), .Y(n132) );
  NAND3X2M U200 ( .A(ALU_FUN[3]), .B(n162), .C(n56), .Y(n53) );
  NAND2X2M U201 ( .A(n140), .B(n150), .Y(n145) );
  NAND2X2M U202 ( .A(n143), .B(n149), .Y(n144) );
  NAND2X2M U203 ( .A(A[0]), .B(n151), .Y(n153) );
  AOI31X2M U204 ( .A0(n157), .A1(n156), .A2(n155), .B0(n195), .Y(
        ALU_OUT_Comb[1]) );
  NAND2BX1M U205 ( .AN(n30), .B(n66), .Y(n178) );
  CLKNAND2X2M U206 ( .A(n178), .B(n167), .Y(n180) );
  NOR2X1M U207 ( .A(n192), .B(n59), .Y(n175) );
  NOR2X1M U208 ( .A(n190), .B(n58), .Y(n166) );
  CLKNAND2X2M U209 ( .A(n58), .B(n190), .Y(n177) );
  NAND2BX1M U210 ( .AN(n166), .B(n177), .Y(n172) );
  AOI211X1M U211 ( .A0(A[1]), .A1(n189), .B0(n172), .C0(n164), .Y(n165) );
  CLKNAND2X2M U212 ( .A(n59), .B(n192), .Y(n176) );
  OAI31X1M U213 ( .A0(n175), .A1(n166), .A2(n165), .B0(n176), .Y(n168) );
  NAND2BX1M U214 ( .AN(n67), .B(n34), .Y(n183) );
  OAI211X1M U215 ( .A0(n180), .A1(n168), .B0(n167), .C0(n183), .Y(n169) );
  NAND2BX1M U216 ( .AN(n34), .B(n67), .Y(n179) );
  OAI21X1M U217 ( .A0(n185), .A1(n170), .B0(n186), .Y(N159) );
  OA21X1M U218 ( .A0(n173), .A1(n160), .B0(n7), .Y(n171) );
  AOI211X1M U219 ( .A0(n173), .A1(n160), .B0(n172), .C0(n171), .Y(n174) );
  AOI31X1M U220 ( .A0(n191), .A1(n177), .A2(n176), .B0(n175), .Y(n181) );
  OAI2B11X1M U221 ( .A1N(n181), .A0(n180), .B0(n179), .C0(n178), .Y(n184) );
  AOI2B1X1M U222 ( .A1N(n187), .A0(n186), .B0(n185), .Y(n188) );
  NOR2X1M U223 ( .A(N159), .B(n193), .Y(N157) );
endmodule


module reg_file_MEM_WIDTH8_MEM_DEPTH16_ADDR_WIDTH4 ( WrEn, RdEn, CLK, RST, 
        Address, WrData, RdData, RdData_valid, REG0, REG1, REG2, REG3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST;
  output RdData_valid;
  wire   mem_15__7_, mem_15__6_, mem_15__5_, mem_15__4_, mem_15__3_,
         mem_15__2_, mem_15__1_, mem_15__0_, mem_14__7_, mem_14__6_,
         mem_14__5_, mem_14__4_, mem_14__3_, mem_14__2_, mem_14__1_,
         mem_14__0_, mem_13__7_, mem_13__6_, mem_13__5_, mem_13__4_,
         mem_13__3_, mem_13__2_, mem_13__1_, mem_13__0_, mem_12__7_,
         mem_12__6_, mem_12__5_, mem_12__4_, mem_12__3_, mem_12__2_,
         mem_12__1_, mem_12__0_, mem_11__7_, mem_11__6_, mem_11__5_,
         mem_11__4_, mem_11__3_, mem_11__2_, mem_11__1_, mem_11__0_,
         mem_10__7_, mem_10__6_, mem_10__5_, mem_10__4_, mem_10__3_,
         mem_10__2_, mem_10__1_, mem_10__0_, mem_9__7_, mem_9__6_, mem_9__5_,
         mem_9__4_, mem_9__3_, mem_9__2_, mem_9__1_, mem_9__0_, mem_8__7_,
         mem_8__6_, mem_8__5_, mem_8__4_, mem_8__3_, mem_8__2_, mem_8__1_,
         mem_8__0_, mem_7__7_, mem_7__6_, mem_7__5_, mem_7__4_, mem_7__3_,
         mem_7__2_, mem_7__1_, mem_7__0_, mem_6__7_, mem_6__6_, mem_6__5_,
         mem_6__4_, mem_6__3_, mem_6__2_, mem_6__1_, mem_6__0_, mem_5__7_,
         mem_5__6_, mem_5__5_, mem_5__4_, mem_5__3_, mem_5__2_, mem_5__1_,
         mem_5__0_, mem_4__7_, mem_4__6_, mem_4__5_, mem_4__4_, mem_4__3_,
         mem_4__2_, mem_4__1_, mem_4__0_, N35, N36, N37, N38, N39, N40, N41,
         N42, n1, n3, n5, n14, n15, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n28, n29, n30, n31, n32, n33, n34, n36, n37, n38, n39, n40,
         n42, n44, n46, n48, n50, n52, n54, n56, n58, n60, n62, n64, n66, n68,
         n70, n72, n74, n76, n78, n80, n82, n84, n86, n88, n90, n92, n94, n96,
         n98, n100, n102, n104, n106, n108, n110, n112, n114, n116, n118, n120,
         n122, n124, n126, n128, n130, n132, n134, n136, n138, n140, n142,
         n144, n146, n148, n150, n152, n154, n156, n158, n160, n162, n164,
         n166, n168, n170, n172, n174, n176, n178, n180, n182, n184, n186,
         n188, n190, n192, n194, n196, n198, n200, n202, n204, n206, n208,
         n210, n212, n214, n216, n218, n220, n222, n224, n226, n228, n230,
         n232, n234, n236, n238, n240, n242, n244, n246, n248, n250, n252,
         n254, n256, n258, n260, n262, n264, n266, n268, n270, n272, n274,
         n276, n278, n280, n282, n284, n286, n288, n290, n292, n294, n296,
         n298, n300, n302, n304, n306, n308, n310, n312, n314, n2, n4, n6, n7,
         n9, n10, n11, n12, n13, n16, n27, n35, n315, n316, n317, n318, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482;

  SDFFRHQX4M mem_reg_1__1_ ( .D(n78), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), .Q(REG1[1]) );
  SDFFRHQX8M mem_reg_1__5_ ( .D(n86), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG1[5]) );
  SDFFRQX2M RdData_reg_7_ ( .D(n58), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n457), 
        .Q(RdData[7]) );
  SDFFRQX2M RdData_reg_6_ ( .D(n56), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), 
        .Q(RdData[6]) );
  SDFFRQX2M RdData_reg_5_ ( .D(n54), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n457), 
        .Q(RdData[5]) );
  SDFFRQX2M RdData_reg_4_ ( .D(n52), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n457), 
        .Q(RdData[4]) );
  SDFFRQX2M RdData_reg_3_ ( .D(n50), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n457), 
        .Q(RdData[3]) );
  SDFFRQX2M RdData_reg_2_ ( .D(n48), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n457), 
        .Q(RdData[2]) );
  SDFFRQX2M RdData_reg_1_ ( .D(n46), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n457), 
        .Q(RdData[1]) );
  SDFFRQX2M RdData_reg_0_ ( .D(n44), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n457), 
        .Q(RdData[0]) );
  SDFFRQX2M RdData_valid_reg ( .D(n42), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n462), .Q(RdData_valid) );
  SDFFRQX2M mem_reg_15__7_ ( .D(n314), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n457), .Q(mem_15__7_) );
  SDFFRQX2M mem_reg_15__6_ ( .D(n312), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n467), .Q(mem_15__6_) );
  SDFFRQX2M mem_reg_15__5_ ( .D(n310), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n467), .Q(mem_15__5_) );
  SDFFRQX2M mem_reg_15__4_ ( .D(n308), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n467), .Q(mem_15__4_) );
  SDFFRQX2M mem_reg_15__3_ ( .D(n306), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n467), .Q(mem_15__3_) );
  SDFFRQX2M mem_reg_15__2_ ( .D(n304), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n467), .Q(mem_15__2_) );
  SDFFRQX2M mem_reg_15__1_ ( .D(n302), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n467), .Q(mem_15__1_) );
  SDFFRQX2M mem_reg_15__0_ ( .D(n300), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n467), .Q(mem_15__0_) );
  SDFFRQX2M mem_reg_13__7_ ( .D(n282), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_13__7_) );
  SDFFRQX2M mem_reg_13__6_ ( .D(n280), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_13__6_) );
  SDFFRQX2M mem_reg_13__5_ ( .D(n278), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_13__5_) );
  SDFFRQX2M mem_reg_13__4_ ( .D(n276), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_13__4_) );
  SDFFRQX2M mem_reg_13__3_ ( .D(n274), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_13__3_) );
  SDFFRQX2M mem_reg_13__2_ ( .D(n272), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_13__2_) );
  SDFFRQX2M mem_reg_13__1_ ( .D(n270), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_13__1_) );
  SDFFRQX2M mem_reg_13__0_ ( .D(n268), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_13__0_) );
  SDFFRQX2M mem_reg_11__7_ ( .D(n250), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_11__7_) );
  SDFFRQX2M mem_reg_11__6_ ( .D(n248), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_11__6_) );
  SDFFRQX2M mem_reg_11__5_ ( .D(n246), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_11__5_) );
  SDFFRQX2M mem_reg_11__4_ ( .D(n244), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_11__4_) );
  SDFFRQX2M mem_reg_11__3_ ( .D(n242), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_11__3_) );
  SDFFRQX2M mem_reg_11__2_ ( .D(n240), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_11__2_) );
  SDFFRQX2M mem_reg_11__1_ ( .D(n238), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_11__1_) );
  SDFFRQX2M mem_reg_11__0_ ( .D(n236), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_11__0_) );
  SDFFRQX2M mem_reg_9__7_ ( .D(n218), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_9__7_) );
  SDFFRQX2M mem_reg_9__6_ ( .D(n216), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_9__6_) );
  SDFFRQX2M mem_reg_9__5_ ( .D(n214), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_9__5_) );
  SDFFRQX2M mem_reg_9__4_ ( .D(n212), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_9__4_) );
  SDFFRQX2M mem_reg_9__3_ ( .D(n210), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_9__3_) );
  SDFFRQX2M mem_reg_9__2_ ( .D(n208), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_9__2_) );
  SDFFRQX2M mem_reg_9__1_ ( .D(n206), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_9__1_) );
  SDFFRQX2M mem_reg_9__0_ ( .D(n204), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_9__0_) );
  SDFFRQX2M mem_reg_7__7_ ( .D(n186), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_7__7_) );
  SDFFRQX2M mem_reg_7__6_ ( .D(n184), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_7__6_) );
  SDFFRQX2M mem_reg_7__5_ ( .D(n182), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_7__5_) );
  SDFFRQX2M mem_reg_7__4_ ( .D(n180), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_7__4_) );
  SDFFRQX2M mem_reg_7__3_ ( .D(n178), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_7__3_) );
  SDFFRQX2M mem_reg_7__2_ ( .D(n176), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_7__2_) );
  SDFFRQX2M mem_reg_7__1_ ( .D(n174), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_7__1_) );
  SDFFRQX2M mem_reg_7__0_ ( .D(n172), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_7__0_) );
  SDFFRQX2M mem_reg_5__7_ ( .D(n154), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_5__7_) );
  SDFFRQX2M mem_reg_5__6_ ( .D(n152), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_5__6_) );
  SDFFRQX2M mem_reg_5__5_ ( .D(n150), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_5__5_) );
  SDFFRQX2M mem_reg_5__4_ ( .D(n148), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_5__4_) );
  SDFFRQX2M mem_reg_5__3_ ( .D(n146), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_5__3_) );
  SDFFRQX2M mem_reg_5__2_ ( .D(n144), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_5__2_) );
  SDFFRQX2M mem_reg_5__1_ ( .D(n142), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_5__1_) );
  SDFFRQX2M mem_reg_5__0_ ( .D(n140), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_5__0_) );
  SDFFRQX2M mem_reg_14__7_ ( .D(n298), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_14__7_) );
  SDFFRQX2M mem_reg_14__6_ ( .D(n296), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_14__6_) );
  SDFFRQX2M mem_reg_14__5_ ( .D(n294), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_14__5_) );
  SDFFRQX2M mem_reg_14__4_ ( .D(n292), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_14__4_) );
  SDFFRQX2M mem_reg_14__3_ ( .D(n290), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_14__3_) );
  SDFFRQX2M mem_reg_14__2_ ( .D(n288), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_14__2_) );
  SDFFRQX2M mem_reg_14__1_ ( .D(n286), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_14__1_) );
  SDFFRQX2M mem_reg_14__0_ ( .D(n284), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n466), .Q(mem_14__0_) );
  SDFFRQX2M mem_reg_12__7_ ( .D(n266), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_12__7_) );
  SDFFRQX2M mem_reg_12__6_ ( .D(n264), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_12__6_) );
  SDFFRQX2M mem_reg_12__5_ ( .D(n262), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_12__5_) );
  SDFFRQX2M mem_reg_12__4_ ( .D(n260), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_12__4_) );
  SDFFRQX2M mem_reg_12__3_ ( .D(n258), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_12__3_) );
  SDFFRQX2M mem_reg_12__2_ ( .D(n256), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_12__2_) );
  SDFFRQX2M mem_reg_12__1_ ( .D(n254), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_12__1_) );
  SDFFRQX2M mem_reg_12__0_ ( .D(n252), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n465), .Q(mem_12__0_) );
  SDFFRQX2M mem_reg_10__7_ ( .D(n234), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_10__7_) );
  SDFFRQX2M mem_reg_10__6_ ( .D(n232), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_10__6_) );
  SDFFRQX2M mem_reg_10__5_ ( .D(n230), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_10__5_) );
  SDFFRQX2M mem_reg_10__4_ ( .D(n228), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_10__4_) );
  SDFFRQX2M mem_reg_10__3_ ( .D(n226), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_10__3_) );
  SDFFRQX2M mem_reg_10__2_ ( .D(n224), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_10__2_) );
  SDFFRQX2M mem_reg_10__1_ ( .D(n222), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n464), .Q(mem_10__1_) );
  SDFFRQX2M mem_reg_10__0_ ( .D(n220), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n463), .Q(mem_10__0_) );
  SDFFRQX2M mem_reg_8__7_ ( .D(n202), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_8__7_) );
  SDFFRQX2M mem_reg_8__6_ ( .D(n200), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_8__6_) );
  SDFFRQX2M mem_reg_8__5_ ( .D(n198), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_8__5_) );
  SDFFRQX2M mem_reg_8__4_ ( .D(n196), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n463), .Q(mem_8__4_) );
  SDFFRQX2M mem_reg_8__3_ ( .D(n194), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_8__3_) );
  SDFFRQX2M mem_reg_8__2_ ( .D(n192), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_8__2_) );
  SDFFRQX2M mem_reg_8__1_ ( .D(n190), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_8__1_) );
  SDFFRQX2M mem_reg_8__0_ ( .D(n188), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n462), .Q(mem_8__0_) );
  SDFFRQX2M mem_reg_6__7_ ( .D(n170), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_6__7_) );
  SDFFRQX2M mem_reg_6__6_ ( .D(n168), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_6__6_) );
  SDFFRQX2M mem_reg_6__5_ ( .D(n166), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_6__5_) );
  SDFFRQX2M mem_reg_6__4_ ( .D(n164), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_6__4_) );
  SDFFRQX2M mem_reg_6__3_ ( .D(n162), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_6__3_) );
  SDFFRQX2M mem_reg_6__2_ ( .D(n160), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_6__2_) );
  SDFFRQX2M mem_reg_6__1_ ( .D(n158), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_6__1_) );
  SDFFRQX2M mem_reg_6__0_ ( .D(n156), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n461), .Q(mem_6__0_) );
  SDFFRQX2M mem_reg_4__7_ ( .D(n138), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_4__7_) );
  SDFFRQX2M mem_reg_4__6_ ( .D(n136), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_4__6_) );
  SDFFRQX2M mem_reg_4__5_ ( .D(n134), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_4__5_) );
  SDFFRQX2M mem_reg_4__4_ ( .D(n132), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_4__4_) );
  SDFFRQX2M mem_reg_4__3_ ( .D(n130), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_4__3_) );
  SDFFRQX2M mem_reg_4__2_ ( .D(n128), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_4__2_) );
  SDFFRQX2M mem_reg_4__1_ ( .D(n126), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_4__1_) );
  SDFFRQX2M mem_reg_4__0_ ( .D(n124), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(mem_4__0_) );
  SDFFSQX2M mem_reg_3__5_ ( .D(n118), .SI(1'b0), .SE(1'b0), .CK(CLK), .SN(n457), .Q(REG3[5]) );
  SDFFSQX2M mem_reg_2__0_ ( .D(n92), .SI(1'b0), .SE(1'b0), .CK(CLK), .SN(n457), 
        .Q(REG2[0]) );
  SDFFRQX2M mem_reg_3__0_ ( .D(n108), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG3[0]) );
  SDFFRQX2M mem_reg_2__1_ ( .D(n94), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), 
        .Q(REG2[1]) );
  SDFFRQX2M mem_reg_3__7_ ( .D(n122), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(REG3[7]) );
  SDFFRQX2M mem_reg_3__2_ ( .D(n112), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG3[2]) );
  SDFFRQX2M mem_reg_3__3_ ( .D(n114), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG3[3]) );
  SDFFRQX2M mem_reg_3__4_ ( .D(n116), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG3[4]) );
  SDFFRQX2M mem_reg_3__6_ ( .D(n120), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n460), .Q(REG3[6]) );
  SDFFRQX2M mem_reg_3__1_ ( .D(n110), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG3[1]) );
  SDFFRQX2M mem_reg_2__4_ ( .D(n100), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG2[4]) );
  SDFFRQX4M mem_reg_2__3_ ( .D(n98), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), 
        .Q(REG2[3]) );
  SDFFSQX2M mem_reg_2__7_ ( .D(n106), .SI(1'b0), .SE(1'b0), .CK(CLK), .SN(n457), .Q(REG2[7]) );
  SDFFRQX2M mem_reg_2__2_ ( .D(n96), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), 
        .Q(REG2[2]) );
  SDFFRQX2M mem_reg_2__5_ ( .D(n102), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG2[5]) );
  SDFFRQX2M mem_reg_2__6_ ( .D(n104), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG2[6]) );
  SDFFRQX2M mem_reg_0__2_ ( .D(n64), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), 
        .Q(REG0[2]) );
  SDFFRHQX8M mem_reg_1__0_ ( .D(n76), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), .Q(REG1[0]) );
  SDFFRHQX8M mem_reg_1__6_ ( .D(n88), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n459), .Q(REG1[6]) );
  SDFFRX4M mem_reg_0__7_ ( .D(n74), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), 
        .Q(n9), .QN(n7) );
  SDFFRQX4M mem_reg_0__5_ ( .D(n70), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), 
        .Q(REG0[5]) );
  SDFFRQX2M mem_reg_0__4_ ( .D(n68), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), 
        .Q(REG0[4]) );
  SDFFRQX2M mem_reg_0__3_ ( .D(n66), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), 
        .Q(REG0[3]) );
  SDFFRQX4M mem_reg_0__1_ ( .D(n62), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n457), 
        .Q(REG0[1]) );
  SDFFRHQX8M mem_reg_1__3_ ( .D(n82), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), .Q(REG1[3]) );
  SDFFRHQX8M mem_reg_1__2_ ( .D(n80), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), .Q(REG1[2]) );
  SDFFRQX4M mem_reg_0__0_ ( .D(n60), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n457), 
        .Q(REG0[0]) );
  SDFFRHQX8M mem_reg_0__6_ ( .D(n72), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), .Q(REG0[6]) );
  SDFFRHQX8M mem_reg_1__7_ ( .D(n90), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), .Q(REG1[7]) );
  SDFFRHQX8M mem_reg_1__4_ ( .D(n84), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n458), .Q(REG1[4]) );
  INVXLM U3 ( .A(REG1[5]), .Y(n2) );
  INVX2M U4 ( .A(n2), .Y(n4) );
  DLY1X1M U5 ( .A(REG1[4]), .Y(n6) );
  DLY2X1M U6 ( .A(REG1[0]), .Y(n317) );
  INVX10M U7 ( .A(n7), .Y(REG0[7]) );
  DLY1X1M U8 ( .A(n4), .Y(n316) );
  AOI22XLM U9 ( .A0(REG0[2]), .A1(n442), .B0(REG1[2]), .B1(n439), .Y(n351) );
  AOI22XLM U10 ( .A0(REG0[3]), .A1(n441), .B0(REG1[3]), .B1(n438), .Y(n363) );
  INVXLM U11 ( .A(REG1[7]), .Y(n10) );
  INVX2M U12 ( .A(n10), .Y(n11) );
  INVXLM U13 ( .A(REG1[6]), .Y(n12) );
  INVX2M U14 ( .A(n12), .Y(n13) );
  INVXLM U15 ( .A(REG1[1]), .Y(n16) );
  INVX2M U16 ( .A(n16), .Y(n27) );
  INVXLM U17 ( .A(REG0[6]), .Y(n35) );
  INVX2M U18 ( .A(n35), .Y(n315) );
  AOI22XLM U19 ( .A0(REG0[4]), .A1(n441), .B0(n6), .B1(n438), .Y(n375) );
  NAND2X2M U20 ( .A(Address[3]), .B(Address[2]), .Y(n410) );
  MX2XLM U21 ( .A(REG0[4]), .B(WrData[4]), .S0(n472), .Y(n68) );
  NOR2X2M U22 ( .A(n428), .B(Address[2]), .Y(n19) );
  NOR2X2M U23 ( .A(Address[1]), .B(Address[2]), .Y(n14) );
  OAI2BB2XLM U24 ( .B0(n5), .B1(n478), .A0N(REG0[2]), .A1N(n5), .Y(n64) );
  OAI2BB2XLM U25 ( .B0(n5), .B1(n477), .A0N(REG0[3]), .A1N(n5), .Y(n66) );
  OAI2BB2XLM U26 ( .B0(n5), .B1(n480), .A0N(REG0[0]), .A1N(n5), .Y(n60) );
  OAI2BB2XLM U27 ( .B0(n5), .B1(n479), .A0N(REG0[1]), .A1N(n5), .Y(n62) );
  NAND2X2M U28 ( .A(RdEn), .B(n482), .Y(n3) );
  INVX4M U29 ( .A(WrData[0]), .Y(n480) );
  INVX4M U30 ( .A(WrData[1]), .Y(n479) );
  INVX4M U31 ( .A(WrData[2]), .Y(n478) );
  INVX4M U32 ( .A(WrData[3]), .Y(n477) );
  INVX4M U33 ( .A(WrData[4]), .Y(n476) );
  INVX4M U34 ( .A(WrData[5]), .Y(n475) );
  INVX4M U35 ( .A(WrData[6]), .Y(n474) );
  INVX4M U36 ( .A(WrData[7]), .Y(n473) );
  BUFX4M U37 ( .A(n470), .Y(n460) );
  BUFX4M U38 ( .A(n471), .Y(n461) );
  BUFX4M U39 ( .A(n468), .Y(n462) );
  BUFX4M U40 ( .A(n468), .Y(n463) );
  BUFX4M U41 ( .A(n471), .Y(n464) );
  BUFX4M U42 ( .A(n469), .Y(n465) );
  BUFX4M U43 ( .A(n469), .Y(n466) );
  BUFX4M U44 ( .A(n470), .Y(n459) );
  BUFX4M U45 ( .A(n468), .Y(n458) );
  BUFX2M U46 ( .A(n471), .Y(n467) );
  BUFX2M U47 ( .A(n416), .Y(n433) );
  BUFX2M U48 ( .A(n416), .Y(n432) );
  BUFX2M U49 ( .A(n416), .Y(n431) );
  INVX2M U50 ( .A(n5), .Y(n472) );
  BUFX2M U51 ( .A(n33), .Y(n448) );
  BUFX2M U52 ( .A(n34), .Y(n447) );
  BUFX2M U53 ( .A(n29), .Y(n450) );
  BUFX2M U54 ( .A(n31), .Y(n449) );
  BUFX2M U55 ( .A(n18), .Y(n456) );
  BUFX2M U56 ( .A(n20), .Y(n455) );
  BUFX2M U57 ( .A(n21), .Y(n454) );
  BUFX2M U58 ( .A(n24), .Y(n452) );
  BUFX2M U59 ( .A(n36), .Y(n446) );
  BUFX2M U60 ( .A(n37), .Y(n445) );
  BUFX2M U61 ( .A(n38), .Y(n444) );
  BUFX2M U62 ( .A(n40), .Y(n443) );
  BUFX2M U63 ( .A(n23), .Y(n453) );
  BUFX2M U64 ( .A(n28), .Y(n451) );
  BUFX4M U65 ( .A(n469), .Y(n457) );
  BUFX2M U66 ( .A(n470), .Y(n469) );
  BUFX2M U67 ( .A(n471), .Y(n468) );
  BUFX2M U68 ( .A(n417), .Y(n436) );
  BUFX2M U69 ( .A(n419), .Y(n442) );
  BUFX2M U70 ( .A(n417), .Y(n435) );
  BUFX2M U71 ( .A(n419), .Y(n441) );
  BUFX2M U72 ( .A(n418), .Y(n439) );
  BUFX2M U73 ( .A(n418), .Y(n438) );
  BUFX2M U74 ( .A(n417), .Y(n434) );
  BUFX2M U75 ( .A(n419), .Y(n440) );
  BUFX2M U76 ( .A(n418), .Y(n437) );
  AND2X2M U77 ( .A(n17), .B(n14), .Y(n318) );
  NAND2X2M U78 ( .A(n15), .B(n14), .Y(n5) );
  NAND2X2M U79 ( .A(n19), .B(n15), .Y(n18) );
  NAND2X2M U80 ( .A(n19), .B(n17), .Y(n20) );
  AND2X2M U81 ( .A(n26), .B(n427), .Y(n15) );
  AND2X2M U82 ( .A(n39), .B(n427), .Y(n30) );
  NAND2X2M U83 ( .A(n30), .B(n19), .Y(n33) );
  NAND2X2M U84 ( .A(n32), .B(n19), .Y(n34) );
  NAND2X2M U85 ( .A(n30), .B(n14), .Y(n29) );
  NAND2X2M U86 ( .A(n32), .B(n14), .Y(n31) );
  NAND2X2M U87 ( .A(n30), .B(n25), .Y(n38) );
  NAND2X2M U88 ( .A(n32), .B(n25), .Y(n40) );
  NAND2X2M U89 ( .A(n30), .B(n22), .Y(n36) );
  NAND2X2M U90 ( .A(n32), .B(n22), .Y(n37) );
  NAND2X2M U91 ( .A(n22), .B(n15), .Y(n21) );
  NAND2X2M U92 ( .A(n25), .B(n15), .Y(n24) );
  NAND2X2M U93 ( .A(n22), .B(n17), .Y(n23) );
  NAND2X2M U94 ( .A(n25), .B(n17), .Y(n28) );
  INVX2M U95 ( .A(n3), .Y(n481) );
  BUFX2M U96 ( .A(RST), .Y(n471) );
  BUFX2M U97 ( .A(RST), .Y(n470) );
  INVX2M U98 ( .A(Address[2]), .Y(n429) );
  INVX2M U99 ( .A(Address[1]), .Y(n428) );
  INVX2M U100 ( .A(Address[0]), .Y(n427) );
  INVX2M U101 ( .A(Address[3]), .Y(n430) );
  AO22X1M U102 ( .A0(RdData[0]), .A1(n3), .B0(N42), .B1(n481), .Y(n44) );
  AO22X1M U103 ( .A0(RdData[1]), .A1(n3), .B0(N41), .B1(n481), .Y(n46) );
  AO22X1M U104 ( .A0(RdData[2]), .A1(n3), .B0(N40), .B1(n481), .Y(n48) );
  AO22X1M U105 ( .A0(RdData[3]), .A1(n3), .B0(N39), .B1(n481), .Y(n50) );
  AO22X1M U106 ( .A0(RdData[4]), .A1(n3), .B0(N38), .B1(n481), .Y(n52) );
  AO22X1M U107 ( .A0(RdData[5]), .A1(n3), .B0(N37), .B1(n481), .Y(n54) );
  AO22X1M U108 ( .A0(RdData[6]), .A1(n3), .B0(N36), .B1(n481), .Y(n56) );
  AO22X1M U109 ( .A0(RdData[7]), .A1(n3), .B0(N35), .B1(n481), .Y(n58) );
  NOR2X2M U110 ( .A(n482), .B(RdEn), .Y(n1) );
  NOR2BX2M U111 ( .AN(n1), .B(Address[3]), .Y(n26) );
  OAI2BB2X1M U112 ( .B0(n479), .B1(n18), .A0N(REG2[1]), .A1N(n456), .Y(n94) );
  OAI2BB2X1M U113 ( .B0(n478), .B1(n18), .A0N(REG2[2]), .A1N(n456), .Y(n96) );
  OAI2BB2X1M U114 ( .B0(n477), .B1(n456), .A0N(REG2[3]), .A1N(n456), .Y(n98)
         );
  OAI2BB2X1M U115 ( .B0(n476), .B1(n18), .A0N(REG2[4]), .A1N(n456), .Y(n100)
         );
  OAI2BB2X1M U116 ( .B0(n475), .B1(n18), .A0N(REG2[5]), .A1N(n456), .Y(n102)
         );
  OAI2BB2X1M U117 ( .B0(n474), .B1(n18), .A0N(REG2[6]), .A1N(n456), .Y(n104)
         );
  OAI2BB2X1M U118 ( .B0(n480), .B1(n455), .A0N(REG3[0]), .A1N(n455), .Y(n108)
         );
  OAI2BB2X1M U119 ( .B0(n479), .B1(n20), .A0N(REG3[1]), .A1N(n455), .Y(n110)
         );
  OAI2BB2X1M U120 ( .B0(n478), .B1(n20), .A0N(REG3[2]), .A1N(n455), .Y(n112)
         );
  OAI2BB2X1M U121 ( .B0(n477), .B1(n20), .A0N(REG3[3]), .A1N(n455), .Y(n114)
         );
  OAI2BB2X1M U122 ( .B0(n476), .B1(n20), .A0N(REG3[4]), .A1N(n455), .Y(n116)
         );
  OAI2BB2X1M U123 ( .B0(n474), .B1(n20), .A0N(REG3[6]), .A1N(n455), .Y(n120)
         );
  OAI2BB2X1M U124 ( .B0(n473), .B1(n455), .A0N(REG3[7]), .A1N(n455), .Y(n122)
         );
  OAI2BB2X1M U125 ( .B0(n480), .B1(n454), .A0N(mem_4__0_), .A1N(n454), .Y(n124) );
  OAI2BB2X1M U126 ( .B0(n479), .B1(n454), .A0N(mem_4__1_), .A1N(n454), .Y(n126) );
  OAI2BB2X1M U127 ( .B0(n478), .B1(n21), .A0N(mem_4__2_), .A1N(n454), .Y(n128)
         );
  OAI2BB2X1M U128 ( .B0(n477), .B1(n21), .A0N(mem_4__3_), .A1N(n454), .Y(n130)
         );
  OAI2BB2X1M U129 ( .B0(n476), .B1(n21), .A0N(mem_4__4_), .A1N(n454), .Y(n132)
         );
  OAI2BB2X1M U130 ( .B0(n475), .B1(n21), .A0N(mem_4__5_), .A1N(n454), .Y(n134)
         );
  OAI2BB2X1M U131 ( .B0(n474), .B1(n21), .A0N(mem_4__6_), .A1N(n454), .Y(n136)
         );
  OAI2BB2X1M U132 ( .B0(n473), .B1(n454), .A0N(mem_4__7_), .A1N(n454), .Y(n138) );
  OAI2BB2X1M U133 ( .B0(n480), .B1(n453), .A0N(mem_5__0_), .A1N(n453), .Y(n140) );
  OAI2BB2X1M U134 ( .B0(n479), .B1(n453), .A0N(mem_5__1_), .A1N(n453), .Y(n142) );
  OAI2BB2X1M U135 ( .B0(n478), .B1(n23), .A0N(mem_5__2_), .A1N(n453), .Y(n144)
         );
  OAI2BB2X1M U136 ( .B0(n477), .B1(n23), .A0N(mem_5__3_), .A1N(n453), .Y(n146)
         );
  OAI2BB2X1M U137 ( .B0(n476), .B1(n23), .A0N(mem_5__4_), .A1N(n453), .Y(n148)
         );
  OAI2BB2X1M U138 ( .B0(n475), .B1(n23), .A0N(mem_5__5_), .A1N(n453), .Y(n150)
         );
  OAI2BB2X1M U139 ( .B0(n474), .B1(n23), .A0N(mem_5__6_), .A1N(n453), .Y(n152)
         );
  OAI2BB2X1M U140 ( .B0(n473), .B1(n453), .A0N(mem_5__7_), .A1N(n453), .Y(n154) );
  OAI2BB2X1M U141 ( .B0(n480), .B1(n452), .A0N(mem_6__0_), .A1N(n452), .Y(n156) );
  OAI2BB2X1M U142 ( .B0(n479), .B1(n452), .A0N(mem_6__1_), .A1N(n452), .Y(n158) );
  OAI2BB2X1M U143 ( .B0(n478), .B1(n24), .A0N(mem_6__2_), .A1N(n452), .Y(n160)
         );
  OAI2BB2X1M U144 ( .B0(n477), .B1(n24), .A0N(mem_6__3_), .A1N(n452), .Y(n162)
         );
  OAI2BB2X1M U145 ( .B0(n476), .B1(n24), .A0N(mem_6__4_), .A1N(n452), .Y(n164)
         );
  OAI2BB2X1M U146 ( .B0(n475), .B1(n24), .A0N(mem_6__5_), .A1N(n452), .Y(n166)
         );
  OAI2BB2X1M U147 ( .B0(n474), .B1(n24), .A0N(mem_6__6_), .A1N(n452), .Y(n168)
         );
  OAI2BB2X1M U148 ( .B0(n473), .B1(n452), .A0N(mem_6__7_), .A1N(n452), .Y(n170) );
  OAI2BB2X1M U149 ( .B0(n480), .B1(n451), .A0N(mem_7__0_), .A1N(n451), .Y(n172) );
  OAI2BB2X1M U150 ( .B0(n479), .B1(n451), .A0N(mem_7__1_), .A1N(n451), .Y(n174) );
  OAI2BB2X1M U151 ( .B0(n478), .B1(n28), .A0N(mem_7__2_), .A1N(n451), .Y(n176)
         );
  OAI2BB2X1M U152 ( .B0(n477), .B1(n28), .A0N(mem_7__3_), .A1N(n451), .Y(n178)
         );
  OAI2BB2X1M U153 ( .B0(n476), .B1(n28), .A0N(mem_7__4_), .A1N(n451), .Y(n180)
         );
  OAI2BB2X1M U154 ( .B0(n475), .B1(n28), .A0N(mem_7__5_), .A1N(n451), .Y(n182)
         );
  OAI2BB2X1M U155 ( .B0(n474), .B1(n28), .A0N(mem_7__6_), .A1N(n451), .Y(n184)
         );
  OAI2BB2X1M U156 ( .B0(n473), .B1(n451), .A0N(mem_7__7_), .A1N(n451), .Y(n186) );
  OAI2BB2X1M U157 ( .B0(n480), .B1(n450), .A0N(mem_8__0_), .A1N(n450), .Y(n188) );
  OAI2BB2X1M U158 ( .B0(n479), .B1(n450), .A0N(mem_8__1_), .A1N(n450), .Y(n190) );
  OAI2BB2X1M U159 ( .B0(n478), .B1(n29), .A0N(mem_8__2_), .A1N(n450), .Y(n192)
         );
  OAI2BB2X1M U160 ( .B0(n477), .B1(n29), .A0N(mem_8__3_), .A1N(n450), .Y(n194)
         );
  OAI2BB2X1M U161 ( .B0(n476), .B1(n29), .A0N(mem_8__4_), .A1N(n450), .Y(n196)
         );
  OAI2BB2X1M U162 ( .B0(n475), .B1(n29), .A0N(mem_8__5_), .A1N(n450), .Y(n198)
         );
  OAI2BB2X1M U163 ( .B0(n474), .B1(n29), .A0N(mem_8__6_), .A1N(n450), .Y(n200)
         );
  OAI2BB2X1M U164 ( .B0(n473), .B1(n450), .A0N(mem_8__7_), .A1N(n450), .Y(n202) );
  OAI2BB2X1M U165 ( .B0(n480), .B1(n449), .A0N(mem_9__0_), .A1N(n449), .Y(n204) );
  OAI2BB2X1M U166 ( .B0(n479), .B1(n449), .A0N(mem_9__1_), .A1N(n449), .Y(n206) );
  OAI2BB2X1M U167 ( .B0(n478), .B1(n31), .A0N(mem_9__2_), .A1N(n449), .Y(n208)
         );
  OAI2BB2X1M U168 ( .B0(n477), .B1(n31), .A0N(mem_9__3_), .A1N(n449), .Y(n210)
         );
  OAI2BB2X1M U169 ( .B0(n476), .B1(n31), .A0N(mem_9__4_), .A1N(n449), .Y(n212)
         );
  OAI2BB2X1M U170 ( .B0(n475), .B1(n31), .A0N(mem_9__5_), .A1N(n449), .Y(n214)
         );
  OAI2BB2X1M U171 ( .B0(n474), .B1(n31), .A0N(mem_9__6_), .A1N(n449), .Y(n216)
         );
  OAI2BB2X1M U172 ( .B0(n473), .B1(n449), .A0N(mem_9__7_), .A1N(n449), .Y(n218) );
  OAI2BB2X1M U173 ( .B0(n480), .B1(n448), .A0N(mem_10__0_), .A1N(n448), .Y(
        n220) );
  OAI2BB2X1M U174 ( .B0(n479), .B1(n448), .A0N(mem_10__1_), .A1N(n448), .Y(
        n222) );
  OAI2BB2X1M U175 ( .B0(n478), .B1(n33), .A0N(mem_10__2_), .A1N(n448), .Y(n224) );
  OAI2BB2X1M U176 ( .B0(n477), .B1(n33), .A0N(mem_10__3_), .A1N(n448), .Y(n226) );
  OAI2BB2X1M U177 ( .B0(n476), .B1(n33), .A0N(mem_10__4_), .A1N(n448), .Y(n228) );
  OAI2BB2X1M U178 ( .B0(n475), .B1(n33), .A0N(mem_10__5_), .A1N(n448), .Y(n230) );
  OAI2BB2X1M U179 ( .B0(n474), .B1(n33), .A0N(mem_10__6_), .A1N(n448), .Y(n232) );
  OAI2BB2X1M U317 ( .B0(n473), .B1(n448), .A0N(mem_10__7_), .A1N(n448), .Y(
        n234) );
  OAI2BB2X1M U318 ( .B0(n480), .B1(n447), .A0N(mem_11__0_), .A1N(n447), .Y(
        n236) );
  OAI2BB2X1M U319 ( .B0(n479), .B1(n447), .A0N(mem_11__1_), .A1N(n447), .Y(
        n238) );
  OAI2BB2X1M U320 ( .B0(n478), .B1(n34), .A0N(mem_11__2_), .A1N(n447), .Y(n240) );
  OAI2BB2X1M U321 ( .B0(n477), .B1(n34), .A0N(mem_11__3_), .A1N(n447), .Y(n242) );
  OAI2BB2X1M U322 ( .B0(n476), .B1(n34), .A0N(mem_11__4_), .A1N(n447), .Y(n244) );
  OAI2BB2X1M U323 ( .B0(n475), .B1(n34), .A0N(mem_11__5_), .A1N(n447), .Y(n246) );
  OAI2BB2X1M U324 ( .B0(n474), .B1(n34), .A0N(mem_11__6_), .A1N(n447), .Y(n248) );
  OAI2BB2X1M U325 ( .B0(n473), .B1(n447), .A0N(mem_11__7_), .A1N(n447), .Y(
        n250) );
  OAI2BB2X1M U326 ( .B0(n480), .B1(n446), .A0N(mem_12__0_), .A1N(n446), .Y(
        n252) );
  OAI2BB2X1M U327 ( .B0(n479), .B1(n446), .A0N(mem_12__1_), .A1N(n446), .Y(
        n254) );
  OAI2BB2X1M U328 ( .B0(n478), .B1(n36), .A0N(mem_12__2_), .A1N(n446), .Y(n256) );
  OAI2BB2X1M U329 ( .B0(n477), .B1(n36), .A0N(mem_12__3_), .A1N(n446), .Y(n258) );
  OAI2BB2X1M U330 ( .B0(n476), .B1(n36), .A0N(mem_12__4_), .A1N(n446), .Y(n260) );
  OAI2BB2X1M U331 ( .B0(n475), .B1(n36), .A0N(mem_12__5_), .A1N(n446), .Y(n262) );
  OAI2BB2X1M U332 ( .B0(n474), .B1(n36), .A0N(mem_12__6_), .A1N(n446), .Y(n264) );
  OAI2BB2X1M U333 ( .B0(n473), .B1(n446), .A0N(mem_12__7_), .A1N(n446), .Y(
        n266) );
  OAI2BB2X1M U334 ( .B0(n480), .B1(n445), .A0N(mem_13__0_), .A1N(n445), .Y(
        n268) );
  OAI2BB2X1M U335 ( .B0(n479), .B1(n445), .A0N(mem_13__1_), .A1N(n445), .Y(
        n270) );
  OAI2BB2X1M U336 ( .B0(n478), .B1(n37), .A0N(mem_13__2_), .A1N(n445), .Y(n272) );
  OAI2BB2X1M U337 ( .B0(n477), .B1(n37), .A0N(mem_13__3_), .A1N(n445), .Y(n274) );
  OAI2BB2X1M U338 ( .B0(n476), .B1(n37), .A0N(mem_13__4_), .A1N(n445), .Y(n276) );
  OAI2BB2X1M U339 ( .B0(n475), .B1(n37), .A0N(mem_13__5_), .A1N(n445), .Y(n278) );
  OAI2BB2X1M U340 ( .B0(n474), .B1(n37), .A0N(mem_13__6_), .A1N(n445), .Y(n280) );
  OAI2BB2X1M U341 ( .B0(n473), .B1(n445), .A0N(mem_13__7_), .A1N(n445), .Y(
        n282) );
  OAI2BB2X1M U342 ( .B0(n480), .B1(n444), .A0N(mem_14__0_), .A1N(n444), .Y(
        n284) );
  OAI2BB2X1M U343 ( .B0(n479), .B1(n444), .A0N(mem_14__1_), .A1N(n444), .Y(
        n286) );
  OAI2BB2X1M U344 ( .B0(n478), .B1(n38), .A0N(mem_14__2_), .A1N(n444), .Y(n288) );
  OAI2BB2X1M U345 ( .B0(n477), .B1(n38), .A0N(mem_14__3_), .A1N(n444), .Y(n290) );
  OAI2BB2X1M U346 ( .B0(n476), .B1(n38), .A0N(mem_14__4_), .A1N(n444), .Y(n292) );
  OAI2BB2X1M U347 ( .B0(n475), .B1(n38), .A0N(mem_14__5_), .A1N(n444), .Y(n294) );
  OAI2BB2X1M U348 ( .B0(n474), .B1(n38), .A0N(mem_14__6_), .A1N(n444), .Y(n296) );
  OAI2BB2X1M U349 ( .B0(n473), .B1(n444), .A0N(mem_14__7_), .A1N(n444), .Y(
        n298) );
  OAI2BB2X1M U350 ( .B0(n480), .B1(n443), .A0N(mem_15__0_), .A1N(n443), .Y(
        n300) );
  OAI2BB2X1M U351 ( .B0(n479), .B1(n443), .A0N(mem_15__1_), .A1N(n443), .Y(
        n302) );
  OAI2BB2X1M U352 ( .B0(n478), .B1(n40), .A0N(mem_15__2_), .A1N(n443), .Y(n304) );
  OAI2BB2X1M U353 ( .B0(n477), .B1(n40), .A0N(mem_15__3_), .A1N(n443), .Y(n306) );
  OAI2BB2X1M U354 ( .B0(n476), .B1(n40), .A0N(mem_15__4_), .A1N(n443), .Y(n308) );
  OAI2BB2X1M U355 ( .B0(n475), .B1(n40), .A0N(mem_15__5_), .A1N(n443), .Y(n310) );
  OAI2BB2X1M U356 ( .B0(n474), .B1(n40), .A0N(mem_15__6_), .A1N(n443), .Y(n312) );
  OAI2BB2X1M U357 ( .B0(n473), .B1(n443), .A0N(mem_15__7_), .A1N(n443), .Y(
        n314) );
  OAI2BB2X1M U358 ( .B0(n480), .B1(n456), .A0N(REG2[0]), .A1N(n456), .Y(n92)
         );
  OAI2BB2X1M U359 ( .B0(n473), .B1(n456), .A0N(REG2[7]), .A1N(n456), .Y(n106)
         );
  OAI2BB2X1M U360 ( .B0(n475), .B1(n455), .A0N(REG3[5]), .A1N(n455), .Y(n118)
         );
  AND2X2M U361 ( .A(n39), .B(Address[0]), .Y(n32) );
  AND2X2M U362 ( .A(n26), .B(Address[0]), .Y(n17) );
  INVX2M U363 ( .A(WrEn), .Y(n482) );
  MX2XLM U364 ( .A(REG1[3]), .B(WrData[3]), .S0(n318), .Y(n82) );
  MX2XLM U365 ( .A(n27), .B(WrData[1]), .S0(n318), .Y(n78) );
  MX2XLM U366 ( .A(REG1[2]), .B(WrData[2]), .S0(n318), .Y(n80) );
  MX2XLM U367 ( .A(n317), .B(WrData[0]), .S0(n318), .Y(n76) );
  MX2XLM U368 ( .A(n6), .B(WrData[4]), .S0(n318), .Y(n84) );
  MX2XLM U369 ( .A(n316), .B(WrData[5]), .S0(n318), .Y(n86) );
  MX2XLM U370 ( .A(REG0[5]), .B(WrData[5]), .S0(n472), .Y(n70) );
  MX2XLM U371 ( .A(n315), .B(WrData[6]), .S0(n472), .Y(n72) );
  MX2XLM U372 ( .A(n9), .B(WrData[7]), .S0(n472), .Y(n74) );
  AND2X2M U373 ( .A(Address[3]), .B(n1), .Y(n39) );
  AND2X2M U374 ( .A(Address[2]), .B(n428), .Y(n22) );
  AND2X2M U375 ( .A(Address[2]), .B(Address[1]), .Y(n25) );
  AO21XLM U376 ( .A0(RdData_valid), .A1(n1), .B0(n481), .Y(n42) );
  NOR2X1M U381 ( .A(n428), .B(Address[0]), .Y(n417) );
  NOR2X1M U382 ( .A(n428), .B(n427), .Y(n416) );
  AOI22X1M U383 ( .A0(mem_10__0_), .A1(n436), .B0(mem_11__0_), .B1(n433), .Y(
        n324) );
  NOR2X1M U384 ( .A(Address[0]), .B(Address[1]), .Y(n419) );
  NOR2X1M U385 ( .A(n427), .B(Address[1]), .Y(n418) );
  AOI22X1M U386 ( .A0(mem_8__0_), .A1(n442), .B0(mem_9__0_), .B1(n439), .Y(
        n323) );
  CLKNAND2X2M U387 ( .A(Address[3]), .B(n429), .Y(n407) );
  AOI21X1M U388 ( .A0(n324), .A1(n323), .B0(n407), .Y(n334) );
  AOI22X1M U389 ( .A0(mem_14__0_), .A1(n436), .B0(mem_15__0_), .B1(n433), .Y(
        n326) );
  AOI22X1M U390 ( .A0(mem_12__0_), .A1(n442), .B0(mem_13__0_), .B1(n439), .Y(
        n325) );
  AOI21X1M U391 ( .A0(n326), .A1(n325), .B0(n410), .Y(n333) );
  AOI22X1M U392 ( .A0(REG2[0]), .A1(n436), .B0(REG3[0]), .B1(n433), .Y(n328)
         );
  AOI22X1M U393 ( .A0(REG0[0]), .A1(n442), .B0(n317), .B1(n439), .Y(n327) );
  CLKNAND2X2M U394 ( .A(n429), .B(n430), .Y(n413) );
  AOI21X1M U395 ( .A0(n328), .A1(n327), .B0(n413), .Y(n332) );
  AOI22X1M U396 ( .A0(mem_6__0_), .A1(n436), .B0(mem_7__0_), .B1(n433), .Y(
        n330) );
  AOI22X1M U397 ( .A0(mem_4__0_), .A1(n442), .B0(mem_5__0_), .B1(n439), .Y(
        n329) );
  CLKNAND2X2M U398 ( .A(Address[2]), .B(n430), .Y(n420) );
  AOI21X1M U399 ( .A0(n330), .A1(n329), .B0(n420), .Y(n331) );
  OR4X1M U400 ( .A(n334), .B(n333), .C(n332), .D(n331), .Y(N42) );
  AOI22X1M U401 ( .A0(mem_10__1_), .A1(n436), .B0(mem_11__1_), .B1(n433), .Y(
        n336) );
  AOI22X1M U402 ( .A0(mem_8__1_), .A1(n442), .B0(mem_9__1_), .B1(n439), .Y(
        n335) );
  AOI21X1M U403 ( .A0(n336), .A1(n335), .B0(n407), .Y(n346) );
  AOI22X1M U404 ( .A0(mem_14__1_), .A1(n436), .B0(mem_15__1_), .B1(n433), .Y(
        n338) );
  AOI22X1M U405 ( .A0(mem_12__1_), .A1(n442), .B0(mem_13__1_), .B1(n439), .Y(
        n337) );
  AOI21X1M U406 ( .A0(n338), .A1(n337), .B0(n410), .Y(n345) );
  AOI22X1M U407 ( .A0(REG2[1]), .A1(n436), .B0(REG3[1]), .B1(n433), .Y(n340)
         );
  AOI22X1M U408 ( .A0(REG0[1]), .A1(n442), .B0(n27), .B1(n439), .Y(n339) );
  AOI21X1M U409 ( .A0(n340), .A1(n339), .B0(n413), .Y(n344) );
  AOI22X1M U410 ( .A0(mem_6__1_), .A1(n436), .B0(mem_7__1_), .B1(n433), .Y(
        n342) );
  AOI22X1M U411 ( .A0(mem_4__1_), .A1(n442), .B0(mem_5__1_), .B1(n439), .Y(
        n341) );
  AOI21X1M U412 ( .A0(n342), .A1(n341), .B0(n420), .Y(n343) );
  OR4X1M U413 ( .A(n346), .B(n345), .C(n344), .D(n343), .Y(N41) );
  AOI22X1M U414 ( .A0(mem_10__2_), .A1(n436), .B0(mem_11__2_), .B1(n433), .Y(
        n348) );
  AOI22X1M U415 ( .A0(mem_8__2_), .A1(n442), .B0(mem_9__2_), .B1(n439), .Y(
        n347) );
  AOI21X1M U416 ( .A0(n348), .A1(n347), .B0(n407), .Y(n358) );
  AOI22X1M U417 ( .A0(mem_14__2_), .A1(n436), .B0(mem_15__2_), .B1(n433), .Y(
        n350) );
  AOI22X1M U418 ( .A0(mem_12__2_), .A1(n442), .B0(mem_13__2_), .B1(n439), .Y(
        n349) );
  AOI21X1M U419 ( .A0(n350), .A1(n349), .B0(n410), .Y(n357) );
  AOI22X1M U420 ( .A0(REG2[2]), .A1(n436), .B0(REG3[2]), .B1(n433), .Y(n352)
         );
  AOI21X1M U421 ( .A0(n352), .A1(n351), .B0(n413), .Y(n356) );
  AOI22X1M U422 ( .A0(mem_6__2_), .A1(n436), .B0(mem_7__2_), .B1(n433), .Y(
        n354) );
  AOI22X1M U423 ( .A0(mem_4__2_), .A1(n442), .B0(mem_5__2_), .B1(n439), .Y(
        n353) );
  AOI21X1M U424 ( .A0(n354), .A1(n353), .B0(n420), .Y(n355) );
  OR4X1M U425 ( .A(n358), .B(n357), .C(n356), .D(n355), .Y(N40) );
  AOI22X1M U426 ( .A0(mem_10__3_), .A1(n435), .B0(mem_11__3_), .B1(n432), .Y(
        n360) );
  AOI22X1M U427 ( .A0(mem_8__3_), .A1(n441), .B0(mem_9__3_), .B1(n438), .Y(
        n359) );
  AOI21X1M U428 ( .A0(n360), .A1(n359), .B0(n407), .Y(n370) );
  AOI22X1M U429 ( .A0(mem_14__3_), .A1(n435), .B0(mem_15__3_), .B1(n432), .Y(
        n362) );
  AOI22X1M U430 ( .A0(mem_12__3_), .A1(n441), .B0(mem_13__3_), .B1(n438), .Y(
        n361) );
  AOI21X1M U431 ( .A0(n362), .A1(n361), .B0(n410), .Y(n369) );
  AOI22X1M U432 ( .A0(REG2[3]), .A1(n435), .B0(REG3[3]), .B1(n432), .Y(n364)
         );
  AOI21X1M U433 ( .A0(n364), .A1(n363), .B0(n413), .Y(n368) );
  AOI22X1M U434 ( .A0(mem_6__3_), .A1(n435), .B0(mem_7__3_), .B1(n432), .Y(
        n366) );
  AOI22X1M U435 ( .A0(mem_4__3_), .A1(n441), .B0(mem_5__3_), .B1(n438), .Y(
        n365) );
  AOI21X1M U436 ( .A0(n366), .A1(n365), .B0(n420), .Y(n367) );
  OR4X1M U437 ( .A(n370), .B(n369), .C(n368), .D(n367), .Y(N39) );
  AOI22X1M U438 ( .A0(mem_10__4_), .A1(n435), .B0(mem_11__4_), .B1(n432), .Y(
        n372) );
  AOI22X1M U439 ( .A0(mem_8__4_), .A1(n441), .B0(mem_9__4_), .B1(n438), .Y(
        n371) );
  AOI21X1M U440 ( .A0(n372), .A1(n371), .B0(n407), .Y(n382) );
  AOI22X1M U441 ( .A0(mem_14__4_), .A1(n435), .B0(mem_15__4_), .B1(n432), .Y(
        n374) );
  AOI22X1M U442 ( .A0(mem_12__4_), .A1(n441), .B0(mem_13__4_), .B1(n438), .Y(
        n373) );
  AOI21X1M U443 ( .A0(n374), .A1(n373), .B0(n410), .Y(n381) );
  AOI22X1M U444 ( .A0(REG2[4]), .A1(n435), .B0(REG3[4]), .B1(n432), .Y(n376)
         );
  AOI21X1M U445 ( .A0(n376), .A1(n375), .B0(n413), .Y(n380) );
  AOI22X1M U446 ( .A0(mem_6__4_), .A1(n435), .B0(mem_7__4_), .B1(n432), .Y(
        n378) );
  AOI22X1M U447 ( .A0(mem_4__4_), .A1(n441), .B0(mem_5__4_), .B1(n438), .Y(
        n377) );
  AOI21X1M U448 ( .A0(n378), .A1(n377), .B0(n420), .Y(n379) );
  OR4X1M U449 ( .A(n382), .B(n381), .C(n380), .D(n379), .Y(N38) );
  AOI22X1M U450 ( .A0(mem_10__5_), .A1(n435), .B0(mem_11__5_), .B1(n432), .Y(
        n384) );
  AOI22X1M U451 ( .A0(mem_8__5_), .A1(n441), .B0(mem_9__5_), .B1(n438), .Y(
        n383) );
  AOI21X1M U452 ( .A0(n384), .A1(n383), .B0(n407), .Y(n394) );
  AOI22X1M U453 ( .A0(mem_14__5_), .A1(n435), .B0(mem_15__5_), .B1(n432), .Y(
        n386) );
  AOI22X1M U454 ( .A0(mem_12__5_), .A1(n441), .B0(mem_13__5_), .B1(n438), .Y(
        n385) );
  AOI21X1M U455 ( .A0(n386), .A1(n385), .B0(n410), .Y(n393) );
  AOI22X1M U456 ( .A0(REG2[5]), .A1(n435), .B0(REG3[5]), .B1(n432), .Y(n388)
         );
  AOI22X1M U457 ( .A0(REG0[5]), .A1(n441), .B0(n316), .B1(n438), .Y(n387) );
  AOI21X1M U458 ( .A0(n388), .A1(n387), .B0(n413), .Y(n392) );
  AOI22X1M U459 ( .A0(mem_6__5_), .A1(n435), .B0(mem_7__5_), .B1(n432), .Y(
        n390) );
  AOI22X1M U460 ( .A0(mem_4__5_), .A1(n441), .B0(mem_5__5_), .B1(n438), .Y(
        n389) );
  AOI21X1M U461 ( .A0(n390), .A1(n389), .B0(n420), .Y(n391) );
  OR4X1M U462 ( .A(n394), .B(n393), .C(n392), .D(n391), .Y(N37) );
  AOI22X1M U463 ( .A0(mem_10__6_), .A1(n434), .B0(mem_11__6_), .B1(n431), .Y(
        n396) );
  AOI22X1M U464 ( .A0(mem_8__6_), .A1(n440), .B0(mem_9__6_), .B1(n437), .Y(
        n395) );
  AOI21X1M U465 ( .A0(n396), .A1(n395), .B0(n407), .Y(n406) );
  AOI22X1M U466 ( .A0(mem_14__6_), .A1(n434), .B0(mem_15__6_), .B1(n431), .Y(
        n398) );
  AOI22X1M U467 ( .A0(mem_12__6_), .A1(n440), .B0(mem_13__6_), .B1(n437), .Y(
        n397) );
  AOI21X1M U468 ( .A0(n398), .A1(n397), .B0(n410), .Y(n405) );
  AOI22X1M U469 ( .A0(REG2[6]), .A1(n434), .B0(REG3[6]), .B1(n431), .Y(n400)
         );
  AOI21X1M U470 ( .A0(n400), .A1(n399), .B0(n413), .Y(n404) );
  AOI22X1M U471 ( .A0(mem_6__6_), .A1(n434), .B0(mem_7__6_), .B1(n431), .Y(
        n402) );
  AOI22X1M U472 ( .A0(mem_4__6_), .A1(n440), .B0(mem_5__6_), .B1(n437), .Y(
        n401) );
  AOI21X1M U473 ( .A0(n402), .A1(n401), .B0(n420), .Y(n403) );
  OR4X1M U474 ( .A(n406), .B(n405), .C(n404), .D(n403), .Y(N36) );
  AOI22X1M U475 ( .A0(mem_10__7_), .A1(n434), .B0(mem_11__7_), .B1(n431), .Y(
        n409) );
  AOI22X1M U476 ( .A0(mem_8__7_), .A1(n440), .B0(mem_9__7_), .B1(n437), .Y(
        n408) );
  AOI21X1M U477 ( .A0(n409), .A1(n408), .B0(n407), .Y(n426) );
  AOI22X1M U478 ( .A0(mem_14__7_), .A1(n434), .B0(mem_15__7_), .B1(n431), .Y(
        n412) );
  AOI22X1M U479 ( .A0(mem_12__7_), .A1(n440), .B0(mem_13__7_), .B1(n437), .Y(
        n411) );
  AOI21X1M U480 ( .A0(n412), .A1(n411), .B0(n410), .Y(n425) );
  AOI22X1M U481 ( .A0(REG2[7]), .A1(n434), .B0(REG3[7]), .B1(n431), .Y(n415)
         );
  AOI21X1M U482 ( .A0(n415), .A1(n414), .B0(n413), .Y(n424) );
  AOI22X1M U483 ( .A0(mem_6__7_), .A1(n434), .B0(mem_7__7_), .B1(n431), .Y(
        n422) );
  AOI22X1M U484 ( .A0(mem_4__7_), .A1(n440), .B0(mem_5__7_), .B1(n437), .Y(
        n421) );
  AOI21X1M U485 ( .A0(n422), .A1(n421), .B0(n420), .Y(n423) );
  OR4X1M U486 ( .A(n426), .B(n425), .C(n424), .D(n423), .Y(N35) );
  AOI22XLM U487 ( .A0(n9), .A1(n440), .B0(n11), .B1(n437), .Y(n414) );
  AOI22XLM U488 ( .A0(n315), .A1(n440), .B0(n13), .B1(n437), .Y(n399) );
  MX2XLM U489 ( .A(n13), .B(WrData[6]), .S0(n318), .Y(n88) );
  MX2XLM U490 ( .A(n11), .B(WrData[7]), .S0(n318), .Y(n90) );
endmodule


module SYS_CTRL ( CLK, RST, FULL, ALU_OUT, OUT_Valid, RX_P_Data, RX_D_VLD, 
        RdData, RdData_Valid, ALU_EN, ALU_FUN, CLK_EN, Address, WrEN, RdEN, 
        WrData, TX_P_Data, TX_D_VLD );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_Data;
  input CLK, RST, FULL, OUT_Valid, RX_D_VLD, RdData_Valid;
  output ALU_EN, CLK_EN, WrEN, RdEN, TX_D_VLD;
  wire   done, ALU_EN_comb, CLK_EN_comb, WrEN_comb, TX_D_VLD_comb, n1, n3, n7,
         n8, n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21, n23, n24,
         n25, n27, n29, n30, n31, n32, n33, n34, n36, n37, n38, n40, n45, n47,
         n48, n49, n50, n51, n69, n70, n72, n75, n77, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n93, n96, n99, n102, n105, n108, n111, n114,
         n116, n118, n120, n122, n124, n126, n128, n130, n143, n145, n147,
         n149, n157, n162, n2, n4, n5, n6, n9, n16, n22, n26, n28, n35, n39,
         n41, n42, n43, n44, n46, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n71, n73, n74, n76, n78, n79,
         n90, n163, n164, n165, n166, n167, n168, n169;
  wire   [3:0] current_state;
  wire   [15:0] alu_out_reg;
  wire   [3:0] next_state;
  wire   [3:0] ALU_FUN_comb;
  wire   [7:0] WrData_comb;
  wire   [7:0] TX_P_Data_comb;

  AOI211X4M U118 ( .A0(n64), .A1(n79), .B0(FULL), .C0(n3), .Y(n31) );
  SDFFRQX2M alu_out_reg_reg_7_ ( .D(n114), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[7]) );
  SDFFRQX2M TX_P_Data_reg_7_ ( .D(TX_P_Data_comb[7]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n9), .Q(TX_P_Data[7]) );
  SDFFRQX2M alu_out_reg_reg_6_ ( .D(n111), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[6]) );
  SDFFRQX2M TX_P_Data_reg_6_ ( .D(TX_P_Data_comb[6]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n9), .Q(TX_P_Data[6]) );
  SDFFRQX2M alu_out_reg_reg_5_ ( .D(n108), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n6), .Q(alu_out_reg[5]) );
  SDFFRQX2M TX_P_Data_reg_5_ ( .D(TX_P_Data_comb[5]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n6), .Q(TX_P_Data[5]) );
  SDFFRQX2M alu_out_reg_reg_4_ ( .D(n105), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n6), .Q(alu_out_reg[4]) );
  SDFFRQX2M TX_P_Data_reg_4_ ( .D(TX_P_Data_comb[4]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n6), .Q(TX_P_Data[4]) );
  SDFFRQX2M alu_out_reg_reg_3_ ( .D(n102), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n6), .Q(alu_out_reg[3]) );
  SDFFRQX2M TX_P_Data_reg_3_ ( .D(TX_P_Data_comb[3]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n6), .Q(TX_P_Data[3]) );
  SDFFRQX2M alu_out_reg_reg_2_ ( .D(n99), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n6), .Q(alu_out_reg[2]) );
  SDFFRQX2M TX_P_Data_reg_2_ ( .D(TX_P_Data_comb[2]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n6), .Q(TX_P_Data[2]) );
  SDFFRQX2M alu_out_reg_reg_1_ ( .D(n96), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n6), .Q(alu_out_reg[1]) );
  SDFFRQX2M TX_P_Data_reg_1_ ( .D(TX_P_Data_comb[1]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n6), .Q(TX_P_Data[1]) );
  SDFFRQX2M alu_out_reg_reg_0_ ( .D(n93), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n6), .Q(alu_out_reg[0]) );
  SDFFRQX2M TX_P_Data_reg_0_ ( .D(TX_P_Data_comb[0]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n9), .Q(TX_P_Data[0]) );
  SDFFRQX2M alu_out_reg_reg_15_ ( .D(n130), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[15]) );
  SDFFRQX2M alu_out_reg_reg_14_ ( .D(n128), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[14]) );
  SDFFRQX2M alu_out_reg_reg_13_ ( .D(n126), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[13]) );
  SDFFRQX2M alu_out_reg_reg_12_ ( .D(n124), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[12]) );
  SDFFRQX2M alu_out_reg_reg_11_ ( .D(n122), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[11]) );
  SDFFRQX2M alu_out_reg_reg_10_ ( .D(n120), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[10]) );
  SDFFRQX2M alu_out_reg_reg_9_ ( .D(n118), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[9]) );
  SDFFRQX2M alu_out_reg_reg_8_ ( .D(n116), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n9), .Q(alu_out_reg[8]) );
  SDFFRQX2M WrData_reg_3_ ( .D(WrData_comb[3]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n16), .Q(WrData[3]) );
  SDFFRQX2M WrData_reg_2_ ( .D(WrData_comb[2]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n16), .Q(WrData[2]) );
  SDFFRQX2M WrData_reg_1_ ( .D(WrData_comb[1]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n16), .Q(WrData[1]) );
  SDFFRQX2M WrData_reg_0_ ( .D(WrData_comb[0]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n16), .Q(WrData[0]) );
  SDFFRQX2M WrData_reg_7_ ( .D(WrData_comb[7]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n16), .Q(WrData[7]) );
  SDFFRQX2M WrData_reg_6_ ( .D(WrData_comb[6]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n16), .Q(WrData[6]) );
  SDFFRQX2M WrData_reg_5_ ( .D(WrData_comb[5]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n16), .Q(WrData[5]) );
  SDFFRQX2M WrData_reg_4_ ( .D(WrData_comb[4]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n16), .Q(WrData[4]) );
  SDFFRQX2M ALU_EN_reg ( .D(ALU_EN_comb), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n22), .Q(ALU_EN) );
  SDFFRQX2M WrEN_reg ( .D(WrEN_comb), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n16), 
        .Q(WrEN) );
  SDFFRQX2M TX_D_VLD_reg ( .D(TX_D_VLD_comb), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n16), .Q(TX_D_VLD) );
  SDFFRQX2M RdEN_reg ( .D(n162), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n16), .Q(
        RdEN) );
  SDFFRQX2M done_reg ( .D(n157), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), .Q(
        done) );
  SDFFSQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .SN(n6), .Q(current_state[1]) );
  SDFFRQX2M Address_reg_3_ ( .D(n149), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), .Q(Address[3]) );
  SDFFRQX2M ALU_FUN_reg_2_ ( .D(ALU_FUN_comb[2]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n22), .Q(ALU_FUN[2]) );
  SDFFRQX2M Address_reg_0_ ( .D(n143), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n16), .Q(Address[0]) );
  SDFFRQX2M Address_reg_1_ ( .D(n145), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n16), .Q(Address[1]) );
  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n22), .Q(current_state[2]) );
  SDFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n6), .Q(current_state[0]) );
  SDFFRQX2M Address_reg_2_ ( .D(n147), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), .Q(Address[2]) );
  SDFFRQX2M ALU_FUN_reg_1_ ( .D(ALU_FUN_comb[1]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n22), .Q(ALU_FUN[1]) );
  SDFFRQX2M ALU_FUN_reg_0_ ( .D(ALU_FUN_comb[0]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n22), .Q(ALU_FUN[0]) );
  SDFFRQX2M ALU_FUN_reg_3_ ( .D(ALU_FUN_comb[3]), .SI(1'b0), .SE(1'b0), .CK(
        CLK), .RN(n22), .Q(ALU_FUN[3]) );
  SDFFRQX2M CLK_EN_reg ( .D(CLK_EN_comb), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n22), .Q(CLK_EN) );
  SDFFRQX2M current_state_reg_3_ ( .D(next_state[3]), .SI(1'b0), .SE(1'b0), 
        .CK(CLK), .RN(n22), .Q(current_state[3]) );
  BUFX4M U3 ( .A(OUT_Valid), .Y(n5) );
  NOR3X2M U4 ( .A(n59), .B(current_state[3]), .C(n63), .Y(n162) );
  NOR4X1M U5 ( .A(current_state[3]), .B(current_state[0]), .C(n36), .D(n41), 
        .Y(n33) );
  NAND2X2M U6 ( .A(n31), .B(n79), .Y(n81) );
  INVX2M U7 ( .A(WrEN_comb), .Y(n35) );
  INVX2M U8 ( .A(ALU_EN_comb), .Y(n39) );
  INVX2M U9 ( .A(n72), .Y(n44) );
  INVX2M U10 ( .A(FULL), .Y(n28) );
  OR3X2M U11 ( .A(n31), .B(n2), .C(n4), .Y(TX_D_VLD_comb) );
  BUFX4M U12 ( .A(n26), .Y(n6) );
  BUFX4M U13 ( .A(n26), .Y(n9) );
  BUFX4M U14 ( .A(n26), .Y(n16) );
  BUFX4M U15 ( .A(n26), .Y(n22) );
  NAND2X2M U16 ( .A(n31), .B(n5), .Y(n80) );
  INVX4M U17 ( .A(n5), .Y(n79) );
  AOI21X2M U18 ( .A0(n61), .A1(n10), .B0(n41), .Y(WrEN_comb) );
  NOR4X1M U19 ( .A(n38), .B(n52), .C(n40), .D(n56), .Y(n32) );
  NAND4X2M U20 ( .A(n57), .B(n55), .C(n53), .D(n46), .Y(n38) );
  NOR2X2M U21 ( .A(n69), .B(n75), .Y(n72) );
  BUFX2M U22 ( .A(n13), .Y(n4) );
  NOR3X2M U23 ( .A(n58), .B(FULL), .C(n78), .Y(n13) );
  AOI21X2M U24 ( .A0(n1), .A1(n58), .B0(n28), .Y(n34) );
  OAI211X2M U25 ( .A0(n1), .A1(n28), .B0(n3), .C0(n39), .Y(next_state[3]) );
  NOR2X2M U26 ( .A(n41), .B(n19), .Y(ALU_EN_comb) );
  AND3X2M U27 ( .A(n23), .B(n59), .C(n62), .Y(n49) );
  INVX2M U28 ( .A(n17), .Y(n61) );
  INVX2M U29 ( .A(n162), .Y(n58) );
  NAND4X2M U30 ( .A(n10), .B(n1), .C(n19), .D(n3), .Y(CLK_EN_comb) );
  INVX2M U31 ( .A(n37), .Y(n63) );
  NOR2X2M U32 ( .A(n57), .B(n35), .Y(WrData_comb[0]) );
  NOR2X2M U33 ( .A(n57), .B(n39), .Y(ALU_FUN_comb[0]) );
  NOR2X2M U34 ( .A(n56), .B(n35), .Y(WrData_comb[1]) );
  NOR2X2M U35 ( .A(n55), .B(n35), .Y(WrData_comb[2]) );
  NOR2X2M U36 ( .A(n54), .B(n35), .Y(WrData_comb[3]) );
  NOR2X2M U37 ( .A(n53), .B(n35), .Y(WrData_comb[4]) );
  NOR2X2M U38 ( .A(n52), .B(n35), .Y(WrData_comb[5]) );
  NOR2X2M U39 ( .A(n46), .B(n35), .Y(WrData_comb[6]) );
  NOR2X2M U40 ( .A(n56), .B(n39), .Y(ALU_FUN_comb[1]) );
  NOR2X2M U41 ( .A(n55), .B(n39), .Y(ALU_FUN_comb[2]) );
  NOR2X2M U42 ( .A(n54), .B(n39), .Y(ALU_FUN_comb[3]) );
  NAND2X2M U43 ( .A(n29), .B(n30), .Y(next_state[0]) );
  AOI221XLM U44 ( .A0(n45), .A1(n41), .B0(n162), .B1(n78), .C0(n11), .Y(n29)
         );
  NOR4X1M U45 ( .A(n31), .B(n32), .C(n33), .D(n34), .Y(n30) );
  OAI21X2M U46 ( .A0(n59), .A1(n61), .B0(n8), .Y(n45) );
  BUFX2M U47 ( .A(n12), .Y(n2) );
  NOR2X2M U48 ( .A(n1), .B(FULL), .Y(n12) );
  OAI22X1M U49 ( .A0(n5), .A1(n74), .B0(n79), .B1(n168), .Y(n96) );
  OAI22X1M U50 ( .A0(n5), .A1(n73), .B0(n79), .B1(n167), .Y(n99) );
  OAI22X1M U51 ( .A0(n5), .A1(n71), .B0(n79), .B1(n166), .Y(n102) );
  OAI22X1M U52 ( .A0(n5), .A1(n68), .B0(n79), .B1(n165), .Y(n105) );
  OAI22X1M U53 ( .A0(n5), .A1(n67), .B0(n79), .B1(n164), .Y(n108) );
  OAI22X1M U54 ( .A0(n5), .A1(n66), .B0(n79), .B1(n163), .Y(n111) );
  OAI22X1M U55 ( .A0(n5), .A1(n65), .B0(n79), .B1(n90), .Y(n114) );
  OAI21X2M U56 ( .A0(n49), .A1(n64), .B0(n79), .Y(n157) );
  BUFX2M U57 ( .A(RST), .Y(n26) );
  AOI22X1M U58 ( .A0(n2), .A1(alu_out_reg[8]), .B0(RdData[0]), .B1(n4), .Y(n89) );
  NOR2X2M U59 ( .A(current_state[1]), .B(current_state[2]), .Y(n37) );
  OAI221X1M U60 ( .A0(n168), .A1(n80), .B0(n74), .B1(n81), .C0(n88), .Y(
        TX_P_Data_comb[1]) );
  AOI22X1M U61 ( .A0(n2), .A1(alu_out_reg[9]), .B0(RdData[1]), .B1(n4), .Y(n88) );
  OAI221X1M U62 ( .A0(n167), .A1(n80), .B0(n73), .B1(n81), .C0(n87), .Y(
        TX_P_Data_comb[2]) );
  AOI22X1M U63 ( .A0(n2), .A1(alu_out_reg[10]), .B0(RdData[2]), .B1(n4), .Y(
        n87) );
  OAI221X1M U64 ( .A0(n166), .A1(n80), .B0(n71), .B1(n81), .C0(n86), .Y(
        TX_P_Data_comb[3]) );
  AOI22X1M U65 ( .A0(n2), .A1(alu_out_reg[11]), .B0(RdData[3]), .B1(n4), .Y(
        n86) );
  OAI221X1M U66 ( .A0(n165), .A1(n80), .B0(n68), .B1(n81), .C0(n85), .Y(
        TX_P_Data_comb[4]) );
  AOI22X1M U67 ( .A0(n2), .A1(alu_out_reg[12]), .B0(RdData[4]), .B1(n4), .Y(
        n85) );
  OAI221X1M U68 ( .A0(n164), .A1(n80), .B0(n67), .B1(n81), .C0(n84), .Y(
        TX_P_Data_comb[5]) );
  AOI22X1M U69 ( .A0(n2), .A1(alu_out_reg[13]), .B0(RdData[5]), .B1(n4), .Y(
        n84) );
  OAI221X1M U70 ( .A0(n163), .A1(n80), .B0(n66), .B1(n81), .C0(n83), .Y(
        TX_P_Data_comb[6]) );
  AOI22X1M U71 ( .A0(n2), .A1(alu_out_reg[14]), .B0(RdData[6]), .B1(n4), .Y(
        n83) );
  OAI221X1M U72 ( .A0(n90), .A1(n80), .B0(n65), .B1(n81), .C0(n82), .Y(
        TX_P_Data_comb[7]) );
  AOI22X1M U73 ( .A0(n2), .A1(alu_out_reg[15]), .B0(RdData[7]), .B1(n4), .Y(
        n82) );
  NAND3X2M U74 ( .A(n37), .B(n59), .C(current_state[3]), .Y(n3) );
  INVX2M U75 ( .A(current_state[0]), .Y(n59) );
  INVX2M U76 ( .A(done), .Y(n64) );
  NAND3X2M U77 ( .A(RX_D_VLD), .B(n60), .C(n77), .Y(n69) );
  XNOR2X2M U78 ( .A(n75), .B(current_state[2]), .Y(n77) );
  NAND3X2M U79 ( .A(n37), .B(current_state[0]), .C(current_state[3]), .Y(n1)
         );
  NAND3X2M U80 ( .A(current_state[0]), .B(n23), .C(current_state[2]), .Y(n19)
         );
  NOR2BX2M U81 ( .AN(current_state[1]), .B(current_state[3]), .Y(n23) );
  CLKXOR2X2M U82 ( .A(current_state[1]), .B(current_state[0]), .Y(n75) );
  NOR3X2M U83 ( .A(current_state[1]), .B(current_state[3]), .C(n62), .Y(n17)
         );
  NAND3X2M U84 ( .A(n23), .B(n62), .C(current_state[0]), .Y(n8) );
  NAND3X2M U85 ( .A(n75), .B(n60), .C(current_state[2]), .Y(n10) );
  INVX2M U86 ( .A(RX_D_VLD), .Y(n41) );
  INVX2M U87 ( .A(RX_P_Data[0]), .Y(n57) );
  OAI2BB1X2M U88 ( .A0N(Address[0]), .A1N(n69), .B0(n70), .Y(n143) );
  AOI32X1M U89 ( .A0(n23), .A1(n59), .A2(n43), .B0(n72), .B1(RX_P_Data[0]), 
        .Y(n70) );
  INVX2M U90 ( .A(n69), .Y(n43) );
  AOI21X2M U91 ( .A0(current_state[2]), .A1(current_state[1]), .B0(n37), .Y(
        n36) );
  NAND4X2M U92 ( .A(RX_P_Data[7]), .B(RX_P_Data[3]), .C(n49), .D(RX_D_VLD), 
        .Y(n40) );
  OAI211X2M U93 ( .A0(n24), .A1(n25), .B0(n62), .C0(RX_D_VLD), .Y(n20) );
  NOR4X1M U94 ( .A(n27), .B(n57), .C(RX_P_Data[6]), .D(RX_P_Data[2]), .Y(n25)
         );
  NAND3X2M U95 ( .A(RX_P_Data[1]), .B(RX_P_Data[4]), .C(RX_P_Data[5]), .Y(n27)
         );
  INVX2M U96 ( .A(current_state[2]), .Y(n62) );
  OAI211X2M U97 ( .A0(RX_D_VLD), .A1(n61), .B0(n42), .C0(n7), .Y(next_state[2]) );
  OA21X2M U98 ( .A0(n8), .A1(n41), .B0(n10), .Y(n7) );
  INVX2M U99 ( .A(n11), .Y(n42) );
  OAI21X2M U100 ( .A0(RX_D_VLD), .A1(n19), .B0(n47), .Y(n11) );
  OAI21BX1M U101 ( .A0(n48), .A1(n24), .B0N(n40), .Y(n47) );
  NOR4X1M U102 ( .A(n51), .B(n57), .C(RX_P_Data[5]), .D(RX_P_Data[1]), .Y(n48)
         );
  NAND3X2M U103 ( .A(RX_P_Data[4]), .B(RX_P_Data[2]), .C(RX_P_Data[6]), .Y(n51) );
  INVX2M U104 ( .A(current_state[3]), .Y(n60) );
  AOI21X2M U105 ( .A0(n19), .A1(n8), .B0(RX_D_VLD), .Y(n18) );
  NAND4BBX1M U106 ( .AN(n2), .BN(n4), .C(n14), .D(n15), .Y(next_state[1]) );
  OAI211X2M U107 ( .A0(n20), .A1(n21), .B0(n59), .C0(n23), .Y(n14) );
  AOI221XLM U108 ( .A0(current_state[3]), .A1(n63), .B0(n17), .B1(RX_D_VLD), 
        .C0(n18), .Y(n15) );
  NAND2X2M U109 ( .A(RX_P_Data[7]), .B(RX_P_Data[3]), .Y(n21) );
  OAI2BB2X1M U110 ( .B0(n56), .B1(n44), .A0N(Address[1]), .A1N(n69), .Y(n145)
         );
  OAI2BB2X1M U111 ( .B0(n55), .B1(n44), .A0N(Address[2]), .A1N(n69), .Y(n147)
         );
  OAI2BB2X1M U112 ( .B0(n54), .B1(n44), .A0N(Address[3]), .A1N(n69), .Y(n149)
         );
  AND4X2M U113 ( .A(n50), .B(RX_P_Data[2]), .C(n57), .D(RX_P_Data[6]), .Y(n24)
         );
  NOR3X2M U114 ( .A(RX_P_Data[1]), .B(RX_P_Data[5]), .C(RX_P_Data[4]), .Y(n50)
         );
  AND2X2M U115 ( .A(RX_P_Data[7]), .B(WrEN_comb), .Y(WrData_comb[7]) );
  INVX2M U116 ( .A(RX_P_Data[1]), .Y(n56) );
  INVX2M U117 ( .A(RX_P_Data[2]), .Y(n55) );
  INVX2M U119 ( .A(RX_P_Data[5]), .Y(n52) );
  INVX2M U120 ( .A(RX_P_Data[3]), .Y(n54) );
  INVX2M U121 ( .A(RX_P_Data[6]), .Y(n46) );
  INVX2M U122 ( .A(RX_P_Data[4]), .Y(n53) );
  INVX2M U123 ( .A(RdData_Valid), .Y(n78) );
  INVX2M U124 ( .A(ALU_OUT[1]), .Y(n168) );
  INVX2M U125 ( .A(ALU_OUT[2]), .Y(n167) );
  INVX2M U126 ( .A(ALU_OUT[3]), .Y(n166) );
  INVX2M U127 ( .A(ALU_OUT[4]), .Y(n165) );
  INVX2M U128 ( .A(ALU_OUT[5]), .Y(n164) );
  INVX2M U129 ( .A(ALU_OUT[6]), .Y(n163) );
  INVX2M U130 ( .A(ALU_OUT[7]), .Y(n90) );
  INVX2M U131 ( .A(alu_out_reg[1]), .Y(n74) );
  INVX2M U132 ( .A(alu_out_reg[2]), .Y(n73) );
  INVX2M U133 ( .A(alu_out_reg[3]), .Y(n71) );
  INVX2M U134 ( .A(alu_out_reg[4]), .Y(n68) );
  INVX2M U135 ( .A(alu_out_reg[5]), .Y(n67) );
  INVX2M U136 ( .A(alu_out_reg[6]), .Y(n66) );
  INVX2M U137 ( .A(alu_out_reg[7]), .Y(n65) );
  INVX2M U138 ( .A(alu_out_reg[0]), .Y(n76) );
  AO22X1M U139 ( .A0(n79), .A1(alu_out_reg[8]), .B0(ALU_OUT[8]), .B1(n5), .Y(
        n116) );
  AO22X1M U140 ( .A0(n79), .A1(alu_out_reg[9]), .B0(ALU_OUT[9]), .B1(n5), .Y(
        n118) );
  AO22X1M U141 ( .A0(n79), .A1(alu_out_reg[10]), .B0(ALU_OUT[10]), .B1(n5), 
        .Y(n120) );
  AO22X1M U142 ( .A0(n79), .A1(alu_out_reg[11]), .B0(ALU_OUT[11]), .B1(n5), 
        .Y(n122) );
  AO22X1M U193 ( .A0(n79), .A1(alu_out_reg[12]), .B0(ALU_OUT[12]), .B1(n5), 
        .Y(n124) );
  AO22X1M U194 ( .A0(n79), .A1(alu_out_reg[13]), .B0(ALU_OUT[13]), .B1(n5), 
        .Y(n126) );
  AO22X1M U195 ( .A0(n79), .A1(alu_out_reg[14]), .B0(ALU_OUT[14]), .B1(n5), 
        .Y(n128) );
  AO22X1M U196 ( .A0(n79), .A1(alu_out_reg[15]), .B0(ALU_OUT[15]), .B1(n5), 
        .Y(n130) );
  INVX2M U197 ( .A(ALU_OUT[0]), .Y(n169) );
  OAI221X1M U198 ( .A0(n169), .A1(n80), .B0(n76), .B1(n81), .C0(n89), .Y(
        TX_P_Data_comb[0]) );
  OAI22X1M U199 ( .A0(n5), .A1(n76), .B0(n169), .B1(n79), .Y(n93) );
endmodule


module CLKDIV_MUX_WIDTH8 ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(OUT[7]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[4]) );
  NOR3X4M U11 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X4M U12 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NAND4BX1M U13 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NAND4BX1M U14 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NOR4X2M U15 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U16 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  OAI211X2M U17 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NAND2X2M U18 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U19 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  INVX2M U20 ( .A(IN[2]), .Y(n15) );
  INVX2M U21 ( .A(IN[0]), .Y(n17) );
  INVX2M U22 ( .A(IN[1]), .Y(n16) );
  INVX2M U23 ( .A(IN[5]), .Y(n14) );
endmodule


module clk_div_RATIO_WD8_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_RATIO_WD8_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, tick_1, N18, N19, N20, N21, N22, N23, N24, N52, N53, N54,
         N55, N56, N57, N58, n18, n25, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48;
  wire   [6:0] half;
  wire   [6:0] i;

  clk_div_RATIO_WD8_0_DW01_inc_0 r76 ( .A(i), .SUM({N24, N23, N22, N21, N20, 
        N19, N18}) );
  SDFFRQX2M div_clk_reg ( .D(n18), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(
        n1), .Q(div_clk) );
  SDFFRQX2M tick_1_reg ( .D(n25), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), .Q(tick_1) );
  SDFFRQX2M i_reg_6_ ( .D(N58), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[6]) );
  SDFFRQX2M i_reg_5_ ( .D(N57), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[5]) );
  SDFFRQX2M i_reg_4_ ( .D(N56), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[4]) );
  SDFFRQX2M i_reg_3_ ( .D(N55), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[3]) );
  SDFFRQX2M i_reg_0_ ( .D(N52), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[0]) );
  SDFFRQX2M i_reg_2_ ( .D(N54), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[2]) );
  SDFFRQX2M i_reg_1_ ( .D(N53), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[1]) );
  CLKMX2X4M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  OR2X2M U4 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n3) );
  INVX2M U5 ( .A(n2), .Y(n1) );
  INVX2M U6 ( .A(i_rst_n), .Y(n2) );
  INVX2M U7 ( .A(i_div_ratio[5]), .Y(n8) );
  CLKINVX1M U8 ( .A(i_div_ratio[1]), .Y(half[0]) );
  OAI2BB1X1M U9 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n3), .Y(
        half[1]) );
  OR2X1M U10 ( .A(n3), .B(i_div_ratio[3]), .Y(n4) );
  OAI2BB1X1M U11 ( .A0N(n3), .A1N(i_div_ratio[3]), .B0(n4), .Y(half[2]) );
  NOR2X1M U12 ( .A(n4), .B(i_div_ratio[4]), .Y(n5) );
  AO21XLM U13 ( .A0(n4), .A1(i_div_ratio[4]), .B0(n5), .Y(half[3]) );
  CLKNAND2X2M U14 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U15 ( .A0(n5), .A1(n8), .B0(n6), .Y(half[4]) );
  XNOR2X1M U16 ( .A(i_div_ratio[6]), .B(n6), .Y(half[5]) );
  NOR2X1M U17 ( .A(i_div_ratio[6]), .B(n6), .Y(n7) );
  CLKXOR2X2M U18 ( .A(i_div_ratio[7]), .B(n7), .Y(half[6]) );
  AOI21X1M U19 ( .A0(n9), .A1(n10), .B0(n11), .Y(n25) );
  MXI2X1M U20 ( .A(n12), .B(n13), .S0(n14), .Y(n9) );
  NOR2X1M U21 ( .A(i_div_ratio[0]), .B(n13), .Y(n12) );
  CLKXOR2X2M U22 ( .A(div_clk), .B(n15), .Y(n18) );
  NOR2X1M U23 ( .A(n11), .B(n16), .Y(n15) );
  NOR2BX1M U24 ( .AN(N24), .B(n28), .Y(N58) );
  NOR2BX1M U25 ( .AN(N23), .B(n28), .Y(N57) );
  NOR2BX1M U35 ( .AN(N22), .B(n28), .Y(N56) );
  NOR2BX1M U36 ( .AN(N21), .B(n28), .Y(N55) );
  NOR2BX1M U37 ( .AN(N20), .B(n28), .Y(N54) );
  NOR2BX1M U38 ( .AN(N19), .B(n28), .Y(N53) );
  NOR2BX1M U39 ( .AN(N18), .B(n28), .Y(N52) );
  CLKNAND2X2M U40 ( .A(N2), .B(n16), .Y(n28) );
  OAI21X1M U41 ( .A0(n14), .A1(n29), .B0(n10), .Y(n16) );
  OAI211X1M U42 ( .A0(n30), .A1(n31), .B0(i_div_ratio[0]), .C0(tick_1), .Y(n10) );
  NAND3X1M U43 ( .A(n32), .B(n33), .C(n34), .Y(n31) );
  XNOR2X1M U44 ( .A(i[4]), .B(i_div_ratio[5]), .Y(n34) );
  XNOR2X1M U45 ( .A(i[5]), .B(i_div_ratio[6]), .Y(n33) );
  XNOR2X1M U46 ( .A(i[3]), .B(i_div_ratio[4]), .Y(n32) );
  NAND4X1M U47 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n30) );
  XNOR2X1M U48 ( .A(i[6]), .B(i_div_ratio[7]), .Y(n38) );
  XNOR2X1M U49 ( .A(i[0]), .B(i_div_ratio[1]), .Y(n37) );
  XNOR2X1M U50 ( .A(i[1]), .B(i_div_ratio[2]), .Y(n36) );
  XNOR2X1M U51 ( .A(i[2]), .B(i_div_ratio[3]), .Y(n35) );
  NOR2BX1M U52 ( .AN(i_div_ratio[0]), .B(n13), .Y(n29) );
  CLKINVX1M U53 ( .A(tick_1), .Y(n13) );
  AND4X1M U54 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n14) );
  NOR4X1M U55 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n42) );
  CLKXOR2X2M U56 ( .A(i[2]), .B(half[2]), .Y(n46) );
  CLKXOR2X2M U57 ( .A(i[1]), .B(half[1]), .Y(n45) );
  CLKXOR2X2M U58 ( .A(i[0]), .B(half[0]), .Y(n44) );
  CLKXOR2X2M U59 ( .A(i[6]), .B(half[6]), .Y(n43) );
  XNOR2X1M U60 ( .A(i[4]), .B(half[4]), .Y(n41) );
  XNOR2X1M U61 ( .A(i[5]), .B(half[5]), .Y(n40) );
  XNOR2X1M U62 ( .A(i[3]), .B(half[3]), .Y(n39) );
  CLKINVX1M U63 ( .A(n11), .Y(N2) );
  OAI21X1M U64 ( .A0(n47), .A1(n48), .B0(i_clk_en), .Y(n11) );
  OR3X1M U65 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n48) );
  OR4X1M U66 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n47) );
endmodule


module clk_div_RATIO_WD8_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_RATIO_WD8_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk, tick_1, N18, N19, N20, N21, N22, N23, N24, N52, N53, N54,
         N55, N56, N57, N58, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n51, n58;
  wire   [6:0] half;
  wire   [6:0] i;

  clk_div_RATIO_WD8_1_DW01_inc_0 r76 ( .A(i), .SUM({N24, N23, N22, N21, N20, 
        N19, N18}) );
  SDFFRQX2M div_clk_reg ( .D(n58), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(
        n1), .Q(div_clk) );
  SDFFRQX2M tick_1_reg ( .D(n51), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), .Q(tick_1) );
  SDFFRQX2M i_reg_6_ ( .D(N58), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[6]) );
  SDFFRQX2M i_reg_5_ ( .D(N57), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[5]) );
  SDFFRQX2M i_reg_4_ ( .D(N56), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[4]) );
  SDFFRQX2M i_reg_3_ ( .D(N55), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[3]) );
  SDFFRQX2M i_reg_0_ ( .D(N52), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[0]) );
  SDFFRQX2M i_reg_2_ ( .D(N54), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[2]) );
  SDFFRQX2M i_reg_1_ ( .D(N53), .SI(1'b0), .SE(1'b0), .CK(i_ref_clk), .RN(n1), 
        .Q(i[1]) );
  CLKMX2X4M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  INVX2M U4 ( .A(n2), .Y(n1) );
  INVX2M U5 ( .A(i_rst_n), .Y(n2) );
  OR2X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n3) );
  INVX2M U7 ( .A(i_div_ratio[5]), .Y(n8) );
  CLKINVX1M U8 ( .A(i_div_ratio[1]), .Y(half[0]) );
  OAI2BB1X1M U9 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n3), .Y(
        half[1]) );
  OR2X1M U10 ( .A(n3), .B(i_div_ratio[3]), .Y(n4) );
  OAI2BB1X1M U11 ( .A0N(n3), .A1N(i_div_ratio[3]), .B0(n4), .Y(half[2]) );
  NOR2X1M U12 ( .A(n4), .B(i_div_ratio[4]), .Y(n5) );
  AO21XLM U13 ( .A0(n4), .A1(i_div_ratio[4]), .B0(n5), .Y(half[3]) );
  CLKNAND2X2M U14 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U15 ( .A0(n5), .A1(n8), .B0(n6), .Y(half[4]) );
  XNOR2X1M U16 ( .A(i_div_ratio[6]), .B(n6), .Y(half[5]) );
  NOR2X1M U17 ( .A(i_div_ratio[6]), .B(n6), .Y(n7) );
  CLKXOR2X2M U18 ( .A(i_div_ratio[7]), .B(n7), .Y(half[6]) );
  AOI21X1M U19 ( .A0(n9), .A1(n10), .B0(n11), .Y(n51) );
  MXI2X1M U20 ( .A(n12), .B(n13), .S0(n14), .Y(n9) );
  NOR2X1M U21 ( .A(i_div_ratio[0]), .B(n13), .Y(n12) );
  CLKXOR2X2M U22 ( .A(div_clk), .B(n15), .Y(n58) );
  NOR2X1M U23 ( .A(n11), .B(n16), .Y(n15) );
  NOR2BX1M U24 ( .AN(N24), .B(n28), .Y(N58) );
  NOR2BX1M U25 ( .AN(N23), .B(n28), .Y(N57) );
  NOR2BX1M U35 ( .AN(N22), .B(n28), .Y(N56) );
  NOR2BX1M U36 ( .AN(N21), .B(n28), .Y(N55) );
  NOR2BX1M U37 ( .AN(N20), .B(n28), .Y(N54) );
  NOR2BX1M U38 ( .AN(N19), .B(n28), .Y(N53) );
  NOR2BX1M U39 ( .AN(N18), .B(n28), .Y(N52) );
  CLKNAND2X2M U40 ( .A(N2), .B(n16), .Y(n28) );
  OAI21X1M U41 ( .A0(n14), .A1(n29), .B0(n10), .Y(n16) );
  OAI211X1M U42 ( .A0(n30), .A1(n31), .B0(i_div_ratio[0]), .C0(tick_1), .Y(n10) );
  NAND3X1M U43 ( .A(n32), .B(n33), .C(n34), .Y(n31) );
  XNOR2X1M U44 ( .A(i[4]), .B(i_div_ratio[5]), .Y(n34) );
  XNOR2X1M U45 ( .A(i[5]), .B(i_div_ratio[6]), .Y(n33) );
  XNOR2X1M U46 ( .A(i[3]), .B(i_div_ratio[4]), .Y(n32) );
  NAND4X1M U47 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n30) );
  XNOR2X1M U48 ( .A(i[6]), .B(i_div_ratio[7]), .Y(n38) );
  XNOR2X1M U49 ( .A(i[0]), .B(i_div_ratio[1]), .Y(n37) );
  XNOR2X1M U50 ( .A(i[1]), .B(i_div_ratio[2]), .Y(n36) );
  XNOR2X1M U51 ( .A(i[2]), .B(i_div_ratio[3]), .Y(n35) );
  NOR2BX1M U52 ( .AN(i_div_ratio[0]), .B(n13), .Y(n29) );
  CLKINVX1M U53 ( .A(tick_1), .Y(n13) );
  AND4X1M U54 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n14) );
  NOR4X1M U55 ( .A(n43), .B(n44), .C(n45), .D(n46), .Y(n42) );
  CLKXOR2X2M U56 ( .A(i[2]), .B(half[2]), .Y(n46) );
  CLKXOR2X2M U57 ( .A(i[1]), .B(half[1]), .Y(n45) );
  CLKXOR2X2M U58 ( .A(i[0]), .B(half[0]), .Y(n44) );
  CLKXOR2X2M U59 ( .A(i[6]), .B(half[6]), .Y(n43) );
  XNOR2X1M U60 ( .A(i[4]), .B(half[4]), .Y(n41) );
  XNOR2X1M U61 ( .A(i[5]), .B(half[5]), .Y(n40) );
  XNOR2X1M U62 ( .A(i[3]), .B(half[3]), .Y(n39) );
  CLKINVX1M U63 ( .A(n11), .Y(N2) );
  OAI21X1M U64 ( .A0(n47), .A1(n48), .B0(i_clk_en), .Y(n11) );
  OR3X1M U65 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n48) );
  OR4X1M U66 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n47) );
endmodule


module FIFO_WR_FIFO_DEPTH8_ADDR_WIDTH4 ( W_clk, W_rst, W_inc, WQ2_rptr, W_ptr, 
        W_addr, W_CLKEN, FULL );
  input [3:0] WQ2_rptr;
  output [3:0] W_ptr;
  output [3:0] W_addr;
  input W_clk, W_rst, W_inc;
  output W_CLKEN, FULL;
  wire   n1, n2, n3, n5, n6, n7, n8, n9, n11, n12, n15, n16, n17, n18, n19,
         n21, n23, n25, n27, n29, n31, n33, n35, n4, n10, n13, n14, n36, n37;

  SDFFRQX2M W_addr_reg_3_ ( .D(n27), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(n10), .Q(W_addr[3]) );
  SDFFRQX2M W_addr_reg_2_ ( .D(n29), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(n10), .Q(W_addr[2]) );
  SDFFRQX2M W_ptr_reg_0_ ( .D(n33), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(n10), 
        .Q(W_ptr[0]) );
  SDFFRQX2M W_ptr_reg_1_ ( .D(n25), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(n10), 
        .Q(W_ptr[1]) );
  SDFFRQX2M W_ptr_reg_2_ ( .D(n23), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(n10), 
        .Q(W_ptr[2]) );
  SDFFRQX2M W_ptr_reg_3_ ( .D(n21), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(n10), 
        .Q(W_ptr[3]) );
  SDFFRQX2M W_addr_reg_0_ ( .D(n35), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(n10), .Q(W_addr[0]) );
  SDFFRQX2M W_addr_reg_1_ ( .D(n31), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(n10), .Q(W_addr[1]) );
  NAND2X2M U3 ( .A(W_inc), .B(n15), .Y(n2) );
  INVX2M U4 ( .A(n13), .Y(n10) );
  INVX2M U5 ( .A(W_rst), .Y(n13) );
  INVX2M U6 ( .A(n15), .Y(FULL) );
  OAI22X1M U7 ( .A0(W_CLKEN), .A1(n37), .B0(n8), .B1(n2), .Y(n29) );
  NOR2X2M U8 ( .A(n37), .B(n7), .Y(n5) );
  INVX2M U9 ( .A(n8), .Y(n14) );
  INVX2M U10 ( .A(n2), .Y(W_CLKEN) );
  NAND4X2M U11 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  XNOR2X2M U12 ( .A(W_ptr[0]), .B(WQ2_rptr[0]), .Y(n16) );
  XNOR2X2M U13 ( .A(W_ptr[1]), .B(WQ2_rptr[1]), .Y(n17) );
  CLKXOR2X2M U14 ( .A(W_ptr[2]), .B(WQ2_rptr[2]), .Y(n18) );
  CLKXOR2X2M U15 ( .A(W_ptr[3]), .B(WQ2_rptr[3]), .Y(n19) );
  CLKXOR2X2M U16 ( .A(n7), .B(W_addr[2]), .Y(n8) );
  XNOR2X2M U17 ( .A(W_addr[3]), .B(n5), .Y(n1) );
  NAND2X2M U18 ( .A(W_addr[1]), .B(W_addr[0]), .Y(n7) );
  CLKXOR2X2M U19 ( .A(n8), .B(W_addr[0]), .Y(n11) );
  CLKXOR2X2M U20 ( .A(W_addr[0]), .B(W_CLKEN), .Y(n35) );
  CLKXOR2X2M U21 ( .A(W_addr[3]), .B(n12), .Y(n27) );
  NOR2BX2M U22 ( .AN(n5), .B(n2), .Y(n12) );
  XNOR2X2M U23 ( .A(W_addr[1]), .B(n4), .Y(n31) );
  NAND2X2M U24 ( .A(W_addr[0]), .B(W_CLKEN), .Y(n4) );
  OAI2BB2X1M U25 ( .B0(n1), .B1(n2), .A0N(n2), .A1N(W_ptr[3]), .Y(n21) );
  OAI2BB2X1M U26 ( .B0(n3), .B1(n2), .A0N(n2), .A1N(W_ptr[2]), .Y(n23) );
  CLKXOR2X2M U27 ( .A(n1), .B(n14), .Y(n3) );
  OAI2BB2X1M U28 ( .B0(n6), .B1(n2), .A0N(n2), .A1N(W_ptr[1]), .Y(n25) );
  AOI2BB1X2M U29 ( .A0N(n7), .A1N(n8), .B0(n9), .Y(n6) );
  OAI32X1M U30 ( .A0(n14), .A1(W_addr[0]), .A2(n36), .B0(W_addr[1]), .B1(n11), 
        .Y(n9) );
  INVX2M U31 ( .A(W_addr[1]), .Y(n36) );
  OAI2BB2X1M U40 ( .B0(W_addr[1]), .B1(n2), .A0N(n2), .A1N(W_ptr[0]), .Y(n33)
         );
  INVX2M U41 ( .A(W_addr[2]), .Y(n37) );
endmodule


module FIFO_RD_FIFO_DEPTH8_ADDR_WIDTH4 ( R_clk, R_rst, R_inc, RQ2_wptr, R_ptr, 
        R_addr, EMPTY );
  input [3:0] RQ2_wptr;
  output [3:0] R_ptr;
  output [3:0] R_addr;
  input R_clk, R_rst, R_inc;
  output EMPTY;
  wire   n1, n2, n3, n4, n5, n7, n9, n10, n11, n12, n14, n15, n16, n17, n18,
         n19, n21, n23, n25, n27, n29, n31, n33, n35, n6, n8, n13, n36;

  SDFFRQX2M R_addr_reg_3_ ( .D(n27), .SI(1'b0), .SE(1'b0), .CK(R_clk), .RN(
        R_rst), .Q(R_addr[3]) );
  SDFFRQX2M R_ptr_reg_0_ ( .D(n33), .SI(1'b0), .SE(1'b0), .CK(R_clk), .RN(
        R_rst), .Q(R_ptr[0]) );
  SDFFRQX2M R_ptr_reg_3_ ( .D(n25), .SI(1'b0), .SE(1'b0), .CK(R_clk), .RN(
        R_rst), .Q(R_ptr[3]) );
  SDFFRQX2M R_ptr_reg_2_ ( .D(n23), .SI(1'b0), .SE(1'b0), .CK(R_clk), .RN(
        R_rst), .Q(R_ptr[2]) );
  SDFFRQX2M R_ptr_reg_1_ ( .D(n21), .SI(1'b0), .SE(1'b0), .CK(R_clk), .RN(
        R_rst), .Q(R_ptr[1]) );
  SDFFRQX2M R_addr_reg_0_ ( .D(n35), .SI(1'b0), .SE(1'b0), .CK(R_clk), .RN(
        R_rst), .Q(R_addr[0]) );
  SDFFRQX2M R_addr_reg_2_ ( .D(n29), .SI(1'b0), .SE(1'b0), .CK(R_clk), .RN(
        R_rst), .Q(R_addr[2]) );
  SDFFRQX2M R_addr_reg_1_ ( .D(n31), .SI(1'b0), .SE(1'b0), .CK(R_clk), .RN(
        R_rst), .Q(R_addr[1]) );
  NOR2X2M U3 ( .A(n36), .B(n13), .Y(n3) );
  INVX2M U4 ( .A(n4), .Y(n8) );
  CLKXOR2X2M U5 ( .A(n13), .B(n6), .Y(n35) );
  BUFX2M U6 ( .A(n2), .Y(n6) );
  INVX2M U7 ( .A(n15), .Y(EMPTY) );
  OAI2BB2X1M U8 ( .B0(n1), .B1(n2), .A0N(n6), .A1N(R_ptr[1]), .Y(n21) );
  AOI21X2M U9 ( .A0(n3), .A1(n4), .B0(n5), .Y(n1) );
  OAI32X1M U10 ( .A0(n4), .A1(R_addr[0]), .A2(n36), .B0(R_addr[1]), .B1(n7), 
        .Y(n5) );
  CLKXOR2X2M U11 ( .A(n8), .B(R_addr[0]), .Y(n7) );
  CLKXOR2X2M U12 ( .A(n3), .B(R_addr[2]), .Y(n4) );
  CLKXOR2X2M U13 ( .A(R_addr[3]), .B(n11), .Y(n10) );
  NAND2X2M U14 ( .A(n3), .B(R_addr[2]), .Y(n11) );
  INVX2M U15 ( .A(R_addr[1]), .Y(n36) );
  INVX2M U16 ( .A(R_addr[0]), .Y(n13) );
  OAI2BB2X1M U17 ( .B0(n9), .B1(n2), .A0N(n6), .A1N(R_ptr[2]), .Y(n23) );
  CLKXOR2X2M U18 ( .A(n10), .B(n4), .Y(n9) );
  NAND4X2M U19 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  XNOR2X2M U20 ( .A(R_ptr[2]), .B(RQ2_wptr[2]), .Y(n18) );
  XNOR2X2M U21 ( .A(R_ptr[3]), .B(RQ2_wptr[3]), .Y(n19) );
  XNOR2X2M U22 ( .A(R_ptr[1]), .B(RQ2_wptr[1]), .Y(n17) );
  XNOR2X2M U23 ( .A(R_ptr[0]), .B(RQ2_wptr[0]), .Y(n16) );
  CLKXOR2X2M U24 ( .A(R_addr[1]), .B(n14), .Y(n31) );
  NOR2X2M U25 ( .A(n13), .B(n2), .Y(n14) );
  OAI2BB2X1M U26 ( .B0(R_addr[1]), .B1(n2), .A0N(n6), .A1N(R_ptr[0]), .Y(n33)
         );
  CLKXOR2X2M U27 ( .A(R_addr[3]), .B(n12), .Y(n27) );
  NOR2X2M U28 ( .A(n6), .B(n11), .Y(n12) );
  OAI2BB2X1M U29 ( .B0(n8), .B1(n2), .A0N(n6), .A1N(R_addr[2]), .Y(n29) );
  OAI2BB2X1M U30 ( .B0(n10), .B1(n2), .A0N(n6), .A1N(R_ptr[3]), .Y(n25) );
  NAND2X2M U39 ( .A(R_inc), .B(n15), .Y(n2) );
endmodule


module DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_0 ( clk, rst, i_ptr, o_ptr
 );
  input [3:0] i_ptr;
  output [3:0] o_ptr;
  input clk, rst;
  wire   sync_reg_3__1_, sync_reg_2__1_, sync_reg_1__1_, sync_reg_0__1_, n9,
         n10;

  SDFFRQX2M sync_reg_reg_1__0_ ( .D(sync_reg_1__1_), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n9), .Q(o_ptr[1]) );
  SDFFRQX2M sync_reg_reg_0__0_ ( .D(sync_reg_0__1_), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n9), .Q(o_ptr[0]) );
  SDFFRQX2M sync_reg_reg_3__0_ ( .D(sync_reg_3__1_), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n9), .Q(o_ptr[3]) );
  SDFFRQX2M sync_reg_reg_2__0_ ( .D(sync_reg_2__1_), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n9), .Q(o_ptr[2]) );
  SDFFRQX2M sync_reg_reg_3__1_ ( .D(i_ptr[3]), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n9), .Q(sync_reg_3__1_) );
  SDFFRQX2M sync_reg_reg_2__1_ ( .D(i_ptr[2]), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n9), .Q(sync_reg_2__1_) );
  SDFFRQX2M sync_reg_reg_1__1_ ( .D(i_ptr[1]), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n9), .Q(sync_reg_1__1_) );
  SDFFRQX2M sync_reg_reg_0__1_ ( .D(i_ptr[0]), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n9), .Q(sync_reg_0__1_) );
  INVX2M U11 ( .A(n10), .Y(n9) );
  INVX2M U12 ( .A(rst), .Y(n10) );
endmodule


module DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_1 ( clk, rst, i_ptr, o_ptr
 );
  input [3:0] i_ptr;
  output [3:0] o_ptr;
  input clk, rst;
  wire   sync_reg_3__1_, sync_reg_2__1_, sync_reg_1__1_, sync_reg_0__1_, n9,
         n10;

  SDFFRQX2M sync_reg_reg_3__0_ ( .D(sync_reg_3__1_), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n9), .Q(o_ptr[3]) );
  SDFFRQX2M sync_reg_reg_2__0_ ( .D(sync_reg_2__1_), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n9), .Q(o_ptr[2]) );
  SDFFRQX2M sync_reg_reg_1__0_ ( .D(sync_reg_1__1_), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n9), .Q(o_ptr[1]) );
  SDFFRQX2M sync_reg_reg_0__0_ ( .D(sync_reg_0__1_), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n9), .Q(o_ptr[0]) );
  SDFFRQX2M sync_reg_reg_3__1_ ( .D(i_ptr[3]), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n9), .Q(sync_reg_3__1_) );
  SDFFRQX2M sync_reg_reg_2__1_ ( .D(i_ptr[2]), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n9), .Q(sync_reg_2__1_) );
  SDFFRQX2M sync_reg_reg_1__1_ ( .D(i_ptr[1]), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n9), .Q(sync_reg_1__1_) );
  SDFFRQX2M sync_reg_reg_0__1_ ( .D(i_ptr[0]), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n9), .Q(sync_reg_0__1_) );
  INVX2M U11 ( .A(n10), .Y(n9) );
  INVX2M U12 ( .A(rst), .Y(n10) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_FIFO_DEPTH8_ADDR_WIDTH4 ( W_clk, W_rst, 
        W_CLKEN, W_addr, R_addr, WR_data, RD_data );
  input [2:0] W_addr;
  input [2:0] R_addr;
  input [7:0] WR_data;
  output [7:0] RD_data;
  input W_clk, W_rst, W_CLKEN;
  wire   n1, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n22, n23,
         n25, n27, n29, n31, n33, n35, n37, n39, n41, n43, n45, n47, n49, n51,
         n53, n55, n57, n59, n61, n63, n65, n67, n69, n71, n73, n75, n77, n79,
         n81, n83, n85, n87, n89, n91, n93, n95, n97, n99, n101, n103, n105,
         n107, n109, n111, n113, n115, n117, n119, n121, n123, n125, n127,
         n129, n131, n133, n135, n137, n139, n141, n143, n145, n147, n149,
         n151, n2, n3, n4, n5, n6, n7, n8, n9, n21, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206;
  wire   [63:0] mem;

  SDFFRQX2M mem_reg_1__7_ ( .D(n55), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[15]) );
  SDFFRQX2M mem_reg_1__6_ ( .D(n53), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[14]) );
  SDFFRQX2M mem_reg_1__5_ ( .D(n51), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[13]) );
  SDFFRQX2M mem_reg_1__4_ ( .D(n49), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[12]) );
  SDFFRQX2M mem_reg_1__3_ ( .D(n47), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[11]) );
  SDFFRQX2M mem_reg_1__2_ ( .D(n45), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[10]) );
  SDFFRQX2M mem_reg_1__1_ ( .D(n43), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[9]) );
  SDFFRQX2M mem_reg_1__0_ ( .D(n41), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[8]) );
  SDFFRQX2M mem_reg_0__7_ ( .D(n39), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[7]) );
  SDFFRQX2M mem_reg_0__6_ ( .D(n37), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[6]) );
  SDFFRQX2M mem_reg_0__5_ ( .D(n35), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[5]) );
  SDFFRQX2M mem_reg_0__4_ ( .D(n33), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        W_rst), .Q(mem[4]) );
  SDFFRQX2M mem_reg_0__3_ ( .D(n31), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        W_rst), .Q(mem[3]) );
  SDFFRQX2M mem_reg_0__2_ ( .D(n29), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        W_rst), .Q(mem[2]) );
  SDFFRQX2M mem_reg_0__1_ ( .D(n27), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        W_rst), .Q(mem[1]) );
  SDFFRQX2M mem_reg_0__0_ ( .D(n25), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        W_rst), .Q(mem[0]) );
  SDFFRQX2M mem_reg_5__7_ ( .D(n119), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[47]) );
  SDFFRQX2M mem_reg_5__6_ ( .D(n117), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[46]) );
  SDFFRQX2M mem_reg_5__5_ ( .D(n115), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[45]) );
  SDFFRQX2M mem_reg_5__4_ ( .D(n113), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[44]) );
  SDFFRQX2M mem_reg_5__3_ ( .D(n111), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[43]) );
  SDFFRQX2M mem_reg_5__2_ ( .D(n109), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[42]) );
  SDFFRQX2M mem_reg_5__1_ ( .D(n107), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[41]) );
  SDFFRQX2M mem_reg_5__0_ ( .D(n105), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[40]) );
  SDFFRQX2M mem_reg_4__7_ ( .D(n103), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[39]) );
  SDFFRQX2M mem_reg_4__6_ ( .D(n101), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[38]) );
  SDFFRQX2M mem_reg_4__5_ ( .D(n99), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[37]) );
  SDFFRQX2M mem_reg_4__4_ ( .D(n97), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[36]) );
  SDFFRQX2M mem_reg_4__3_ ( .D(n95), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[35]) );
  SDFFRQX2M mem_reg_4__2_ ( .D(n93), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[34]) );
  SDFFRQX2M mem_reg_4__1_ ( .D(n91), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[33]) );
  SDFFRQX2M mem_reg_4__0_ ( .D(n89), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[32]) );
  SDFFRQX2M mem_reg_7__7_ ( .D(n151), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[63]) );
  SDFFRQX2M mem_reg_7__6_ ( .D(n149), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[62]) );
  SDFFRQX2M mem_reg_7__5_ ( .D(n147), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[61]) );
  SDFFRQX2M mem_reg_7__4_ ( .D(n145), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[60]) );
  SDFFRQX2M mem_reg_7__3_ ( .D(n143), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[59]) );
  SDFFRQX2M mem_reg_7__2_ ( .D(n141), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[58]) );
  SDFFRQX2M mem_reg_7__1_ ( .D(n139), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[57]) );
  SDFFRQX2M mem_reg_7__0_ ( .D(n137), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[56]) );
  SDFFRQX2M mem_reg_6__7_ ( .D(n135), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[55]) );
  SDFFRQX2M mem_reg_6__6_ ( .D(n133), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[54]) );
  SDFFRQX2M mem_reg_6__5_ ( .D(n131), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[53]) );
  SDFFRQX2M mem_reg_6__4_ ( .D(n129), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[52]) );
  SDFFRQX2M mem_reg_6__3_ ( .D(n127), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n194), .Q(mem[51]) );
  SDFFRQX2M mem_reg_6__2_ ( .D(n125), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[50]) );
  SDFFRQX2M mem_reg_6__1_ ( .D(n123), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[49]) );
  SDFFRQX2M mem_reg_6__0_ ( .D(n121), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n195), .Q(mem[48]) );
  SDFFRQX2M mem_reg_3__7_ ( .D(n87), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[31]) );
  SDFFRQX2M mem_reg_3__6_ ( .D(n85), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[30]) );
  SDFFRQX2M mem_reg_3__5_ ( .D(n83), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[29]) );
  SDFFRQX2M mem_reg_3__4_ ( .D(n81), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[28]) );
  SDFFRQX2M mem_reg_3__3_ ( .D(n79), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[27]) );
  SDFFRQX2M mem_reg_3__2_ ( .D(n77), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[26]) );
  SDFFRQX2M mem_reg_3__1_ ( .D(n75), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n196), .Q(mem[25]) );
  SDFFRQX2M mem_reg_3__0_ ( .D(n73), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[24]) );
  SDFFRQX2M mem_reg_2__7_ ( .D(n71), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[23]) );
  SDFFRQX2M mem_reg_2__6_ ( .D(n69), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[22]) );
  SDFFRQX2M mem_reg_2__5_ ( .D(n67), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[21]) );
  SDFFRQX2M mem_reg_2__4_ ( .D(n65), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[20]) );
  SDFFRQX2M mem_reg_2__3_ ( .D(n63), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[19]) );
  SDFFRQX2M mem_reg_2__2_ ( .D(n61), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[18]) );
  SDFFRQX2M mem_reg_2__1_ ( .D(n59), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[17]) );
  SDFFRQX2M mem_reg_2__0_ ( .D(n57), .SI(1'b0), .SE(1'b0), .CK(W_clk), .RN(
        n197), .Q(mem[16]) );
  CLKBUFX4M U2 ( .A(W_rst), .Y(n194) );
  NOR2BX2M U3 ( .AN(W_CLKEN), .B(W_addr[2]), .Y(n10) );
  INVX2M U4 ( .A(WR_data[0]), .Y(n206) );
  INVX2M U5 ( .A(WR_data[1]), .Y(n205) );
  INVX2M U6 ( .A(WR_data[2]), .Y(n204) );
  INVX2M U7 ( .A(WR_data[3]), .Y(n203) );
  INVX2M U8 ( .A(WR_data[4]), .Y(n202) );
  INVX2M U9 ( .A(WR_data[5]), .Y(n201) );
  INVX2M U10 ( .A(WR_data[6]), .Y(n200) );
  INVX2M U11 ( .A(WR_data[7]), .Y(n199) );
  BUFX4M U12 ( .A(W_rst), .Y(n197) );
  BUFX4M U13 ( .A(W_rst), .Y(n196) );
  BUFX4M U14 ( .A(W_rst), .Y(n195) );
  BUFX2M U15 ( .A(n18), .Y(n189) );
  BUFX2M U16 ( .A(n20), .Y(n188) );
  BUFX2M U17 ( .A(n12), .Y(n192) );
  BUFX2M U18 ( .A(n14), .Y(n191) );
  BUFX2M U19 ( .A(n16), .Y(n190) );
  BUFX2M U20 ( .A(n22), .Y(n187) );
  BUFX2M U21 ( .A(n23), .Y(n186) );
  BUFX2M U22 ( .A(n1), .Y(n193) );
  NAND2X2M U23 ( .A(n10), .B(n11), .Y(n1) );
  NAND2X2M U24 ( .A(n13), .B(n10), .Y(n12) );
  NAND2X2M U25 ( .A(n15), .B(n10), .Y(n14) );
  NAND2X2M U26 ( .A(n17), .B(n10), .Y(n16) );
  NAND2X2M U27 ( .A(n19), .B(n11), .Y(n18) );
  NAND2X2M U28 ( .A(n19), .B(n13), .Y(n20) );
  NAND2X2M U29 ( .A(n19), .B(n15), .Y(n22) );
  NAND2X2M U30 ( .A(n19), .B(n17), .Y(n23) );
  INVX2M U31 ( .A(R_addr[0]), .Y(n181) );
  BUFX4M U32 ( .A(n175), .Y(n183) );
  NOR2X2M U33 ( .A(n179), .B(n180), .Y(n175) );
  NOR2X2M U34 ( .A(n198), .B(W_addr[1]), .Y(n13) );
  INVX2M U35 ( .A(W_addr[0]), .Y(n198) );
  OAI2BB2X1M U36 ( .B0(n206), .B1(n192), .A0N(mem[8]), .A1N(n192), .Y(n41) );
  OAI2BB2X1M U37 ( .B0(n205), .B1(n192), .A0N(mem[9]), .A1N(n192), .Y(n43) );
  OAI2BB2X1M U38 ( .B0(n204), .B1(n12), .A0N(mem[10]), .A1N(n192), .Y(n45) );
  OAI2BB2X1M U39 ( .B0(n203), .B1(n12), .A0N(mem[11]), .A1N(n192), .Y(n47) );
  OAI2BB2X1M U40 ( .B0(n202), .B1(n12), .A0N(mem[12]), .A1N(n192), .Y(n49) );
  OAI2BB2X1M U41 ( .B0(n201), .B1(n12), .A0N(mem[13]), .A1N(n192), .Y(n51) );
  OAI2BB2X1M U42 ( .B0(n200), .B1(n12), .A0N(mem[14]), .A1N(n192), .Y(n53) );
  OAI2BB2X1M U43 ( .B0(n199), .B1(n192), .A0N(mem[15]), .A1N(n192), .Y(n55) );
  OAI2BB2X1M U44 ( .B0(n206), .B1(n191), .A0N(mem[16]), .A1N(n191), .Y(n57) );
  OAI2BB2X1M U45 ( .B0(n205), .B1(n191), .A0N(mem[17]), .A1N(n191), .Y(n59) );
  OAI2BB2X1M U46 ( .B0(n204), .B1(n14), .A0N(mem[18]), .A1N(n191), .Y(n61) );
  OAI2BB2X1M U47 ( .B0(n203), .B1(n14), .A0N(mem[19]), .A1N(n191), .Y(n63) );
  OAI2BB2X1M U48 ( .B0(n202), .B1(n14), .A0N(mem[20]), .A1N(n191), .Y(n65) );
  OAI2BB2X1M U49 ( .B0(n201), .B1(n14), .A0N(mem[21]), .A1N(n191), .Y(n67) );
  OAI2BB2X1M U50 ( .B0(n200), .B1(n14), .A0N(mem[22]), .A1N(n191), .Y(n69) );
  OAI2BB2X1M U51 ( .B0(n199), .B1(n191), .A0N(mem[23]), .A1N(n191), .Y(n71) );
  OAI2BB2X1M U52 ( .B0(n206), .B1(n190), .A0N(mem[24]), .A1N(n190), .Y(n73) );
  OAI2BB2X1M U53 ( .B0(n205), .B1(n190), .A0N(mem[25]), .A1N(n190), .Y(n75) );
  OAI2BB2X1M U54 ( .B0(n204), .B1(n16), .A0N(mem[26]), .A1N(n190), .Y(n77) );
  OAI2BB2X1M U55 ( .B0(n203), .B1(n16), .A0N(mem[27]), .A1N(n190), .Y(n79) );
  OAI2BB2X1M U56 ( .B0(n202), .B1(n16), .A0N(mem[28]), .A1N(n190), .Y(n81) );
  OAI2BB2X1M U57 ( .B0(n201), .B1(n16), .A0N(mem[29]), .A1N(n190), .Y(n83) );
  OAI2BB2X1M U58 ( .B0(n200), .B1(n16), .A0N(mem[30]), .A1N(n190), .Y(n85) );
  OAI2BB2X1M U59 ( .B0(n199), .B1(n190), .A0N(mem[31]), .A1N(n190), .Y(n87) );
  OAI2BB2X1M U60 ( .B0(n206), .B1(n189), .A0N(mem[32]), .A1N(n189), .Y(n89) );
  OAI2BB2X1M U61 ( .B0(n205), .B1(n18), .A0N(mem[33]), .A1N(n189), .Y(n91) );
  OAI2BB2X1M U62 ( .B0(n204), .B1(n18), .A0N(mem[34]), .A1N(n189), .Y(n93) );
  OAI2BB2X1M U63 ( .B0(n203), .B1(n18), .A0N(mem[35]), .A1N(n189), .Y(n95) );
  OAI2BB2X1M U64 ( .B0(n202), .B1(n18), .A0N(mem[36]), .A1N(n189), .Y(n97) );
  OAI2BB2X1M U65 ( .B0(n201), .B1(n18), .A0N(mem[37]), .A1N(n189), .Y(n99) );
  OAI2BB2X1M U66 ( .B0(n200), .B1(n18), .A0N(mem[38]), .A1N(n189), .Y(n101) );
  OAI2BB2X1M U67 ( .B0(n199), .B1(n189), .A0N(mem[39]), .A1N(n189), .Y(n103)
         );
  OAI2BB2X1M U68 ( .B0(n206), .B1(n188), .A0N(mem[40]), .A1N(n188), .Y(n105)
         );
  OAI2BB2X1M U69 ( .B0(n205), .B1(n20), .A0N(mem[41]), .A1N(n188), .Y(n107) );
  OAI2BB2X1M U70 ( .B0(n204), .B1(n20), .A0N(mem[42]), .A1N(n188), .Y(n109) );
  OAI2BB2X1M U71 ( .B0(n203), .B1(n20), .A0N(mem[43]), .A1N(n188), .Y(n111) );
  OAI2BB2X1M U72 ( .B0(n202), .B1(n20), .A0N(mem[44]), .A1N(n188), .Y(n113) );
  OAI2BB2X1M U73 ( .B0(n201), .B1(n20), .A0N(mem[45]), .A1N(n188), .Y(n115) );
  OAI2BB2X1M U74 ( .B0(n200), .B1(n20), .A0N(mem[46]), .A1N(n188), .Y(n117) );
  OAI2BB2X1M U75 ( .B0(n199), .B1(n188), .A0N(mem[47]), .A1N(n188), .Y(n119)
         );
  OAI2BB2X1M U76 ( .B0(n206), .B1(n187), .A0N(mem[48]), .A1N(n187), .Y(n121)
         );
  OAI2BB2X1M U77 ( .B0(n205), .B1(n22), .A0N(mem[49]), .A1N(n187), .Y(n123) );
  OAI2BB2X1M U78 ( .B0(n204), .B1(n22), .A0N(mem[50]), .A1N(n187), .Y(n125) );
  OAI2BB2X1M U79 ( .B0(n203), .B1(n22), .A0N(mem[51]), .A1N(n187), .Y(n127) );
  OAI2BB2X1M U80 ( .B0(n202), .B1(n22), .A0N(mem[52]), .A1N(n187), .Y(n129) );
  OAI2BB2X1M U81 ( .B0(n201), .B1(n22), .A0N(mem[53]), .A1N(n187), .Y(n131) );
  OAI2BB2X1M U82 ( .B0(n200), .B1(n22), .A0N(mem[54]), .A1N(n187), .Y(n133) );
  OAI2BB2X1M U83 ( .B0(n199), .B1(n187), .A0N(mem[55]), .A1N(n187), .Y(n135)
         );
  OAI2BB2X1M U84 ( .B0(n206), .B1(n186), .A0N(mem[56]), .A1N(n186), .Y(n137)
         );
  OAI2BB2X1M U85 ( .B0(n205), .B1(n23), .A0N(mem[57]), .A1N(n186), .Y(n139) );
  OAI2BB2X1M U86 ( .B0(n204), .B1(n23), .A0N(mem[58]), .A1N(n186), .Y(n141) );
  OAI2BB2X1M U87 ( .B0(n203), .B1(n23), .A0N(mem[59]), .A1N(n186), .Y(n143) );
  OAI2BB2X1M U88 ( .B0(n202), .B1(n23), .A0N(mem[60]), .A1N(n186), .Y(n145) );
  OAI2BB2X1M U153 ( .B0(n201), .B1(n23), .A0N(mem[61]), .A1N(n186), .Y(n147)
         );
  OAI2BB2X1M U154 ( .B0(n200), .B1(n23), .A0N(mem[62]), .A1N(n186), .Y(n149)
         );
  OAI2BB2X1M U155 ( .B0(n199), .B1(n186), .A0N(mem[63]), .A1N(n186), .Y(n151)
         );
  OAI2BB2X1M U156 ( .B0(n193), .B1(n206), .A0N(mem[0]), .A1N(n193), .Y(n25) );
  OAI2BB2X1M U157 ( .B0(n193), .B1(n205), .A0N(mem[1]), .A1N(n193), .Y(n27) );
  OAI2BB2X1M U158 ( .B0(n193), .B1(n204), .A0N(mem[2]), .A1N(n193), .Y(n29) );
  OAI2BB2X1M U159 ( .B0(n1), .B1(n203), .A0N(mem[3]), .A1N(n193), .Y(n31) );
  OAI2BB2X1M U160 ( .B0(n1), .B1(n202), .A0N(mem[4]), .A1N(n193), .Y(n33) );
  OAI2BB2X1M U161 ( .B0(n1), .B1(n201), .A0N(mem[5]), .A1N(n193), .Y(n35) );
  OAI2BB2X1M U162 ( .B0(n1), .B1(n200), .A0N(mem[6]), .A1N(n193), .Y(n37) );
  OAI2BB2X1M U163 ( .B0(n193), .B1(n199), .A0N(mem[7]), .A1N(n193), .Y(n39) );
  AND2X2M U164 ( .A(W_addr[2]), .B(W_CLKEN), .Y(n19) );
  AND2X2M U165 ( .A(W_addr[1]), .B(n198), .Y(n15) );
  NOR2X2M U166 ( .A(W_addr[1]), .B(W_addr[0]), .Y(n11) );
  AND2X2M U167 ( .A(W_addr[1]), .B(W_addr[0]), .Y(n17) );
  INVX2M U168 ( .A(R_addr[1]), .Y(n180) );
  BUFX4M U169 ( .A(n173), .Y(n184) );
  NOR2X2M U170 ( .A(n180), .B(R_addr[2]), .Y(n173) );
  BUFX4M U171 ( .A(n172), .Y(n185) );
  NOR2X2M U172 ( .A(R_addr[1]), .B(R_addr[2]), .Y(n172) );
  INVX2M U173 ( .A(R_addr[2]), .Y(n179) );
  BUFX4M U174 ( .A(n176), .Y(n182) );
  NOR2X2M U175 ( .A(n179), .B(R_addr[1]), .Y(n176) );
  AO22X1M U176 ( .A0(mem[24]), .A1(n184), .B0(mem[8]), .B1(n185), .Y(n2) );
  AOI221XLM U177 ( .A0(mem[40]), .A1(n182), .B0(mem[56]), .B1(n183), .C0(n2), 
        .Y(n5) );
  AO22X1M U178 ( .A0(mem[16]), .A1(n184), .B0(mem[0]), .B1(n185), .Y(n3) );
  AOI221XLM U179 ( .A0(mem[32]), .A1(n182), .B0(mem[48]), .B1(n183), .C0(n3), 
        .Y(n4) );
  OAI22X1M U180 ( .A0(n181), .A1(n5), .B0(R_addr[0]), .B1(n4), .Y(RD_data[0])
         );
  AO22X1M U181 ( .A0(mem[25]), .A1(n184), .B0(mem[9]), .B1(n185), .Y(n6) );
  AOI221XLM U182 ( .A0(mem[41]), .A1(n182), .B0(mem[57]), .B1(n183), .C0(n6), 
        .Y(n9) );
  AO22X1M U183 ( .A0(mem[17]), .A1(n184), .B0(mem[1]), .B1(n185), .Y(n7) );
  AOI221XLM U184 ( .A0(mem[33]), .A1(n182), .B0(mem[49]), .B1(n183), .C0(n7), 
        .Y(n8) );
  OAI22X1M U185 ( .A0(n181), .A1(n9), .B0(R_addr[0]), .B1(n8), .Y(RD_data[1])
         );
  AO22X1M U186 ( .A0(mem[26]), .A1(n184), .B0(mem[10]), .B1(n185), .Y(n21) );
  AOI221XLM U187 ( .A0(mem[42]), .A1(n182), .B0(mem[58]), .B1(n183), .C0(n21), 
        .Y(n154) );
  AO22X1M U188 ( .A0(mem[18]), .A1(n184), .B0(mem[2]), .B1(n185), .Y(n152) );
  AOI221XLM U189 ( .A0(mem[34]), .A1(n182), .B0(mem[50]), .B1(n183), .C0(n152), 
        .Y(n153) );
  OAI22X1M U190 ( .A0(n181), .A1(n154), .B0(R_addr[0]), .B1(n153), .Y(
        RD_data[2]) );
  AO22X1M U191 ( .A0(mem[27]), .A1(n184), .B0(mem[11]), .B1(n185), .Y(n155) );
  AOI221XLM U192 ( .A0(mem[43]), .A1(n182), .B0(mem[59]), .B1(n183), .C0(n155), 
        .Y(n158) );
  AO22X1M U193 ( .A0(mem[19]), .A1(n184), .B0(mem[3]), .B1(n185), .Y(n156) );
  AOI221XLM U194 ( .A0(mem[35]), .A1(n182), .B0(mem[51]), .B1(n183), .C0(n156), 
        .Y(n157) );
  OAI22X1M U195 ( .A0(n181), .A1(n158), .B0(R_addr[0]), .B1(n157), .Y(
        RD_data[3]) );
  AO22X1M U196 ( .A0(mem[28]), .A1(n184), .B0(mem[12]), .B1(n185), .Y(n159) );
  AOI221XLM U197 ( .A0(mem[44]), .A1(n182), .B0(mem[60]), .B1(n183), .C0(n159), 
        .Y(n162) );
  AO22X1M U198 ( .A0(mem[20]), .A1(n184), .B0(mem[4]), .B1(n185), .Y(n160) );
  AOI221XLM U199 ( .A0(mem[36]), .A1(n182), .B0(mem[52]), .B1(n183), .C0(n160), 
        .Y(n161) );
  OAI22X1M U200 ( .A0(n181), .A1(n162), .B0(R_addr[0]), .B1(n161), .Y(
        RD_data[4]) );
  AO22X1M U201 ( .A0(mem[29]), .A1(n184), .B0(mem[13]), .B1(n185), .Y(n163) );
  AOI221XLM U202 ( .A0(mem[45]), .A1(n182), .B0(mem[61]), .B1(n183), .C0(n163), 
        .Y(n166) );
  AO22X1M U203 ( .A0(mem[21]), .A1(n184), .B0(mem[5]), .B1(n185), .Y(n164) );
  AOI221XLM U204 ( .A0(mem[37]), .A1(n182), .B0(mem[53]), .B1(n183), .C0(n164), 
        .Y(n165) );
  OAI22X1M U205 ( .A0(n181), .A1(n166), .B0(R_addr[0]), .B1(n165), .Y(
        RD_data[5]) );
  AO22X1M U206 ( .A0(mem[30]), .A1(n184), .B0(mem[14]), .B1(n185), .Y(n167) );
  AOI221XLM U207 ( .A0(mem[46]), .A1(n182), .B0(mem[62]), .B1(n183), .C0(n167), 
        .Y(n170) );
  AO22X1M U208 ( .A0(mem[22]), .A1(n184), .B0(mem[6]), .B1(n185), .Y(n168) );
  AOI221XLM U209 ( .A0(mem[38]), .A1(n182), .B0(mem[54]), .B1(n183), .C0(n168), 
        .Y(n169) );
  OAI22X1M U210 ( .A0(n181), .A1(n170), .B0(R_addr[0]), .B1(n169), .Y(
        RD_data[6]) );
  AO22X1M U211 ( .A0(mem[31]), .A1(n184), .B0(mem[15]), .B1(n185), .Y(n171) );
  AOI221XLM U212 ( .A0(mem[47]), .A1(n182), .B0(mem[63]), .B1(n183), .C0(n171), 
        .Y(n178) );
  AO22X1M U213 ( .A0(mem[23]), .A1(n184), .B0(mem[7]), .B1(n185), .Y(n174) );
  AOI221XLM U214 ( .A0(mem[39]), .A1(n182), .B0(mem[55]), .B1(n183), .C0(n174), 
        .Y(n177) );
  OAI22X1M U215 ( .A0(n178), .A1(n181), .B0(R_addr[0]), .B1(n177), .Y(
        RD_data[7]) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4 ( W_clk, 
        W_rst, W_inc, R_clk, R_rst, R_inc, WR_data, FULL, EMPTY, RD_data );
  input [7:0] WR_data;
  output [7:0] RD_data;
  input W_clk, W_rst, W_inc, R_clk, R_rst, R_inc;
  output FULL, EMPTY;
  wire   W_CLKEN, n1, n2, n3, n4, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2;
  wire   [3:0] WQ2_rptr;
  wire   [3:0] w_ptr;
  wire   [2:0] w_addr;
  wire   [3:0] RQ2_wptr;
  wire   [3:0] r_ptr;
  wire   [2:0] r_addr;

  FIFO_WR_FIFO_DEPTH8_ADDR_WIDTH4 FIFO_WR_u ( .W_clk(W_clk), .W_rst(n3), 
        .W_inc(W_inc), .WQ2_rptr(WQ2_rptr), .W_ptr(w_ptr), .W_addr({
        SYNOPSYS_UNCONNECTED_1, w_addr}), .W_CLKEN(W_CLKEN), .FULL(FULL) );
  FIFO_RD_FIFO_DEPTH8_ADDR_WIDTH4 FIFO_RD_u ( .R_clk(R_clk), .R_rst(n1), 
        .R_inc(R_inc), .RQ2_wptr(RQ2_wptr), .R_ptr(r_ptr), .R_addr({
        SYNOPSYS_UNCONNECTED_2, r_addr}), .EMPTY(EMPTY) );
  DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_0 SYNC_R2W_u ( .clk(W_clk), 
        .rst(n3), .i_ptr(r_ptr), .o_ptr(WQ2_rptr) );
  DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_1 SYNC_W2R_u ( .clk(R_clk), 
        .rst(n1), .i_ptr(w_ptr), .o_ptr(RQ2_wptr) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_FIFO_DEPTH8_ADDR_WIDTH4 FIFO_MEM_u ( .W_clk(W_clk), .W_rst(n3), .W_CLKEN(W_CLKEN), .W_addr(w_addr), .R_addr(r_addr), .WR_data(
        WR_data), .RD_data(RD_data) );
  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_rst), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_rst), .Y(n2) );
endmodule


module Pulse_gen ( CLK, RST, LVL_SIG, PULSE_SIG );
  input CLK, RST, LVL_SIG;
  output PULSE_SIG;
  wire   lvl_q;

  SDFFRQX2M lvl_q_reg ( .D(LVL_SIG), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(RST), 
        .Q(lvl_q) );
  NOR2BX2M U4 ( .AN(lvl_q), .B(LVL_SIG), .Y(PULSE_SIG) );
endmodule


module UART_TX_FSM ( clk, rst, data_valid, par_en, ser_done, ser_en, busy, 
        mux_sel );
  output [1:0] mux_sel;
  input clk, rst, data_valid, par_en, ser_done;
  output ser_en, busy;
  wire   busy_comb, n9, n10, n11, n5, n6, n7, n8;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  SDFFRQX2M busy_reg ( .D(busy_comb), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(busy) );
  SDFFSQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .SN(rst), .Q(current_state[0]) );
  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(rst), .Q(current_state[1]) );
  INVX2M U7 ( .A(mux_sel[1]), .Y(n7) );
  NOR2X2M U8 ( .A(current_state[0]), .B(current_state[2]), .Y(ser_en) );
  OAI31X1M U9 ( .A0(n5), .A1(data_valid), .A2(current_state[1]), .B0(n10), .Y(
        next_state[0]) );
  AOI31X2M U10 ( .A0(current_state[1]), .A1(n5), .A2(n11), .B0(
        current_state[2]), .Y(n10) );
  NOR2BX2M U11 ( .AN(ser_done), .B(n8), .Y(n11) );
  NOR2BX2M U12 ( .AN(current_state[1]), .B(current_state[2]), .Y(mux_sel[1])
         );
  OAI32X2M U13 ( .A0(current_state[0]), .A1(current_state[2]), .A2(
        current_state[1]), .B0(n7), .B1(n5), .Y(mux_sel[0]) );
  INVX2M U14 ( .A(current_state[0]), .Y(n5) );
  NOR2X2M U15 ( .A(n9), .B(n7), .Y(next_state[2]) );
  AOI21X2M U16 ( .A0(ser_done), .A1(n8), .B0(current_state[0]), .Y(n9) );
  AOI31X2M U17 ( .A0(current_state[1]), .A1(n8), .A2(ser_done), .B0(n6), .Y(
        next_state[1]) );
  INVX2M U18 ( .A(ser_en), .Y(n6) );
  OR3X2M U19 ( .A(current_state[2]), .B(current_state[1]), .C(n5), .Y(
        busy_comb) );
  INVX2M U20 ( .A(par_en), .Y(n8) );
endmodule


module serializer ( clk, rst, ser_en, P_data, ser_data, ser_done );
  input [7:0] P_data;
  input clk, rst, ser_en;
  output ser_data, ser_done;
  wire   N3, N4, N5, N10, N18, N19, N20, N22, n8, n9, n10, n11, n6, n7, n12,
         n13, n14, n15, n16, n17, n18, n19;

  SDFFSQX2M ser_data_reg ( .D(N18), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(rst), 
        .Q(ser_data) );
  SDFFRQX2M ser_done_reg ( .D(N22), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(ser_done) );
  SDFFRQX2M cntr_reg_2_ ( .D(n18), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(N5) );
  SDFFRQX2M cntr_reg_1_ ( .D(N20), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(N4) );
  SDFFRQX2M cntr_reg_0_ ( .D(N19), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(N3) );
  INVX2M U8 ( .A(N3), .Y(n17) );
  NAND2X2M U9 ( .A(ser_en), .B(n8), .Y(n10) );
  NOR2BX2M U10 ( .AN(ser_en), .B(n8), .Y(N22) );
  NOR2X2M U11 ( .A(N3), .B(n10), .Y(N19) );
  NAND2BX2M U12 ( .AN(N10), .B(ser_en), .Y(N18) );
  NAND3X2M U13 ( .A(N4), .B(N3), .C(N5), .Y(n8) );
  NOR2X2M U14 ( .A(n11), .B(n10), .Y(N20) );
  XNOR2X2M U15 ( .A(N3), .B(N4), .Y(n11) );
  INVX2M U16 ( .A(N4), .Y(n16) );
  INVX2M U17 ( .A(n9), .Y(n18) );
  AOI32X1M U18 ( .A0(n19), .A1(N3), .A2(N4), .B0(N5), .B1(n19), .Y(n9) );
  INVX2M U19 ( .A(n10), .Y(n19) );
  AOI22X1M U20 ( .A0(P_data[2]), .A1(n17), .B0(P_data[3]), .B1(N3), .Y(n7) );
  AOI22X1M U21 ( .A0(P_data[0]), .A1(n17), .B0(P_data[1]), .B1(N3), .Y(n6) );
  OA22X1M U22 ( .A0(n16), .A1(n7), .B0(N4), .B1(n6), .Y(n15) );
  AOI22X1M U23 ( .A0(P_data[6]), .A1(n17), .B0(P_data[7]), .B1(N3), .Y(n13) );
  AOI22X1M U24 ( .A0(P_data[4]), .A1(n17), .B0(P_data[5]), .B1(N3), .Y(n12) );
  OAI22X1M U25 ( .A0(n13), .A1(n16), .B0(N4), .B1(n12), .Y(n14) );
  OAI2BB2X1M U26 ( .B0(n15), .B1(N5), .A0N(N5), .A1N(n14), .Y(N10) );
endmodule


module parity_calc ( clk, rst, par_typ, P_data, data_valid, par_bit );
  input [7:0] P_data;
  input clk, rst, par_typ, data_valid;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n8, n2;

  SDFFRQX2M par_bit_reg ( .D(n8), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(par_bit) );
  XOR3XLM U2 ( .A(P_data[5]), .B(P_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_data[7]), .B(P_data[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_data[3]), .B(P_data[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  INVX2M U6 ( .A(data_valid), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(par_typ), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_data[1]), .B(P_data[0]), .C(n5), .Y(n4) );
endmodule


module MUX ( clk, rst, ser_data, par_bit, mux_sel, tx_out );
  input [1:0] mux_sel;
  input clk, rst, ser_data, par_bit;
  output tx_out;
  wire   tx_out_comb, n2, n3;

  SDFFSQX2M tx_out_reg ( .D(tx_out_comb), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(
        rst), .Q(tx_out) );
  OAI21X2M U4 ( .A0(mux_sel[0]), .A1(n2), .B0(n3), .Y(tx_out_comb) );
  NOR2BX2M U5 ( .AN(mux_sel[1]), .B(ser_data), .Y(n2) );
  NAND3X2M U6 ( .A(mux_sel[1]), .B(mux_sel[0]), .C(par_bit), .Y(n3) );
endmodule


module TX_TOP ( CLK, RST, P_DATA, data_valid, parity_enable, parity_type, 
        TX_OUT, busy );
  input [7:0] P_DATA;
  input CLK, RST, data_valid, parity_enable, parity_type;
  output TX_OUT, busy;
  wire   ser_done, ser_en, ser_data, par_bit, n1, n2;
  wire   [1:0] mux_sel;

  UART_TX_FSM u0 ( .clk(CLK), .rst(n1), .data_valid(data_valid), .par_en(
        parity_enable), .ser_done(ser_done), .ser_en(ser_en), .busy(busy), 
        .mux_sel(mux_sel) );
  serializer u1 ( .clk(CLK), .rst(n1), .ser_en(ser_en), .P_data(P_DATA), 
        .ser_data(ser_data), .ser_done(ser_done) );
  parity_calc u2 ( .clk(CLK), .rst(n1), .par_typ(parity_type), .P_data(P_DATA), 
        .data_valid(data_valid), .par_bit(par_bit) );
  MUX u3 ( .clk(CLK), .rst(n1), .ser_data(ser_data), .par_bit(par_bit), 
        .mux_sel(mux_sel), .tx_out(TX_OUT) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART_RX_FSM ( clk, rst, rx_in, par_en, Prescale, bit_cnt, edg_cnt, 
        limit_edg, par_err, stp_err, strt_glitch, dat_samp_en, enable, 
        data_valid, deser_en, stp_chk_en, strt_chk_en, par_chk_en );
  input [5:0] Prescale;
  input [3:0] bit_cnt;
  input [5:0] edg_cnt;
  input [5:0] limit_edg;
  input clk, rst, rx_in, par_en, par_err, stp_err, strt_glitch;
  output dat_samp_en, enable, data_valid, deser_en, stp_chk_en, strt_chk_en,
         par_chk_en;
  wire   stretch_0_, N14, N15, N16, N17, N18, N19, N20, N21, N24, N25, N26,
         N27, N28, N29, N31, N61, N77, N78, N79, N80, N81, N82, N83, N84, n14,
         n15, n16, n17, n19, n20, n22, n23, n26, n27, n29, n31, n32, n36, n38,
         n39, n40, n55, n57, n59, n61, n63, n65, n67, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n18, n21, n24, n25, n28, n30, n33, n34, n35,
         n37, n41, n42, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n71,
         n72, n73, n74, n75, n76, n77, n78, n80, n81, n82, n83, n84, n85;
  wire   [5:0] count;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [5:2] add_54_carry;

  SDFFRQX1M stretch_reg_0_ ( .D(n67), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n3), 
        .Q(stretch_0_) );
  SDFFRQX1M count_reg_5_ ( .D(n55), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n3), 
        .Q(count[5]) );
  SDFFRQX1M count_reg_2_ ( .D(n61), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n3), 
        .Q(count[2]) );
  SDFFRQX1M count_reg_3_ ( .D(n59), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n3), 
        .Q(count[3]) );
  SDFFRQX1M count_reg_4_ ( .D(n57), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n3), 
        .Q(count[4]) );
  SDFFSQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .SN(n3), .Q(current_state[0]) );
  SDFFRQX1M count_reg_0_ ( .D(n65), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n3), 
        .Q(count[0]) );
  SDFFRQX1M count_reg_1_ ( .D(n63), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n3), 
        .Q(count[1]) );
  SDFFRQX1M current_state_reg_2_ ( .D(next_state[2]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n3), .Q(current_state[2]) );
  SDFFRQX1M current_state_reg_1_ ( .D(next_state[1]), .SI(1'b0), .SE(1'b0), 
        .CK(clk), .RN(n3), .Q(current_state[1]) );
  SDFFRQX1M data_valid_reg ( .D(N31), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(data_valid) );
  INVX2M U3 ( .A(1'b0), .Y(dat_samp_en) );
  CLKINVX8M U5 ( .A(n84), .Y(n38) );
  NOR4X2M U6 ( .A(n34), .B(n33), .C(n30), .D(n28), .Y(N61) );
  OAI2BB1XLM U7 ( .A0N(n9), .A1N(limit_edg[2]), .B0(n10), .Y(N79) );
  XOR2XLM U8 ( .A(limit_edg[2]), .B(edg_cnt[2]), .Y(n30) );
  XOR2XLM U9 ( .A(limit_edg[3]), .B(edg_cnt[3]), .Y(n28) );
  INVX2M U10 ( .A(n4), .Y(n3) );
  INVX2M U11 ( .A(rst), .Y(n4) );
  INVXLM U12 ( .A(N61), .Y(n77) );
  NOR2X2M U13 ( .A(n77), .B(n23), .Y(deser_en) );
  OAI211X2M U14 ( .A0(n77), .A1(n14), .B0(n15), .C0(n16), .Y(next_state[2]) );
  NAND3X2M U15 ( .A(n17), .B(n85), .C(deser_en), .Y(n15) );
  NOR2X4M U16 ( .A(n83), .B(N21), .Y(n36) );
  NAND4BX1M U17 ( .AN(strt_chk_en), .B(n19), .C(n16), .D(n40), .Y(enable) );
  OAI2BB2X1M U18 ( .B0(n32), .B1(n84), .A0N(n32), .A1N(n83), .Y(n67) );
  OAI2BB1XLM U19 ( .A0N(n38), .A1N(N21), .B0(n39), .Y(n32) );
  AND2X2M U20 ( .A(n23), .B(n14), .Y(n19) );
  NAND2BX2M U21 ( .AN(n36), .B(n39), .Y(N31) );
  INVX2M U22 ( .A(n38), .Y(n83) );
  INVX2M U23 ( .A(n16), .Y(stp_chk_en) );
  OR2X2M U24 ( .A(limit_edg[1]), .B(limit_edg[0]), .Y(n9) );
  OAI211X2M U25 ( .A0(n82), .A1(n81), .B0(n26), .C0(n27), .Y(next_state[0]) );
  AOI22X1M U26 ( .A0(N84), .A1(stp_chk_en), .B0(par_chk_en), .B1(n77), .Y(n26)
         );
  AOI31X2M U27 ( .A0(current_state[0]), .A1(n81), .A2(rx_in), .B0(n76), .Y(n27) );
  INVX2M U28 ( .A(n29), .Y(n76) );
  AOI33XLM U29 ( .A0(strt_glitch), .A1(N61), .A2(strt_chk_en), .B0(par_en), 
        .B1(n17), .B2(deser_en), .Y(n29) );
  OAI21XLM U30 ( .A0(N61), .A1(n19), .B0(n20), .Y(next_state[1]) );
  AOI31XLM U31 ( .A0(N61), .A1(n75), .A2(strt_chk_en), .B0(n22), .Y(n20) );
  INVX2M U32 ( .A(strt_glitch), .Y(n75) );
  AOI21X2M U33 ( .A0(n17), .A1(n85), .B0(n23), .Y(n22) );
  NAND3X2M U34 ( .A(current_state[0]), .B(n82), .C(current_state[1]), .Y(n14)
         );
  NAND3X2M U35 ( .A(n80), .B(n81), .C(current_state[2]), .Y(n16) );
  NAND3X2M U36 ( .A(n80), .B(n82), .C(current_state[1]), .Y(n23) );
  INVX2M U37 ( .A(current_state[1]), .Y(n81) );
  INVX2M U38 ( .A(current_state[2]), .Y(n82) );
  INVX2M U39 ( .A(current_state[0]), .Y(n80) );
  AO22X1M U40 ( .A0(count[5]), .A1(n83), .B0(N29), .B1(n36), .Y(n55) );
  AO22X1M U41 ( .A0(count[4]), .A1(n83), .B0(N28), .B1(n36), .Y(n57) );
  AO22X1M U42 ( .A0(count[3]), .A1(n83), .B0(N27), .B1(n36), .Y(n59) );
  AO22X1M U43 ( .A0(count[2]), .A1(n83), .B0(N26), .B1(n36), .Y(n61) );
  AO22X1M U44 ( .A0(count[1]), .A1(n83), .B0(N25), .B1(n36), .Y(n63) );
  AO22X1M U45 ( .A0(count[0]), .A1(n83), .B0(N24), .B1(n36), .Y(n65) );
  NOR3X4M U46 ( .A(current_state[1]), .B(current_state[2]), .C(
        current_state[0]), .Y(strt_chk_en) );
  NAND3X2M U47 ( .A(current_state[2]), .B(n81), .C(current_state[0]), .Y(n40)
         );
  AND3X2M U48 ( .A(n78), .B(bit_cnt[3]), .C(n31), .Y(n17) );
  INVX2M U49 ( .A(bit_cnt[0]), .Y(n78) );
  NOR2X2M U50 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n31) );
  OR4X1M U51 ( .A(n40), .B(n38), .C(stp_err), .D(par_err), .Y(n39) );
  INVX2M U52 ( .A(n14), .Y(par_chk_en) );
  INVX2M U53 ( .A(stretch_0_), .Y(n84) );
  ADDHX1M U54 ( .A(count[1]), .B(count[0]), .CO(add_54_carry[2]), .S(N25) );
  ADDHX1M U55 ( .A(count[2]), .B(add_54_carry[2]), .CO(add_54_carry[3]), .S(
        N26) );
  ADDHX1M U56 ( .A(count[3]), .B(add_54_carry[3]), .CO(add_54_carry[4]), .S(
        N27) );
  ADDHX1M U57 ( .A(count[4]), .B(add_54_carry[4]), .CO(add_54_carry[5]), .S(
        N28) );
  OR2X2M U58 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n5) );
  INVX2M U60 ( .A(par_en), .Y(n85) );
  CLKINVX1M U61 ( .A(Prescale[0]), .Y(N14) );
  OAI2BB1X1M U62 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n5), .Y(N15) );
  OR2X1M U63 ( .A(n5), .B(Prescale[2]), .Y(n6) );
  OAI2BB1X1M U64 ( .A0N(n5), .A1N(Prescale[2]), .B0(n6), .Y(N16) );
  OR2X1M U75 ( .A(n6), .B(Prescale[3]), .Y(n7) );
  OAI2BB1X1M U76 ( .A0N(n6), .A1N(Prescale[3]), .B0(n7), .Y(N17) );
  OR2X1M U77 ( .A(n7), .B(Prescale[4]), .Y(n8) );
  OAI2BB1X1M U78 ( .A0N(n7), .A1N(Prescale[4]), .B0(n8), .Y(N18) );
  NOR2X1M U79 ( .A(n8), .B(Prescale[5]), .Y(N20) );
  AO21XLM U80 ( .A0(n8), .A1(Prescale[5]), .B0(N20), .Y(N19) );
  CLKINVX1M U81 ( .A(count[0]), .Y(N24) );
  CLKXOR2X2M U82 ( .A(add_54_carry[5]), .B(count[5]), .Y(N29) );
  CLKINVX1M U83 ( .A(limit_edg[0]), .Y(N77) );
  OAI2BB1X1M U84 ( .A0N(limit_edg[0]), .A1N(limit_edg[1]), .B0(n9), .Y(N78) );
  OR2X1M U85 ( .A(n9), .B(limit_edg[2]), .Y(n10) );
  OR2X1M U86 ( .A(n10), .B(limit_edg[3]), .Y(n11) );
  OAI2BB1X1M U87 ( .A0N(n10), .A1N(limit_edg[3]), .B0(n11), .Y(N80) );
  OR2X1M U88 ( .A(n11), .B(limit_edg[4]), .Y(n12) );
  OAI2BB1X1M U89 ( .A0N(n11), .A1N(limit_edg[4]), .B0(n12), .Y(N81) );
  NOR2X1M U90 ( .A(n12), .B(limit_edg[5]), .Y(N83) );
  AO21XLM U91 ( .A0(n12), .A1(limit_edg[5]), .B0(N83), .Y(N82) );
  NOR2BX1M U92 ( .AN(edg_cnt[0]), .B(limit_edg[0]), .Y(n13) );
  OAI2B2X1M U93 ( .A1N(limit_edg[1]), .A0(n13), .B0(edg_cnt[1]), .B1(n13), .Y(
        n25) );
  NOR2BX1M U94 ( .AN(limit_edg[0]), .B(edg_cnt[0]), .Y(n18) );
  OAI2B2X1M U95 ( .A1N(edg_cnt[1]), .A0(n18), .B0(limit_edg[1]), .B1(n18), .Y(
        n24) );
  XNOR2X1M U96 ( .A(limit_edg[5]), .B(edg_cnt[5]), .Y(n21) );
  NAND3X1M U97 ( .A(n25), .B(n24), .C(n21), .Y(n34) );
  CLKXOR2X2M U98 ( .A(limit_edg[4]), .B(edg_cnt[4]), .Y(n33) );
  NOR2BX1M U99 ( .AN(N14), .B(count[0]), .Y(n35) );
  OAI2B2X1M U100 ( .A1N(count[1]), .A0(n35), .B0(N15), .B1(n35), .Y(n44) );
  XNOR2X1M U101 ( .A(N19), .B(count[5]), .Y(n42) );
  NOR2BX1M U102 ( .AN(count[0]), .B(N14), .Y(n37) );
  OAI2B2X1M U103 ( .A1N(N15), .A0(n37), .B0(count[1]), .B1(n37), .Y(n41) );
  NAND4BX1M U104 ( .AN(N20), .B(n44), .C(n42), .D(n41), .Y(n48) );
  CLKXOR2X2M U105 ( .A(N18), .B(count[4]), .Y(n47) );
  CLKXOR2X2M U106 ( .A(N16), .B(count[2]), .Y(n46) );
  CLKXOR2X2M U107 ( .A(N17), .B(count[3]), .Y(n45) );
  NOR4X1M U108 ( .A(n48), .B(n47), .C(n46), .D(n45), .Y(N21) );
  NOR2BX1M U109 ( .AN(N77), .B(edg_cnt[0]), .Y(n49) );
  OAI2B2X1M U110 ( .A1N(edg_cnt[1]), .A0(n49), .B0(N78), .B1(n49), .Y(n53) );
  XNOR2X1M U111 ( .A(N82), .B(edg_cnt[5]), .Y(n52) );
  NOR2BX1M U112 ( .AN(edg_cnt[0]), .B(N77), .Y(n50) );
  OAI2B2X1M U113 ( .A1N(N78), .A0(n50), .B0(edg_cnt[1]), .B1(n50), .Y(n51) );
  NAND4BX1M U114 ( .AN(N83), .B(n53), .C(n52), .D(n51), .Y(n74) );
  CLKXOR2X2M U115 ( .A(N81), .B(edg_cnt[4]), .Y(n73) );
  CLKXOR2X2M U116 ( .A(N79), .B(edg_cnt[2]), .Y(n72) );
  CLKXOR2X2M U117 ( .A(N80), .B(edg_cnt[3]), .Y(n71) );
  NOR4X1M U118 ( .A(n74), .B(n73), .C(n72), .D(n71), .Y(N84) );
endmodule


module edge_bit_cntr ( clk, rst, enable, par_en, prescale, bit_cnt, edg_cnt, 
        limit_edg );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edg_cnt;
  output [5:0] limit_edg;
  input clk, rst, enable, par_en;
  wire   N9, N22, N23, N24, N25, N26, N27, N39, N40, N41, N42, N43, N44, n5,
         n7, n8, n11, n12, n15, n16, n18, n20, n23, n25, n29, n1, n2, n3, n4,
         n6, n9, n10, n13, n14, n17, n19, n21, n27, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47;
  wire   [5:2] add_32_carry;

  OAI31X4M U18 ( .A0(n46), .A1(bit_cnt[2]), .A2(n20), .B0(enable), .Y(n16) );
  SDFFRQX1M bit_cnt_reg_3_ ( .D(n23), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(bit_cnt[3]) );
  SDFFRQX1M bit_cnt_reg_0_ ( .D(n29), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(bit_cnt[0]) );
  SDFFRQX1M edg_cnt_reg_5_ ( .D(N44), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(edg_cnt[5]) );
  SDFFRQX2M edg_cnt_reg_4_ ( .D(N43), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(edg_cnt[4]) );
  SDFFRQX2M edg_cnt_reg_0_ ( .D(N39), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(edg_cnt[0]) );
  SDFFRQX2M edg_cnt_reg_1_ ( .D(N40), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(edg_cnt[1]) );
  SDFFRQX1M bit_cnt_reg_2_ ( .D(n41), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(bit_cnt[2]) );
  SDFFRQX1M bit_cnt_reg_1_ ( .D(n25), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(bit_cnt[1]) );
  SDFFRQX1M edg_cnt_reg_3_ ( .D(N42), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(edg_cnt[3]) );
  SDFFRQX1M edg_cnt_reg_2_ ( .D(N41), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n2), 
        .Q(edg_cnt[2]) );
  AO21X2M U3 ( .A0(n4), .A1(prescale[2]), .B0(n6), .Y(limit_edg[2]) );
  OAI21X2M U4 ( .A0(n6), .A1(n13), .B0(n9), .Y(limit_edg[3]) );
  XOR2XLM U5 ( .A(limit_edg[3]), .B(edg_cnt[3]), .Y(n36) );
  XOR2XLM U6 ( .A(limit_edg[2]), .B(edg_cnt[2]), .Y(n37) );
  XNOR2X2M U7 ( .A(prescale[4]), .B(n9), .Y(limit_edg[4]) );
  BUFX2M U8 ( .A(n18), .Y(n1) );
  INVX2M U9 ( .A(n3), .Y(n2) );
  INVX2M U10 ( .A(rst), .Y(n3) );
  NOR3X2M U11 ( .A(n43), .B(n1), .C(n16), .Y(n8) );
  INVX2M U12 ( .A(n16), .Y(n42) );
  AOI21X2M U13 ( .A0(n43), .A1(n42), .B0(n1), .Y(n12) );
  AND2X2M U14 ( .A(N23), .B(n1), .Y(N40) );
  AND2X2M U15 ( .A(N24), .B(n1), .Y(N41) );
  AND2X2M U16 ( .A(N25), .B(n1), .Y(N42) );
  AND2X2M U17 ( .A(N26), .B(n1), .Y(N43) );
  OAI32X1M U19 ( .A0(n16), .A1(bit_cnt[0]), .A2(n1), .B0(n43), .B1(n40), .Y(
        n29) );
  INVX2M U20 ( .A(n1), .Y(n40) );
  AOI33X2M U21 ( .A0(bit_cnt[1]), .A1(n43), .A2(par_en), .B0(n45), .B1(n47), 
        .B2(bit_cnt[0]), .Y(n20) );
  INVX2M U22 ( .A(par_en), .Y(n47) );
  OAI21X2M U23 ( .A0(bit_cnt[1]), .A1(n16), .B0(n12), .Y(n11) );
  OAI21X2M U24 ( .A0(n5), .A1(n46), .B0(n7), .Y(n23) );
  AOI21X2M U25 ( .A0(n42), .A1(n44), .B0(n11), .Y(n5) );
  NAND4X2M U26 ( .A(bit_cnt[2]), .B(n8), .C(bit_cnt[1]), .D(n46), .Y(n7) );
  INVX2M U27 ( .A(bit_cnt[0]), .Y(n43) );
  INVX2M U28 ( .A(bit_cnt[1]), .Y(n45) );
  OAI2B2X1M U29 ( .A1N(n8), .A0(bit_cnt[1]), .B0(n12), .B1(n45), .Y(n25) );
  NOR2BX2M U30 ( .AN(enable), .B(N9), .Y(n18) );
  INVX2M U41 ( .A(n15), .Y(n41) );
  AOI32X1M U42 ( .A0(n8), .A1(n44), .A2(bit_cnt[1]), .B0(n11), .B1(bit_cnt[2]), 
        .Y(n15) );
  INVX2M U43 ( .A(bit_cnt[3]), .Y(n46) );
  ADDHX1M U44 ( .A(edg_cnt[1]), .B(edg_cnt[0]), .CO(add_32_carry[2]), .S(N23)
         );
  ADDHX1M U45 ( .A(edg_cnt[2]), .B(add_32_carry[2]), .CO(add_32_carry[3]), .S(
        N24) );
  ADDHX1M U46 ( .A(edg_cnt[3]), .B(add_32_carry[3]), .CO(add_32_carry[4]), .S(
        N25) );
  ADDHX1M U47 ( .A(edg_cnt[4]), .B(add_32_carry[4]), .CO(add_32_carry[5]), .S(
        N26) );
  AND2X2M U48 ( .A(N22), .B(n1), .Y(N39) );
  AND2X2M U49 ( .A(N27), .B(n1), .Y(N44) );
  INVX2M U50 ( .A(bit_cnt[2]), .Y(n44) );
  OR2X2M U51 ( .A(prescale[1]), .B(prescale[0]), .Y(n4) );
  INVX2M U52 ( .A(prescale[3]), .Y(n13) );
  CLKINVX1M U53 ( .A(prescale[0]), .Y(limit_edg[0]) );
  OAI2BB1X1M U54 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n4), .Y(
        limit_edg[1]) );
  NOR2X1M U55 ( .A(n4), .B(prescale[2]), .Y(n6) );
  CLKNAND2X2M U56 ( .A(n6), .B(n13), .Y(n9) );
  NOR2X1M U57 ( .A(prescale[4]), .B(n9), .Y(n10) );
  CLKXOR2X2M U58 ( .A(prescale[5]), .B(n10), .Y(limit_edg[5]) );
  CLKINVX1M U59 ( .A(edg_cnt[0]), .Y(N22) );
  CLKXOR2X2M U60 ( .A(add_32_carry[5]), .B(edg_cnt[5]), .Y(N27) );
  NOR2BX1M U61 ( .AN(edg_cnt[0]), .B(limit_edg[0]), .Y(n14) );
  OAI2B2X1M U62 ( .A1N(limit_edg[1]), .A0(n14), .B0(edg_cnt[1]), .B1(n14), .Y(
        n27) );
  NOR2BX1M U63 ( .AN(limit_edg[0]), .B(edg_cnt[0]), .Y(n17) );
  OAI2B2X1M U64 ( .A1N(edg_cnt[1]), .A0(n17), .B0(limit_edg[1]), .B1(n17), .Y(
        n21) );
  XNOR2X1M U65 ( .A(limit_edg[5]), .B(edg_cnt[5]), .Y(n19) );
  NAND3X1M U66 ( .A(n27), .B(n21), .C(n19), .Y(n39) );
  CLKXOR2X2M U67 ( .A(limit_edg[4]), .B(edg_cnt[4]), .Y(n38) );
  NOR4X1M U68 ( .A(n39), .B(n38), .C(n37), .D(n36), .Y(N9) );
endmodule


module data_sampling ( clk, rst, dat_samp_en, edg_cnt, rx_in, prescale, 
        sampled_bit );
  input [5:0] edg_cnt;
  input [5:0] prescale;
  input clk, rst, dat_samp_en, rx_in;
  output sampled_bit;
  wire   N13, N14, N15, N16, N17, N18, N20, N21, N22, N23, N24, N25, N33, n15,
         n16, n17, n18, n24, n25, n26, n29, n32, n33, n34, n35, n37, n39, n41,
         n43, n45, n47, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n19, n20, n21, n22, n23, n27, n28, n30, n31, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65;
  wire   [4:0] targ_edg;
  wire   [1:0] i;
  wire   [2:0] sampled_data;
  wire   [4:2] r78_carry;

  SDFFRQX1M sampled_data_reg_2_ ( .D(n41), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n1), .Q(sampled_data[2]) );
  SDFFRQX1M sampled_data_reg_0_ ( .D(n39), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n1), .Q(sampled_data[0]) );
  SDFFRQX1M sampled_data_reg_1_ ( .D(n43), .SI(1'b0), .SE(1'b0), .CK(clk), 
        .RN(n1), .Q(sampled_data[1]) );
  SDFFSQX2M sampled_bit_reg ( .D(n37), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(n1), 
        .Q(sampled_bit) );
  SDFFRQX1M i_reg_1_ ( .D(n45), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n1), .Q(
        i[1]) );
  SDFFRQX1M i_reg_0_ ( .D(n47), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n1), .Q(
        i[0]) );
  XNOR2X2M U3 ( .A(prescale[4]), .B(n4), .Y(targ_edg[3]) );
  INVX2M U4 ( .A(N14), .Y(n51) );
  INVX2M U5 ( .A(n2), .Y(n1) );
  INVX2M U6 ( .A(rst), .Y(n2) );
  INVX2M U7 ( .A(N15), .Y(n52) );
  ADDHX1M U8 ( .A(targ_edg[2]), .B(r78_carry[2]), .CO(r78_carry[3]), .S(N21)
         );
  INVX2M U9 ( .A(N23), .Y(n23) );
  OAI32X1M U10 ( .A0(n65), .A1(n57), .A2(n63), .B0(n24), .B1(n25), .Y(n39) );
  INVX2M U11 ( .A(n24), .Y(n57) );
  NAND2X2M U12 ( .A(n26), .B(n59), .Y(n24) );
  OAI32X1M U13 ( .A0(n65), .A1(n60), .A2(n61), .B0(n25), .B1(n32), .Y(n43) );
  INVX2M U14 ( .A(n32), .Y(n60) );
  INVX2M U15 ( .A(n17), .Y(n64) );
  OR2X2M U16 ( .A(targ_edg[1]), .B(targ_edg[0]), .Y(n7) );
  ADDHX1M U17 ( .A(targ_edg[3]), .B(r78_carry[3]), .CO(r78_carry[4]), .S(N22)
         );
  ADDHX1M U18 ( .A(targ_edg[1]), .B(targ_edg[0]), .CO(r78_carry[2]), .S(N20)
         );
  ADDHX1M U19 ( .A(targ_edg[4]), .B(r78_carry[4]), .CO(N24), .S(N23) );
  OAI32X1M U20 ( .A0(n65), .A1(n58), .A2(n62), .B0(n25), .B1(n29), .Y(n41) );
  INVX2M U21 ( .A(n29), .Y(n58) );
  NAND3X2M U22 ( .A(n64), .B(n59), .C(i[1]), .Y(n29) );
  NAND2X2M U23 ( .A(rx_in), .B(dat_samp_en), .Y(n25) );
  INVX2M U24 ( .A(edg_cnt[4]), .Y(n56) );
  INVX2M U25 ( .A(N22), .Y(n22) );
  INVX2M U26 ( .A(edg_cnt[3]), .Y(n28) );
  INVX2M U27 ( .A(N24), .Y(n27) );
  INVX2M U28 ( .A(N21), .Y(n21) );
  INVX2M U29 ( .A(N20), .Y(n20) );
  INVX2M U30 ( .A(edg_cnt[2]), .Y(n55) );
  AND2X2M U31 ( .A(n35), .B(dat_samp_en), .Y(n47) );
  OAI32X1M U32 ( .A0(n64), .A1(N33), .A2(n59), .B0(n17), .B1(i[0]), .Y(n35) );
  NAND2X2M U33 ( .A(N25), .B(N18), .Y(n17) );
  INVX2M U34 ( .A(N16), .Y(n53) );
  NAND2X2M U35 ( .A(i[0]), .B(n26), .Y(n32) );
  NOR2X2M U42 ( .A(n17), .B(i[1]), .Y(n26) );
  OAI2BB2X1M U43 ( .B0(n15), .B1(n16), .A0N(sampled_bit), .A1N(n16), .Y(n37)
         );
  AOI21X2M U44 ( .A0(sampled_data[1]), .A1(sampled_data[0]), .B0(n18), .Y(n15)
         );
  NAND3X2M U45 ( .A(N33), .B(n17), .C(dat_samp_en), .Y(n16) );
  AOI21X2M U46 ( .A0(n61), .A1(n63), .B0(n62), .Y(n18) );
  INVX2M U47 ( .A(edg_cnt[1]), .Y(n54) );
  AOI21X2M U48 ( .A0(n32), .A1(n33), .B0(n65), .Y(n45) );
  NAND2X2M U49 ( .A(i[1]), .B(n34), .Y(n33) );
  OAI22X1M U50 ( .A0(N33), .A1(n64), .B0(i[0]), .B1(n17), .Y(n34) );
  INVX2M U51 ( .A(i[0]), .Y(n59) );
  INVX2M U52 ( .A(sampled_data[1]), .Y(n61) );
  INVX2M U53 ( .A(sampled_data[0]), .Y(n63) );
  INVX2M U54 ( .A(sampled_data[2]), .Y(n62) );
  INVX2M U55 ( .A(prescale[3]), .Y(n6) );
  INVX2M U56 ( .A(dat_samp_en), .Y(n65) );
  CLKINVX1M U57 ( .A(prescale[1]), .Y(targ_edg[0]) );
  NOR2X1M U58 ( .A(prescale[2]), .B(prescale[1]), .Y(n3) );
  AO21XLM U59 ( .A0(prescale[1]), .A1(prescale[2]), .B0(n3), .Y(targ_edg[1])
         );
  CLKNAND2X2M U60 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U61 ( .A0(n3), .A1(n6), .B0(n4), .Y(targ_edg[2]) );
  NOR2X1M U62 ( .A(prescale[4]), .B(n4), .Y(n5) );
  CLKXOR2X2M U63 ( .A(prescale[5]), .B(n5), .Y(targ_edg[4]) );
  OAI2BB1X1M U64 ( .A0N(targ_edg[0]), .A1N(targ_edg[1]), .B0(n7), .Y(N13) );
  OR2X1M U65 ( .A(n7), .B(targ_edg[2]), .Y(n8) );
  OAI2BB1X1M U66 ( .A0N(n7), .A1N(targ_edg[2]), .B0(n8), .Y(N14) );
  XNOR2X1M U67 ( .A(targ_edg[3]), .B(n8), .Y(N15) );
  NOR3X1M U68 ( .A(targ_edg[3]), .B(targ_edg[4]), .C(n8), .Y(N17) );
  OAI21X1M U69 ( .A0(targ_edg[3]), .A1(n8), .B0(targ_edg[4]), .Y(n9) );
  NAND2BX1M U70 ( .AN(N17), .B(n9), .Y(N16) );
  NOR2X1M U71 ( .A(edg_cnt[4]), .B(n23), .Y(n14) );
  AOI2BB1X1M U72 ( .A0N(edg_cnt[1]), .A1N(n20), .B0(prescale[1]), .Y(n10) );
  AOI222X1M U73 ( .A0(edg_cnt[2]), .A1(n21), .B0(n10), .B1(edg_cnt[0]), .C0(
        edg_cnt[1]), .C1(n20), .Y(n11) );
  AOI221XLM U74 ( .A0(N22), .A1(n28), .B0(N21), .B1(n55), .C0(n11), .Y(n12) );
  AOI221XLM U75 ( .A0(edg_cnt[4]), .A1(n23), .B0(edg_cnt[3]), .B1(n22), .C0(
        n12), .Y(n13) );
  OAI2BB2X1M U76 ( .B0(n14), .B1(n13), .A0N(n27), .A1N(edg_cnt[5]), .Y(n19) );
  OAI21X1M U77 ( .A0(edg_cnt[5]), .A1(n27), .B0(n19), .Y(N25) );
  CLKINVX1M U78 ( .A(N25), .Y(N33) );
  AOI2BB1X1M U79 ( .A0N(N13), .A1N(n54), .B0(edg_cnt[0]), .Y(n30) );
  AOI222X1M U80 ( .A0(N14), .A1(n55), .B0(n30), .B1(prescale[1]), .C0(N13), 
        .C1(n54), .Y(n31) );
  AOI221XLM U81 ( .A0(edg_cnt[3]), .A1(n52), .B0(edg_cnt[2]), .B1(n51), .C0(
        n31), .Y(n48) );
  AOI221XLM U82 ( .A0(N16), .A1(n56), .B0(N15), .B1(n28), .C0(n48), .Y(n49) );
  AOI211X1M U83 ( .A0(edg_cnt[4]), .A1(n53), .B0(edg_cnt[5]), .C0(n49), .Y(n50) );
  NOR2X1M U84 ( .A(N17), .B(n50), .Y(N18) );
endmodule


module par_chck ( clk, rst, P_data, par_typ, par_chk_en, sampled_bit, par_err
 );
  input [7:0] P_data;
  input clk, rst, par_typ, par_chk_en, sampled_bit;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n9, n2;

  SDFFRQX2M par_err_reg ( .D(n9), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(par_err) );
  XNOR2X2M U2 ( .A(sampled_bit), .B(par_typ), .Y(n5) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n9) );
  INVX2M U4 ( .A(par_chk_en), .Y(n2) );
  XOR3XLM U5 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  XOR3XLM U6 ( .A(P_data[1]), .B(P_data[0]), .C(n7), .Y(n3) );
  XNOR2X2M U7 ( .A(P_data[3]), .B(P_data[2]), .Y(n7) );
  XOR3XLM U8 ( .A(P_data[5]), .B(P_data[4]), .C(n6), .Y(n4) );
  XNOR2X2M U9 ( .A(P_data[7]), .B(P_data[6]), .Y(n6) );
endmodule


module strt_checker ( clk, rst, strt_chk_en, sampled_bit, strt_glitch );
  input clk, rst, strt_chk_en, sampled_bit;
  output strt_glitch;
  wire   n3, n1;

  SDFFSQX2M strt_glitch_reg ( .D(n3), .SI(1'b0), .SE(1'b0), .CK(clk), .SN(rst), 
        .Q(strt_glitch) );
  AOI2B1X1M U2 ( .A1N(sampled_bit), .A0(strt_chk_en), .B0(n1), .Y(n3) );
  INVX2M U3 ( .A(strt_glitch), .Y(n1) );
endmodule


module stp_checker ( clk, rst, stp_chk_en, sampled_bit, stp_err );
  input clk, rst, stp_chk_en, sampled_bit;
  output stp_err;
  wire   n3, n1;

  SDFFRQX2M stp_err_reg ( .D(n3), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(rst), 
        .Q(stp_err) );
  OAI2BB2X1M U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n3)
         );
  INVX2M U3 ( .A(stp_chk_en), .Y(n1) );
endmodule


module deserializer ( clk, rst, deser_en, sampled_bit, P_data );
  output [7:0] P_data;
  input clk, rst, deser_en, sampled_bit;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n13, n14, n15, n16, n17, n18,
         n22, n24, n26, n28, n30, n32, n34, n36, n38, n40, n42, n11, n12, n19,
         n20, n43, n44;
  wire   [2:0] i;

  SDFFRQX1M i_reg_0_ ( .D(n42), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), .Q(
        i[0]) );
  SDFFRQX1M P_data_reg_0_ ( .D(n26), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), 
        .Q(P_data[0]) );
  SDFFRQX1M P_data_reg_4_ ( .D(n22), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), 
        .Q(P_data[4]) );
  SDFFRQX1M P_data_reg_1_ ( .D(n28), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), 
        .Q(P_data[1]) );
  SDFFRQX1M P_data_reg_5_ ( .D(n24), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), 
        .Q(P_data[5]) );
  SDFFRQX1M i_reg_2_ ( .D(n38), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), .Q(
        i[2]) );
  SDFFRQX1M P_data_reg_7_ ( .D(n36), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), 
        .Q(P_data[7]) );
  SDFFRQX1M P_data_reg_3_ ( .D(n32), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), 
        .Q(P_data[3]) );
  SDFFRQX1M P_data_reg_6_ ( .D(n34), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), 
        .Q(P_data[6]) );
  SDFFRQX1M P_data_reg_2_ ( .D(n30), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), 
        .Q(P_data[2]) );
  SDFFRQX1M i_reg_1_ ( .D(n40), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n11), .Q(
        i[1]) );
  INVX4M U3 ( .A(n12), .Y(n11) );
  INVX2M U4 ( .A(rst), .Y(n12) );
  NAND2X2M U5 ( .A(deser_en), .B(n19), .Y(n4) );
  OAI221X1M U6 ( .A0(n7), .A1(n13), .B0(n20), .B1(n44), .C0(n1), .Y(n38) );
  INVX2M U7 ( .A(n7), .Y(n20) );
  OAI21X2M U8 ( .A0(deser_en), .A1(n19), .B0(n4), .Y(n42) );
  NAND2X2M U9 ( .A(n44), .B(n43), .Y(n8) );
  NAND2X2M U10 ( .A(i[0]), .B(deser_en), .Y(n7) );
  NAND2X2M U11 ( .A(n20), .B(sampled_bit), .Y(n5) );
  XNOR2X2M U12 ( .A(i[1]), .B(n7), .Y(n40) );
  NAND2BX2M U13 ( .AN(n4), .B(sampled_bit), .Y(n2) );
  OAI21X2M U14 ( .A0(n1), .A1(n2), .B0(n3), .Y(n22) );
  OAI21X2M U15 ( .A0(n4), .A1(n1), .B0(P_data[4]), .Y(n3) );
  OAI21X2M U16 ( .A0(n1), .A1(n5), .B0(n6), .Y(n24) );
  OAI21X2M U17 ( .A0(n1), .A1(n7), .B0(P_data[5]), .Y(n6) );
  OAI21X2M U18 ( .A0(n2), .A1(n13), .B0(n14), .Y(n30) );
  OAI21X2M U19 ( .A0(n4), .A1(n13), .B0(P_data[2]), .Y(n14) );
  OAI21X2M U20 ( .A0(n5), .A1(n13), .B0(n15), .Y(n32) );
  OAI21X2M U21 ( .A0(n7), .A1(n13), .B0(P_data[3]), .Y(n15) );
  OAI21X2M U22 ( .A0(n5), .A1(n8), .B0(n10), .Y(n28) );
  OAI21X2M U23 ( .A0(n7), .A1(n8), .B0(P_data[1]), .Y(n10) );
  OAI21X2M U24 ( .A0(n5), .A1(n16), .B0(n18), .Y(n36) );
  OAI21X2M U25 ( .A0(n7), .A1(n16), .B0(P_data[7]), .Y(n18) );
  OAI21X2M U26 ( .A0(n2), .A1(n16), .B0(n17), .Y(n34) );
  OAI21X2M U27 ( .A0(n4), .A1(n16), .B0(P_data[6]), .Y(n17) );
  OAI21X2M U28 ( .A0(n2), .A1(n8), .B0(n9), .Y(n26) );
  OAI21X2M U29 ( .A0(n4), .A1(n8), .B0(P_data[0]), .Y(n9) );
  NAND2X2M U30 ( .A(i[2]), .B(n43), .Y(n1) );
  NAND2X2M U31 ( .A(i[1]), .B(n44), .Y(n13) );
  NAND2X2M U32 ( .A(i[1]), .B(i[2]), .Y(n16) );
  INVX2M U33 ( .A(i[2]), .Y(n44) );
  INVX2M U45 ( .A(i[1]), .Y(n43) );
  INVX2M U46 ( .A(i[0]), .Y(n19) );
endmodule


module RX_TOP ( CLK, RST, parity_enable, RX_IN, Prescale, parity_type, 
        framing_error, parity_error, data_valid, P_DATA );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, parity_enable, RX_IN, parity_type;
  output framing_error, parity_error, data_valid;
  wire   enable, par_chk_en, strt_chk_en, strt_glitch, stp_chk_en, deser_en,
         sampled_bit, n1, n2;
  wire   [5:0] limit_edg;
  wire   [3:0] bit_cnt;
  wire   [5:0] edg_cnt;

  UART_RX_FSM FSM_u ( .clk(CLK), .rst(n1), .rx_in(RX_IN), .par_en(
        parity_enable), .Prescale(Prescale), .bit_cnt(bit_cnt), .edg_cnt(
        edg_cnt), .limit_edg(limit_edg), .par_err(parity_error), .stp_err(
        framing_error), .strt_glitch(strt_glitch), .enable(enable), 
        .data_valid(data_valid), .deser_en(deser_en), .stp_chk_en(stp_chk_en), 
        .strt_chk_en(strt_chk_en), .par_chk_en(par_chk_en) );
  edge_bit_cntr edg_cnt_u ( .clk(CLK), .rst(n1), .enable(enable), .par_en(
        parity_enable), .prescale(Prescale), .bit_cnt(bit_cnt), .edg_cnt(
        edg_cnt), .limit_edg(limit_edg) );
  data_sampling sampler_u ( .clk(CLK), .rst(n1), .dat_samp_en(1'b1), .edg_cnt(
        edg_cnt), .rx_in(RX_IN), .prescale(Prescale), .sampled_bit(sampled_bit) );
  par_chck parity_u ( .clk(CLK), .rst(n1), .P_data(P_DATA), .par_typ(
        parity_type), .par_chk_en(par_chk_en), .sampled_bit(sampled_bit), 
        .par_err(parity_error) );
  strt_checker strt_checker_u ( .clk(CLK), .rst(n1), .strt_chk_en(strt_chk_en), 
        .sampled_bit(sampled_bit), .strt_glitch(strt_glitch) );
  stp_checker stp_checker_u ( .clk(CLK), .rst(n1), .stp_chk_en(stp_chk_en), 
        .sampled_bit(sampled_bit), .stp_err(framing_error) );
  deserializer deserializer_u ( .clk(CLK), .rst(n1), .deser_en(deser_en), 
        .sampled_bit(sampled_bit), .P_data(P_DATA) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART_DATA_WIDTH8 ( RST, TX_CLK, RX_CLK, RX_IN, TX_IN_P_DATA, 
        TX_IN_data_valid, Prescale, parity_enable, parity_type, 
        RX_OUT_data_valid, RX_OUT_P_DATA, busy, parity_error, TX_OUT, 
        framing_error );
  input [7:0] TX_IN_P_DATA;
  input [5:0] Prescale;
  output [7:0] RX_OUT_P_DATA;
  input RST, TX_CLK, RX_CLK, RX_IN, TX_IN_data_valid, parity_enable,
         parity_type;
  output RX_OUT_data_valid, busy, parity_error, TX_OUT, framing_error;
  wire   n1, n2;

  TX_TOP UART_TX_u ( .CLK(TX_CLK), .RST(n1), .P_DATA(TX_IN_P_DATA), 
        .data_valid(TX_IN_data_valid), .parity_enable(parity_enable), 
        .parity_type(parity_type), .TX_OUT(TX_OUT), .busy(busy) );
  RX_TOP UART_RX_u ( .CLK(RX_CLK), .RST(n1), .parity_enable(parity_enable), 
        .RX_IN(RX_IN), .Prescale(Prescale), .parity_type(parity_type), 
        .framing_error(framing_error), .parity_error(parity_error), 
        .data_valid(RX_OUT_data_valid), .P_DATA(RX_OUT_P_DATA) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module Data_syn_NUM_STAGES2_BUS_WIDTH8 ( CLK, RST, bus_enable, unsync_bus, 
        enable_pulse, sync_bus );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   n1, n3, n5, n7, n9, n11, n13, n15, n17, n22, n23, n24;
  wire   [2:0] sync_reg;

  SDFFRQX2M sync_reg_reg_2_ ( .D(sync_reg[1]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n22), .Q(sync_reg[2]) );
  SDFFRQX2M sync_reg_reg_1_ ( .D(sync_reg[0]), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n22), .Q(sync_reg[1]) );
  SDFFRQX2M sync_bus_reg_7_ ( .D(n17), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), .Q(sync_bus[7]) );
  SDFFRQX2M sync_bus_reg_3_ ( .D(n9), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), 
        .Q(sync_bus[3]) );
  SDFFRQX2M sync_bus_reg_2_ ( .D(n7), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), 
        .Q(sync_bus[2]) );
  SDFFRQX2M sync_bus_reg_6_ ( .D(n15), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), .Q(sync_bus[6]) );
  SDFFRQX2M sync_bus_reg_0_ ( .D(n3), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), 
        .Q(sync_bus[0]) );
  SDFFRQX2M sync_bus_reg_4_ ( .D(n11), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), .Q(sync_bus[4]) );
  SDFFRQX2M sync_bus_reg_1_ ( .D(n5), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), 
        .Q(sync_bus[1]) );
  SDFFRQX2M sync_bus_reg_5_ ( .D(n13), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(n22), .Q(sync_bus[5]) );
  SDFFRQX2M sync_reg_reg_0_ ( .D(bus_enable), .SI(1'b0), .SE(1'b0), .CK(CLK), 
        .RN(n22), .Q(sync_reg[0]) );
  SDFFRQX2M enable_pulse_reg ( .D(n24), .SI(1'b0), .SE(1'b0), .CK(CLK), .RN(
        n22), .Q(enable_pulse) );
  NAND2BX2M U3 ( .AN(sync_reg[2]), .B(sync_reg[1]), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n24) );
  INVX4M U5 ( .A(n23), .Y(n22) );
  INVX2M U6 ( .A(RST), .Y(n23) );
  AO22X1M U7 ( .A0(unsync_bus[5]), .A1(n24), .B0(sync_bus[5]), .B1(n1), .Y(n13) );
  AO22X1M U8 ( .A0(unsync_bus[1]), .A1(n24), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[6]), .A1(n24), .B0(sync_bus[6]), .B1(n1), .Y(n15) );
  AO22X1M U10 ( .A0(unsync_bus[2]), .A1(n24), .B0(sync_bus[2]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[4]), .A1(n24), .B0(sync_bus[4]), .B1(n1), .Y(
        n11) );
  AO22X1M U12 ( .A0(unsync_bus[0]), .A1(n24), .B0(sync_bus[0]), .B1(n1), .Y(n3) );
  AO22X1M U25 ( .A0(unsync_bus[3]), .A1(n24), .B0(sync_bus[3]), .B1(n1), .Y(n9) );
  AO22X1M U26 ( .A0(unsync_bus[7]), .A1(n24), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   SYNC_RST_1, SYNC_RST_2, CLK_EN, GATED_CLK, ALU_EN, OUT_VALID, WrEn,
         RdEn, RdData_Valid, FULL, sync_RX_OUT_data_valid, TX_IN_data_valid,
         RX_CLK, TX_CLK, R_inc, EMPTY, busy, RX_OUT_data_valid, n1, n2, n3, n4,
         n5, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [7:0] REG0;
  wire   [7:0] REG1;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [3:0] Address;
  wire   [7:0] WrData;
  wire   [7:0] RdData;
  wire   [7:0] REG2;
  wire   [7:0] REG3;
  wire   [7:0] sync_RX_OUT_P_DATA;
  wire   [7:0] TX_IN_P_DATA;
  wire   [7:0] RX_div_ratio;
  wire   [7:0] RD_data;
  wire   [7:0] RX_OUT_P_DATA;

  rst_sync_NUM_STAGES2_0 RST_SYNC_1_u ( .CLK(REF_CLK), .RST(RST_N), .sync_rst(
        SYNC_RST_1) );
  rst_sync_NUM_STAGES2_1 RST_SYNC_2_u ( .CLK(UART_CLK), .RST(RST_N), 
        .sync_rst(SYNC_RST_2) );
  CLK_GATE clk_gate_u ( .CLK_EN(CLK_EN), .CLK(REF_CLK), .GATED_CLK(GATED_CLK)
         );
  ALU_OPER_WIDTH8_OUT_WIDTH16 ALU_u ( .CLK(GATED_CLK), .RST(n4), .A(REG0), .B(
        REG1), .EN(ALU_EN), .ALU_FUN(ALU_FUN), .ALU_OUT(ALU_OUT), .OUT_VALID(
        OUT_VALID) );
  reg_file_MEM_WIDTH8_MEM_DEPTH16_ADDR_WIDTH4 Regfile_u ( .WrEn(WrEn), .RdEn(
        RdEn), .CLK(REF_CLK), .RST(n4), .Address(Address), .WrData(WrData), 
        .RdData(RdData), .RdData_valid(RdData_Valid), .REG0(REG0), .REG1(REG1), 
        .REG2(REG2), .REG3(REG3) );
  SYS_CTRL sys_ctrl_u ( .CLK(REF_CLK), .RST(n4), .FULL(FULL), .ALU_OUT(ALU_OUT), .OUT_Valid(OUT_VALID), .RX_P_Data(sync_RX_OUT_P_DATA), .RX_D_VLD(
        sync_RX_OUT_data_valid), .RdData(RdData), .RdData_Valid(RdData_Valid), 
        .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .CLK_EN(CLK_EN), .Address(Address), 
        .WrEN(WrEn), .RdEN(RdEn), .WrData(WrData), .TX_P_Data(TX_IN_P_DATA), 
        .TX_D_VLD(TX_IN_data_valid) );
  CLKDIV_MUX_WIDTH8 CLKDIV_MUX_u ( .IN(REG2[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, RX_div_ratio[3:0]}) );
  clk_div_RATIO_WD8_0 clk_div_RX_u ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        RX_div_ratio[3:0]}), .o_div_clk(RX_CLK) );
  clk_div_RATIO_WD8_1 clk_div_TX_u ( .i_ref_clk(UART_CLK), .i_rst_n(n2), 
        .i_clk_en(1'b1), .i_div_ratio(REG3), .o_div_clk(TX_CLK) );
  ASYNC_FIFO_DATA_WIDTH8_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4 FIFO_u ( .W_clk(
        REF_CLK), .W_rst(n4), .W_inc(TX_IN_data_valid), .R_clk(TX_CLK), 
        .R_rst(n2), .R_inc(R_inc), .WR_data(TX_IN_P_DATA), .FULL(FULL), 
        .EMPTY(EMPTY), .RD_data(RD_data) );
  Pulse_gen PULSE_GEN_u ( .CLK(TX_CLK), .RST(n2), .LVL_SIG(busy), .PULSE_SIG(
        R_inc) );
  UART_DATA_WIDTH8 UART_u ( .RST(n2), .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), 
        .RX_IN(UART_RX_IN), .TX_IN_P_DATA(RD_data), .TX_IN_data_valid(n1), 
        .Prescale(REG2[7:2]), .parity_enable(REG2[0]), .parity_type(REG2[1]), 
        .RX_OUT_data_valid(RX_OUT_data_valid), .RX_OUT_P_DATA(RX_OUT_P_DATA), 
        .busy(busy), .parity_error(parity_error), .TX_OUT(UART_TX_O), 
        .framing_error(framing_error) );
  Data_syn_NUM_STAGES2_BUS_WIDTH8 synchronizer_u ( .CLK(REF_CLK), .RST(n4), 
        .bus_enable(RX_OUT_data_valid), .unsync_bus(RX_OUT_P_DATA), 
        .enable_pulse(sync_RX_OUT_data_valid), .sync_bus(sync_RX_OUT_P_DATA)
         );
  INVX2M U3 ( .A(n5), .Y(n4) );
  INVX2M U4 ( .A(n3), .Y(n2) );
  INVX2M U5 ( .A(EMPTY), .Y(n1) );
  INVX2M U6 ( .A(SYNC_RST_1), .Y(n5) );
  INVX2M U7 ( .A(SYNC_RST_2), .Y(n3) );
endmodule

