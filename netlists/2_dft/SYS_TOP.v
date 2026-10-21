/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct  7 21:33:48 2026
/////////////////////////////////////////////////////////////


module rst_sync_NUM_STAGES2_test_0 ( CLK, RST, sync_rst, test_si, test_so, 
        test_se );
  input CLK, RST, test_si, test_se;
  output sync_rst, test_so;


  SDFFRQX2M sync_reg_reg_0_ ( .D(test_so), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_rst) );
  SDFFRQX2M sync_reg_reg_1_ ( .D(1'b1), .SI(sync_rst), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(test_so) );
endmodule


module rst_sync_NUM_STAGES2_test_1 ( CLK, RST, sync_rst, test_si, test_so, 
        test_se );
  input CLK, RST, test_si, test_se;
  output sync_rst, test_so;


  SDFFRQX2M sync_reg_reg_0_ ( .D(test_so), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_rst) );
  SDFFRQX2M sync_reg_reg_1_ ( .D(1'b1), .SI(sync_rst), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(test_so) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 ( a, b, quotient, remainder, 
        divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   u_div_SumTmp_1__0_, u_div_SumTmp_1__1_, u_div_SumTmp_1__2_,
         u_div_SumTmp_1__3_, u_div_SumTmp_1__4_, u_div_SumTmp_1__5_,
         u_div_SumTmp_1__6_, u_div_SumTmp_2__0_, u_div_SumTmp_2__1_,
         u_div_SumTmp_2__2_, u_div_SumTmp_2__3_, u_div_SumTmp_2__4_,
         u_div_SumTmp_2__5_, u_div_SumTmp_3__0_, u_div_SumTmp_3__1_,
         u_div_SumTmp_3__2_, u_div_SumTmp_3__3_, u_div_SumTmp_3__4_,
         u_div_SumTmp_4__0_, u_div_SumTmp_4__1_, u_div_SumTmp_4__2_,
         u_div_SumTmp_4__3_, u_div_SumTmp_5__0_, u_div_SumTmp_5__1_,
         u_div_SumTmp_5__2_, u_div_SumTmp_6__0_, u_div_SumTmp_6__1_,
         u_div_SumTmp_7__0_, u_div_CryTmp_0__1_, u_div_CryTmp_0__2_,
         u_div_CryTmp_0__3_, u_div_CryTmp_0__4_, u_div_CryTmp_0__5_,
         u_div_CryTmp_0__6_, u_div_CryTmp_0__7_, u_div_CryTmp_1__1_,
         u_div_CryTmp_1__2_, u_div_CryTmp_1__3_, u_div_CryTmp_1__4_,
         u_div_CryTmp_1__5_, u_div_CryTmp_1__6_, u_div_CryTmp_1__7_,
         u_div_CryTmp_2__1_, u_div_CryTmp_2__2_, u_div_CryTmp_2__3_,
         u_div_CryTmp_2__4_, u_div_CryTmp_2__5_, u_div_CryTmp_2__6_,
         u_div_CryTmp_3__1_, u_div_CryTmp_3__2_, u_div_CryTmp_3__3_,
         u_div_CryTmp_3__4_, u_div_CryTmp_3__5_, u_div_CryTmp_4__1_,
         u_div_CryTmp_4__2_, u_div_CryTmp_4__3_, u_div_CryTmp_4__4_,
         u_div_CryTmp_5__1_, u_div_CryTmp_5__2_, u_div_CryTmp_5__3_,
         u_div_CryTmp_6__1_, u_div_CryTmp_6__2_, u_div_CryTmp_7__1_,
         u_div_PartRem_1__1_, u_div_PartRem_1__2_, u_div_PartRem_1__3_,
         u_div_PartRem_1__4_, u_div_PartRem_1__5_, u_div_PartRem_1__6_,
         u_div_PartRem_1__7_, u_div_PartRem_2__1_, u_div_PartRem_2__2_,
         u_div_PartRem_2__3_, u_div_PartRem_2__4_, u_div_PartRem_2__5_,
         u_div_PartRem_2__6_, u_div_PartRem_3__1_, u_div_PartRem_3__2_,
         u_div_PartRem_3__3_, u_div_PartRem_3__4_, u_div_PartRem_3__5_,
         u_div_PartRem_4__1_, u_div_PartRem_4__2_, u_div_PartRem_4__3_,
         u_div_PartRem_4__4_, u_div_PartRem_5__1_, u_div_PartRem_5__2_,
         u_div_PartRem_5__3_, u_div_PartRem_6__1_, u_div_PartRem_6__2_,
         u_div_PartRem_7__1_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  ADDFX2M u_div_u_fa_PartRem_0_2_5 ( .A(u_div_PartRem_3__5_), .B(n13), .CI(
        u_div_CryTmp_2__5_), .CO(u_div_CryTmp_2__6_), .S(u_div_SumTmp_2__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_3 ( .A(u_div_PartRem_5__3_), .B(n15), .CI(
        u_div_CryTmp_4__3_), .CO(u_div_CryTmp_4__4_), .S(u_div_SumTmp_4__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_2 ( .A(u_div_PartRem_6__2_), .B(n16), .CI(
        u_div_CryTmp_5__2_), .CO(u_div_CryTmp_5__3_), .S(u_div_SumTmp_5__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_4 ( .A(u_div_PartRem_4__4_), .B(n14), .CI(
        u_div_CryTmp_3__4_), .CO(u_div_CryTmp_3__5_), .S(u_div_SumTmp_3__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_6_1 ( .A(u_div_PartRem_7__1_), .B(n17), .CI(
        u_div_CryTmp_6__1_), .CO(u_div_CryTmp_6__2_), .S(u_div_SumTmp_6__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_5 ( .A(u_div_PartRem_2__5_), .B(n13), .CI(
        u_div_CryTmp_1__5_), .CO(u_div_CryTmp_1__6_), .S(u_div_SumTmp_1__5_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_4 ( .A(u_div_PartRem_2__4_), .B(n14), .CI(
        u_div_CryTmp_1__4_), .CO(u_div_CryTmp_1__5_), .S(u_div_SumTmp_1__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_4 ( .A(u_div_PartRem_3__4_), .B(n14), .CI(
        u_div_CryTmp_2__4_), .CO(u_div_CryTmp_2__5_), .S(u_div_SumTmp_2__4_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_3 ( .A(u_div_PartRem_2__3_), .B(n15), .CI(
        u_div_CryTmp_1__3_), .CO(u_div_CryTmp_1__4_), .S(u_div_SumTmp_1__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_3 ( .A(u_div_PartRem_3__3_), .B(n15), .CI(
        u_div_CryTmp_2__3_), .CO(u_div_CryTmp_2__4_), .S(u_div_SumTmp_2__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_2 ( .A(u_div_PartRem_2__2_), .B(n16), .CI(
        u_div_CryTmp_1__2_), .CO(u_div_CryTmp_1__3_), .S(u_div_SumTmp_1__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_3 ( .A(u_div_PartRem_4__3_), .B(n15), .CI(
        u_div_CryTmp_3__3_), .CO(u_div_CryTmp_3__4_), .S(u_div_SumTmp_3__3_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_2 ( .A(u_div_PartRem_3__2_), .B(n16), .CI(
        u_div_CryTmp_2__2_), .CO(u_div_CryTmp_2__3_), .S(u_div_SumTmp_2__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_1_1 ( .A(u_div_PartRem_2__1_), .B(n17), .CI(
        u_div_CryTmp_1__1_), .CO(u_div_CryTmp_1__2_), .S(u_div_SumTmp_1__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_2 ( .A(u_div_PartRem_4__2_), .B(n16), .CI(
        u_div_CryTmp_3__2_), .CO(u_div_CryTmp_3__3_), .S(u_div_SumTmp_3__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_2_1 ( .A(u_div_PartRem_3__1_), .B(n17), .CI(
        u_div_CryTmp_2__1_), .CO(u_div_CryTmp_2__2_), .S(u_div_SumTmp_2__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_2 ( .A(u_div_PartRem_5__2_), .B(n16), .CI(
        u_div_CryTmp_4__2_), .CO(u_div_CryTmp_4__3_), .S(u_div_SumTmp_4__2_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_3_1 ( .A(u_div_PartRem_4__1_), .B(n17), .CI(
        u_div_CryTmp_3__1_), .CO(u_div_CryTmp_3__2_), .S(u_div_SumTmp_3__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_4_1 ( .A(u_div_PartRem_5__1_), .B(n17), .CI(
        u_div_CryTmp_4__1_), .CO(u_div_CryTmp_4__2_), .S(u_div_SumTmp_4__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_5_1 ( .A(u_div_PartRem_6__1_), .B(n17), .CI(
        u_div_CryTmp_5__1_), .CO(u_div_CryTmp_5__2_), .S(u_div_SumTmp_5__1_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_4 ( .A(u_div_PartRem_1__4_), .B(n14), .CI(
        u_div_CryTmp_0__4_), .CO(u_div_CryTmp_0__5_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_5 ( .A(u_div_PartRem_1__5_), .B(n13), .CI(
        u_div_CryTmp_0__5_), .CO(u_div_CryTmp_0__6_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_2 ( .A(u_div_PartRem_1__2_), .B(n16), .CI(
        u_div_CryTmp_0__2_), .CO(u_div_CryTmp_0__3_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_3 ( .A(u_div_PartRem_1__3_), .B(n15), .CI(
        u_div_CryTmp_0__3_), .CO(u_div_CryTmp_0__4_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_1 ( .A(u_div_PartRem_1__1_), .B(n17), .CI(
        u_div_CryTmp_0__1_), .CO(u_div_CryTmp_0__2_) );
  ADDFX2M u_div_u_fa_PartRem_0_1_6 ( .A(u_div_PartRem_2__6_), .B(n12), .CI(
        u_div_CryTmp_1__6_), .CO(u_div_CryTmp_1__7_), .S(u_div_SumTmp_1__6_)
         );
  ADDFX2M u_div_u_fa_PartRem_0_0_6 ( .A(u_div_PartRem_1__6_), .B(n12), .CI(
        u_div_CryTmp_0__6_), .CO(u_div_CryTmp_0__7_) );
  ADDFX2M u_div_u_fa_PartRem_0_0_7 ( .A(u_div_PartRem_1__7_), .B(n11), .CI(
        u_div_CryTmp_0__7_), .CO(quotient[0]) );
  INVX2M U1 ( .A(b[0]), .Y(n18) );
  AND2X2M U2 ( .A(u_div_CryTmp_1__7_), .B(n11), .Y(quotient[1]) );
  AND2X2M U3 ( .A(u_div_CryTmp_2__6_), .B(n21), .Y(quotient[2]) );
  INVX2M U4 ( .A(b[1]), .Y(n17) );
  INVX2M U5 ( .A(b[2]), .Y(n16) );
  INVX2M U6 ( .A(b[3]), .Y(n15) );
  OR2X2M U7 ( .A(n18), .B(a[7]), .Y(u_div_CryTmp_7__1_) );
  XNOR2X2M U8 ( .A(n18), .B(a[2]), .Y(u_div_SumTmp_2__0_) );
  XNOR2X2M U9 ( .A(n18), .B(a[3]), .Y(u_div_SumTmp_3__0_) );
  XNOR2X2M U10 ( .A(n18), .B(a[4]), .Y(u_div_SumTmp_4__0_) );
  XNOR2X2M U11 ( .A(n18), .B(a[5]), .Y(u_div_SumTmp_5__0_) );
  XNOR2X2M U12 ( .A(n18), .B(a[6]), .Y(u_div_SumTmp_6__0_) );
  XNOR2X2M U13 ( .A(n18), .B(a[7]), .Y(u_div_SumTmp_7__0_) );
  NAND2X2M U14 ( .A(n5), .B(n10), .Y(u_div_CryTmp_0__1_) );
  INVX2M U15 ( .A(a[0]), .Y(n10) );
  NAND2X2M U16 ( .A(n3), .B(n4), .Y(u_div_CryTmp_5__1_) );
  INVX2M U17 ( .A(a[5]), .Y(n4) );
  INVX2M U18 ( .A(n18), .Y(n3) );
  NAND2X2M U19 ( .A(n5), .B(n6), .Y(u_div_CryTmp_4__1_) );
  INVX2M U20 ( .A(a[4]), .Y(n6) );
  INVX2M U21 ( .A(n18), .Y(n5) );
  NAND2X2M U22 ( .A(n5), .B(n7), .Y(u_div_CryTmp_3__1_) );
  INVX2M U23 ( .A(a[3]), .Y(n7) );
  NAND2X2M U24 ( .A(n5), .B(n8), .Y(u_div_CryTmp_2__1_) );
  INVX2M U25 ( .A(a[2]), .Y(n8) );
  NAND2X2M U26 ( .A(n5), .B(n9), .Y(u_div_CryTmp_1__1_) );
  INVX2M U27 ( .A(a[1]), .Y(n9) );
  NAND2X2M U28 ( .A(n1), .B(n2), .Y(u_div_CryTmp_6__1_) );
  INVX2M U29 ( .A(a[6]), .Y(n2) );
  INVX2M U30 ( .A(n18), .Y(n1) );
  XNOR2X2M U31 ( .A(n18), .B(a[1]), .Y(u_div_SumTmp_1__0_) );
  INVX2M U32 ( .A(b[6]), .Y(n12) );
  INVX2M U33 ( .A(b[4]), .Y(n14) );
  INVX2M U34 ( .A(b[5]), .Y(n13) );
  INVX2M U35 ( .A(b[7]), .Y(n11) );
  CLKMX2X2M U36 ( .A(u_div_PartRem_2__6_), .B(u_div_SumTmp_1__6_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__7_) );
  CLKMX2X2M U37 ( .A(u_div_PartRem_3__5_), .B(u_div_SumTmp_2__5_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__6_) );
  CLKMX2X2M U38 ( .A(u_div_PartRem_4__4_), .B(u_div_SumTmp_3__4_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__5_) );
  CLKMX2X2M U39 ( .A(u_div_PartRem_5__3_), .B(u_div_SumTmp_4__3_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__4_) );
  CLKMX2X2M U40 ( .A(u_div_PartRem_6__2_), .B(u_div_SumTmp_5__2_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__3_) );
  CLKMX2X2M U41 ( .A(u_div_PartRem_7__1_), .B(u_div_SumTmp_6__1_), .S0(
        quotient[6]), .Y(u_div_PartRem_6__2_) );
  CLKMX2X2M U42 ( .A(a[7]), .B(u_div_SumTmp_7__0_), .S0(quotient[7]), .Y(
        u_div_PartRem_7__1_) );
  CLKMX2X2M U43 ( .A(u_div_PartRem_2__5_), .B(u_div_SumTmp_1__5_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__6_) );
  CLKMX2X2M U44 ( .A(u_div_PartRem_3__4_), .B(u_div_SumTmp_2__4_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__5_) );
  CLKMX2X2M U45 ( .A(u_div_PartRem_4__3_), .B(u_div_SumTmp_3__3_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__4_) );
  CLKMX2X2M U46 ( .A(u_div_PartRem_5__2_), .B(u_div_SumTmp_4__2_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__3_) );
  CLKMX2X2M U47 ( .A(u_div_PartRem_6__1_), .B(u_div_SumTmp_5__1_), .S0(
        quotient[5]), .Y(u_div_PartRem_5__2_) );
  CLKMX2X2M U48 ( .A(a[6]), .B(u_div_SumTmp_6__0_), .S0(quotient[6]), .Y(
        u_div_PartRem_6__1_) );
  CLKMX2X2M U49 ( .A(u_div_PartRem_2__4_), .B(u_div_SumTmp_1__4_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__5_) );
  CLKMX2X2M U50 ( .A(u_div_PartRem_3__3_), .B(u_div_SumTmp_2__3_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__4_) );
  CLKMX2X2M U51 ( .A(u_div_PartRem_4__2_), .B(u_div_SumTmp_3__2_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__3_) );
  CLKMX2X2M U52 ( .A(u_div_PartRem_5__1_), .B(u_div_SumTmp_4__1_), .S0(
        quotient[4]), .Y(u_div_PartRem_4__2_) );
  CLKMX2X2M U53 ( .A(a[5]), .B(u_div_SumTmp_5__0_), .S0(quotient[5]), .Y(
        u_div_PartRem_5__1_) );
  CLKMX2X2M U54 ( .A(u_div_PartRem_2__3_), .B(u_div_SumTmp_1__3_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__4_) );
  CLKMX2X2M U55 ( .A(u_div_PartRem_3__2_), .B(u_div_SumTmp_2__2_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__3_) );
  CLKMX2X2M U56 ( .A(u_div_PartRem_4__1_), .B(u_div_SumTmp_3__1_), .S0(
        quotient[3]), .Y(u_div_PartRem_3__2_) );
  CLKMX2X2M U57 ( .A(a[4]), .B(u_div_SumTmp_4__0_), .S0(quotient[4]), .Y(
        u_div_PartRem_4__1_) );
  CLKMX2X2M U58 ( .A(u_div_PartRem_2__2_), .B(u_div_SumTmp_1__2_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__3_) );
  CLKMX2X2M U59 ( .A(u_div_PartRem_3__1_), .B(u_div_SumTmp_2__1_), .S0(
        quotient[2]), .Y(u_div_PartRem_2__2_) );
  CLKMX2X2M U60 ( .A(a[3]), .B(u_div_SumTmp_3__0_), .S0(quotient[3]), .Y(
        u_div_PartRem_3__1_) );
  CLKMX2X2M U61 ( .A(u_div_PartRem_2__1_), .B(u_div_SumTmp_1__1_), .S0(
        quotient[1]), .Y(u_div_PartRem_1__2_) );
  CLKMX2X2M U62 ( .A(a[2]), .B(u_div_SumTmp_2__0_), .S0(quotient[2]), .Y(
        u_div_PartRem_2__1_) );
  CLKMX2X2M U63 ( .A(a[1]), .B(u_div_SumTmp_1__0_), .S0(quotient[1]), .Y(
        u_div_PartRem_1__1_) );
  AND4X1M U64 ( .A(u_div_CryTmp_7__1_), .B(n19), .C(n17), .D(n16), .Y(
        quotient[7]) );
  AND3X1M U65 ( .A(n19), .B(n16), .C(u_div_CryTmp_6__2_), .Y(quotient[6]) );
  AND2X1M U66 ( .A(u_div_CryTmp_5__3_), .B(n19), .Y(quotient[5]) );
  AND2X1M U67 ( .A(n20), .B(n15), .Y(n19) );
  AND2X1M U68 ( .A(u_div_CryTmp_4__4_), .B(n20), .Y(quotient[4]) );
  AND3X1M U69 ( .A(n21), .B(n14), .C(n13), .Y(n20) );
  AND3X1M U70 ( .A(n21), .B(n13), .C(u_div_CryTmp_3__5_), .Y(quotient[3]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n21) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:1] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  INVX2M U1 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U2 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[1]), .Y(n8) );
  NAND2X2M U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U6 ( .A(A[0]), .Y(n1) );
  INVX2M U7 ( .A(B[2]), .Y(n7) );
  INVX2M U8 ( .A(B[3]), .Y(n6) );
  INVX2M U9 ( .A(B[4]), .Y(n5) );
  INVX2M U10 ( .A(B[5]), .Y(n4) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
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
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26;

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n13) );
  INVX2M U3 ( .A(A[6]), .Y(n7) );
  CLKXOR2X2M U4 ( .A(B[13]), .B(n16), .Y(SUM[13]) );
  INVX2M U5 ( .A(n7), .Y(SUM[6]) );
  CLKXOR2X2M U6 ( .A(A[7]), .B(B[7]), .Y(SUM[7]) );
  BUFX2M U7 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U8 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U9 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U10 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U11 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U12 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U13 ( .A(n8), .B(n9), .Y(SUM[9]) );
  NOR2X1M U14 ( .A(n10), .B(n11), .Y(n9) );
  CLKXOR2X2M U15 ( .A(n12), .B(n13), .Y(SUM[8]) );
  NAND2BX1M U16 ( .AN(n14), .B(n15), .Y(n12) );
  OAI2BB1X1M U17 ( .A0N(n17), .A1N(A[12]), .B0(n18), .Y(n16) );
  OAI21X1M U18 ( .A0(A[12]), .A1(n17), .B0(B[12]), .Y(n18) );
  XOR3XLM U19 ( .A(B[12]), .B(A[12]), .C(n17), .Y(SUM[12]) );
  OAI21BX1M U20 ( .A0(n19), .A1(n20), .B0N(n21), .Y(n17) );
  XNOR2X1M U21 ( .A(n20), .B(n22), .Y(SUM[11]) );
  NOR2X1M U22 ( .A(n21), .B(n19), .Y(n22) );
  NOR2X1M U23 ( .A(B[11]), .B(A[11]), .Y(n19) );
  AND2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n21) );
  OA21X1M U25 ( .A0(n23), .A1(n24), .B0(n25), .Y(n20) );
  CLKXOR2X2M U26 ( .A(n26), .B(n24), .Y(SUM[10]) );
  AOI2BB1X1M U27 ( .A0N(n8), .A1N(n11), .B0(n10), .Y(n24) );
  AND2X1M U28 ( .A(B[9]), .B(A[9]), .Y(n10) );
  NOR2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n11) );
  OA21X1M U30 ( .A0(n13), .A1(n14), .B0(n15), .Y(n8) );
  CLKNAND2X2M U31 ( .A(B[8]), .B(A[8]), .Y(n15) );
  NOR2X1M U32 ( .A(B[8]), .B(A[8]), .Y(n14) );
  NAND2BX1M U33 ( .AN(n23), .B(n25), .Y(n26) );
  CLKNAND2X2M U34 ( .A(B[10]), .B(A[10]), .Y(n25) );
  NOR2X1M U35 ( .A(B[10]), .B(A[10]), .Y(n23) );
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

  ADDFX2M S3_6_6 ( .A(ab_6__6_), .B(CARRYB_5__6_), .CI(ab_5__7_), .CO(
        CARRYB_6__6_), .S(SUMB_6__6_) );
  ADDFX2M S2_6_5 ( .A(ab_6__5_), .B(CARRYB_5__5_), .CI(SUMB_5__6_), .CO(
        CARRYB_6__5_), .S(SUMB_6__5_) );
  ADDFX2M S3_5_6 ( .A(ab_5__6_), .B(CARRYB_4__6_), .CI(ab_4__7_), .CO(
        CARRYB_5__6_), .S(SUMB_5__6_) );
  ADDFX2M S5_6 ( .A(ab_7__6_), .B(CARRYB_6__6_), .CI(ab_6__7_), .CO(
        CARRYB_7__6_), .S(SUMB_7__6_) );
  ADDFX2M S4_5 ( .A(ab_7__5_), .B(CARRYB_6__5_), .CI(SUMB_6__6_), .CO(
        CARRYB_7__5_), .S(SUMB_7__5_) );
  ADDFX2M S4_4 ( .A(ab_7__4_), .B(CARRYB_6__4_), .CI(SUMB_6__5_), .CO(
        CARRYB_7__4_), .S(SUMB_7__4_) );
  ADDFX2M S2_2_4 ( .A(ab_2__4_), .B(n8), .CI(SUMB_1__5_), .CO(CARRYB_2__4_), 
        .S(SUMB_2__4_) );
  ADDFX2M S2_6_4 ( .A(ab_6__4_), .B(CARRYB_5__4_), .CI(SUMB_5__5_), .CO(
        CARRYB_6__4_), .S(SUMB_6__4_) );
  ADDFX2M S2_5_5 ( .A(ab_5__5_), .B(CARRYB_4__5_), .CI(SUMB_4__6_), .CO(
        CARRYB_5__5_), .S(SUMB_5__5_) );
  ADDFX2M S3_4_6 ( .A(ab_4__6_), .B(CARRYB_3__6_), .CI(ab_3__7_), .CO(
        CARRYB_4__6_), .S(SUMB_4__6_) );
  ADDFX2M S3_3_6 ( .A(ab_3__6_), .B(CARRYB_2__6_), .CI(ab_2__7_), .CO(
        CARRYB_3__6_), .S(SUMB_3__6_) );
  ADDFX2M S2_4_4 ( .A(ab_4__4_), .B(CARRYB_3__4_), .CI(SUMB_3__5_), .CO(
        CARRYB_4__4_), .S(SUMB_4__4_) );
  ADDFX2M S2_3_5 ( .A(ab_3__5_), .B(CARRYB_2__5_), .CI(SUMB_2__6_), .CO(
        CARRYB_3__5_), .S(SUMB_3__5_) );
  ADDFX2M S2_3_4 ( .A(ab_3__4_), .B(CARRYB_2__4_), .CI(SUMB_2__5_), .CO(
        CARRYB_3__4_), .S(SUMB_3__4_) );
  ADDFX2M S2_2_5 ( .A(ab_2__5_), .B(n7), .CI(SUMB_1__6_), .CO(CARRYB_2__5_), 
        .S(SUMB_2__5_) );
  ADDFX2M S3_2_6 ( .A(ab_2__6_), .B(n9), .CI(ab_1__7_), .CO(CARRYB_2__6_), .S(
        SUMB_2__6_) );
  ADDFX2M S2_6_3 ( .A(ab_6__3_), .B(CARRYB_5__3_), .CI(SUMB_5__4_), .CO(
        CARRYB_6__3_), .S(SUMB_6__3_) );
  ADDFX2M S2_5_4 ( .A(ab_5__4_), .B(CARRYB_4__4_), .CI(SUMB_4__5_), .CO(
        CARRYB_5__4_), .S(SUMB_5__4_) );
  ADDFX2M S2_6_2 ( .A(ab_6__2_), .B(CARRYB_5__2_), .CI(SUMB_5__3_), .CO(
        CARRYB_6__2_), .S(SUMB_6__2_) );
  ADDFX2M S2_6_1 ( .A(ab_6__1_), .B(CARRYB_5__1_), .CI(SUMB_5__2_), .CO(
        CARRYB_6__1_), .S(SUMB_6__1_) );
  ADDFX2M S1_6_0 ( .A(ab_6__0_), .B(CARRYB_5__0_), .CI(SUMB_5__1_), .CO(
        CARRYB_6__0_), .S(A1_4_) );
  ADDFX2M S2_4_5 ( .A(ab_4__5_), .B(CARRYB_3__5_), .CI(SUMB_3__6_), .CO(
        CARRYB_4__5_), .S(SUMB_4__5_) );
  ADDFX2M S2_5_3 ( .A(ab_5__3_), .B(CARRYB_4__3_), .CI(SUMB_4__4_), .CO(
        CARRYB_5__3_), .S(SUMB_5__3_) );
  ADDFX2M S2_5_2 ( .A(ab_5__2_), .B(CARRYB_4__2_), .CI(SUMB_4__3_), .CO(
        CARRYB_5__2_), .S(SUMB_5__2_) );
  ADDFX2M S2_5_1 ( .A(ab_5__1_), .B(CARRYB_4__1_), .CI(SUMB_4__2_), .CO(
        CARRYB_5__1_), .S(SUMB_5__1_) );
  ADDFX2M S1_5_0 ( .A(ab_5__0_), .B(CARRYB_4__0_), .CI(SUMB_4__1_), .CO(
        CARRYB_5__0_), .S(A1_3_) );
  ADDFX2M S2_4_3 ( .A(ab_4__3_), .B(CARRYB_3__3_), .CI(SUMB_3__4_), .CO(
        CARRYB_4__3_), .S(SUMB_4__3_) );
  ADDFX2M S2_4_2 ( .A(ab_4__2_), .B(CARRYB_3__2_), .CI(SUMB_3__3_), .CO(
        CARRYB_4__2_), .S(SUMB_4__2_) );
  ADDFX2M S2_4_1 ( .A(ab_4__1_), .B(CARRYB_3__1_), .CI(SUMB_3__2_), .CO(
        CARRYB_4__1_), .S(SUMB_4__1_) );
  ADDFX2M S1_4_0 ( .A(ab_4__0_), .B(CARRYB_3__0_), .CI(SUMB_3__1_), .CO(
        CARRYB_4__0_), .S(A1_2_) );
  ADDFX2M S2_3_3 ( .A(ab_3__3_), .B(CARRYB_2__3_), .CI(SUMB_2__4_), .CO(
        CARRYB_3__3_), .S(SUMB_3__3_) );
  ADDFX2M S2_3_2 ( .A(ab_3__2_), .B(CARRYB_2__2_), .CI(SUMB_2__3_), .CO(
        CARRYB_3__2_), .S(SUMB_3__2_) );
  ADDFX2M S2_3_1 ( .A(ab_3__1_), .B(CARRYB_2__1_), .CI(SUMB_2__2_), .CO(
        CARRYB_3__1_), .S(SUMB_3__1_) );
  ADDFX2M S1_3_0 ( .A(ab_3__0_), .B(CARRYB_2__0_), .CI(SUMB_2__1_), .CO(
        CARRYB_3__0_), .S(A1_1_) );
  ADDFX2M S2_2_3 ( .A(ab_2__3_), .B(n6), .CI(SUMB_1__4_), .CO(CARRYB_2__3_), 
        .S(SUMB_2__3_) );
  ADDFX2M S2_2_2 ( .A(ab_2__2_), .B(n5), .CI(SUMB_1__3_), .CO(CARRYB_2__2_), 
        .S(SUMB_2__2_) );
  ADDFX2M S2_2_1 ( .A(ab_2__1_), .B(n4), .CI(SUMB_1__2_), .CO(CARRYB_2__1_), 
        .S(SUMB_2__1_) );
  ADDFX2M S1_2_0 ( .A(ab_2__0_), .B(n3), .CI(SUMB_1__1_), .CO(CARRYB_2__0_), 
        .S(A1_0_) );
  ADDFX2M S4_2 ( .A(ab_7__2_), .B(CARRYB_6__2_), .CI(SUMB_6__3_), .CO(
        CARRYB_7__2_), .S(SUMB_7__2_) );
  ADDFX2M S4_1 ( .A(ab_7__1_), .B(CARRYB_6__1_), .CI(SUMB_6__2_), .CO(
        CARRYB_7__1_), .S(SUMB_7__1_) );
  ADDFX2M S4_0 ( .A(ab_7__0_), .B(CARRYB_6__0_), .CI(SUMB_6__1_), .CO(
        CARRYB_7__0_), .S(SUMB_7__0_) );
  ADDFX2M S4_3 ( .A(ab_7__3_), .B(CARRYB_6__3_), .CI(SUMB_6__4_), .CO(
        CARRYB_7__3_), .S(SUMB_7__3_) );
  AND2X2M U2 ( .A(ab_0__1_), .B(ab_1__0_), .Y(n3) );
  AND2X2M U3 ( .A(ab_0__2_), .B(ab_1__1_), .Y(n4) );
  AND2X2M U4 ( .A(ab_0__3_), .B(ab_1__2_), .Y(n5) );
  AND2X2M U5 ( .A(ab_0__4_), .B(ab_1__3_), .Y(n6) );
  AND2X2M U6 ( .A(ab_0__6_), .B(ab_1__5_), .Y(n7) );
  AND2X2M U7 ( .A(ab_0__5_), .B(ab_1__4_), .Y(n8) );
  AND2X2M U8 ( .A(ab_0__7_), .B(ab_1__6_), .Y(n9) );
  AND2X2M U9 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(n10) );
  CLKXOR2X2M U10 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(A1_7_) );
  CLKXOR2X2M U11 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(A1_8_) );
  AND2X2M U12 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(n11) );
  AND2X2M U13 ( .A(CARRYB_7__1_), .B(SUMB_7__2_), .Y(n12) );
  CLKXOR2X2M U14 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(A1_10_) );
  CLKXOR2X2M U15 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(A1_9_) );
  CLKXOR2X2M U16 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(A1_11_) );
  AND2X2M U17 ( .A(CARRYB_7__3_), .B(SUMB_7__4_), .Y(n13) );
  AND2X2M U18 ( .A(CARRYB_7__2_), .B(SUMB_7__3_), .Y(n14) );
  AND2X2M U19 ( .A(CARRYB_7__4_), .B(SUMB_7__5_), .Y(n15) );
  CLKXOR2X2M U20 ( .A(CARRYB_7__6_), .B(ab_7__7_), .Y(A1_12_) );
  CLKXOR2X2M U21 ( .A(CARRYB_7__0_), .B(SUMB_7__1_), .Y(A1_6_) );
  AND2X2M U22 ( .A(CARRYB_7__5_), .B(SUMB_7__6_), .Y(n16) );
  CLKXOR2X2M U23 ( .A(ab_1__0_), .B(ab_0__1_), .Y(PRODUCT[1]) );
  INVX2M U24 ( .A(B[6]), .Y(n18) );
  INVX2M U25 ( .A(A[0]), .Y(n32) );
  INVX2M U26 ( .A(A[1]), .Y(n31) );
  CLKXOR2X2M U27 ( .A(ab_1__1_), .B(ab_0__2_), .Y(SUMB_1__1_) );
  CLKXOR2X2M U28 ( .A(ab_1__2_), .B(ab_0__3_), .Y(SUMB_1__2_) );
  CLKXOR2X2M U29 ( .A(ab_1__3_), .B(ab_0__4_), .Y(SUMB_1__3_) );
  CLKXOR2X2M U30 ( .A(ab_1__4_), .B(ab_0__5_), .Y(SUMB_1__4_) );
  CLKXOR2X2M U31 ( .A(ab_1__6_), .B(ab_0__7_), .Y(SUMB_1__6_) );
  CLKXOR2X2M U32 ( .A(ab_1__5_), .B(ab_0__6_), .Y(SUMB_1__5_) );
  INVX2M U33 ( .A(A[2]), .Y(n30) );
  INVX2M U34 ( .A(A[3]), .Y(n29) );
  INVX2M U35 ( .A(A[4]), .Y(n28) );
  INVX2M U36 ( .A(A[7]), .Y(n25) );
  INVX2M U37 ( .A(A[5]), .Y(n27) );
  INVX2M U38 ( .A(A[6]), .Y(n26) );
  INVX2M U39 ( .A(B[7]), .Y(n17) );
  INVX2M U40 ( .A(B[0]), .Y(n24) );
  INVX2M U41 ( .A(B[1]), .Y(n23) );
  INVX2M U42 ( .A(B[4]), .Y(n20) );
  INVX2M U43 ( .A(B[5]), .Y(n19) );
  INVX2M U44 ( .A(B[2]), .Y(n22) );
  INVX2M U45 ( .A(B[3]), .Y(n21) );
  NOR2X1M U47 ( .A(n25), .B(n17), .Y(ab_7__7_) );
  NOR2X1M U48 ( .A(n25), .B(n18), .Y(ab_7__6_) );
  NOR2X1M U49 ( .A(n25), .B(n19), .Y(ab_7__5_) );
  NOR2X1M U50 ( .A(n25), .B(n20), .Y(ab_7__4_) );
  NOR2X1M U51 ( .A(n25), .B(n21), .Y(ab_7__3_) );
  NOR2X1M U52 ( .A(n25), .B(n22), .Y(ab_7__2_) );
  NOR2X1M U53 ( .A(n25), .B(n23), .Y(ab_7__1_) );
  NOR2X1M U54 ( .A(n25), .B(n24), .Y(ab_7__0_) );
  NOR2X1M U55 ( .A(n17), .B(n26), .Y(ab_6__7_) );
  NOR2X1M U56 ( .A(n18), .B(n26), .Y(ab_6__6_) );
  NOR2X1M U57 ( .A(n19), .B(n26), .Y(ab_6__5_) );
  NOR2X1M U58 ( .A(n20), .B(n26), .Y(ab_6__4_) );
  NOR2X1M U59 ( .A(n21), .B(n26), .Y(ab_6__3_) );
  NOR2X1M U60 ( .A(n22), .B(n26), .Y(ab_6__2_) );
  NOR2X1M U61 ( .A(n23), .B(n26), .Y(ab_6__1_) );
  NOR2X1M U62 ( .A(n24), .B(n26), .Y(ab_6__0_) );
  NOR2X1M U63 ( .A(n17), .B(n27), .Y(ab_5__7_) );
  NOR2X1M U64 ( .A(n18), .B(n27), .Y(ab_5__6_) );
  NOR2X1M U65 ( .A(n19), .B(n27), .Y(ab_5__5_) );
  NOR2X1M U66 ( .A(n20), .B(n27), .Y(ab_5__4_) );
  NOR2X1M U67 ( .A(n21), .B(n27), .Y(ab_5__3_) );
  NOR2X1M U68 ( .A(n22), .B(n27), .Y(ab_5__2_) );
  NOR2X1M U69 ( .A(n23), .B(n27), .Y(ab_5__1_) );
  NOR2X1M U70 ( .A(n24), .B(n27), .Y(ab_5__0_) );
  NOR2X1M U71 ( .A(n17), .B(n28), .Y(ab_4__7_) );
  NOR2X1M U72 ( .A(n18), .B(n28), .Y(ab_4__6_) );
  NOR2X1M U73 ( .A(n19), .B(n28), .Y(ab_4__5_) );
  NOR2X1M U74 ( .A(n20), .B(n28), .Y(ab_4__4_) );
  NOR2X1M U75 ( .A(n21), .B(n28), .Y(ab_4__3_) );
  NOR2X1M U76 ( .A(n22), .B(n28), .Y(ab_4__2_) );
  NOR2X1M U77 ( .A(n23), .B(n28), .Y(ab_4__1_) );
  NOR2X1M U78 ( .A(n24), .B(n28), .Y(ab_4__0_) );
  NOR2X1M U79 ( .A(n17), .B(n29), .Y(ab_3__7_) );
  NOR2X1M U80 ( .A(n18), .B(n29), .Y(ab_3__6_) );
  NOR2X1M U81 ( .A(n19), .B(n29), .Y(ab_3__5_) );
  NOR2X1M U82 ( .A(n20), .B(n29), .Y(ab_3__4_) );
  NOR2X1M U83 ( .A(n21), .B(n29), .Y(ab_3__3_) );
  NOR2X1M U84 ( .A(n22), .B(n29), .Y(ab_3__2_) );
  NOR2X1M U85 ( .A(n23), .B(n29), .Y(ab_3__1_) );
  NOR2X1M U86 ( .A(n24), .B(n29), .Y(ab_3__0_) );
  NOR2X1M U87 ( .A(n17), .B(n30), .Y(ab_2__7_) );
  NOR2X1M U88 ( .A(n18), .B(n30), .Y(ab_2__6_) );
  NOR2X1M U89 ( .A(n19), .B(n30), .Y(ab_2__5_) );
  NOR2X1M U90 ( .A(n20), .B(n30), .Y(ab_2__4_) );
  NOR2X1M U91 ( .A(n21), .B(n30), .Y(ab_2__3_) );
  NOR2X1M U92 ( .A(n22), .B(n30), .Y(ab_2__2_) );
  NOR2X1M U93 ( .A(n23), .B(n30), .Y(ab_2__1_) );
  NOR2X1M U94 ( .A(n24), .B(n30), .Y(ab_2__0_) );
  NOR2X1M U95 ( .A(n17), .B(n31), .Y(ab_1__7_) );
  NOR2X1M U96 ( .A(n18), .B(n31), .Y(ab_1__6_) );
  NOR2X1M U97 ( .A(n19), .B(n31), .Y(ab_1__5_) );
  NOR2X1M U98 ( .A(n20), .B(n31), .Y(ab_1__4_) );
  NOR2X1M U99 ( .A(n21), .B(n31), .Y(ab_1__3_) );
  NOR2X1M U100 ( .A(n22), .B(n31), .Y(ab_1__2_) );
  NOR2X1M U101 ( .A(n23), .B(n31), .Y(ab_1__1_) );
  NOR2X1M U102 ( .A(n24), .B(n31), .Y(ab_1__0_) );
  NOR2X1M U103 ( .A(n17), .B(n32), .Y(ab_0__7_) );
  NOR2X1M U104 ( .A(n18), .B(n32), .Y(ab_0__6_) );
  NOR2X1M U105 ( .A(n19), .B(n32), .Y(ab_0__5_) );
  NOR2X1M U106 ( .A(n20), .B(n32), .Y(ab_0__4_) );
  NOR2X1M U107 ( .A(n21), .B(n32), .Y(ab_0__3_) );
  NOR2X1M U108 ( .A(n22), .B(n32), .Y(ab_0__2_) );
  NOR2X1M U109 ( .A(n23), .B(n32), .Y(ab_0__1_) );
  NOR2X1M U110 ( .A(n24), .B(n32), .Y(PRODUCT[0]) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 ( .A({1'b0, A1_12_, A1_11_, 
        A1_10_, A1_9_, A1_8_, A1_7_, A1_6_, SUMB_7__0_, A1_4_, A1_3_, A1_2_, 
        A1_1_, A1_0_}), .B({n10, n16, n15, n13, n14, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 ( CLK, RST, A, B, EN, ALU_FUN, 
        ALU_OUT, OUT_VALID, test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, EN, test_si, test_se;
  output OUT_VALID;
  wire   N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106,
         N107, N108, N157, N158, N159, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n3, n4, n5, n6, n7, n8, n9, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n167, n168,
         n169, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8;
  wire   [15:0] ALU_OUT_Comb;

  SDFFRQX2M ALU_OUT_reg_15_ ( .D(ALU_OUT_Comb[15]), .SI(ALU_OUT[14]), .SE(n168), .CK(CLK), .RN(n34), .Q(ALU_OUT[15]) );
  SDFFRQX2M ALU_OUT_reg_14_ ( .D(ALU_OUT_Comb[14]), .SI(ALU_OUT[13]), .SE(n167), .CK(CLK), .RN(n34), .Q(ALU_OUT[14]) );
  SDFFRQX2M ALU_OUT_reg_13_ ( .D(ALU_OUT_Comb[13]), .SI(ALU_OUT[12]), .SE(n169), .CK(CLK), .RN(n34), .Q(ALU_OUT[13]) );
  SDFFRQX2M ALU_OUT_reg_12_ ( .D(ALU_OUT_Comb[12]), .SI(ALU_OUT[11]), .SE(n168), .CK(CLK), .RN(n34), .Q(ALU_OUT[12]) );
  SDFFRQX2M ALU_OUT_reg_11_ ( .D(ALU_OUT_Comb[11]), .SI(ALU_OUT[10]), .SE(n167), .CK(CLK), .RN(n34), .Q(ALU_OUT[11]) );
  SDFFRQX2M ALU_OUT_reg_10_ ( .D(ALU_OUT_Comb[10]), .SI(ALU_OUT[9]), .SE(n169), 
        .CK(CLK), .RN(n34), .Q(ALU_OUT[10]) );
  SDFFRQX2M ALU_OUT_reg_9_ ( .D(ALU_OUT_Comb[9]), .SI(ALU_OUT[8]), .SE(n168), 
        .CK(CLK), .RN(n34), .Q(ALU_OUT[9]) );
  SDFFRQX2M ALU_OUT_reg_8_ ( .D(ALU_OUT_Comb[8]), .SI(ALU_OUT[7]), .SE(n167), 
        .CK(CLK), .RN(n34), .Q(ALU_OUT[8]) );
  SDFFRQX2M ALU_OUT_reg_0_ ( .D(ALU_OUT_Comb[0]), .SI(test_si), .SE(n169), 
        .CK(CLK), .RN(n35), .Q(ALU_OUT[0]) );
  SDFFRQX2M ALU_OUT_reg_7_ ( .D(ALU_OUT_Comb[7]), .SI(ALU_OUT[6]), .SE(n168), 
        .CK(CLK), .RN(n34), .Q(ALU_OUT[7]) );
  SDFFRQX2M ALU_OUT_reg_6_ ( .D(ALU_OUT_Comb[6]), .SI(ALU_OUT[5]), .SE(n167), 
        .CK(CLK), .RN(n34), .Q(ALU_OUT[6]) );
  SDFFRQX2M ALU_OUT_reg_5_ ( .D(ALU_OUT_Comb[5]), .SI(ALU_OUT[4]), .SE(n169), 
        .CK(CLK), .RN(n34), .Q(ALU_OUT[5]) );
  SDFFRQX2M ALU_OUT_reg_4_ ( .D(ALU_OUT_Comb[4]), .SI(ALU_OUT[3]), .SE(n168), 
        .CK(CLK), .RN(n34), .Q(ALU_OUT[4]) );
  SDFFRQX2M ALU_OUT_reg_3_ ( .D(ALU_OUT_Comb[3]), .SI(ALU_OUT[2]), .SE(n167), 
        .CK(CLK), .RN(n35), .Q(ALU_OUT[3]) );
  SDFFRQX2M ALU_OUT_reg_2_ ( .D(ALU_OUT_Comb[2]), .SI(ALU_OUT[1]), .SE(n169), 
        .CK(CLK), .RN(n35), .Q(ALU_OUT[2]) );
  SDFFRQX2M ALU_OUT_reg_1_ ( .D(ALU_OUT_Comb[1]), .SI(ALU_OUT[0]), .SE(n168), 
        .CK(CLK), .RN(n35), .Q(ALU_OUT[1]) );
  SDFFRQX2M OUT_VALID_reg ( .D(EN), .SI(ALU_OUT[15]), .SE(n167), .CK(CLK), 
        .RN(n34), .Q(OUT_VALID) );
  BUFX2M U7 ( .A(A[1]), .Y(n6) );
  BUFX2M U23 ( .A(A[7]), .Y(n29) );
  BUFX2M U24 ( .A(n66), .Y(n3) );
  NOR3BX2M U25 ( .AN(n122), .B(n151), .C(ALU_FUN[2]), .Y(n66) );
  BUFX2M U26 ( .A(n54), .Y(n30) );
  BUFX2M U27 ( .A(B[6]), .Y(n4) );
  BUFX2M U28 ( .A(n52), .Y(n31) );
  INVX2M U29 ( .A(EN), .Y(n147) );
  BUFX2M U30 ( .A(n63), .Y(n33) );
  INVX4M U31 ( .A(n36), .Y(n34) );
  INVX2M U32 ( .A(n36), .Y(n35) );
  AOI31X2M U33 ( .A0(n110), .A1(n111), .A2(n112), .B0(n147), .Y(
        ALU_OUT_Comb[0]) );
  AOI22X1M U34 ( .A0(N76), .A1(n67), .B0(N67), .B1(n30), .Y(n110) );
  AOI211X2M U35 ( .A0(n32), .A1(n163), .B0(n113), .C0(n114), .Y(n112) );
  AOI222XLM U36 ( .A0(N85), .A1(n31), .B0(n5), .B1(n59), .C0(N101), .C1(n3), 
        .Y(n111) );
  AOI31X2M U37 ( .A0(n98), .A1(n99), .A2(n100), .B0(n147), .Y(ALU_OUT_Comb[1])
         );
  AOI222X1M U38 ( .A0(N68), .A1(n30), .B0(N86), .B1(n31), .C0(N77), .C1(n67), 
        .Y(n98) );
  AOI211X2M U39 ( .A0(n7), .A1(n149), .B0(n101), .C0(n102), .Y(n100) );
  AOI222XLM U40 ( .A0(N102), .A1(n3), .B0(n32), .B1(n162), .C0(n6), .C1(n59), 
        .Y(n99) );
  AOI31X2M U41 ( .A0(n92), .A1(n93), .A2(n94), .B0(n147), .Y(ALU_OUT_Comb[2])
         );
  AOI22X1M U42 ( .A0(N78), .A1(n67), .B0(N69), .B1(n30), .Y(n92) );
  AOI221XLM U43 ( .A0(n8), .A1(n149), .B0(n32), .B1(n161), .C0(n95), .Y(n94)
         );
  AOI222XLM U44 ( .A0(N87), .A1(n31), .B0(n7), .B1(n59), .C0(N103), .C1(n3), 
        .Y(n93) );
  AOI31X2M U45 ( .A0(n86), .A1(n87), .A2(n88), .B0(n147), .Y(ALU_OUT_Comb[3])
         );
  AOI22X1M U46 ( .A0(N79), .A1(n67), .B0(N70), .B1(n30), .Y(n86) );
  AOI221XLM U47 ( .A0(n9), .A1(n149), .B0(n32), .B1(n160), .C0(n89), .Y(n88)
         );
  AOI222XLM U48 ( .A0(N88), .A1(n31), .B0(n8), .B1(n59), .C0(N104), .C1(n3), 
        .Y(n87) );
  AOI31X2M U49 ( .A0(n80), .A1(n81), .A2(n82), .B0(n147), .Y(ALU_OUT_Comb[4])
         );
  AOI22X1M U50 ( .A0(N80), .A1(n67), .B0(N71), .B1(n30), .Y(n80) );
  AOI221XLM U51 ( .A0(n149), .A1(n27), .B0(n32), .B1(n159), .C0(n83), .Y(n82)
         );
  AOI222XLM U52 ( .A0(N89), .A1(n31), .B0(n9), .B1(n59), .C0(N105), .C1(n3), 
        .Y(n81) );
  OAI2BB1X2M U53 ( .A0N(N99), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[14]) );
  OAI2BB1X2M U54 ( .A0N(N100), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[15]) );
  OAI2BB1X2M U55 ( .A0N(N98), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[13]) );
  AOI31X2M U56 ( .A0(n74), .A1(n75), .A2(n76), .B0(n147), .Y(ALU_OUT_Comb[5])
         );
  AOI221XLM U57 ( .A0(n149), .A1(n28), .B0(n32), .B1(n158), .C0(n77), .Y(n76)
         );
  AOI22X1M U58 ( .A0(N81), .A1(n67), .B0(N72), .B1(n30), .Y(n74) );
  AOI222XLM U59 ( .A0(N90), .A1(n31), .B0(n27), .B1(n59), .C0(N106), .C1(n3), 
        .Y(n75) );
  OAI2BB1X2M U60 ( .A0N(N95), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[10]) );
  OAI2BB1X2M U61 ( .A0N(N96), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[11]) );
  OAI2BB1X2M U62 ( .A0N(N97), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[12]) );
  INVX2M U63 ( .A(n4), .Y(n145) );
  AOI31X2M U64 ( .A0(n68), .A1(n69), .A2(n70), .B0(n147), .Y(ALU_OUT_Comb[6])
         );
  AOI221XLM U65 ( .A0(n149), .A1(n29), .B0(n32), .B1(n157), .C0(n71), .Y(n70)
         );
  AOI22X1M U66 ( .A0(N82), .A1(n67), .B0(N73), .B1(n30), .Y(n68) );
  AOI222XLM U67 ( .A0(N91), .A1(n31), .B0(n59), .B1(n28), .C0(N107), .C1(n3), 
        .Y(n69) );
  AOI31X2M U68 ( .A0(n55), .A1(n56), .A2(n57), .B0(n147), .Y(ALU_OUT_Comb[7])
         );
  AOI221XLM U69 ( .A0(n32), .A1(n156), .B0(n59), .B1(n29), .C0(n60), .Y(n57)
         );
  AOI22X1M U70 ( .A0(N83), .A1(n67), .B0(N74), .B1(n30), .Y(n55) );
  AOI22XLM U71 ( .A0(N108), .A1(n3), .B0(N92), .B1(n31), .Y(n56) );
  AOI21X2M U72 ( .A0(n50), .A1(n51), .B0(n147), .Y(ALU_OUT_Comb[8]) );
  AOI21X2M U73 ( .A0(N75), .A1(n30), .B0(n146), .Y(n50) );
  AOI2BB2XLM U74 ( .B0(N93), .B1(n31), .A0N(n156), .A1N(n53), .Y(n51) );
  OAI2BB1X2M U75 ( .A0N(N94), .A1N(n48), .B0(n49), .Y(ALU_OUT_Comb[9]) );
  AND4X2M U76 ( .A(N159), .B(n116), .C(ALU_FUN[3]), .D(n152), .Y(n107) );
  INVX2M U77 ( .A(n109), .Y(n146) );
  AOI211X2M U78 ( .A0(N84), .A1(n67), .B0(n32), .C0(n64), .Y(n109) );
  OAI2BB1X2M U79 ( .A0N(n117), .A1N(n116), .B0(n118), .Y(n65) );
  OAI222X1M U80 ( .A0(n72), .A1(n145), .B0(n4), .B1(n73), .C0(n53), .C1(n158), 
        .Y(n71) );
  AOI221XLM U81 ( .A0(n28), .A1(n33), .B0(n64), .B1(n157), .C0(n32), .Y(n73)
         );
  AOI221XLM U82 ( .A0(n63), .A1(n157), .B0(n28), .B1(n65), .C0(n59), .Y(n72)
         );
  NOR2X2M U83 ( .A(n152), .B(ALU_FUN[3]), .Y(n122) );
  OAI2BB1X2M U84 ( .A0N(n150), .A1N(n122), .B0(n118), .Y(n64) );
  NAND3X2M U85 ( .A(n150), .B(n152), .C(ALU_FUN[3]), .Y(n53) );
  NOR2BX4M U86 ( .AN(n31), .B(n147), .Y(n48) );
  CLKAND2X4M U87 ( .A(n116), .B(n122), .Y(n59) );
  INVX2M U88 ( .A(n108), .Y(n149) );
  INVX2M U89 ( .A(n117), .Y(n148) );
  INVX2M U90 ( .A(n6), .Y(n162) );
  AND2X2M U91 ( .A(n123), .B(n122), .Y(n67) );
  INVX2M U92 ( .A(n5), .Y(n163) );
  BUFX4M U93 ( .A(n58), .Y(n32) );
  NOR2X2M U94 ( .A(n124), .B(n148), .Y(n58) );
  INVX2M U95 ( .A(n29), .Y(n156) );
  INVX2M U96 ( .A(n28), .Y(n157) );
  INVX2M U97 ( .A(n7), .Y(n161) );
  INVX2M U98 ( .A(n8), .Y(n160) );
  INVX2M U99 ( .A(n27), .Y(n158) );
  INVX2M U100 ( .A(n9), .Y(n159) );
  INVX2M U101 ( .A(n124), .Y(n150) );
  AND3X2M U102 ( .A(n123), .B(n152), .C(ALU_FUN[3]), .Y(n63) );
  NOR2BX2M U103 ( .AN(n123), .B(n148), .Y(n54) );
  INVX2M U104 ( .A(RST), .Y(n36) );
  BUFX4M U105 ( .A(A[6]), .Y(n28) );
  BUFX4M U106 ( .A(A[5]), .Y(n27) );
  BUFX4M U107 ( .A(A[4]), .Y(n9) );
  BUFX4M U108 ( .A(A[3]), .Y(n8) );
  BUFX4M U109 ( .A(A[2]), .Y(n7) );
  BUFX4M U110 ( .A(A[0]), .Y(n5) );
  INVX2M U111 ( .A(n37), .Y(n141) );
  INVX2M U112 ( .A(n125), .Y(n143) );
  OAI21X2M U113 ( .A0(B[0]), .A1(n119), .B0(n120), .Y(n113) );
  AOI221XLM U114 ( .A0(n5), .A1(n33), .B0(n64), .B1(n163), .C0(n32), .Y(n119)
         );
  AOI31X2M U115 ( .A0(N157), .A1(ALU_FUN[3]), .A2(n121), .B0(n107), .Y(n120)
         );
  NOR3X2M U116 ( .A(n151), .B(ALU_FUN[2]), .C(ALU_FUN[0]), .Y(n121) );
  OAI21X2M U117 ( .A0(B[1]), .A1(n104), .B0(n105), .Y(n101) );
  AOI221XLM U118 ( .A0(n6), .A1(n33), .B0(n64), .B1(n162), .C0(n32), .Y(n104)
         );
  AOI31X2M U119 ( .A0(N158), .A1(ALU_FUN[3]), .A2(n106), .B0(n107), .Y(n105)
         );
  NOR3X2M U120 ( .A(n152), .B(ALU_FUN[2]), .C(n151), .Y(n106) );
  INVX2M U121 ( .A(B[0]), .Y(n140) );
  INVX2M U122 ( .A(B[2]), .Y(n142) );
  NAND2X2M U123 ( .A(EN), .B(n146), .Y(n49) );
  INVX2M U124 ( .A(B[3]), .Y(n144) );
  OAI222X1M U125 ( .A0(n61), .A1(n153), .B0(B[7]), .B1(n62), .C0(n53), .C1(
        n157), .Y(n60) );
  INVX2M U126 ( .A(B[7]), .Y(n153) );
  AOI221XLM U127 ( .A0(n33), .A1(n29), .B0(n64), .B1(n156), .C0(n32), .Y(n62)
         );
  AOI221XLM U128 ( .A0(n63), .A1(n156), .B0(n29), .B1(n65), .C0(n59), .Y(n61)
         );
  OAI222X1M U129 ( .A0(n84), .A1(n155), .B0(B[4]), .B1(n85), .C0(n53), .C1(
        n160), .Y(n83) );
  INVX2M U130 ( .A(B[4]), .Y(n155) );
  AOI221XLM U131 ( .A0(n9), .A1(n33), .B0(n64), .B1(n159), .C0(n32), .Y(n85)
         );
  AOI221XLM U132 ( .A0(n63), .A1(n159), .B0(n9), .B1(n65), .C0(n59), .Y(n84)
         );
  OAI222X1M U133 ( .A0(n78), .A1(n154), .B0(B[5]), .B1(n79), .C0(n53), .C1(
        n159), .Y(n77) );
  INVX2M U134 ( .A(B[5]), .Y(n154) );
  AOI221XLM U135 ( .A0(n27), .A1(n33), .B0(n64), .B1(n158), .C0(n32), .Y(n79)
         );
  AOI221XLM U136 ( .A0(n63), .A1(n158), .B0(n27), .B1(n65), .C0(n59), .Y(n78)
         );
  OAI222X1M U137 ( .A0(n96), .A1(n142), .B0(B[2]), .B1(n97), .C0(n53), .C1(
        n162), .Y(n95) );
  AOI221XLM U138 ( .A0(n7), .A1(n33), .B0(n64), .B1(n161), .C0(n32), .Y(n97)
         );
  AOI221XLM U139 ( .A0(n63), .A1(n161), .B0(n7), .B1(n65), .C0(n59), .Y(n96)
         );
  OAI222X1M U140 ( .A0(n90), .A1(n144), .B0(B[3]), .B1(n91), .C0(n53), .C1(
        n161), .Y(n89) );
  AOI221XLM U141 ( .A0(n8), .A1(n33), .B0(n64), .B1(n160), .C0(n32), .Y(n91)
         );
  AOI221XLM U142 ( .A0(n63), .A1(n160), .B0(n8), .B1(n65), .C0(n59), .Y(n90)
         );
  NOR2X2M U143 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n123) );
  OAI2B2X1M U144 ( .A1N(B[1]), .A0(n103), .B0(n53), .B1(n163), .Y(n102) );
  AOI221XLM U145 ( .A0(n63), .A1(n162), .B0(n6), .B1(n65), .C0(n59), .Y(n103)
         );
  OAI2B2X1M U146 ( .A1N(B[0]), .A0(n115), .B0(n108), .B1(n162), .Y(n114) );
  AOI221XLM U147 ( .A0(n33), .A1(n163), .B0(n5), .B1(n65), .C0(n59), .Y(n115)
         );
  INVX2M U148 ( .A(ALU_FUN[1]), .Y(n151) );
  INVX2M U149 ( .A(ALU_FUN[0]), .Y(n152) );
  NAND3X2M U150 ( .A(n123), .B(ALU_FUN[0]), .C(ALU_FUN[3]), .Y(n118) );
  AND2X2M U151 ( .A(ALU_FUN[2]), .B(n151), .Y(n116) );
  NAND2X2M U152 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n124) );
  NOR3X2M U153 ( .A(n148), .B(ALU_FUN[2]), .C(n151), .Y(n52) );
  NAND3X2M U154 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .C(n116), .Y(n108) );
  NOR2X2M U155 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n117) );
  NOR2X1M U156 ( .A(n156), .B(B[7]), .Y(n136) );
  NAND2BX1M U157 ( .AN(B[4]), .B(n9), .Y(n129) );
  NAND2BX1M U158 ( .AN(n9), .B(B[4]), .Y(n41) );
  CLKNAND2X2M U159 ( .A(n129), .B(n41), .Y(n131) );
  NOR2X1M U160 ( .A(n144), .B(n8), .Y(n126) );
  NOR2X1M U161 ( .A(n142), .B(n7), .Y(n40) );
  NOR2X1M U162 ( .A(n140), .B(n5), .Y(n37) );
  CLKNAND2X2M U163 ( .A(n7), .B(n142), .Y(n128) );
  NAND2BX1M U164 ( .AN(n40), .B(n128), .Y(n46) );
  AOI21X1M U165 ( .A0(n37), .A1(n162), .B0(B[1]), .Y(n38) );
  AOI211X1M U166 ( .A0(n6), .A1(n141), .B0(n46), .C0(n38), .Y(n39) );
  CLKNAND2X2M U167 ( .A(n8), .B(n144), .Y(n127) );
  OAI31X1M U168 ( .A0(n126), .A1(n40), .A2(n39), .B0(n127), .Y(n42) );
  NAND2BX1M U169 ( .AN(n27), .B(B[5]), .Y(n134) );
  OAI211X1M U170 ( .A0(n131), .A1(n42), .B0(n41), .C0(n134), .Y(n43) );
  NAND2BX1M U171 ( .AN(B[5]), .B(n27), .Y(n130) );
  XNOR2X1M U172 ( .A(n28), .B(n4), .Y(n133) );
  AOI32X1M U173 ( .A0(n43), .A1(n130), .A2(n133), .B0(n4), .B1(n157), .Y(n44)
         );
  CLKNAND2X2M U174 ( .A(B[7]), .B(n156), .Y(n137) );
  OAI21X1M U175 ( .A0(n136), .A1(n44), .B0(n137), .Y(N159) );
  CLKNAND2X2M U176 ( .A(n5), .B(n140), .Y(n47) );
  OA21X1M U177 ( .A0(n47), .A1(n162), .B0(B[1]), .Y(n45) );
  AOI211X1M U178 ( .A0(n47), .A1(n162), .B0(n46), .C0(n45), .Y(n125) );
  AOI31X1M U179 ( .A0(n143), .A1(n128), .A2(n127), .B0(n126), .Y(n132) );
  OAI2B11X1M U180 ( .A1N(n132), .A0(n131), .B0(n130), .C0(n129), .Y(n135) );
  AOI32X1M U181 ( .A0(n135), .A1(n134), .A2(n133), .B0(n28), .B1(n145), .Y(
        n138) );
  AOI2B1X1M U182 ( .A1N(n138), .A0(n137), .B0(n136), .Y(n139) );
  CLKINVX1M U183 ( .A(n139), .Y(N158) );
  NOR2X1M U184 ( .A(N159), .B(N158), .Y(N157) );
  DLY1X1M U186 ( .A(test_se), .Y(n167) );
  DLY1X1M U187 ( .A(n169), .Y(n168) );
  DLY1X1M U188 ( .A(test_se), .Y(n169) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 div_46 ( .a({n29, n28, n27, n9, n8, 
        n7, n6, n5}), .b({B[7], n4, B[5:0]}), .quotient({N108, N107, N106, 
        N105, N104, N103, N102, N101}), .remainder({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_40 ( .A({1'b0, n29, n28, n27, n9, 
        n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .DIFF({N84, 
        N83, N82, N81, N80, N79, N78, N77, N76}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 add_37 ( .A({1'b0, n29, n28, n27, n9, 
        n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), .SUM({N75, 
        N74, N73, N72, N71, N70, N69, N68, N67}) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_43 ( .A({n29, n28, n27, n9, n8, 
        n7, n6, n5}), .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({N100, N99, 
        N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85})
         );
endmodule


module reg_file_MEM_WIDTH8_MEM_DEPTH16_ADDR_WIDTH4_test_1 ( WrEn, RdEn, CLK, 
        RST, Address, WrData, RdData, RdData_valid, REG0, REG1, REG2, REG3, 
        test_si2, test_si1, test_so2, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, CLK, RST, test_si2, test_si1, test_se;
  output RdData_valid, test_so2, test_so1;
  wire   mem_15__6_, mem_15__5_, mem_15__4_, mem_15__3_, mem_15__2_,
         mem_15__1_, mem_15__0_, mem_14__7_, mem_14__6_, mem_14__5_,
         mem_14__4_, mem_14__3_, mem_14__2_, mem_14__1_, mem_14__0_,
         mem_13__7_, mem_13__6_, mem_13__5_, mem_13__4_, mem_13__3_,
         mem_13__2_, mem_13__1_, mem_13__0_, mem_12__7_, mem_12__6_,
         mem_12__5_, mem_12__4_, mem_12__3_, mem_12__2_, mem_12__1_,
         mem_12__0_, mem_11__7_, mem_11__6_, mem_11__5_, mem_11__4_,
         mem_11__3_, mem_11__2_, mem_11__1_, mem_11__0_, mem_10__7_,
         mem_10__6_, mem_10__5_, mem_10__4_, mem_10__3_, mem_10__2_,
         mem_10__1_, mem_10__0_, mem_9__7_, mem_9__6_, mem_9__5_, mem_9__4_,
         mem_9__3_, mem_9__2_, mem_9__1_, mem_9__0_, mem_8__7_, mem_8__6_,
         mem_8__5_, mem_8__4_, mem_8__3_, mem_8__2_, mem_8__1_, mem_8__0_,
         mem_7__7_, mem_7__6_, mem_7__5_, mem_7__4_, mem_7__3_, mem_7__2_,
         mem_7__1_, mem_7__0_, mem_6__7_, mem_6__6_, mem_6__5_, mem_6__4_,
         mem_6__3_, mem_6__2_, mem_6__1_, mem_6__0_, mem_5__7_, mem_5__6_,
         mem_5__5_, mem_5__4_, mem_5__3_, mem_5__2_, mem_5__1_, mem_5__0_,
         mem_4__7_, mem_4__6_, mem_4__5_, mem_4__4_, mem_4__3_, mem_4__2_,
         mem_4__1_, mem_4__0_, N35, N36, N37, N38, N39, N40, N41, N42, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371, n372, n373, n374, n375, n376, n377, n378, n379, n380, n381,
         n382, n383, n384, n385, n386, n387, n388, n389, n390, n391, n392,
         n393, n394, n395, n396, n397, n398, n399, n400, n401, n402, n403,
         n404, n405, n406, n407, n408, n409, n410, n411, n412, n413, n414,
         n415, n416, n417, n418, n419, n420, n421, n422, n423, n424, n425,
         n426, n427, n428, n429, n430, n431, n432, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n1;

  SDFFRQX2M RdData_reg_7_ ( .D(n186), .SI(RdData[6]), .SE(n481), .CK(CLK), 
        .RN(n440), .Q(RdData[7]) );
  SDFFRQX2M RdData_reg_6_ ( .D(n185), .SI(RdData[5]), .SE(n481), .CK(CLK), 
        .RN(n441), .Q(RdData[6]) );
  SDFFRQX2M RdData_reg_5_ ( .D(n184), .SI(RdData[4]), .SE(n491), .CK(CLK), 
        .RN(n440), .Q(RdData[5]) );
  SDFFRQX2M RdData_reg_4_ ( .D(n183), .SI(RdData[3]), .SE(n482), .CK(CLK), 
        .RN(n440), .Q(RdData[4]) );
  SDFFRQX2M RdData_reg_3_ ( .D(n182), .SI(RdData[2]), .SE(n483), .CK(CLK), 
        .RN(n440), .Q(RdData[3]) );
  SDFFRQX2M RdData_reg_2_ ( .D(n181), .SI(RdData[1]), .SE(n489), .CK(CLK), 
        .RN(n440), .Q(RdData[2]) );
  SDFFRQX2M RdData_reg_1_ ( .D(n180), .SI(RdData[0]), .SE(n490), .CK(CLK), 
        .RN(n440), .Q(RdData[1]) );
  SDFFRQX2M RdData_reg_0_ ( .D(n179), .SI(test_si1), .SE(n482), .CK(CLK), .RN(
        n440), .Q(RdData[0]) );
  SDFFRQX2M RdData_valid_reg ( .D(n178), .SI(RdData[7]), .SE(n483), .CK(CLK), 
        .RN(n445), .Q(RdData_valid) );
  SDFFRQX2M mem_reg_15__7_ ( .D(n314), .SI(mem_15__6_), .SE(n484), .CK(CLK), 
        .RN(n440), .Q(test_so2) );
  SDFFRQX2M mem_reg_15__6_ ( .D(n313), .SI(mem_15__5_), .SE(n485), .CK(CLK), 
        .RN(n450), .Q(mem_15__6_) );
  SDFFRQX2M mem_reg_15__5_ ( .D(n312), .SI(mem_15__4_), .SE(n486), .CK(CLK), 
        .RN(n450), .Q(mem_15__5_) );
  SDFFRQX2M mem_reg_15__4_ ( .D(n311), .SI(mem_15__3_), .SE(n480), .CK(CLK), 
        .RN(n450), .Q(mem_15__4_) );
  SDFFRQX2M mem_reg_15__3_ ( .D(n310), .SI(mem_15__2_), .SE(n491), .CK(CLK), 
        .RN(n450), .Q(mem_15__3_) );
  SDFFRQX2M mem_reg_15__2_ ( .D(n309), .SI(mem_15__1_), .SE(n484), .CK(CLK), 
        .RN(n450), .Q(mem_15__2_) );
  SDFFRQX2M mem_reg_15__1_ ( .D(n308), .SI(mem_15__0_), .SE(n485), .CK(CLK), 
        .RN(n450), .Q(mem_15__1_) );
  SDFFRQX2M mem_reg_15__0_ ( .D(n307), .SI(mem_14__7_), .SE(n486), .CK(CLK), 
        .RN(n450), .Q(mem_15__0_) );
  SDFFRQX2M mem_reg_13__7_ ( .D(n298), .SI(mem_13__6_), .SE(n489), .CK(CLK), 
        .RN(n449), .Q(mem_13__7_) );
  SDFFRQX2M mem_reg_13__6_ ( .D(n297), .SI(mem_13__5_), .SE(n490), .CK(CLK), 
        .RN(n449), .Q(mem_13__6_) );
  SDFFRQX2M mem_reg_13__5_ ( .D(n296), .SI(mem_13__4_), .SE(n479), .CK(CLK), 
        .RN(n449), .Q(mem_13__5_) );
  SDFFRQX2M mem_reg_13__4_ ( .D(n295), .SI(mem_13__3_), .SE(n479), .CK(CLK), 
        .RN(n449), .Q(mem_13__4_) );
  SDFFRQX2M mem_reg_13__3_ ( .D(n294), .SI(mem_13__2_), .SE(n479), .CK(CLK), 
        .RN(n449), .Q(mem_13__3_) );
  SDFFRQX2M mem_reg_13__2_ ( .D(n293), .SI(mem_13__1_), .SE(n479), .CK(CLK), 
        .RN(n448), .Q(mem_13__2_) );
  SDFFRQX2M mem_reg_13__1_ ( .D(n292), .SI(mem_13__0_), .SE(n479), .CK(CLK), 
        .RN(n448), .Q(mem_13__1_) );
  SDFFRQX2M mem_reg_13__0_ ( .D(n291), .SI(mem_12__7_), .SE(n487), .CK(CLK), 
        .RN(n448), .Q(mem_13__0_) );
  SDFFRQX2M mem_reg_11__7_ ( .D(n282), .SI(mem_11__6_), .SE(n488), .CK(CLK), 
        .RN(n448), .Q(mem_11__7_) );
  SDFFRQX2M mem_reg_11__6_ ( .D(n281), .SI(mem_11__5_), .SE(n492), .CK(CLK), 
        .RN(n448), .Q(mem_11__6_) );
  SDFFRQX2M mem_reg_11__5_ ( .D(n280), .SI(mem_11__4_), .SE(n479), .CK(CLK), 
        .RN(n447), .Q(mem_11__5_) );
  SDFFRQX2M mem_reg_11__4_ ( .D(n279), .SI(mem_11__3_), .SE(n491), .CK(CLK), 
        .RN(n447), .Q(mem_11__4_) );
  SDFFRQX2M mem_reg_11__3_ ( .D(n278), .SI(mem_11__2_), .SE(n489), .CK(CLK), 
        .RN(n447), .Q(mem_11__3_) );
  SDFFRQX2M mem_reg_11__2_ ( .D(n277), .SI(mem_11__1_), .SE(n490), .CK(CLK), 
        .RN(n447), .Q(mem_11__2_) );
  SDFFRQX2M mem_reg_11__1_ ( .D(n276), .SI(mem_11__0_), .SE(n480), .CK(CLK), 
        .RN(n447), .Q(mem_11__1_) );
  SDFFRQX2M mem_reg_11__0_ ( .D(n275), .SI(mem_10__7_), .SE(n482), .CK(CLK), 
        .RN(n447), .Q(mem_11__0_) );
  SDFFRQX2M mem_reg_9__7_ ( .D(n266), .SI(mem_9__6_), .SE(n483), .CK(CLK), 
        .RN(n446), .Q(mem_9__7_) );
  SDFFRQX2M mem_reg_9__6_ ( .D(n265), .SI(mem_9__5_), .SE(n484), .CK(CLK), 
        .RN(n446), .Q(mem_9__6_) );
  SDFFRQX2M mem_reg_9__5_ ( .D(n264), .SI(mem_9__4_), .SE(n485), .CK(CLK), 
        .RN(n446), .Q(mem_9__5_) );
  SDFFRQX2M mem_reg_9__4_ ( .D(n263), .SI(mem_9__3_), .SE(n486), .CK(CLK), 
        .RN(n446), .Q(mem_9__4_) );
  SDFFRQX2M mem_reg_9__3_ ( .D(n262), .SI(mem_9__2_), .SE(n487), .CK(CLK), 
        .RN(n446), .Q(mem_9__3_) );
  SDFFRQX2M mem_reg_9__2_ ( .D(n261), .SI(mem_9__1_), .SE(n488), .CK(CLK), 
        .RN(n446), .Q(mem_9__2_) );
  SDFFRQX2M mem_reg_9__1_ ( .D(n260), .SI(mem_9__0_), .SE(n492), .CK(CLK), 
        .RN(n446), .Q(mem_9__1_) );
  SDFFRQX2M mem_reg_9__0_ ( .D(n259), .SI(mem_8__7_), .SE(n480), .CK(CLK), 
        .RN(n446), .Q(mem_9__0_) );
  SDFFRQX2M mem_reg_7__7_ ( .D(n250), .SI(mem_7__6_), .SE(n491), .CK(CLK), 
        .RN(n445), .Q(mem_7__7_) );
  SDFFRQX2M mem_reg_7__6_ ( .D(n249), .SI(mem_7__5_), .SE(n482), .CK(CLK), 
        .RN(n445), .Q(mem_7__6_) );
  SDFFRQX2M mem_reg_7__5_ ( .D(n248), .SI(mem_7__4_), .SE(n483), .CK(CLK), 
        .RN(n445), .Q(mem_7__5_) );
  SDFFRQX2M mem_reg_7__4_ ( .D(n247), .SI(mem_7__3_), .SE(n484), .CK(CLK), 
        .RN(n445), .Q(mem_7__4_) );
  SDFFRQX2M mem_reg_7__3_ ( .D(n246), .SI(mem_7__2_), .SE(n485), .CK(CLK), 
        .RN(n445), .Q(mem_7__3_) );
  SDFFRQX2M mem_reg_7__2_ ( .D(n245), .SI(mem_7__1_), .SE(n486), .CK(CLK), 
        .RN(n445), .Q(mem_7__2_) );
  SDFFRQX2M mem_reg_7__1_ ( .D(n244), .SI(mem_7__0_), .SE(n489), .CK(CLK), 
        .RN(n445), .Q(mem_7__1_) );
  SDFFRQX2M mem_reg_7__0_ ( .D(n243), .SI(mem_6__7_), .SE(n490), .CK(CLK), 
        .RN(n445), .Q(mem_7__0_) );
  SDFFRQX2M mem_reg_5__7_ ( .D(n234), .SI(mem_5__6_), .SE(n487), .CK(CLK), 
        .RN(n444), .Q(mem_5__7_) );
  SDFFRQX2M mem_reg_5__6_ ( .D(n233), .SI(mem_5__5_), .SE(n488), .CK(CLK), 
        .RN(n444), .Q(mem_5__6_) );
  SDFFRQX2M mem_reg_5__5_ ( .D(n232), .SI(mem_5__4_), .SE(n492), .CK(CLK), 
        .RN(n444), .Q(mem_5__5_) );
  SDFFRQX2M mem_reg_5__4_ ( .D(n231), .SI(mem_5__3_), .SE(n491), .CK(CLK), 
        .RN(n444), .Q(mem_5__4_) );
  SDFFRQX2M mem_reg_5__3_ ( .D(n230), .SI(mem_5__2_), .SE(n489), .CK(CLK), 
        .RN(n444), .Q(mem_5__3_) );
  SDFFRQX2M mem_reg_5__2_ ( .D(n229), .SI(mem_5__1_), .SE(n490), .CK(CLK), 
        .RN(n443), .Q(mem_5__2_) );
  SDFFRQX2M mem_reg_5__1_ ( .D(n228), .SI(mem_5__0_), .SE(n480), .CK(CLK), 
        .RN(n443), .Q(mem_5__1_) );
  SDFFRQX2M mem_reg_5__0_ ( .D(n227), .SI(mem_4__7_), .SE(n482), .CK(CLK), 
        .RN(n443), .Q(mem_5__0_) );
  SDFFRQX2M mem_reg_14__7_ ( .D(n306), .SI(mem_14__6_), .SE(n483), .CK(CLK), 
        .RN(n449), .Q(mem_14__7_) );
  SDFFRQX2M mem_reg_14__6_ ( .D(n305), .SI(mem_14__5_), .SE(n484), .CK(CLK), 
        .RN(n449), .Q(mem_14__6_) );
  SDFFRQX2M mem_reg_14__5_ ( .D(n304), .SI(mem_14__4_), .SE(n485), .CK(CLK), 
        .RN(n449), .Q(mem_14__5_) );
  SDFFRQX2M mem_reg_14__4_ ( .D(n303), .SI(mem_14__3_), .SE(n486), .CK(CLK), 
        .RN(n449), .Q(mem_14__4_) );
  SDFFRQX2M mem_reg_14__3_ ( .D(n302), .SI(mem_14__2_), .SE(n487), .CK(CLK), 
        .RN(n449), .Q(mem_14__3_) );
  SDFFRQX2M mem_reg_14__2_ ( .D(n301), .SI(mem_14__1_), .SE(n488), .CK(CLK), 
        .RN(n449), .Q(mem_14__2_) );
  SDFFRQX2M mem_reg_14__1_ ( .D(n300), .SI(mem_14__0_), .SE(n492), .CK(CLK), 
        .RN(n449), .Q(mem_14__1_) );
  SDFFRQX2M mem_reg_14__0_ ( .D(n299), .SI(mem_13__7_), .SE(n491), .CK(CLK), 
        .RN(n449), .Q(mem_14__0_) );
  SDFFRQX2M mem_reg_12__7_ ( .D(n290), .SI(mem_12__6_), .SE(n489), .CK(CLK), 
        .RN(n448), .Q(mem_12__7_) );
  SDFFRQX2M mem_reg_12__6_ ( .D(n289), .SI(mem_12__5_), .SE(n490), .CK(CLK), 
        .RN(n448), .Q(mem_12__6_) );
  SDFFRQX2M mem_reg_12__5_ ( .D(n288), .SI(mem_12__4_), .SE(n480), .CK(CLK), 
        .RN(n448), .Q(mem_12__5_) );
  SDFFRQX2M mem_reg_12__4_ ( .D(n287), .SI(mem_12__3_), .SE(n482), .CK(CLK), 
        .RN(n448), .Q(mem_12__4_) );
  SDFFRQX2M mem_reg_12__3_ ( .D(n286), .SI(mem_12__2_), .SE(n483), .CK(CLK), 
        .RN(n448), .Q(mem_12__3_) );
  SDFFRQX2M mem_reg_12__2_ ( .D(n285), .SI(mem_12__1_), .SE(n484), .CK(CLK), 
        .RN(n448), .Q(mem_12__2_) );
  SDFFRQX2M mem_reg_12__1_ ( .D(n284), .SI(mem_12__0_), .SE(n485), .CK(CLK), 
        .RN(n448), .Q(mem_12__1_) );
  SDFFRQX2M mem_reg_12__0_ ( .D(n283), .SI(mem_11__7_), .SE(n486), .CK(CLK), 
        .RN(n448), .Q(mem_12__0_) );
  SDFFRQX2M mem_reg_10__7_ ( .D(n274), .SI(mem_10__6_), .SE(n487), .CK(CLK), 
        .RN(n447), .Q(mem_10__7_) );
  SDFFRQX2M mem_reg_10__6_ ( .D(n273), .SI(mem_10__5_), .SE(n488), .CK(CLK), 
        .RN(n447), .Q(mem_10__6_) );
  SDFFRQX2M mem_reg_10__5_ ( .D(n272), .SI(mem_10__4_), .SE(n492), .CK(CLK), 
        .RN(n447), .Q(mem_10__5_) );
  SDFFRQX2M mem_reg_10__4_ ( .D(n271), .SI(mem_10__3_), .SE(n491), .CK(CLK), 
        .RN(n447), .Q(mem_10__4_) );
  SDFFRQX2M mem_reg_10__3_ ( .D(n270), .SI(mem_10__2_), .SE(n482), .CK(CLK), 
        .RN(n447), .Q(mem_10__3_) );
  SDFFRQX2M mem_reg_10__2_ ( .D(n269), .SI(mem_10__1_), .SE(n483), .CK(CLK), 
        .RN(n447), .Q(mem_10__2_) );
  SDFFRQX2M mem_reg_10__1_ ( .D(n268), .SI(mem_10__0_), .SE(n484), .CK(CLK), 
        .RN(n447), .Q(mem_10__1_) );
  SDFFRQX2M mem_reg_10__0_ ( .D(n267), .SI(mem_9__7_), .SE(n485), .CK(CLK), 
        .RN(n446), .Q(mem_10__0_) );
  SDFFRQX2M mem_reg_8__7_ ( .D(n258), .SI(mem_8__6_), .SE(n486), .CK(CLK), 
        .RN(n446), .Q(mem_8__7_) );
  SDFFRQX2M mem_reg_8__6_ ( .D(n257), .SI(mem_8__5_), .SE(n489), .CK(CLK), 
        .RN(n446), .Q(mem_8__6_) );
  SDFFRQX2M mem_reg_8__5_ ( .D(n256), .SI(mem_8__4_), .SE(n490), .CK(CLK), 
        .RN(n446), .Q(mem_8__5_) );
  SDFFRQX2M mem_reg_8__4_ ( .D(n255), .SI(mem_8__3_), .SE(n480), .CK(CLK), 
        .RN(n446), .Q(mem_8__4_) );
  SDFFRQX2M mem_reg_8__3_ ( .D(n254), .SI(test_si2), .SE(n477), .CK(CLK), .RN(
        n445), .Q(mem_8__3_) );
  SDFFRQX2M mem_reg_8__1_ ( .D(n252), .SI(mem_8__0_), .SE(n473), .CK(CLK), 
        .RN(n445), .Q(mem_8__1_) );
  SDFFRQX2M mem_reg_8__0_ ( .D(n251), .SI(mem_7__7_), .SE(n474), .CK(CLK), 
        .RN(n445), .Q(mem_8__0_) );
  SDFFRQX2M mem_reg_6__7_ ( .D(n242), .SI(mem_6__6_), .SE(n472), .CK(CLK), 
        .RN(n444), .Q(mem_6__7_) );
  SDFFRQX2M mem_reg_6__6_ ( .D(n241), .SI(mem_6__5_), .SE(n472), .CK(CLK), 
        .RN(n444), .Q(mem_6__6_) );
  SDFFRQX2M mem_reg_6__5_ ( .D(n240), .SI(mem_6__4_), .SE(n475), .CK(CLK), 
        .RN(n444), .Q(mem_6__5_) );
  SDFFRQX2M mem_reg_6__4_ ( .D(n239), .SI(mem_6__3_), .SE(n476), .CK(CLK), 
        .RN(n444), .Q(mem_6__4_) );
  SDFFRQX2M mem_reg_6__3_ ( .D(n238), .SI(mem_6__2_), .SE(n468), .CK(CLK), 
        .RN(n444), .Q(mem_6__3_) );
  SDFFRQX2M mem_reg_6__2_ ( .D(n237), .SI(mem_6__1_), .SE(n477), .CK(CLK), 
        .RN(n444), .Q(mem_6__2_) );
  SDFFRQX2M mem_reg_6__1_ ( .D(n236), .SI(mem_6__0_), .SE(n468), .CK(CLK), 
        .RN(n444), .Q(mem_6__1_) );
  SDFFRQX2M mem_reg_6__0_ ( .D(n235), .SI(mem_5__7_), .SE(n472), .CK(CLK), 
        .RN(n444), .Q(mem_6__0_) );
  SDFFRQX2M mem_reg_4__7_ ( .D(n226), .SI(mem_4__6_), .SE(n473), .CK(CLK), 
        .RN(n443), .Q(mem_4__7_) );
  SDFFRQX2M mem_reg_4__6_ ( .D(n225), .SI(mem_4__5_), .SE(n476), .CK(CLK), 
        .RN(n443), .Q(mem_4__6_) );
  SDFFRQX2M mem_reg_4__5_ ( .D(n224), .SI(mem_4__4_), .SE(n474), .CK(CLK), 
        .RN(n443), .Q(mem_4__5_) );
  SDFFRQX2M mem_reg_4__4_ ( .D(n223), .SI(mem_4__3_), .SE(n473), .CK(CLK), 
        .RN(n443), .Q(mem_4__4_) );
  SDFFRQX2M mem_reg_4__3_ ( .D(n222), .SI(mem_4__2_), .SE(n475), .CK(CLK), 
        .RN(n443), .Q(mem_4__3_) );
  SDFFRQX2M mem_reg_4__2_ ( .D(n221), .SI(mem_4__1_), .SE(n473), .CK(CLK), 
        .RN(n443), .Q(mem_4__2_) );
  SDFFRQX2M mem_reg_4__1_ ( .D(n220), .SI(mem_4__0_), .SE(n477), .CK(CLK), 
        .RN(n443), .Q(mem_4__1_) );
  SDFFRQX2M mem_reg_4__0_ ( .D(n219), .SI(REG3[7]), .SE(n474), .CK(CLK), .RN(
        n443), .Q(mem_4__0_) );
  SDFFSQX2M mem_reg_2__0_ ( .D(n203), .SI(REG1[7]), .SE(n487), .CK(CLK), .SN(
        n440), .Q(REG2[0]) );
  SDFFRQX2M mem_reg_2__1_ ( .D(n204), .SI(REG2[0]), .SE(n473), .CK(CLK), .RN(
        n442), .Q(REG2[1]) );
  SDFFRQX2M mem_reg_3__0_ ( .D(n211), .SI(REG2[7]), .SE(n472), .CK(CLK), .RN(
        n442), .Q(REG3[0]) );
  SDFFRQX2M mem_reg_3__7_ ( .D(n218), .SI(REG3[6]), .SE(n475), .CK(CLK), .RN(
        n443), .Q(REG3[7]) );
  SDFFRQX2M mem_reg_3__6_ ( .D(n217), .SI(REG3[5]), .SE(n468), .CK(CLK), .RN(
        n443), .Q(REG3[6]) );
  SDFFSQX2M mem_reg_3__5_ ( .D(n216), .SI(REG3[4]), .SE(n488), .CK(CLK), .SN(
        n440), .Q(REG3[5]) );
  SDFFRQX2M mem_reg_3__4_ ( .D(n215), .SI(REG3[3]), .SE(n468), .CK(CLK), .RN(
        n442), .Q(REG3[4]) );
  SDFFRQX2M mem_reg_3__2_ ( .D(n213), .SI(REG3[1]), .SE(n477), .CK(CLK), .RN(
        n442), .Q(REG3[2]) );
  SDFFRQX2M mem_reg_3__3_ ( .D(n214), .SI(REG3[2]), .SE(n472), .CK(CLK), .RN(
        n442), .Q(REG3[3]) );
  SDFFRQX2M mem_reg_3__1_ ( .D(n212), .SI(REG3[0]), .SE(n474), .CK(CLK), .RN(
        n442), .Q(REG3[1]) );
  SDFFRQX2M mem_reg_0__1_ ( .D(n188), .SI(REG0[0]), .SE(n476), .CK(CLK), .RN(
        n440), .Q(REG0[1]) );
  SDFFRQX2M mem_reg_0__0_ ( .D(n187), .SI(RdData_valid), .SE(n475), .CK(CLK), 
        .RN(n440), .Q(REG0[0]) );
  SDFFRQX2M mem_reg_2__4_ ( .D(n207), .SI(n493), .SE(n477), .CK(CLK), .RN(n442), .Q(REG2[4]) );
  SDFFRQX2M mem_reg_0__2_ ( .D(n189), .SI(REG0[1]), .SE(n474), .CK(CLK), .RN(
        n441), .Q(REG0[2]) );
  SDFFRQX2M mem_reg_0__3_ ( .D(n190), .SI(REG0[2]), .SE(n476), .CK(CLK), .RN(
        n441), .Q(REG0[3]) );
  SDFFRQX2M mem_reg_0__4_ ( .D(n191), .SI(REG0[3]), .SE(n469), .CK(CLK), .RN(
        n441), .Q(REG0[4]) );
  SDFFRQX2M mem_reg_0__5_ ( .D(n192), .SI(REG0[4]), .SE(n470), .CK(CLK), .RN(
        n441), .Q(REG0[5]) );
  SDFFRQX2M mem_reg_0__6_ ( .D(n193), .SI(REG0[5]), .SE(n471), .CK(CLK), .RN(
        n441), .Q(REG0[6]) );
  SDFFRQX2M mem_reg_0__7_ ( .D(n194), .SI(REG0[6]), .SE(n469), .CK(CLK), .RN(
        n441), .Q(REG0[7]) );
  SDFFRQX2M mem_reg_1__6_ ( .D(n201), .SI(REG1[5]), .SE(n470), .CK(CLK), .RN(
        n442), .Q(REG1[6]) );
  SDFFSQX2M mem_reg_2__7_ ( .D(n210), .SI(n494), .SE(n492), .CK(CLK), .SN(n440), .Q(REG2[7]) );
  SDFFRQX2M mem_reg_2__5_ ( .D(n208), .SI(REG2[4]), .SE(n471), .CK(CLK), .RN(
        n442), .Q(REG2[5]) );
  SDFFRQX2M mem_reg_2__6_ ( .D(n209), .SI(REG2[5]), .SE(n469), .CK(CLK), .RN(
        n442), .Q(REG2[6]) );
  SDFFRQX2M mem_reg_2__2_ ( .D(n205), .SI(REG2[1]), .SE(n470), .CK(CLK), .RN(
        n442), .Q(REG2[2]) );
  SDFFRQX2M mem_reg_1__2_ ( .D(n197), .SI(REG1[1]), .SE(test_se), .CK(CLK), 
        .RN(n441), .Q(REG1[2]) );
  SDFFRQX2M mem_reg_1__1_ ( .D(n196), .SI(REG1[0]), .SE(test_se), .CK(CLK), 
        .RN(n441), .Q(REG1[1]) );
  SDFFRQX2M mem_reg_1__0_ ( .D(n195), .SI(REG0[7]), .SE(test_se), .CK(CLK), 
        .RN(n441), .Q(REG1[0]) );
  SDFFRQX2M mem_reg_1__3_ ( .D(n198), .SI(REG1[2]), .SE(test_se), .CK(CLK), 
        .RN(n441), .Q(REG1[3]) );
  SDFFRQX2M mem_reg_1__5_ ( .D(n200), .SI(REG1[4]), .SE(n480), .CK(CLK), .RN(
        n442), .Q(REG1[5]) );
  SDFFRQX2M mem_reg_1__4_ ( .D(n199), .SI(REG1[3]), .SE(n481), .CK(CLK), .RN(
        n441), .Q(REG1[4]) );
  SDFFRQX2M mem_reg_1__7_ ( .D(n202), .SI(REG1[6]), .SE(n481), .CK(CLK), .RN(
        n441), .Q(REG1[7]) );
  SDFFRQX2M mem_reg_2__3_ ( .D(n206), .SI(REG2[2]), .SE(test_se), .CK(CLK), 
        .RN(n442), .Q(REG2[3]) );
  NAND2X2M U141 ( .A(Address[3]), .B(Address[2]), .Y(n391) );
  NOR2X2M U142 ( .A(n409), .B(Address[2]), .Y(n158) );
  NOR2X2M U143 ( .A(Address[1]), .B(Address[2]), .Y(n153) );
  NAND2X2M U144 ( .A(RdEn), .B(n456), .Y(n151) );
  INVX4M U145 ( .A(WrData[0]), .Y(n464) );
  INVX4M U146 ( .A(WrData[1]), .Y(n463) );
  INVX4M U147 ( .A(WrData[2]), .Y(n462) );
  INVX4M U148 ( .A(WrData[3]), .Y(n461) );
  INVX4M U149 ( .A(WrData[4]), .Y(n460) );
  INVX4M U150 ( .A(WrData[5]), .Y(n459) );
  INVX4M U151 ( .A(WrData[6]), .Y(n458) );
  INVX4M U152 ( .A(WrData[7]), .Y(n457) );
  BUFX4M U153 ( .A(n453), .Y(n441) );
  BUFX4M U154 ( .A(n451), .Y(n442) );
  BUFX4M U155 ( .A(n453), .Y(n443) );
  BUFX4M U156 ( .A(n454), .Y(n444) );
  BUFX4M U157 ( .A(n451), .Y(n445) );
  BUFX4M U158 ( .A(n451), .Y(n446) );
  BUFX4M U159 ( .A(n454), .Y(n447) );
  BUFX4M U160 ( .A(n452), .Y(n448) );
  BUFX4M U161 ( .A(n452), .Y(n449) );
  BUFX2M U162 ( .A(n454), .Y(n450) );
  BUFX2M U163 ( .A(n397), .Y(n414) );
  BUFX2M U164 ( .A(n397), .Y(n413) );
  BUFX2M U165 ( .A(n397), .Y(n412) );
  BUFX2M U166 ( .A(n155), .Y(n438) );
  BUFX2M U167 ( .A(n167), .Y(n431) );
  BUFX2M U168 ( .A(n169), .Y(n430) );
  BUFX2M U169 ( .A(n171), .Y(n429) );
  BUFX2M U170 ( .A(n172), .Y(n428) );
  BUFX2M U171 ( .A(n157), .Y(n437) );
  BUFX2M U172 ( .A(n159), .Y(n436) );
  BUFX2M U173 ( .A(n160), .Y(n435) );
  BUFX2M U174 ( .A(n162), .Y(n434) );
  BUFX2M U175 ( .A(n163), .Y(n433) );
  BUFX2M U176 ( .A(n166), .Y(n432) );
  BUFX2M U177 ( .A(n173), .Y(n427) );
  BUFX2M U178 ( .A(n174), .Y(n426) );
  BUFX2M U179 ( .A(n175), .Y(n425) );
  BUFX2M U180 ( .A(n177), .Y(n424) );
  BUFX2M U181 ( .A(n152), .Y(n439) );
  BUFX4M U182 ( .A(n452), .Y(n440) );
  BUFX2M U183 ( .A(n453), .Y(n452) );
  BUFX2M U184 ( .A(n454), .Y(n451) );
  BUFX2M U185 ( .A(n398), .Y(n417) );
  BUFX2M U186 ( .A(n400), .Y(n423) );
  BUFX2M U187 ( .A(n398), .Y(n416) );
  BUFX2M U188 ( .A(n400), .Y(n422) );
  BUFX2M U189 ( .A(n399), .Y(n420) );
  BUFX2M U190 ( .A(n399), .Y(n419) );
  BUFX2M U191 ( .A(n398), .Y(n415) );
  BUFX2M U192 ( .A(n400), .Y(n421) );
  BUFX2M U193 ( .A(n399), .Y(n418) );
  NAND2X2M U194 ( .A(n153), .B(n154), .Y(n152) );
  NAND2X2M U195 ( .A(n158), .B(n154), .Y(n157) );
  NAND2X2M U196 ( .A(n158), .B(n156), .Y(n159) );
  AND2X2M U197 ( .A(n165), .B(n408), .Y(n154) );
  AND2X2M U198 ( .A(n176), .B(n408), .Y(n168) );
  NAND2X2M U199 ( .A(n156), .B(n153), .Y(n155) );
  NAND2X2M U200 ( .A(n168), .B(n153), .Y(n167) );
  NAND2X2M U201 ( .A(n170), .B(n153), .Y(n169) );
  NAND2X2M U202 ( .A(n168), .B(n158), .Y(n171) );
  NAND2X2M U203 ( .A(n170), .B(n158), .Y(n172) );
  NAND2X2M U204 ( .A(n161), .B(n156), .Y(n162) );
  NAND2X2M U205 ( .A(n164), .B(n156), .Y(n166) );
  NAND2X2M U206 ( .A(n161), .B(n154), .Y(n160) );
  NAND2X2M U207 ( .A(n164), .B(n154), .Y(n163) );
  NAND2X2M U208 ( .A(n168), .B(n164), .Y(n175) );
  NAND2X2M U209 ( .A(n170), .B(n164), .Y(n177) );
  NAND2X2M U210 ( .A(n168), .B(n161), .Y(n173) );
  NAND2X2M U211 ( .A(n170), .B(n161), .Y(n174) );
  INVX2M U212 ( .A(n151), .Y(n455) );
  BUFX2M U213 ( .A(RST), .Y(n454) );
  BUFX2M U214 ( .A(RST), .Y(n453) );
  AO22X1M U215 ( .A0(N41), .A1(n455), .B0(RdData[1]), .B1(n151), .Y(n180) );
  INVX2M U216 ( .A(Address[2]), .Y(n410) );
  INVX2M U217 ( .A(Address[0]), .Y(n408) );
  INVX2M U218 ( .A(Address[1]), .Y(n409) );
  INVX2M U219 ( .A(Address[3]), .Y(n411) );
  AO22X1M U220 ( .A0(N42), .A1(n455), .B0(RdData[0]), .B1(n151), .Y(n179) );
  AO22X1M U221 ( .A0(N40), .A1(n455), .B0(RdData[2]), .B1(n151), .Y(n181) );
  AO22X1M U222 ( .A0(N39), .A1(n455), .B0(RdData[3]), .B1(n151), .Y(n182) );
  AO22X1M U223 ( .A0(N38), .A1(n455), .B0(RdData[4]), .B1(n151), .Y(n183) );
  AO22X1M U224 ( .A0(N37), .A1(n455), .B0(RdData[5]), .B1(n151), .Y(n184) );
  AO22X1M U225 ( .A0(N36), .A1(n455), .B0(RdData[6]), .B1(n151), .Y(n185) );
  AO22X1M U226 ( .A0(N35), .A1(n455), .B0(RdData[7]), .B1(n151), .Y(n186) );
  NOR2X2M U227 ( .A(n456), .B(RdEn), .Y(n150) );
  NOR2BX2M U228 ( .AN(n150), .B(Address[3]), .Y(n165) );
  OAI2BB2X1M U229 ( .B0(n464), .B1(n438), .A0N(REG1[0]), .A1N(n438), .Y(n195)
         );
  OAI2BB2X1M U230 ( .B0(n463), .B1(n438), .A0N(REG1[1]), .A1N(n438), .Y(n196)
         );
  OAI2BB2X1M U231 ( .B0(n462), .B1(n438), .A0N(REG1[2]), .A1N(n438), .Y(n197)
         );
  OAI2BB2X1M U232 ( .B0(n461), .B1(n155), .A0N(REG1[3]), .A1N(n438), .Y(n198)
         );
  OAI2BB2X1M U233 ( .B0(n460), .B1(n155), .A0N(REG1[4]), .A1N(n438), .Y(n199)
         );
  OAI2BB2X1M U234 ( .B0(n459), .B1(n155), .A0N(REG1[5]), .A1N(n438), .Y(n200)
         );
  OAI2BB2X1M U235 ( .B0(n458), .B1(n155), .A0N(REG1[6]), .A1N(n438), .Y(n201)
         );
  OAI2BB2X1M U236 ( .B0(n457), .B1(n155), .A0N(REG1[7]), .A1N(n438), .Y(n202)
         );
  OAI2BB2X1M U237 ( .B0(n463), .B1(n437), .A0N(REG2[1]), .A1N(n437), .Y(n204)
         );
  OAI2BB2X1M U238 ( .B0(n462), .B1(n157), .A0N(REG2[2]), .A1N(n437), .Y(n205)
         );
  OAI2BB2X1M U239 ( .B0(n461), .B1(n157), .A0N(n493), .A1N(n437), .Y(n206) );
  OAI2BB2X1M U240 ( .B0(n460), .B1(n157), .A0N(REG2[4]), .A1N(n437), .Y(n207)
         );
  OAI2BB2X1M U241 ( .B0(n459), .B1(n157), .A0N(REG2[5]), .A1N(n437), .Y(n208)
         );
  OAI2BB2X1M U242 ( .B0(n458), .B1(n157), .A0N(n494), .A1N(n437), .Y(n209) );
  OAI2BB2X1M U243 ( .B0(n464), .B1(n436), .A0N(REG3[0]), .A1N(n436), .Y(n211)
         );
  OAI2BB2X1M U244 ( .B0(n463), .B1(n436), .A0N(REG3[1]), .A1N(n436), .Y(n212)
         );
  OAI2BB2X1M U245 ( .B0(n462), .B1(n159), .A0N(REG3[2]), .A1N(n436), .Y(n213)
         );
  OAI2BB2X1M U246 ( .B0(n461), .B1(n159), .A0N(REG3[3]), .A1N(n436), .Y(n214)
         );
  OAI2BB2X1M U247 ( .B0(n460), .B1(n159), .A0N(REG3[4]), .A1N(n436), .Y(n215)
         );
  OAI2BB2X1M U248 ( .B0(n458), .B1(n159), .A0N(REG3[6]), .A1N(n436), .Y(n217)
         );
  OAI2BB2X1M U249 ( .B0(n457), .B1(n159), .A0N(REG3[7]), .A1N(n436), .Y(n218)
         );
  OAI2BB2X1M U250 ( .B0(n464), .B1(n435), .A0N(mem_4__0_), .A1N(n435), .Y(n219) );
  OAI2BB2X1M U251 ( .B0(n463), .B1(n435), .A0N(mem_4__1_), .A1N(n435), .Y(n220) );
  OAI2BB2X1M U252 ( .B0(n462), .B1(n435), .A0N(mem_4__2_), .A1N(n435), .Y(n221) );
  OAI2BB2X1M U253 ( .B0(n461), .B1(n160), .A0N(mem_4__3_), .A1N(n435), .Y(n222) );
  OAI2BB2X1M U254 ( .B0(n460), .B1(n160), .A0N(mem_4__4_), .A1N(n435), .Y(n223) );
  OAI2BB2X1M U255 ( .B0(n459), .B1(n160), .A0N(mem_4__5_), .A1N(n435), .Y(n224) );
  OAI2BB2X1M U256 ( .B0(n458), .B1(n160), .A0N(mem_4__6_), .A1N(n435), .Y(n225) );
  OAI2BB2X1M U257 ( .B0(n457), .B1(n160), .A0N(mem_4__7_), .A1N(n435), .Y(n226) );
  OAI2BB2X1M U258 ( .B0(n464), .B1(n434), .A0N(mem_5__0_), .A1N(n434), .Y(n227) );
  OAI2BB2X1M U259 ( .B0(n463), .B1(n434), .A0N(mem_5__1_), .A1N(n434), .Y(n228) );
  OAI2BB2X1M U260 ( .B0(n462), .B1(n434), .A0N(mem_5__2_), .A1N(n434), .Y(n229) );
  OAI2BB2X1M U261 ( .B0(n461), .B1(n162), .A0N(mem_5__3_), .A1N(n434), .Y(n230) );
  OAI2BB2X1M U262 ( .B0(n460), .B1(n162), .A0N(mem_5__4_), .A1N(n434), .Y(n231) );
  OAI2BB2X1M U263 ( .B0(n459), .B1(n162), .A0N(mem_5__5_), .A1N(n434), .Y(n232) );
  OAI2BB2X1M U264 ( .B0(n458), .B1(n162), .A0N(mem_5__6_), .A1N(n434), .Y(n233) );
  OAI2BB2X1M U265 ( .B0(n457), .B1(n162), .A0N(mem_5__7_), .A1N(n434), .Y(n234) );
  OAI2BB2X1M U266 ( .B0(n464), .B1(n433), .A0N(mem_6__0_), .A1N(n433), .Y(n235) );
  OAI2BB2X1M U267 ( .B0(n463), .B1(n433), .A0N(mem_6__1_), .A1N(n433), .Y(n236) );
  OAI2BB2X1M U268 ( .B0(n462), .B1(n433), .A0N(mem_6__2_), .A1N(n433), .Y(n237) );
  OAI2BB2X1M U269 ( .B0(n461), .B1(n163), .A0N(mem_6__3_), .A1N(n433), .Y(n238) );
  OAI2BB2X1M U270 ( .B0(n460), .B1(n163), .A0N(mem_6__4_), .A1N(n433), .Y(n239) );
  OAI2BB2X1M U271 ( .B0(n459), .B1(n163), .A0N(mem_6__5_), .A1N(n433), .Y(n240) );
  OAI2BB2X1M U272 ( .B0(n458), .B1(n163), .A0N(mem_6__6_), .A1N(n433), .Y(n241) );
  OAI2BB2X1M U273 ( .B0(n457), .B1(n163), .A0N(mem_6__7_), .A1N(n433), .Y(n242) );
  OAI2BB2X1M U274 ( .B0(n464), .B1(n432), .A0N(mem_7__0_), .A1N(n432), .Y(n243) );
  OAI2BB2X1M U275 ( .B0(n463), .B1(n432), .A0N(mem_7__1_), .A1N(n432), .Y(n244) );
  OAI2BB2X1M U276 ( .B0(n462), .B1(n432), .A0N(mem_7__2_), .A1N(n432), .Y(n245) );
  OAI2BB2X1M U277 ( .B0(n461), .B1(n166), .A0N(mem_7__3_), .A1N(n432), .Y(n246) );
  OAI2BB2X1M U278 ( .B0(n460), .B1(n166), .A0N(mem_7__4_), .A1N(n432), .Y(n247) );
  OAI2BB2X1M U279 ( .B0(n459), .B1(n166), .A0N(mem_7__5_), .A1N(n432), .Y(n248) );
  OAI2BB2X1M U280 ( .B0(n458), .B1(n166), .A0N(mem_7__6_), .A1N(n432), .Y(n249) );
  OAI2BB2X1M U281 ( .B0(n457), .B1(n166), .A0N(mem_7__7_), .A1N(n432), .Y(n250) );
  OAI2BB2X1M U282 ( .B0(n464), .B1(n431), .A0N(mem_8__0_), .A1N(n431), .Y(n251) );
  OAI2BB2X1M U283 ( .B0(n463), .B1(n431), .A0N(mem_8__1_), .A1N(n431), .Y(n252) );
  OAI2BB2X1M U284 ( .B0(n462), .B1(n431), .A0N(n497), .A1N(n431), .Y(n253) );
  OAI2BB2X1M U285 ( .B0(n461), .B1(n167), .A0N(mem_8__3_), .A1N(n431), .Y(n254) );
  OAI2BB2X1M U286 ( .B0(n460), .B1(n167), .A0N(mem_8__4_), .A1N(n431), .Y(n255) );
  OAI2BB2X1M U287 ( .B0(n459), .B1(n167), .A0N(mem_8__5_), .A1N(n431), .Y(n256) );
  OAI2BB2X1M U288 ( .B0(n458), .B1(n167), .A0N(mem_8__6_), .A1N(n431), .Y(n257) );
  OAI2BB2X1M U289 ( .B0(n457), .B1(n167), .A0N(mem_8__7_), .A1N(n431), .Y(n258) );
  OAI2BB2X1M U290 ( .B0(n464), .B1(n430), .A0N(mem_9__0_), .A1N(n430), .Y(n259) );
  OAI2BB2X1M U291 ( .B0(n463), .B1(n430), .A0N(mem_9__1_), .A1N(n430), .Y(n260) );
  OAI2BB2X1M U292 ( .B0(n462), .B1(n430), .A0N(mem_9__2_), .A1N(n430), .Y(n261) );
  OAI2BB2X1M U293 ( .B0(n461), .B1(n169), .A0N(mem_9__3_), .A1N(n430), .Y(n262) );
  OAI2BB2X1M U294 ( .B0(n460), .B1(n169), .A0N(mem_9__4_), .A1N(n430), .Y(n263) );
  OAI2BB2X1M U295 ( .B0(n459), .B1(n169), .A0N(mem_9__5_), .A1N(n430), .Y(n264) );
  OAI2BB2X1M U296 ( .B0(n458), .B1(n169), .A0N(mem_9__6_), .A1N(n430), .Y(n265) );
  OAI2BB2X1M U297 ( .B0(n457), .B1(n169), .A0N(mem_9__7_), .A1N(n430), .Y(n266) );
  OAI2BB2X1M U298 ( .B0(n464), .B1(n429), .A0N(mem_10__0_), .A1N(n429), .Y(
        n267) );
  OAI2BB2X1M U299 ( .B0(n463), .B1(n429), .A0N(mem_10__1_), .A1N(n429), .Y(
        n268) );
  OAI2BB2X1M U300 ( .B0(n462), .B1(n429), .A0N(mem_10__2_), .A1N(n429), .Y(
        n269) );
  OAI2BB2X1M U301 ( .B0(n461), .B1(n171), .A0N(mem_10__3_), .A1N(n429), .Y(
        n270) );
  OAI2BB2X1M U302 ( .B0(n460), .B1(n171), .A0N(mem_10__4_), .A1N(n429), .Y(
        n271) );
  OAI2BB2X1M U303 ( .B0(n459), .B1(n171), .A0N(mem_10__5_), .A1N(n429), .Y(
        n272) );
  OAI2BB2X1M U304 ( .B0(n458), .B1(n171), .A0N(mem_10__6_), .A1N(n429), .Y(
        n273) );
  OAI2BB2X1M U305 ( .B0(n457), .B1(n171), .A0N(mem_10__7_), .A1N(n429), .Y(
        n274) );
  OAI2BB2X1M U306 ( .B0(n464), .B1(n428), .A0N(mem_11__0_), .A1N(n428), .Y(
        n275) );
  OAI2BB2X1M U307 ( .B0(n463), .B1(n428), .A0N(mem_11__1_), .A1N(n428), .Y(
        n276) );
  OAI2BB2X1M U308 ( .B0(n462), .B1(n428), .A0N(mem_11__2_), .A1N(n428), .Y(
        n277) );
  OAI2BB2X1M U309 ( .B0(n461), .B1(n172), .A0N(mem_11__3_), .A1N(n428), .Y(
        n278) );
  OAI2BB2X1M U310 ( .B0(n460), .B1(n172), .A0N(mem_11__4_), .A1N(n428), .Y(
        n279) );
  OAI2BB2X1M U311 ( .B0(n459), .B1(n172), .A0N(mem_11__5_), .A1N(n428), .Y(
        n280) );
  OAI2BB2X1M U312 ( .B0(n458), .B1(n172), .A0N(mem_11__6_), .A1N(n428), .Y(
        n281) );
  OAI2BB2X1M U313 ( .B0(n457), .B1(n172), .A0N(mem_11__7_), .A1N(n428), .Y(
        n282) );
  OAI2BB2X1M U314 ( .B0(n464), .B1(n427), .A0N(mem_12__0_), .A1N(n427), .Y(
        n283) );
  OAI2BB2X1M U315 ( .B0(n463), .B1(n427), .A0N(mem_12__1_), .A1N(n427), .Y(
        n284) );
  OAI2BB2X1M U316 ( .B0(n462), .B1(n427), .A0N(mem_12__2_), .A1N(n427), .Y(
        n285) );
  OAI2BB2X1M U317 ( .B0(n461), .B1(n173), .A0N(mem_12__3_), .A1N(n427), .Y(
        n286) );
  OAI2BB2X1M U318 ( .B0(n460), .B1(n173), .A0N(mem_12__4_), .A1N(n427), .Y(
        n287) );
  OAI2BB2X1M U319 ( .B0(n459), .B1(n173), .A0N(mem_12__5_), .A1N(n427), .Y(
        n288) );
  OAI2BB2X1M U320 ( .B0(n458), .B1(n173), .A0N(mem_12__6_), .A1N(n427), .Y(
        n289) );
  OAI2BB2X1M U321 ( .B0(n457), .B1(n173), .A0N(mem_12__7_), .A1N(n427), .Y(
        n290) );
  OAI2BB2X1M U322 ( .B0(n464), .B1(n426), .A0N(mem_13__0_), .A1N(n426), .Y(
        n291) );
  OAI2BB2X1M U323 ( .B0(n463), .B1(n426), .A0N(mem_13__1_), .A1N(n426), .Y(
        n292) );
  OAI2BB2X1M U324 ( .B0(n462), .B1(n426), .A0N(mem_13__2_), .A1N(n426), .Y(
        n293) );
  OAI2BB2X1M U325 ( .B0(n461), .B1(n174), .A0N(mem_13__3_), .A1N(n426), .Y(
        n294) );
  OAI2BB2X1M U326 ( .B0(n460), .B1(n174), .A0N(mem_13__4_), .A1N(n426), .Y(
        n295) );
  OAI2BB2X1M U327 ( .B0(n459), .B1(n174), .A0N(mem_13__5_), .A1N(n426), .Y(
        n296) );
  OAI2BB2X1M U328 ( .B0(n458), .B1(n174), .A0N(mem_13__6_), .A1N(n426), .Y(
        n297) );
  OAI2BB2X1M U329 ( .B0(n457), .B1(n174), .A0N(mem_13__7_), .A1N(n426), .Y(
        n298) );
  OAI2BB2X1M U330 ( .B0(n464), .B1(n425), .A0N(mem_14__0_), .A1N(n425), .Y(
        n299) );
  OAI2BB2X1M U331 ( .B0(n463), .B1(n425), .A0N(mem_14__1_), .A1N(n425), .Y(
        n300) );
  OAI2BB2X1M U332 ( .B0(n462), .B1(n425), .A0N(mem_14__2_), .A1N(n425), .Y(
        n301) );
  OAI2BB2X1M U333 ( .B0(n461), .B1(n175), .A0N(mem_14__3_), .A1N(n425), .Y(
        n302) );
  OAI2BB2X1M U334 ( .B0(n460), .B1(n175), .A0N(mem_14__4_), .A1N(n425), .Y(
        n303) );
  OAI2BB2X1M U335 ( .B0(n459), .B1(n175), .A0N(mem_14__5_), .A1N(n425), .Y(
        n304) );
  OAI2BB2X1M U336 ( .B0(n458), .B1(n175), .A0N(mem_14__6_), .A1N(n425), .Y(
        n305) );
  OAI2BB2X1M U337 ( .B0(n457), .B1(n175), .A0N(mem_14__7_), .A1N(n425), .Y(
        n306) );
  OAI2BB2X1M U338 ( .B0(n464), .B1(n424), .A0N(mem_15__0_), .A1N(n424), .Y(
        n307) );
  OAI2BB2X1M U339 ( .B0(n463), .B1(n424), .A0N(mem_15__1_), .A1N(n424), .Y(
        n308) );
  OAI2BB2X1M U340 ( .B0(n462), .B1(n424), .A0N(mem_15__2_), .A1N(n424), .Y(
        n309) );
  OAI2BB2X1M U341 ( .B0(n461), .B1(n177), .A0N(mem_15__3_), .A1N(n424), .Y(
        n310) );
  OAI2BB2X1M U342 ( .B0(n460), .B1(n177), .A0N(mem_15__4_), .A1N(n424), .Y(
        n311) );
  OAI2BB2X1M U343 ( .B0(n459), .B1(n177), .A0N(mem_15__5_), .A1N(n424), .Y(
        n312) );
  OAI2BB2X1M U344 ( .B0(n458), .B1(n177), .A0N(mem_15__6_), .A1N(n424), .Y(
        n313) );
  OAI2BB2X1M U345 ( .B0(n457), .B1(n177), .A0N(test_so2), .A1N(n424), .Y(n314)
         );
  OAI2BB2X1M U346 ( .B0(n439), .B1(n464), .A0N(REG0[0]), .A1N(n439), .Y(n187)
         );
  OAI2BB2X1M U347 ( .B0(n439), .B1(n463), .A0N(REG0[1]), .A1N(n439), .Y(n188)
         );
  OAI2BB2X1M U348 ( .B0(n439), .B1(n462), .A0N(REG0[2]), .A1N(n439), .Y(n189)
         );
  OAI2BB2X1M U349 ( .B0(n152), .B1(n461), .A0N(REG0[3]), .A1N(n439), .Y(n190)
         );
  OAI2BB2X1M U350 ( .B0(n152), .B1(n460), .A0N(REG0[4]), .A1N(n439), .Y(n191)
         );
  OAI2BB2X1M U351 ( .B0(n152), .B1(n459), .A0N(REG0[5]), .A1N(n439), .Y(n192)
         );
  OAI2BB2X1M U352 ( .B0(n152), .B1(n458), .A0N(REG0[6]), .A1N(n439), .Y(n193)
         );
  OAI2BB2X1M U353 ( .B0(n152), .B1(n457), .A0N(REG0[7]), .A1N(n439), .Y(n194)
         );
  OAI2BB2X1M U354 ( .B0(n464), .B1(n437), .A0N(REG2[0]), .A1N(n437), .Y(n203)
         );
  OAI2BB2X1M U355 ( .B0(n457), .B1(n437), .A0N(REG2[7]), .A1N(n437), .Y(n210)
         );
  OAI2BB2X1M U356 ( .B0(n459), .B1(n436), .A0N(REG3[5]), .A1N(n436), .Y(n216)
         );
  AND2X2M U357 ( .A(n165), .B(Address[0]), .Y(n156) );
  AND2X2M U358 ( .A(n176), .B(Address[0]), .Y(n170) );
  INVX2M U359 ( .A(WrEn), .Y(n456) );
  AND2X2M U360 ( .A(Address[3]), .B(n150), .Y(n176) );
  AND2X2M U361 ( .A(Address[2]), .B(n409), .Y(n161) );
  AND2X2M U362 ( .A(Address[2]), .B(Address[1]), .Y(n164) );
  AO21XLM U363 ( .A0(RdData_valid), .A1(n150), .B0(n455), .Y(n178) );
  NOR2X1M U364 ( .A(n409), .B(Address[0]), .Y(n398) );
  NOR2X1M U365 ( .A(n409), .B(n408), .Y(n397) );
  AOI22X1M U366 ( .A0(mem_10__0_), .A1(n417), .B0(mem_11__0_), .B1(n414), .Y(
        n140) );
  NOR2X1M U367 ( .A(Address[0]), .B(Address[1]), .Y(n400) );
  NOR2X1M U368 ( .A(n408), .B(Address[1]), .Y(n399) );
  AOI22X1M U369 ( .A0(mem_8__0_), .A1(n423), .B0(mem_9__0_), .B1(n420), .Y(
        n139) );
  CLKNAND2X2M U370 ( .A(Address[3]), .B(n410), .Y(n388) );
  AOI21X1M U371 ( .A0(n140), .A1(n139), .B0(n388), .Y(n315) );
  AOI22X1M U372 ( .A0(mem_14__0_), .A1(n417), .B0(mem_15__0_), .B1(n414), .Y(
        n142) );
  AOI22X1M U373 ( .A0(mem_12__0_), .A1(n423), .B0(mem_13__0_), .B1(n420), .Y(
        n141) );
  AOI21X1M U374 ( .A0(n142), .A1(n141), .B0(n391), .Y(n149) );
  AOI22X1M U375 ( .A0(REG2[0]), .A1(n417), .B0(REG3[0]), .B1(n414), .Y(n144)
         );
  AOI22X1M U376 ( .A0(REG0[0]), .A1(n423), .B0(REG1[0]), .B1(n420), .Y(n143)
         );
  CLKNAND2X2M U377 ( .A(n410), .B(n411), .Y(n394) );
  AOI21X1M U378 ( .A0(n144), .A1(n143), .B0(n394), .Y(n148) );
  AOI22X1M U379 ( .A0(mem_6__0_), .A1(n417), .B0(mem_7__0_), .B1(n414), .Y(
        n146) );
  AOI22X1M U380 ( .A0(mem_4__0_), .A1(n423), .B0(mem_5__0_), .B1(n420), .Y(
        n145) );
  CLKNAND2X2M U381 ( .A(Address[2]), .B(n411), .Y(n401) );
  AOI21X1M U382 ( .A0(n146), .A1(n145), .B0(n401), .Y(n147) );
  OR4X1M U383 ( .A(n315), .B(n149), .C(n148), .D(n147), .Y(N42) );
  AOI22X1M U384 ( .A0(mem_10__1_), .A1(n417), .B0(mem_11__1_), .B1(n414), .Y(
        n317) );
  AOI22X1M U385 ( .A0(mem_8__1_), .A1(n423), .B0(mem_9__1_), .B1(n420), .Y(
        n316) );
  AOI21X1M U386 ( .A0(n317), .A1(n316), .B0(n388), .Y(n327) );
  AOI22X1M U387 ( .A0(mem_14__1_), .A1(n417), .B0(mem_15__1_), .B1(n414), .Y(
        n319) );
  AOI22X1M U388 ( .A0(mem_12__1_), .A1(n423), .B0(mem_13__1_), .B1(n420), .Y(
        n318) );
  AOI21X1M U389 ( .A0(n319), .A1(n318), .B0(n391), .Y(n326) );
  AOI22X1M U390 ( .A0(REG2[1]), .A1(n417), .B0(REG3[1]), .B1(n414), .Y(n321)
         );
  AOI22X1M U391 ( .A0(REG0[1]), .A1(n423), .B0(REG1[1]), .B1(n420), .Y(n320)
         );
  AOI21X1M U392 ( .A0(n321), .A1(n320), .B0(n394), .Y(n325) );
  AOI22X1M U393 ( .A0(mem_6__1_), .A1(n417), .B0(mem_7__1_), .B1(n414), .Y(
        n323) );
  AOI22X1M U394 ( .A0(mem_4__1_), .A1(n423), .B0(mem_5__1_), .B1(n420), .Y(
        n322) );
  AOI21X1M U395 ( .A0(n323), .A1(n322), .B0(n401), .Y(n324) );
  OR4X1M U396 ( .A(n327), .B(n326), .C(n325), .D(n324), .Y(N41) );
  AOI22X1M U397 ( .A0(mem_10__2_), .A1(n417), .B0(mem_11__2_), .B1(n414), .Y(
        n329) );
  AOI22X1M U398 ( .A0(n496), .A1(n423), .B0(mem_9__2_), .B1(n420), .Y(n328) );
  AOI21X1M U399 ( .A0(n329), .A1(n328), .B0(n388), .Y(n339) );
  AOI22X1M U400 ( .A0(mem_14__2_), .A1(n417), .B0(mem_15__2_), .B1(n414), .Y(
        n331) );
  AOI22X1M U401 ( .A0(mem_12__2_), .A1(n423), .B0(mem_13__2_), .B1(n420), .Y(
        n330) );
  AOI21X1M U402 ( .A0(n331), .A1(n330), .B0(n391), .Y(n338) );
  AOI22X1M U403 ( .A0(REG2[2]), .A1(n417), .B0(REG3[2]), .B1(n414), .Y(n333)
         );
  AOI22X1M U404 ( .A0(REG0[2]), .A1(n423), .B0(REG1[2]), .B1(n420), .Y(n332)
         );
  AOI21X1M U405 ( .A0(n333), .A1(n332), .B0(n394), .Y(n337) );
  AOI22X1M U406 ( .A0(mem_6__2_), .A1(n417), .B0(mem_7__2_), .B1(n414), .Y(
        n335) );
  AOI22X1M U407 ( .A0(mem_4__2_), .A1(n423), .B0(mem_5__2_), .B1(n420), .Y(
        n334) );
  AOI21X1M U408 ( .A0(n335), .A1(n334), .B0(n401), .Y(n336) );
  OR4X1M U409 ( .A(n339), .B(n338), .C(n337), .D(n336), .Y(N40) );
  AOI22X1M U410 ( .A0(mem_10__3_), .A1(n416), .B0(mem_11__3_), .B1(n413), .Y(
        n341) );
  AOI22X1M U411 ( .A0(mem_8__3_), .A1(n422), .B0(mem_9__3_), .B1(n419), .Y(
        n340) );
  AOI21X1M U412 ( .A0(n341), .A1(n340), .B0(n388), .Y(n351) );
  AOI22X1M U413 ( .A0(mem_14__3_), .A1(n416), .B0(mem_15__3_), .B1(n413), .Y(
        n343) );
  AOI22X1M U414 ( .A0(mem_12__3_), .A1(n422), .B0(mem_13__3_), .B1(n419), .Y(
        n342) );
  AOI21X1M U415 ( .A0(n343), .A1(n342), .B0(n391), .Y(n350) );
  AOI22X1M U416 ( .A0(REG2[3]), .A1(n416), .B0(REG3[3]), .B1(n413), .Y(n345)
         );
  AOI22X1M U417 ( .A0(REG0[3]), .A1(n422), .B0(REG1[3]), .B1(n419), .Y(n344)
         );
  AOI21X1M U418 ( .A0(n345), .A1(n344), .B0(n394), .Y(n349) );
  AOI22X1M U419 ( .A0(mem_6__3_), .A1(n416), .B0(mem_7__3_), .B1(n413), .Y(
        n347) );
  AOI22X1M U420 ( .A0(mem_4__3_), .A1(n422), .B0(mem_5__3_), .B1(n419), .Y(
        n346) );
  AOI21X1M U421 ( .A0(n347), .A1(n346), .B0(n401), .Y(n348) );
  OR4X1M U422 ( .A(n351), .B(n350), .C(n349), .D(n348), .Y(N39) );
  AOI22X1M U423 ( .A0(mem_10__4_), .A1(n416), .B0(mem_11__4_), .B1(n413), .Y(
        n353) );
  AOI22X1M U424 ( .A0(mem_8__4_), .A1(n422), .B0(mem_9__4_), .B1(n419), .Y(
        n352) );
  AOI21X1M U425 ( .A0(n353), .A1(n352), .B0(n388), .Y(n363) );
  AOI22X1M U426 ( .A0(mem_14__4_), .A1(n416), .B0(mem_15__4_), .B1(n413), .Y(
        n355) );
  AOI22X1M U427 ( .A0(mem_12__4_), .A1(n422), .B0(mem_13__4_), .B1(n419), .Y(
        n354) );
  AOI21X1M U428 ( .A0(n355), .A1(n354), .B0(n391), .Y(n362) );
  AOI22X1M U429 ( .A0(REG2[4]), .A1(n416), .B0(REG3[4]), .B1(n413), .Y(n357)
         );
  AOI22X1M U430 ( .A0(REG0[4]), .A1(n422), .B0(REG1[4]), .B1(n419), .Y(n356)
         );
  AOI21X1M U431 ( .A0(n357), .A1(n356), .B0(n394), .Y(n361) );
  AOI22X1M U432 ( .A0(mem_6__4_), .A1(n416), .B0(mem_7__4_), .B1(n413), .Y(
        n359) );
  AOI22X1M U433 ( .A0(mem_4__4_), .A1(n422), .B0(mem_5__4_), .B1(n419), .Y(
        n358) );
  AOI21X1M U434 ( .A0(n359), .A1(n358), .B0(n401), .Y(n360) );
  OR4X1M U435 ( .A(n363), .B(n362), .C(n361), .D(n360), .Y(N38) );
  AOI22X1M U436 ( .A0(mem_10__5_), .A1(n416), .B0(mem_11__5_), .B1(n413), .Y(
        n365) );
  AOI22X1M U437 ( .A0(mem_8__5_), .A1(n422), .B0(mem_9__5_), .B1(n419), .Y(
        n364) );
  AOI21X1M U438 ( .A0(n365), .A1(n364), .B0(n388), .Y(n375) );
  AOI22X1M U439 ( .A0(mem_14__5_), .A1(n416), .B0(mem_15__5_), .B1(n413), .Y(
        n367) );
  AOI22X1M U440 ( .A0(mem_12__5_), .A1(n422), .B0(mem_13__5_), .B1(n419), .Y(
        n366) );
  AOI21X1M U441 ( .A0(n367), .A1(n366), .B0(n391), .Y(n374) );
  AOI22X1M U442 ( .A0(REG2[5]), .A1(n416), .B0(REG3[5]), .B1(n413), .Y(n369)
         );
  AOI22X1M U443 ( .A0(REG0[5]), .A1(n422), .B0(REG1[5]), .B1(n419), .Y(n368)
         );
  AOI21X1M U444 ( .A0(n369), .A1(n368), .B0(n394), .Y(n373) );
  AOI22X1M U445 ( .A0(mem_6__5_), .A1(n416), .B0(mem_7__5_), .B1(n413), .Y(
        n371) );
  AOI22X1M U446 ( .A0(mem_4__5_), .A1(n422), .B0(mem_5__5_), .B1(n419), .Y(
        n370) );
  AOI21X1M U447 ( .A0(n371), .A1(n370), .B0(n401), .Y(n372) );
  OR4X1M U448 ( .A(n375), .B(n374), .C(n373), .D(n372), .Y(N37) );
  AOI22X1M U449 ( .A0(mem_10__6_), .A1(n415), .B0(mem_11__6_), .B1(n412), .Y(
        n377) );
  AOI22X1M U450 ( .A0(mem_8__6_), .A1(n421), .B0(mem_9__6_), .B1(n418), .Y(
        n376) );
  AOI21X1M U451 ( .A0(n377), .A1(n376), .B0(n388), .Y(n387) );
  AOI22X1M U452 ( .A0(mem_14__6_), .A1(n415), .B0(mem_15__6_), .B1(n412), .Y(
        n379) );
  AOI22X1M U453 ( .A0(mem_12__6_), .A1(n421), .B0(mem_13__6_), .B1(n418), .Y(
        n378) );
  AOI21X1M U454 ( .A0(n379), .A1(n378), .B0(n391), .Y(n386) );
  AOI22X1M U455 ( .A0(REG2[6]), .A1(n415), .B0(REG3[6]), .B1(n412), .Y(n381)
         );
  AOI22X1M U456 ( .A0(REG0[6]), .A1(n421), .B0(REG1[6]), .B1(n418), .Y(n380)
         );
  AOI21X1M U457 ( .A0(n381), .A1(n380), .B0(n394), .Y(n385) );
  AOI22X1M U458 ( .A0(mem_6__6_), .A1(n415), .B0(mem_7__6_), .B1(n412), .Y(
        n383) );
  AOI22X1M U459 ( .A0(mem_4__6_), .A1(n421), .B0(mem_5__6_), .B1(n418), .Y(
        n382) );
  AOI21X1M U460 ( .A0(n383), .A1(n382), .B0(n401), .Y(n384) );
  OR4X1M U461 ( .A(n387), .B(n386), .C(n385), .D(n384), .Y(N36) );
  AOI22X1M U462 ( .A0(mem_10__7_), .A1(n415), .B0(mem_11__7_), .B1(n412), .Y(
        n390) );
  AOI22X1M U463 ( .A0(mem_8__7_), .A1(n421), .B0(mem_9__7_), .B1(n418), .Y(
        n389) );
  AOI21X1M U464 ( .A0(n390), .A1(n389), .B0(n388), .Y(n407) );
  AOI22X1M U465 ( .A0(mem_14__7_), .A1(n415), .B0(test_so2), .B1(n412), .Y(
        n393) );
  AOI22X1M U466 ( .A0(mem_12__7_), .A1(n421), .B0(mem_13__7_), .B1(n418), .Y(
        n392) );
  AOI21X1M U467 ( .A0(n393), .A1(n392), .B0(n391), .Y(n406) );
  AOI22X1M U468 ( .A0(REG2[7]), .A1(n415), .B0(REG3[7]), .B1(n412), .Y(n396)
         );
  AOI22X1M U469 ( .A0(REG0[7]), .A1(n421), .B0(REG1[7]), .B1(n418), .Y(n395)
         );
  AOI21X1M U470 ( .A0(n396), .A1(n395), .B0(n394), .Y(n405) );
  AOI22X1M U471 ( .A0(mem_6__7_), .A1(n415), .B0(mem_7__7_), .B1(n412), .Y(
        n403) );
  AOI22X1M U472 ( .A0(mem_4__7_), .A1(n421), .B0(mem_5__7_), .B1(n418), .Y(
        n402) );
  AOI21X1M U473 ( .A0(n403), .A1(n402), .B0(n401), .Y(n404) );
  OR4X1M U474 ( .A(n407), .B(n406), .C(n405), .D(n404), .Y(N35) );
  DLY1X1M U475 ( .A(test_se), .Y(n468) );
  INVXLM U476 ( .A(n475), .Y(n478) );
  INVXLM U477 ( .A(n478), .Y(n469) );
  INVXLM U478 ( .A(n478), .Y(n470) );
  INVXLM U479 ( .A(n478), .Y(n471) );
  DLY1X1M U480 ( .A(test_se), .Y(n472) );
  DLY1X1M U481 ( .A(test_se), .Y(n473) );
  DLY1X1M U482 ( .A(test_se), .Y(n474) );
  DLY1X1M U483 ( .A(test_se), .Y(n475) );
  DLY1X1M U484 ( .A(test_se), .Y(n476) );
  DLY1X1M U485 ( .A(test_se), .Y(n477) );
  DLY1X1M U486 ( .A(n474), .Y(n479) );
  DLY1X1M U487 ( .A(n473), .Y(n480) );
  DLY1X1M U488 ( .A(n479), .Y(n481) );
  DLY1X1M U489 ( .A(n476), .Y(n482) );
  DLY1X1M U490 ( .A(n472), .Y(n483) );
  DLY1X1M U491 ( .A(n477), .Y(n484) );
  DLY1X1M U492 ( .A(n473), .Y(n485) );
  DLY1X1M U493 ( .A(n475), .Y(n486) );
  DLY1X1M U494 ( .A(n476), .Y(n487) );
  DLY1X1M U495 ( .A(n472), .Y(n488) );
  DLY1X1M U496 ( .A(n477), .Y(n489) );
  DLY1X1M U497 ( .A(n468), .Y(n490) );
  DLY1X1M U498 ( .A(n474), .Y(n491) );
  DLY1X1M U499 ( .A(n468), .Y(n492) );
  DLY1X1M U500 ( .A(REG2[3]), .Y(n493) );
  DLY1X1M U501 ( .A(REG2[6]), .Y(n494) );
  INVXLM U502 ( .A(test_so1), .Y(n495) );
  INVXLM U503 ( .A(n495), .Y(n496) );
  INVXLM U504 ( .A(n495), .Y(n497) );
  SDFFRQX4M mem_reg_8__2_ ( .D(n253), .SI(mem_8__1_), .SE(n475), .CK(CLK), 
        .RN(n445), .Q(mem_8__2_) );
  INVXLM U3 ( .A(mem_8__2_), .Y(n1) );
  INVX8M U4 ( .A(n1), .Y(test_so1) );
endmodule


module SYS_CTRL_test_1 ( CLK, RST, FULL, ALU_OUT, OUT_Valid, RX_P_Data, 
        RX_D_VLD, RdData, RdData_Valid, ALU_EN, ALU_FUN, CLK_EN, Address, WrEN, 
        RdEN, WrData, TX_P_Data, TX_D_VLD, test_si, test_so, test_se );
  input [15:0] ALU_OUT;
  input [7:0] RX_P_Data;
  input [7:0] RdData;
  output [3:0] ALU_FUN;
  output [3:0] Address;
  output [7:0] WrData;
  output [7:0] TX_P_Data;
  input CLK, RST, FULL, OUT_Valid, RX_D_VLD, RdData_Valid, test_si, test_se;
  output ALU_EN, CLK_EN, WrEN, RdEN, TX_D_VLD, test_so;
  wire   ALU_EN_comb, CLK_EN_comb, WrEN_comb, TX_D_VLD_comb, n52, n62, n63,
         n64, n65, n66, n67, n68, n69, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n51, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n158, n159, n160, n161, n162,
         n163, n164, n165, n168, n169, n170, n171, n172, n173, n174, n175,
         n177, n178, n179, n180, n181, n182, n183, n184, n185;
  wire   [3:0] current_state;
  wire   [7:0] alu_out_reg;
  wire   [3:0] next_state;
  wire   [3:0] ALU_FUN_comb;
  wire   [7:0] WrData_comb;
  wire   [7:0] TX_P_Data_comb;

  SDFFRQX2M alu_out_reg_reg_7_ ( .D(n85), .SI(alu_out_reg[6]), .SE(n181), .CK(
        CLK), .RN(n57), .Q(alu_out_reg[7]) );
  SDFFRQX2M alu_out_reg_reg_6_ ( .D(n158), .SI(alu_out_reg[5]), .SE(n182), 
        .CK(CLK), .RN(n57), .Q(alu_out_reg[6]) );
  SDFFRQX2M alu_out_reg_reg_5_ ( .D(n159), .SI(alu_out_reg[4]), .SE(n182), 
        .CK(CLK), .RN(n57), .Q(alu_out_reg[5]) );
  SDFFRQX2M alu_out_reg_reg_4_ ( .D(n160), .SI(alu_out_reg[3]), .SE(n185), 
        .CK(CLK), .RN(n57), .Q(alu_out_reg[4]) );
  SDFFRQX2M alu_out_reg_reg_3_ ( .D(n161), .SI(alu_out_reg[2]), .SE(n179), 
        .CK(CLK), .RN(n57), .Q(alu_out_reg[3]) );
  SDFFRQX2M alu_out_reg_reg_2_ ( .D(n162), .SI(alu_out_reg[1]), .SE(n185), 
        .CK(CLK), .RN(n57), .Q(alu_out_reg[2]) );
  SDFFRQX2M alu_out_reg_reg_1_ ( .D(n163), .SI(alu_out_reg[0]), .SE(n184), 
        .CK(CLK), .RN(n57), .Q(alu_out_reg[1]) );
  SDFFRQX2M alu_out_reg_reg_0_ ( .D(n164), .SI(WrEN), .SE(n179), .CK(CLK), 
        .RN(n57), .Q(alu_out_reg[0]) );
  SDFFRQX2M TX_P_Data_reg_7_ ( .D(TX_P_Data_comb[7]), .SI(TX_P_Data[6]), .SE(
        n181), .CK(CLK), .RN(n57), .Q(TX_P_Data[7]) );
  SDFFRQX2M TX_P_Data_reg_6_ ( .D(TX_P_Data_comb[6]), .SI(TX_P_Data[5]), .SE(
        n185), .CK(CLK), .RN(n57), .Q(TX_P_Data[6]) );
  SDFFRQX2M TX_P_Data_reg_5_ ( .D(TX_P_Data_comb[5]), .SI(TX_P_Data[4]), .SE(
        n183), .CK(CLK), .RN(n57), .Q(TX_P_Data[5]) );
  SDFFRQX2M TX_P_Data_reg_4_ ( .D(TX_P_Data_comb[4]), .SI(TX_P_Data[3]), .SE(
        n180), .CK(CLK), .RN(n57), .Q(TX_P_Data[4]) );
  SDFFRQX2M TX_P_Data_reg_3_ ( .D(TX_P_Data_comb[3]), .SI(TX_P_Data[2]), .SE(
        n183), .CK(CLK), .RN(n56), .Q(TX_P_Data[3]) );
  SDFFRQX2M TX_P_Data_reg_2_ ( .D(TX_P_Data_comb[2]), .SI(TX_P_Data[1]), .SE(
        n182), .CK(CLK), .RN(n56), .Q(TX_P_Data[2]) );
  SDFFRQX2M TX_P_Data_reg_1_ ( .D(TX_P_Data_comb[1]), .SI(TX_P_Data[0]), .SE(
        n184), .CK(CLK), .RN(n56), .Q(TX_P_Data[1]) );
  SDFFRQX2M TX_P_Data_reg_0_ ( .D(TX_P_Data_comb[0]), .SI(TX_D_VLD), .SE(n177), 
        .CK(CLK), .RN(n57), .Q(TX_P_Data[0]) );
  SDFFRX1M alu_out_reg_reg_15_ ( .D(n152), .SI(n169), .SE(n177), .CK(CLK), 
        .RN(n56), .Q(n168), .QN(n62) );
  SDFFRX1M alu_out_reg_reg_14_ ( .D(n151), .SI(n170), .SE(n180), .CK(CLK), 
        .RN(n56), .Q(n169), .QN(n63) );
  SDFFRX1M alu_out_reg_reg_13_ ( .D(n150), .SI(n171), .SE(n183), .CK(CLK), 
        .RN(n56), .Q(n170), .QN(n64) );
  SDFFRX1M alu_out_reg_reg_12_ ( .D(n149), .SI(n172), .SE(n179), .CK(CLK), 
        .RN(n56), .Q(n171), .QN(n65) );
  SDFFRX1M alu_out_reg_reg_11_ ( .D(n148), .SI(n173), .SE(n181), .CK(CLK), 
        .RN(n56), .Q(n172), .QN(n66) );
  SDFFRX1M alu_out_reg_reg_10_ ( .D(n147), .SI(n174), .SE(n185), .CK(CLK), 
        .RN(n56), .Q(n173), .QN(n67) );
  SDFFRX1M alu_out_reg_reg_9_ ( .D(n146), .SI(n175), .SE(n184), .CK(CLK), .RN(
        n56), .Q(n174), .QN(n68) );
  SDFFRX1M alu_out_reg_reg_8_ ( .D(n145), .SI(alu_out_reg[7]), .SE(n184), .CK(
        CLK), .RN(n56), .Q(n175), .QN(n69) );
  SDFFRQX2M WrData_reg_7_ ( .D(WrData_comb[7]), .SI(WrData[6]), .SE(n181), 
        .CK(CLK), .RN(n58), .Q(WrData[7]) );
  SDFFRQX2M WrData_reg_6_ ( .D(WrData_comb[6]), .SI(WrData[5]), .SE(n185), 
        .CK(CLK), .RN(n58), .Q(WrData[6]) );
  SDFFRQX2M WrData_reg_5_ ( .D(WrData_comb[5]), .SI(WrData[4]), .SE(n178), 
        .CK(CLK), .RN(n58), .Q(WrData[5]) );
  SDFFRQX2M WrData_reg_4_ ( .D(WrData_comb[4]), .SI(WrData[3]), .SE(n180), 
        .CK(CLK), .RN(n58), .Q(WrData[4]) );
  SDFFRQX2M WrData_reg_3_ ( .D(WrData_comb[3]), .SI(WrData[2]), .SE(n184), 
        .CK(CLK), .RN(n58), .Q(WrData[3]) );
  SDFFRQX2M WrData_reg_2_ ( .D(WrData_comb[2]), .SI(WrData[1]), .SE(n183), 
        .CK(CLK), .RN(n58), .Q(WrData[2]) );
  SDFFRQX2M WrData_reg_1_ ( .D(WrData_comb[1]), .SI(WrData[0]), .SE(n180), 
        .CK(CLK), .RN(n58), .Q(WrData[1]) );
  SDFFRQX2M WrData_reg_0_ ( .D(WrData_comb[0]), .SI(TX_P_Data[7]), .SE(n181), 
        .CK(CLK), .RN(n58), .Q(WrData[0]) );
  SDFFRQX2M ALU_EN_reg ( .D(ALU_EN_comb), .SI(test_si), .SE(n185), .CK(CLK), 
        .RN(n59), .Q(ALU_EN) );
  SDFFRQX2M WrEN_reg ( .D(WrEN_comb), .SI(WrData[7]), .SE(n180), .CK(CLK), 
        .RN(n58), .Q(WrEN) );
  SDFFRQX2M TX_D_VLD_reg ( .D(TX_D_VLD_comb), .SI(RdEN), .SE(n183), .CK(CLK), 
        .RN(n57), .Q(TX_D_VLD) );
  SDFFSQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(n177), .CK(CLK), .SN(n56), .Q(current_state[1]) );
  SDFFRX1M done_reg ( .D(n157), .SI(current_state[3]), .SE(n182), .CK(CLK), 
        .RN(n56), .Q(test_so), .QN(n52) );
  SDFFRQX2M RdEN_reg ( .D(n82), .SI(CLK_EN), .SE(n184), .CK(CLK), .RN(n58), 
        .Q(RdEN) );
  SDFFRQX2M current_state_reg_3_ ( .D(next_state[3]), .SI(current_state[2]), 
        .SE(n182), .CK(CLK), .RN(n59), .Q(current_state[3]) );
  SDFFRQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(n168), .SE(n180), 
        .CK(CLK), .RN(n57), .Q(current_state[0]) );
  SDFFRQX2M ALU_FUN_reg_3_ ( .D(ALU_FUN_comb[3]), .SI(ALU_FUN[2]), .SE(n181), 
        .CK(CLK), .RN(n59), .Q(ALU_FUN[3]) );
  SDFFRQX2M ALU_FUN_reg_1_ ( .D(ALU_FUN_comb[1]), .SI(ALU_FUN[0]), .SE(n184), 
        .CK(CLK), .RN(n59), .Q(ALU_FUN[1]) );
  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(n185), .CK(CLK), .RN(n59), .Q(current_state[2]) );
  SDFFRQX2M ALU_FUN_reg_0_ ( .D(ALU_FUN_comb[0]), .SI(ALU_EN), .SE(n180), .CK(
        CLK), .RN(n59), .Q(ALU_FUN[0]) );
  SDFFRQX2M Address_reg_3_ ( .D(n156), .SI(Address[2]), .SE(n182), .CK(CLK), 
        .RN(n58), .Q(Address[3]) );
  SDFFRQX2M Address_reg_1_ ( .D(n154), .SI(Address[0]), .SE(n183), .CK(CLK), 
        .RN(n58), .Q(Address[1]) );
  SDFFRQX2M Address_reg_0_ ( .D(n153), .SI(ALU_FUN[3]), .SE(n182), .CK(CLK), 
        .RN(n58), .Q(Address[0]) );
  SDFFRQX2M Address_reg_2_ ( .D(n155), .SI(Address[1]), .SE(n181), .CK(CLK), 
        .RN(n58), .Q(Address[2]) );
  SDFFRQX2M CLK_EN_reg ( .D(CLK_EN_comb), .SI(Address[3]), .SE(n183), .CK(CLK), 
        .RN(n58), .Q(CLK_EN) );
  SDFFRQX2M ALU_FUN_reg_2_ ( .D(ALU_FUN_comb[2]), .SI(ALU_FUN[1]), .SE(n178), 
        .CK(CLK), .RN(n59), .Q(ALU_FUN[2]) );
  AOI211X2M U53 ( .A0(n55), .A1(n52), .B0(FULL), .C0(n87), .Y(n106) );
  NAND3X2M U54 ( .A(current_state[0]), .B(n133), .C(current_state[2]), .Y(n96)
         );
  NOR2X2M U55 ( .A(n131), .B(n90), .Y(n134) );
  INVX2M U56 ( .A(WrEN_comb), .Y(n71) );
  NOR2X2M U57 ( .A(n73), .B(n134), .Y(WrEN_comb) );
  NOR2BX2M U58 ( .AN(n135), .B(n51), .Y(n93) );
  INVX2M U59 ( .A(n132), .Y(n78) );
  INVX2M U60 ( .A(FULL), .Y(n61) );
  INVX2M U61 ( .A(n131), .Y(n80) );
  NAND2X2M U62 ( .A(n93), .B(n70), .Y(TX_D_VLD_comb) );
  INVX2M U63 ( .A(n55), .Y(n53) );
  BUFX4M U64 ( .A(n60), .Y(n58) );
  BUFX4M U65 ( .A(n60), .Y(n57) );
  BUFX4M U66 ( .A(n60), .Y(n56) );
  BUFX2M U67 ( .A(n60), .Y(n59) );
  NAND2X2M U68 ( .A(n111), .B(n97), .Y(n131) );
  NOR2X2M U69 ( .A(n76), .B(n71), .Y(WrData_comb[4]) );
  NOR2X2M U70 ( .A(n75), .B(n71), .Y(WrData_comb[6]) );
  OAI21X2M U71 ( .A0(n131), .A1(n132), .B0(RX_D_VLD), .Y(n126) );
  NOR2X2M U72 ( .A(n73), .B(n96), .Y(ALU_EN_comb) );
  NAND2BX2M U73 ( .AN(n86), .B(n61), .Y(n135) );
  AOI21X2M U74 ( .A0(n110), .A1(n97), .B0(n73), .Y(n109) );
  NAND3X2M U75 ( .A(n81), .B(n83), .C(n100), .Y(n110) );
  AOI21X2M U76 ( .A0(n91), .A1(n111), .B0(RX_D_VLD), .Y(n108) );
  NAND2X2M U77 ( .A(n91), .B(n110), .Y(n132) );
  NAND4X2M U78 ( .A(n80), .B(n86), .C(n87), .D(n96), .Y(CLK_EN_comb) );
  AOI21X2M U79 ( .A0(n91), .A1(n96), .B0(RX_D_VLD), .Y(n95) );
  OAI211X2M U80 ( .A0(n86), .A1(n61), .B0(n87), .C0(n72), .Y(next_state[3]) );
  INVX2M U81 ( .A(ALU_EN_comb), .Y(n72) );
  NOR2X2M U82 ( .A(n96), .B(n128), .Y(ALU_FUN_comb[0]) );
  NOR2X2M U83 ( .A(n96), .B(n129), .Y(ALU_FUN_comb[1]) );
  NOR2X2M U84 ( .A(n96), .B(n130), .Y(ALU_FUN_comb[2]) );
  NOR2X2M U85 ( .A(n96), .B(n116), .Y(ALU_FUN_comb[3]) );
  INVX2M U86 ( .A(n116), .Y(n74) );
  NOR2X2M U87 ( .A(n134), .B(n116), .Y(WrData_comb[3]) );
  INVX2M U88 ( .A(n112), .Y(n82) );
  NOR2X2M U89 ( .A(n134), .B(n128), .Y(WrData_comb[0]) );
  NOR2X2M U90 ( .A(n134), .B(n129), .Y(WrData_comb[1]) );
  NOR2X2M U91 ( .A(n134), .B(n130), .Y(WrData_comb[2]) );
  NAND2X2M U92 ( .A(n104), .B(n105), .Y(next_state[0]) );
  NOR4X1M U93 ( .A(n106), .B(n107), .C(n108), .D(n109), .Y(n105) );
  AOI211X2M U94 ( .A0(n82), .A1(n165), .B0(n88), .C0(n113), .Y(n104) );
  AOI21X2M U95 ( .A0(n112), .A1(n86), .B0(n61), .Y(n107) );
  NAND3BX2M U96 ( .AN(n88), .B(n80), .C(n89), .Y(next_state[2]) );
  AOI2BB2XLM U97 ( .B0(n90), .B1(n73), .A0N(n91), .A1N(n73), .Y(n89) );
  INVX2M U98 ( .A(n97), .Y(n79) );
  BUFX2M U99 ( .A(n137), .Y(n51) );
  NOR3X2M U100 ( .A(n112), .B(FULL), .C(n165), .Y(n137) );
  INVX2M U101 ( .A(n106), .Y(n70) );
  INVX2M U102 ( .A(RX_D_VLD), .Y(n73) );
  INVX2M U103 ( .A(n118), .Y(n164) );
  INVX2M U104 ( .A(n119), .Y(n163) );
  INVX2M U105 ( .A(n120), .Y(n162) );
  INVX2M U106 ( .A(n121), .Y(n161) );
  INVX2M U107 ( .A(n122), .Y(n160) );
  INVX2M U108 ( .A(n123), .Y(n159) );
  INVX2M U109 ( .A(n124), .Y(n158) );
  INVX2M U110 ( .A(n125), .Y(n85) );
  BUFX2M U111 ( .A(n55), .Y(n54) );
  BUFX2M U112 ( .A(RST), .Y(n60) );
  NOR3X4M U113 ( .A(current_state[1]), .B(current_state[3]), .C(n84), .Y(n90)
         );
  NAND2X2M U114 ( .A(n90), .B(current_state[0]), .Y(n111) );
  INVX2M U115 ( .A(current_state[2]), .Y(n84) );
  NOR2BX2M U116 ( .AN(RX_P_Data[5]), .B(n71), .Y(WrData_comb[5]) );
  NOR2BX2M U117 ( .AN(RX_P_Data[7]), .B(n71), .Y(WrData_comb[7]) );
  NOR3BX2M U118 ( .AN(n133), .B(current_state[0]), .C(current_state[2]), .Y(
        n98) );
  NOR3BX2M U119 ( .AN(n117), .B(RX_P_Data[0]), .C(RX_P_Data[4]), .Y(n101) );
  NAND3X2M U120 ( .A(n100), .B(current_state[0]), .C(current_state[3]), .Y(n86) );
  NOR3BX2M U121 ( .AN(RX_P_Data[0]), .B(n103), .C(n76), .Y(n102) );
  NAND3X2M U122 ( .A(n133), .B(n81), .C(current_state[2]), .Y(n97) );
  NOR2X2M U123 ( .A(current_state[2]), .B(current_state[1]), .Y(n100) );
  NAND3X2M U124 ( .A(n133), .B(n84), .C(current_state[0]), .Y(n91) );
  NAND2X2M U125 ( .A(RX_P_Data[3]), .B(RX_D_VLD), .Y(n116) );
  NAND3X2M U126 ( .A(n74), .B(n98), .C(RX_P_Data[7]), .Y(n114) );
  NAND3X2M U127 ( .A(current_state[0]), .B(n83), .C(n100), .Y(n112) );
  OAI22X1M U128 ( .A0(RX_D_VLD), .A1(n96), .B0(n115), .B1(n114), .Y(n88) );
  AOI31X2M U129 ( .A0(RX_P_Data[0]), .A1(n117), .A2(RX_P_Data[4]), .B0(n101), 
        .Y(n115) );
  NOR2BX2M U130 ( .AN(current_state[1]), .B(current_state[3]), .Y(n133) );
  OAI221X1M U131 ( .A0(n69), .A1(n135), .B0(n118), .B1(n70), .C0(n144), .Y(
        TX_P_Data_comb[0]) );
  NAND2X2M U132 ( .A(RdData[0]), .B(n51), .Y(n144) );
  OAI221X1M U133 ( .A0(n68), .A1(n135), .B0(n119), .B1(n70), .C0(n143), .Y(
        TX_P_Data_comb[1]) );
  NAND2X2M U134 ( .A(RdData[1]), .B(n51), .Y(n143) );
  OAI221X1M U135 ( .A0(n67), .A1(n135), .B0(n120), .B1(n70), .C0(n142), .Y(
        TX_P_Data_comb[2]) );
  NAND2X2M U136 ( .A(RdData[2]), .B(n51), .Y(n142) );
  OAI221X1M U137 ( .A0(n66), .A1(n135), .B0(n121), .B1(n70), .C0(n141), .Y(
        TX_P_Data_comb[3]) );
  NAND2X2M U138 ( .A(RdData[3]), .B(n51), .Y(n141) );
  OAI221X1M U139 ( .A0(n65), .A1(n135), .B0(n122), .B1(n70), .C0(n140), .Y(
        TX_P_Data_comb[4]) );
  NAND2X2M U140 ( .A(RdData[4]), .B(n51), .Y(n140) );
  OAI221X1M U141 ( .A0(n64), .A1(n135), .B0(n123), .B1(n70), .C0(n139), .Y(
        TX_P_Data_comb[5]) );
  NAND2X2M U142 ( .A(RdData[5]), .B(n51), .Y(n139) );
  OAI221X1M U143 ( .A0(n63), .A1(n135), .B0(n124), .B1(n70), .C0(n138), .Y(
        TX_P_Data_comb[6]) );
  NAND2X2M U144 ( .A(RdData[6]), .B(n51), .Y(n138) );
  OAI221X1M U145 ( .A0(n62), .A1(n135), .B0(n125), .B1(n70), .C0(n136), .Y(
        TX_P_Data_comb[7]) );
  NAND2X2M U146 ( .A(RdData[7]), .B(n51), .Y(n136) );
  NAND3X2M U147 ( .A(n100), .B(n81), .C(current_state[3]), .Y(n87) );
  NOR4X1M U148 ( .A(n75), .B(n77), .C(RX_P_Data[1]), .D(RX_P_Data[5]), .Y(n117) );
  NAND4X2M U149 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n77), .D(n75), .Y(
        n103) );
  NOR4X1M U150 ( .A(RX_P_Data[4]), .B(RX_P_Data[0]), .C(n114), .D(n103), .Y(
        n113) );
  INVX2M U151 ( .A(current_state[0]), .Y(n81) );
  OAI21X2M U152 ( .A0(n97), .A1(n126), .B0(n127), .Y(n153) );
  AOI2BB2XLM U153 ( .B0(Address[0]), .B1(n126), .A0N(n128), .A1N(n78), .Y(n127) );
  INVX2M U154 ( .A(current_state[3]), .Y(n83) );
  OAI2BB2X1M U155 ( .B0(n78), .B1(n116), .A0N(Address[3]), .A1N(n126), .Y(n156) );
  INVX2M U156 ( .A(RX_P_Data[6]), .Y(n75) );
  OAI2BB2X1M U157 ( .B0(n78), .B1(n129), .A0N(Address[1]), .A1N(n126), .Y(n154) );
  OAI2BB2X1M U158 ( .B0(n78), .B1(n130), .A0N(Address[2]), .A1N(n126), .Y(n155) );
  INVX2M U159 ( .A(RX_P_Data[4]), .Y(n76) );
  OAI21X2M U160 ( .A0(n98), .A1(n52), .B0(n54), .Y(n157) );
  INVX2M U161 ( .A(RX_P_Data[2]), .Y(n77) );
  NAND3X2M U162 ( .A(n92), .B(n93), .C(n94), .Y(next_state[1]) );
  AOI2BB2XLM U163 ( .B0(n98), .B1(n99), .A0N(n83), .A1N(n100), .Y(n92) );
  AOI211X2M U164 ( .A0(n90), .A1(RX_D_VLD), .B0(n79), .C0(n95), .Y(n94) );
  OAI211X2M U165 ( .A0(n101), .A1(n102), .B0(n74), .C0(RX_P_Data[7]), .Y(n99)
         );
  INVX2M U166 ( .A(OUT_Valid), .Y(n55) );
  AOI22X1M U167 ( .A0(alu_out_reg[0]), .A1(n55), .B0(n53), .B1(ALU_OUT[0]), 
        .Y(n118) );
  AOI22X1M U168 ( .A0(alu_out_reg[1]), .A1(n55), .B0(ALU_OUT[1]), .B1(n53), 
        .Y(n119) );
  AOI22X1M U169 ( .A0(alu_out_reg[2]), .A1(n55), .B0(ALU_OUT[2]), .B1(n53), 
        .Y(n120) );
  AOI22X1M U170 ( .A0(alu_out_reg[3]), .A1(n54), .B0(ALU_OUT[3]), .B1(n53), 
        .Y(n121) );
  AOI22X1M U171 ( .A0(alu_out_reg[4]), .A1(n54), .B0(ALU_OUT[4]), .B1(n53), 
        .Y(n122) );
  AOI22X1M U172 ( .A0(alu_out_reg[5]), .A1(n54), .B0(ALU_OUT[5]), .B1(n53), 
        .Y(n123) );
  AOI22X1M U173 ( .A0(alu_out_reg[6]), .A1(n55), .B0(ALU_OUT[6]), .B1(n53), 
        .Y(n124) );
  AOI22X1M U174 ( .A0(alu_out_reg[7]), .A1(n55), .B0(ALU_OUT[7]), .B1(n53), 
        .Y(n125) );
  NAND2X2M U175 ( .A(RX_P_Data[1]), .B(RX_D_VLD), .Y(n129) );
  NAND2X2M U176 ( .A(RX_P_Data[2]), .B(RX_D_VLD), .Y(n130) );
  NAND2X2M U177 ( .A(RX_P_Data[0]), .B(RX_D_VLD), .Y(n128) );
  OAI2BB2X1M U178 ( .B0(OUT_Valid), .B1(n69), .A0N(ALU_OUT[8]), .A1N(n53), .Y(
        n145) );
  OAI2BB2X1M U179 ( .B0(OUT_Valid), .B1(n68), .A0N(ALU_OUT[9]), .A1N(n53), .Y(
        n146) );
  OAI2BB2X1M U180 ( .B0(OUT_Valid), .B1(n67), .A0N(ALU_OUT[10]), .A1N(
        OUT_Valid), .Y(n147) );
  OAI2BB2X1M U181 ( .B0(OUT_Valid), .B1(n66), .A0N(ALU_OUT[11]), .A1N(
        OUT_Valid), .Y(n148) );
  OAI2BB2X1M U182 ( .B0(OUT_Valid), .B1(n65), .A0N(ALU_OUT[12]), .A1N(
        OUT_Valid), .Y(n149) );
  OAI2BB2X1M U183 ( .B0(OUT_Valid), .B1(n64), .A0N(ALU_OUT[13]), .A1N(n53), 
        .Y(n150) );
  OAI2BB2X1M U184 ( .B0(OUT_Valid), .B1(n63), .A0N(ALU_OUT[14]), .A1N(n53), 
        .Y(n151) );
  OAI2BB2X1M U185 ( .B0(OUT_Valid), .B1(n62), .A0N(ALU_OUT[15]), .A1N(n53), 
        .Y(n152) );
  INVX2M U186 ( .A(RdData_Valid), .Y(n165) );
  DLY1X1M U187 ( .A(test_se), .Y(n177) );
  DLY1X1M U188 ( .A(test_se), .Y(n178) );
  DLY1X1M U189 ( .A(test_se), .Y(n179) );
  DLY1X1M U190 ( .A(n179), .Y(n180) );
  DLY1X1M U191 ( .A(n179), .Y(n181) );
  DLY1X1M U192 ( .A(n178), .Y(n182) );
  DLY1X1M U193 ( .A(n177), .Y(n183) );
  DLY1X1M U194 ( .A(n178), .Y(n184) );
  DLY1X1M U195 ( .A(n178), .Y(n185) );
endmodule


module CLKDIV_MUX_WIDTH8 ( IN, OUT );
  input [5:0] IN;
  output [7:0] OUT;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NOR3X4M U11 ( .A(n7), .B(IN[1]), .C(IN[0]), .Y(OUT[1]) );
  NOR3X4M U12 ( .A(n6), .B(IN[1]), .C(IN[0]), .Y(OUT[2]) );
  NAND4BX1M U13 ( .AN(IN[3]), .B(IN[4]), .C(n15), .D(n14), .Y(n7) );
  NAND4BX1M U14 ( .AN(IN[4]), .B(IN[3]), .C(n15), .D(n14), .Y(n6) );
  NOR4X2M U15 ( .A(n5), .B(IN[3]), .C(IN[5]), .D(IN[4]), .Y(OUT[3]) );
  NAND3X2M U16 ( .A(n17), .B(n16), .C(IN[2]), .Y(n5) );
  INVX2M U17 ( .A(IN[2]), .Y(n15) );
  INVX2M U18 ( .A(IN[0]), .Y(n17) );
  INVX2M U19 ( .A(IN[1]), .Y(n16) );
  INVX2M U20 ( .A(IN[5]), .Y(n14) );
  OAI211X2M U21 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(OUT[0]) );
  NOR4X1M U22 ( .A(IN[5]), .B(IN[4]), .C(IN[3]), .D(n15), .Y(n8) );
  NAND2X2M U23 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U3 ( .A(1'b1), .Y(OUT[7]) );
  INVX2M U5 ( .A(1'b1), .Y(OUT[6]) );
  INVX2M U7 ( .A(1'b1), .Y(OUT[5]) );
  INVX2M U9 ( .A(1'b1), .Y(OUT[4]) );
endmodule


module clk_div_RATIO_WD8_0_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_RATIO_WD8_test_0 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, N18, N19, N20, N21, N22, N23, N24, N52, N53, N54, N55,
         N56, N57, N58, n29, n30, n1, n2, n3, n4, n5, n6, n7, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n48;
  wire   [6:0] half;
  wire   [6:0] i;

  SDFFRQX2M div_clk_reg ( .D(n30), .SI(test_si), .SE(n48), .CK(i_ref_clk), 
        .RN(n1), .Q(div_clk) );
  SDFFRQX2M tick_1_reg ( .D(n29), .SI(i[6]), .SE(n48), .CK(i_ref_clk), .RN(n1), 
        .Q(test_so) );
  SDFFRQX2M i_reg_6_ ( .D(N58), .SI(i[5]), .SE(n48), .CK(i_ref_clk), .RN(n1), 
        .Q(i[6]) );
  SDFFRQX2M i_reg_0_ ( .D(N52), .SI(div_clk), .SE(test_se), .CK(i_ref_clk), 
        .RN(n1), .Q(i[0]) );
  SDFFRQX2M i_reg_2_ ( .D(N54), .SI(i[1]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[2]) );
  SDFFRQX2M i_reg_1_ ( .D(N53), .SI(i[0]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[1]) );
  SDFFRQX2M i_reg_5_ ( .D(N57), .SI(i[4]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[5]) );
  SDFFRQX2M i_reg_4_ ( .D(N56), .SI(i[3]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[4]) );
  SDFFRQX2M i_reg_3_ ( .D(N55), .SI(i[2]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[3]) );
  OR2X2M U7 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n3) );
  INVX2M U8 ( .A(n2), .Y(n1) );
  INVX2M U9 ( .A(i_rst_n), .Y(n2) );
  INVX2M U14 ( .A(i_div_ratio[5]), .Y(n17) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(half[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n3), .Y(
        half[1]) );
  OR2X1M U19 ( .A(n3), .B(i_div_ratio[3]), .Y(n4) );
  OAI2BB1X1M U20 ( .A0N(n3), .A1N(i_div_ratio[3]), .B0(n4), .Y(half[2]) );
  NOR2X1M U21 ( .A(n4), .B(i_div_ratio[4]), .Y(n5) );
  AO21XLM U22 ( .A0(n4), .A1(i_div_ratio[4]), .B0(n5), .Y(half[3]) );
  CLKNAND2X2M U23 ( .A(n5), .B(n17), .Y(n6) );
  OAI21X1M U24 ( .A0(n5), .A1(n17), .B0(n6), .Y(half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n6), .Y(half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n6), .Y(n7) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n7), .Y(half[6]) );
  CLKXOR2X2M U28 ( .A(div_clk), .B(n18), .Y(n30) );
  NOR2X1M U29 ( .A(n19), .B(n20), .Y(n18) );
  MXI2X1M U30 ( .A(n21), .B(n22), .S0(test_so), .Y(n29) );
  OR2X1M U31 ( .A(n19), .B(n20), .Y(n21) );
  NOR2BX1M U32 ( .AN(N24), .B(n22), .Y(N58) );
  NOR2BX1M U33 ( .AN(N23), .B(n22), .Y(N57) );
  NOR2BX1M U34 ( .AN(N22), .B(n22), .Y(N56) );
  NOR2BX1M U35 ( .AN(N21), .B(n22), .Y(N55) );
  NOR2BX1M U36 ( .AN(N20), .B(n22), .Y(N54) );
  NOR2BX1M U37 ( .AN(N19), .B(n22), .Y(N53) );
  NOR2BX1M U38 ( .AN(N18), .B(n22), .Y(N52) );
  CLKNAND2X2M U39 ( .A(n19), .B(N2), .Y(n22) );
  MXI2X1M U40 ( .A(n23), .B(n24), .S0(n25), .Y(n19) );
  AND2X1M U41 ( .A(test_so), .B(i_div_ratio[0]), .Y(n25) );
  NOR4X1M U42 ( .A(n26), .B(n27), .C(n28), .D(n31), .Y(n24) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[4]), .B(i[3]), .Y(n31) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[6]), .B(i[5]), .Y(n28) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[5]), .B(i[4]), .Y(n27) );
  NAND4X1M U46 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n26) );
  XNOR2X1M U47 ( .A(i[6]), .B(i_div_ratio[7]), .Y(n35) );
  XNOR2X1M U48 ( .A(i[0]), .B(i_div_ratio[1]), .Y(n34) );
  XNOR2X1M U49 ( .A(i[1]), .B(i_div_ratio[2]), .Y(n33) );
  XNOR2X1M U50 ( .A(i[2]), .B(i_div_ratio[3]), .Y(n32) );
  NOR4X1M U51 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n23) );
  CLKXOR2X2M U52 ( .A(i[3]), .B(half[3]), .Y(n39) );
  CLKXOR2X2M U53 ( .A(i[5]), .B(half[5]), .Y(n38) );
  CLKXOR2X2M U54 ( .A(i[4]), .B(half[4]), .Y(n37) );
  NAND4X1M U55 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n36) );
  XNOR2X1M U56 ( .A(i[6]), .B(half[6]), .Y(n43) );
  XNOR2X1M U57 ( .A(i[0]), .B(half[0]), .Y(n42) );
  XNOR2X1M U58 ( .A(i[1]), .B(half[1]), .Y(n41) );
  XNOR2X1M U59 ( .A(i[2]), .B(half[2]), .Y(n40) );
  CLKINVX1M U60 ( .A(n20), .Y(N2) );
  OAI21X1M U61 ( .A0(n44), .A1(n45), .B0(i_clk_en), .Y(n20) );
  OR3X1M U62 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n45) );
  OR4X1M U63 ( .A(i_div_ratio[7]), .B(i_div_ratio[4]), .C(i_div_ratio[5]), .D(
        i_div_ratio[6]), .Y(n44) );
  DLY1X1M U64 ( .A(test_se), .Y(n48) );
  clk_div_RATIO_WD8_0_DW01_inc_0 r76 ( .A(i), .SUM({N24, N23, N22, N21, N20, 
        N19, N18}) );
endmodule


module clk_div_RATIO_WD8_1_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  CLKXOR2X2M U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module clk_div_RATIO_WD8_test_1 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk, test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk, N18, N19, N20, N21, N22, N23, N24, N52, N53, N54, N55,
         N56, N57, N58, n1, n2, n3, n4, n5, n6, n7, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n59;
  wire   [6:0] half;
  wire   [6:0] i;

  SDFFRQX2M div_clk_reg ( .D(n46), .SI(test_si), .SE(n59), .CK(i_ref_clk), 
        .RN(n1), .Q(div_clk) );
  SDFFRQX2M tick_1_reg ( .D(n47), .SI(i[6]), .SE(n59), .CK(i_ref_clk), .RN(n1), 
        .Q(test_so) );
  SDFFRQX2M i_reg_6_ ( .D(N58), .SI(i[5]), .SE(n59), .CK(i_ref_clk), .RN(n1), 
        .Q(i[6]) );
  SDFFRQX2M i_reg_0_ ( .D(N52), .SI(div_clk), .SE(test_se), .CK(i_ref_clk), 
        .RN(n1), .Q(i[0]) );
  SDFFRQX2M i_reg_2_ ( .D(N54), .SI(i[1]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[2]) );
  SDFFRQX2M i_reg_1_ ( .D(N53), .SI(i[0]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[1]) );
  SDFFRQX2M i_reg_5_ ( .D(N57), .SI(i[4]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[5]) );
  SDFFRQX2M i_reg_4_ ( .D(N56), .SI(i[3]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[4]) );
  SDFFRQX2M i_reg_3_ ( .D(N55), .SI(i[2]), .SE(test_se), .CK(i_ref_clk), .RN(
        n1), .Q(i[3]) );
  INVX2M U7 ( .A(n2), .Y(n1) );
  INVX2M U8 ( .A(i_rst_n), .Y(n2) );
  OR2X2M U9 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n3) );
  INVX2M U14 ( .A(i_div_ratio[5]), .Y(n17) );
  MX2X2M U16 ( .A(i_ref_clk), .B(div_clk), .S0(N2), .Y(o_div_clk) );
  CLKINVX1M U17 ( .A(i_div_ratio[1]), .Y(half[0]) );
  OAI2BB1X1M U18 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n3), .Y(
        half[1]) );
  OR2X1M U19 ( .A(n3), .B(i_div_ratio[3]), .Y(n4) );
  OAI2BB1X1M U20 ( .A0N(n3), .A1N(i_div_ratio[3]), .B0(n4), .Y(half[2]) );
  NOR2X1M U21 ( .A(n4), .B(i_div_ratio[4]), .Y(n5) );
  AO21XLM U22 ( .A0(n4), .A1(i_div_ratio[4]), .B0(n5), .Y(half[3]) );
  CLKNAND2X2M U23 ( .A(n5), .B(n17), .Y(n6) );
  OAI21X1M U24 ( .A0(n5), .A1(n17), .B0(n6), .Y(half[4]) );
  XNOR2X1M U25 ( .A(i_div_ratio[6]), .B(n6), .Y(half[5]) );
  NOR2X1M U26 ( .A(i_div_ratio[6]), .B(n6), .Y(n7) );
  CLKXOR2X2M U27 ( .A(i_div_ratio[7]), .B(n7), .Y(half[6]) );
  CLKXOR2X2M U28 ( .A(div_clk), .B(n18), .Y(n46) );
  NOR2X1M U29 ( .A(n19), .B(n20), .Y(n18) );
  MXI2X1M U30 ( .A(n21), .B(n22), .S0(test_so), .Y(n47) );
  OR2X1M U31 ( .A(n19), .B(n20), .Y(n21) );
  NOR2BX1M U32 ( .AN(N24), .B(n22), .Y(N58) );
  NOR2BX1M U33 ( .AN(N23), .B(n22), .Y(N57) );
  NOR2BX1M U34 ( .AN(N22), .B(n22), .Y(N56) );
  NOR2BX1M U35 ( .AN(N21), .B(n22), .Y(N55) );
  NOR2BX1M U36 ( .AN(N20), .B(n22), .Y(N54) );
  NOR2BX1M U37 ( .AN(N19), .B(n22), .Y(N53) );
  NOR2BX1M U38 ( .AN(N18), .B(n22), .Y(N52) );
  CLKNAND2X2M U39 ( .A(n19), .B(N2), .Y(n22) );
  MXI2X1M U40 ( .A(n23), .B(n24), .S0(n25), .Y(n19) );
  AND2X1M U41 ( .A(test_so), .B(i_div_ratio[0]), .Y(n25) );
  NOR4X1M U42 ( .A(n26), .B(n27), .C(n28), .D(n31), .Y(n24) );
  CLKXOR2X2M U43 ( .A(i_div_ratio[4]), .B(i[3]), .Y(n31) );
  CLKXOR2X2M U44 ( .A(i_div_ratio[6]), .B(i[5]), .Y(n28) );
  CLKXOR2X2M U45 ( .A(i_div_ratio[5]), .B(i[4]), .Y(n27) );
  NAND4X1M U46 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n26) );
  XNOR2X1M U47 ( .A(i[6]), .B(i_div_ratio[7]), .Y(n35) );
  XNOR2X1M U48 ( .A(i[0]), .B(i_div_ratio[1]), .Y(n34) );
  XNOR2X1M U49 ( .A(i[1]), .B(i_div_ratio[2]), .Y(n33) );
  XNOR2X1M U50 ( .A(i[2]), .B(i_div_ratio[3]), .Y(n32) );
  NOR4X1M U51 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n23) );
  CLKXOR2X2M U52 ( .A(i[3]), .B(half[3]), .Y(n39) );
  CLKXOR2X2M U53 ( .A(i[5]), .B(half[5]), .Y(n38) );
  CLKXOR2X2M U54 ( .A(i[4]), .B(half[4]), .Y(n37) );
  NAND4X1M U55 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(n36) );
  XNOR2X1M U56 ( .A(i[6]), .B(half[6]), .Y(n43) );
  XNOR2X1M U57 ( .A(i[0]), .B(half[0]), .Y(n42) );
  XNOR2X1M U58 ( .A(i[1]), .B(half[1]), .Y(n41) );
  XNOR2X1M U59 ( .A(i[2]), .B(half[2]), .Y(n40) );
  CLKINVX1M U60 ( .A(n20), .Y(N2) );
  OAI21X1M U61 ( .A0(n44), .A1(n45), .B0(i_clk_en), .Y(n20) );
  OR3X1M U62 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n45) );
  OR4X1M U63 ( .A(i_div_ratio[7]), .B(i_div_ratio[4]), .C(i_div_ratio[5]), .D(
        i_div_ratio[6]), .Y(n44) );
  DLY1X1M U64 ( .A(test_se), .Y(n59) );
  clk_div_RATIO_WD8_1_DW01_inc_0 r76 ( .A(i), .SUM({N24, N23, N22, N21, N20, 
        N19, N18}) );
endmodule


module FIFO_WR_FIFO_DEPTH8_ADDR_WIDTH4_test_1 ( W_clk, W_rst, W_inc, WQ2_rptr, 
        W_ptr, W_addr, W_CLKEN, FULL, test_si, test_se );
  input [3:0] WQ2_rptr;
  output [3:0] W_ptr;
  output [3:0] W_addr;
  input W_clk, W_rst, W_inc, test_si, test_se;
  output W_CLKEN, FULL;
  wire   n24, n1, n2, n3, n5, n6, n7, n8, n9, n11, n12, n15, n16, n17, n18,
         n19, n21, n23, n25, n27, n29, n31, n33, n35, n4, n10, n13, n14, n36,
         n37, n40, n41, n42, n43, n44, n45, n46, n20;

  SDFFRQX2M W_addr_reg_3_ ( .D(n27), .SI(W_addr[2]), .SE(n42), .CK(W_clk), 
        .RN(n10), .Q(W_addr[3]) );
  SDFFRQX2M W_ptr_reg_0_ ( .D(n33), .SI(W_addr[3]), .SE(n41), .CK(W_clk), .RN(
        n10), .Q(W_ptr[0]) );
  SDFFRQX2M W_ptr_reg_1_ ( .D(n25), .SI(W_ptr[0]), .SE(n43), .CK(W_clk), .RN(
        n10), .Q(W_ptr[1]) );
  SDFFRQX2M W_ptr_reg_2_ ( .D(n23), .SI(W_ptr[1]), .SE(n42), .CK(W_clk), .RN(
        n10), .Q(W_ptr[2]) );
  SDFFRQX2M W_ptr_reg_3_ ( .D(n21), .SI(W_ptr[2]), .SE(n41), .CK(W_clk), .RN(
        n10), .Q(n24) );
  SDFFRQX2M W_addr_reg_2_ ( .D(n29), .SI(W_addr[1]), .SE(n43), .CK(W_clk), 
        .RN(n10), .Q(W_addr[2]) );
  SDFFRQX2M W_addr_reg_0_ ( .D(n35), .SI(test_si), .SE(n42), .CK(W_clk), .RN(
        n10), .Q(W_addr[0]) );
  SDFFRQX2M W_addr_reg_1_ ( .D(n31), .SI(W_addr[0]), .SE(n41), .CK(W_clk), 
        .RN(n10), .Q(W_addr[1]) );
  NAND2X2M U3 ( .A(W_inc), .B(n15), .Y(n2) );
  INVX2M U4 ( .A(n13), .Y(n10) );
  INVX2M U5 ( .A(W_rst), .Y(n13) );
  NOR2X2M U6 ( .A(n37), .B(n7), .Y(n5) );
  OAI22X1M U7 ( .A0(W_CLKEN), .A1(n37), .B0(n8), .B1(n2), .Y(n29) );
  INVX2M U8 ( .A(n15), .Y(FULL) );
  INVX2M U9 ( .A(n8), .Y(n14) );
  INVX2M U10 ( .A(n2), .Y(W_CLKEN) );
  CLKXOR2X2M U11 ( .A(n7), .B(W_addr[2]), .Y(n8) );
  NAND2X2M U12 ( .A(W_addr[1]), .B(W_addr[0]), .Y(n7) );
  XNOR2X2M U13 ( .A(W_addr[3]), .B(n5), .Y(n1) );
  CLKXOR2X2M U14 ( .A(n8), .B(W_addr[0]), .Y(n11) );
  NAND4X2M U15 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  XNOR2X2M U16 ( .A(W_ptr[0]), .B(WQ2_rptr[0]), .Y(n16) );
  XNOR2X2M U17 ( .A(W_ptr[1]), .B(WQ2_rptr[1]), .Y(n17) );
  CLKXOR2X2M U18 ( .A(W_ptr[2]), .B(WQ2_rptr[2]), .Y(n18) );
  CLKXOR2X2M U19 ( .A(n45), .B(WQ2_rptr[3]), .Y(n19) );
  CLKXOR2X2M U20 ( .A(W_addr[0]), .B(W_CLKEN), .Y(n35) );
  XNOR2X2M U21 ( .A(W_addr[1]), .B(n4), .Y(n31) );
  NAND2X2M U22 ( .A(W_addr[0]), .B(W_CLKEN), .Y(n4) );
  CLKXOR2X2M U23 ( .A(W_addr[3]), .B(n12), .Y(n27) );
  NOR2BX2M U24 ( .AN(n5), .B(n2), .Y(n12) );
  OAI2BB2X1M U25 ( .B0(n1), .B1(n2), .A0N(n2), .A1N(n46), .Y(n21) );
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
  INVXLM U42 ( .A(test_se), .Y(n40) );
  INVXLM U43 ( .A(n40), .Y(n41) );
  INVXLM U44 ( .A(n40), .Y(n42) );
  INVXLM U45 ( .A(n40), .Y(n43) );
  INVXLM U46 ( .A(W_ptr[3]), .Y(n44) );
  INVXLM U47 ( .A(n44), .Y(n45) );
  INVXLM U48 ( .A(n44), .Y(n46) );
  INVXLM U32 ( .A(n24), .Y(n20) );
  INVX8M U33 ( .A(n20), .Y(W_ptr[3]) );
endmodule


module FIFO_RD_FIFO_DEPTH8_ADDR_WIDTH4_test_1 ( R_clk, R_rst, R_inc, RQ2_wptr, 
        R_ptr, R_addr, EMPTY, test_si, test_se );
  input [3:0] RQ2_wptr;
  output [3:0] R_ptr;
  output [3:0] R_addr;
  input R_clk, R_rst, R_inc, test_si, test_se;
  output EMPTY;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n9, n10, n35, n36, n37, n38;

  SDFFRQX2M R_addr_reg_3_ ( .D(n28), .SI(R_addr[2]), .SE(n37), .CK(R_clk), 
        .RN(R_rst), .Q(R_addr[3]) );
  SDFFRQX2M R_ptr_reg_0_ ( .D(n31), .SI(R_addr[3]), .SE(n36), .CK(R_clk), .RN(
        R_rst), .Q(R_ptr[0]) );
  SDFFRQX2M R_ptr_reg_1_ ( .D(n25), .SI(R_ptr[0]), .SE(n38), .CK(R_clk), .RN(
        R_rst), .Q(R_ptr[1]) );
  SDFFRQX2M R_ptr_reg_2_ ( .D(n26), .SI(R_ptr[1]), .SE(n37), .CK(R_clk), .RN(
        R_rst), .Q(R_ptr[2]) );
  SDFFRQX2M R_ptr_reg_3_ ( .D(n27), .SI(R_ptr[2]), .SE(n36), .CK(R_clk), .RN(
        R_rst), .Q(R_ptr[3]) );
  SDFFRQX2M R_addr_reg_0_ ( .D(n32), .SI(test_si), .SE(n38), .CK(R_clk), .RN(
        R_rst), .Q(R_addr[0]) );
  SDFFRQX2M R_addr_reg_2_ ( .D(n29), .SI(R_addr[1]), .SE(n37), .CK(R_clk), 
        .RN(R_rst), .Q(R_addr[2]) );
  SDFFRQX2M R_addr_reg_1_ ( .D(n30), .SI(R_addr[0]), .SE(n36), .CK(R_clk), 
        .RN(R_rst), .Q(R_addr[1]) );
  INVX2M U11 ( .A(n12), .Y(n9) );
  OAI22X1M U12 ( .A0(n9), .A1(n10), .B0(n13), .B1(n12), .Y(n29) );
  INVX2M U13 ( .A(n20), .Y(EMPTY) );
  NAND2X4M U14 ( .A(R_inc), .B(n20), .Y(n12) );
  XNOR2X2M U15 ( .A(R_addr[3]), .B(n17), .Y(n16) );
  NOR2X2M U16 ( .A(n10), .B(n18), .Y(n17) );
  NAND4X2M U17 ( .A(n21), .B(n22), .C(n23), .D(n24), .Y(n20) );
  XNOR2X2M U18 ( .A(R_ptr[1]), .B(RQ2_wptr[1]), .Y(n21) );
  XNOR2X2M U19 ( .A(R_ptr[0]), .B(RQ2_wptr[0]), .Y(n22) );
  XNOR2X2M U20 ( .A(R_ptr[3]), .B(RQ2_wptr[3]), .Y(n23) );
  OAI2BB2X1M U21 ( .B0(n15), .B1(n12), .A0N(n12), .A1N(R_ptr[2]), .Y(n26) );
  XNOR2X2M U22 ( .A(n16), .B(n13), .Y(n15) );
  NAND2X2M U23 ( .A(R_addr[1]), .B(R_addr[0]), .Y(n18) );
  XNOR2X2M U24 ( .A(R_ptr[2]), .B(RQ2_wptr[2]), .Y(n24) );
  CLKXOR2X2M U25 ( .A(R_addr[0]), .B(n9), .Y(n32) );
  INVX2M U26 ( .A(R_addr[2]), .Y(n10) );
  AO22X1M U27 ( .A0(n12), .A1(R_addr[1]), .B0(n14), .B1(n9), .Y(n30) );
  CLKXOR2X2M U28 ( .A(n18), .B(R_addr[2]), .Y(n13) );
  CLKXOR2X2M U29 ( .A(R_addr[1]), .B(R_addr[0]), .Y(n14) );
  OAI2BB2X1M U30 ( .B0(n12), .B1(n19), .A0N(n12), .A1N(R_ptr[0]), .Y(n31) );
  CLKXOR2X2M U31 ( .A(R_addr[0]), .B(n14), .Y(n19) );
  OAI2BB2X1M U32 ( .B0(n16), .B1(n12), .A0N(n12), .A1N(R_addr[3]), .Y(n28) );
  OAI2BB2X1M U33 ( .B0(n16), .B1(n12), .A0N(n12), .A1N(R_ptr[3]), .Y(n27) );
  OAI2BB2X1M U34 ( .B0(n11), .B1(n12), .A0N(n12), .A1N(R_ptr[1]), .Y(n25) );
  CLKXOR2X2M U35 ( .A(n13), .B(n14), .Y(n11) );
  INVXLM U36 ( .A(test_se), .Y(n35) );
  INVXLM U37 ( .A(n35), .Y(n36) );
  INVXLM U38 ( .A(n35), .Y(n37) );
  INVXLM U39 ( .A(n35), .Y(n38) );
endmodule


module DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_1 ( clk, rst, i_ptr, 
        o_ptr, test_si, test_so, test_se );
  input [3:0] i_ptr;
  output [3:0] o_ptr;
  input clk, rst, test_si, test_se;
  output test_so;
  wire   sync_reg_2__1_, sync_reg_1__1_, sync_reg_0__1_, n9, n10, n13, n14,
         n15, n16;

  SDFFRQX2M sync_reg_reg_1__0_ ( .D(sync_reg_1__1_), .SI(sync_reg_0__1_), .SE(
        n15), .CK(clk), .RN(n9), .Q(o_ptr[1]) );
  SDFFRQX2M sync_reg_reg_0__0_ ( .D(sync_reg_0__1_), .SI(test_si), .SE(n14), 
        .CK(clk), .RN(n9), .Q(o_ptr[0]) );
  SDFFRQX2M sync_reg_reg_3__0_ ( .D(test_so), .SI(sync_reg_2__1_), .SE(n16), 
        .CK(clk), .RN(n9), .Q(o_ptr[3]) );
  SDFFRQX2M sync_reg_reg_2__0_ ( .D(sync_reg_2__1_), .SI(sync_reg_1__1_), .SE(
        n15), .CK(clk), .RN(n9), .Q(o_ptr[2]) );
  SDFFRQX2M sync_reg_reg_3__1_ ( .D(i_ptr[3]), .SI(o_ptr[3]), .SE(n14), .CK(
        clk), .RN(n9), .Q(test_so) );
  SDFFRQX2M sync_reg_reg_2__1_ ( .D(i_ptr[2]), .SI(o_ptr[2]), .SE(n16), .CK(
        clk), .RN(n9), .Q(sync_reg_2__1_) );
  SDFFRQX2M sync_reg_reg_1__1_ ( .D(i_ptr[1]), .SI(o_ptr[1]), .SE(n15), .CK(
        clk), .RN(n9), .Q(sync_reg_1__1_) );
  SDFFRQX2M sync_reg_reg_0__1_ ( .D(i_ptr[0]), .SI(o_ptr[0]), .SE(n14), .CK(
        clk), .RN(n9), .Q(sync_reg_0__1_) );
  INVX2M U11 ( .A(n10), .Y(n9) );
  INVX2M U12 ( .A(rst), .Y(n10) );
  INVXLM U13 ( .A(test_se), .Y(n13) );
  INVXLM U14 ( .A(n13), .Y(n14) );
  INVXLM U15 ( .A(n13), .Y(n15) );
  INVXLM U16 ( .A(n13), .Y(n16) );
endmodule


module DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_0 ( clk, rst, i_ptr, 
        o_ptr, test_si, test_so, test_se );
  input [3:0] i_ptr;
  output [3:0] o_ptr;
  input clk, rst, test_si, test_se;
  output test_so;
  wire   sync_reg_2__1_, sync_reg_1__1_, sync_reg_0__1_, n9, n10, n21, n22,
         n23, n24;

  SDFFRQX2M sync_reg_reg_3__0_ ( .D(test_so), .SI(sync_reg_2__1_), .SE(n23), 
        .CK(clk), .RN(n9), .Q(o_ptr[3]) );
  SDFFRQX2M sync_reg_reg_2__0_ ( .D(sync_reg_2__1_), .SI(sync_reg_1__1_), .SE(
        n22), .CK(clk), .RN(n9), .Q(o_ptr[2]) );
  SDFFRQX2M sync_reg_reg_1__0_ ( .D(sync_reg_1__1_), .SI(sync_reg_0__1_), .SE(
        n24), .CK(clk), .RN(n9), .Q(o_ptr[1]) );
  SDFFRQX2M sync_reg_reg_0__0_ ( .D(sync_reg_0__1_), .SI(test_si), .SE(n23), 
        .CK(clk), .RN(n9), .Q(o_ptr[0]) );
  SDFFRQX2M sync_reg_reg_3__1_ ( .D(i_ptr[3]), .SI(o_ptr[3]), .SE(n22), .CK(
        clk), .RN(n9), .Q(test_so) );
  SDFFRQX2M sync_reg_reg_2__1_ ( .D(i_ptr[2]), .SI(o_ptr[2]), .SE(n24), .CK(
        clk), .RN(n9), .Q(sync_reg_2__1_) );
  SDFFRQX2M sync_reg_reg_1__1_ ( .D(i_ptr[1]), .SI(o_ptr[1]), .SE(n23), .CK(
        clk), .RN(n9), .Q(sync_reg_1__1_) );
  SDFFRQX2M sync_reg_reg_0__1_ ( .D(i_ptr[0]), .SI(o_ptr[0]), .SE(n22), .CK(
        clk), .RN(n9), .Q(sync_reg_0__1_) );
  INVX2M U11 ( .A(n10), .Y(n9) );
  INVX2M U12 ( .A(rst), .Y(n10) );
  INVXLM U13 ( .A(test_se), .Y(n21) );
  INVXLM U14 ( .A(n21), .Y(n22) );
  INVXLM U15 ( .A(n21), .Y(n23) );
  INVXLM U16 ( .A(n21), .Y(n24) );
endmodule


module FIFO_MEM_CNTRL_DATA_WIDTH8_FIFO_DEPTH8_ADDR_WIDTH4_test_1 ( W_clk, 
        W_rst, W_CLKEN, W_addr, R_addr, WR_data, RD_data, test_si, test_so, 
        test_se );
  input [2:0] W_addr;
  input [2:0] R_addr;
  input [7:0] WR_data;
  output [7:0] RD_data;
  input W_clk, W_rst, W_CLKEN, test_si, test_se;
  output test_so;
  wire   mem_7__6_, mem_7__5_, mem_7__4_, mem_7__3_, mem_7__2_, mem_7__1_,
         mem_7__0_, mem_6__7_, mem_6__6_, mem_6__5_, mem_6__4_, mem_6__3_,
         mem_6__2_, mem_6__1_, mem_6__0_, mem_5__7_, mem_5__6_, mem_5__5_,
         mem_5__4_, mem_5__3_, mem_5__2_, mem_5__1_, mem_5__0_, mem_4__7_,
         mem_4__6_, mem_4__5_, mem_4__4_, mem_4__3_, mem_4__2_, mem_4__1_,
         mem_4__0_, mem_3__7_, mem_3__6_, mem_3__5_, mem_3__4_, mem_3__3_,
         mem_3__2_, mem_3__1_, mem_3__0_, mem_2__7_, mem_2__6_, mem_2__5_,
         mem_2__4_, mem_2__3_, mem_2__2_, mem_2__1_, mem_2__0_, mem_1__7_,
         mem_1__6_, mem_1__5_, mem_1__4_, mem_1__3_, mem_1__2_, mem_1__1_,
         mem_1__0_, mem_0__7_, mem_0__6_, mem_0__5_, mem_0__4_, mem_0__3_,
         mem_0__2_, mem_0__1_, mem_0__0_, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221;

  SDFFRQX2M mem_reg_1__7_ ( .D(n100), .SI(mem_1__6_), .SE(n211), .CK(W_clk), 
        .RN(n194), .Q(mem_1__7_) );
  SDFFRQX2M mem_reg_1__6_ ( .D(n99), .SI(mem_1__5_), .SE(n210), .CK(W_clk), 
        .RN(n194), .Q(mem_1__6_) );
  SDFFRQX2M mem_reg_1__5_ ( .D(n98), .SI(mem_1__4_), .SE(n212), .CK(W_clk), 
        .RN(n194), .Q(mem_1__5_) );
  SDFFRQX2M mem_reg_1__4_ ( .D(n97), .SI(mem_1__3_), .SE(n211), .CK(W_clk), 
        .RN(n194), .Q(mem_1__4_) );
  SDFFRQX2M mem_reg_1__3_ ( .D(n96), .SI(mem_1__2_), .SE(n210), .CK(W_clk), 
        .RN(n191), .Q(mem_1__3_) );
  SDFFRQX2M mem_reg_1__2_ ( .D(n95), .SI(mem_1__1_), .SE(n212), .CK(W_clk), 
        .RN(n194), .Q(mem_1__2_) );
  SDFFRQX2M mem_reg_1__1_ ( .D(n94), .SI(mem_1__0_), .SE(n211), .CK(W_clk), 
        .RN(n192), .Q(mem_1__1_) );
  SDFFRQX2M mem_reg_1__0_ ( .D(n93), .SI(mem_0__7_), .SE(n210), .CK(W_clk), 
        .RN(n193), .Q(mem_1__0_) );
  SDFFRQX2M mem_reg_0__7_ ( .D(n92), .SI(mem_0__6_), .SE(n215), .CK(W_clk), 
        .RN(n191), .Q(mem_0__7_) );
  SDFFRQX2M mem_reg_0__6_ ( .D(n91), .SI(mem_0__5_), .SE(n213), .CK(W_clk), 
        .RN(n194), .Q(mem_0__6_) );
  SDFFRQX2M mem_reg_0__5_ ( .D(n90), .SI(mem_0__4_), .SE(n218), .CK(W_clk), 
        .RN(n192), .Q(mem_0__5_) );
  SDFFRQX2M mem_reg_0__4_ ( .D(n89), .SI(mem_0__3_), .SE(n209), .CK(W_clk), 
        .RN(W_rst), .Q(mem_0__4_) );
  SDFFRQX2M mem_reg_0__3_ ( .D(n88), .SI(mem_0__2_), .SE(n214), .CK(W_clk), 
        .RN(W_rst), .Q(mem_0__3_) );
  SDFFRQX2M mem_reg_0__2_ ( .D(n87), .SI(mem_0__1_), .SE(n215), .CK(W_clk), 
        .RN(W_rst), .Q(mem_0__2_) );
  SDFFRQX2M mem_reg_0__1_ ( .D(n86), .SI(mem_0__0_), .SE(n220), .CK(W_clk), 
        .RN(W_rst), .Q(mem_0__1_) );
  SDFFRQX2M mem_reg_0__0_ ( .D(n85), .SI(test_si), .SE(n218), .CK(W_clk), .RN(
        W_rst), .Q(mem_0__0_) );
  SDFFRQX2M mem_reg_5__7_ ( .D(n132), .SI(mem_5__6_), .SE(n216), .CK(W_clk), 
        .RN(n192), .Q(mem_5__7_) );
  SDFFRQX2M mem_reg_5__6_ ( .D(n131), .SI(mem_5__5_), .SE(n216), .CK(W_clk), 
        .RN(n192), .Q(mem_5__6_) );
  SDFFRQX2M mem_reg_5__5_ ( .D(n130), .SI(mem_5__4_), .SE(n218), .CK(W_clk), 
        .RN(n192), .Q(mem_5__5_) );
  SDFFRQX2M mem_reg_5__4_ ( .D(n129), .SI(mem_5__3_), .SE(n218), .CK(W_clk), 
        .RN(n192), .Q(mem_5__4_) );
  SDFFRQX2M mem_reg_5__3_ ( .D(n128), .SI(mem_5__2_), .SE(n220), .CK(W_clk), 
        .RN(n192), .Q(mem_5__3_) );
  SDFFRQX2M mem_reg_5__2_ ( .D(n127), .SI(mem_5__1_), .SE(n216), .CK(W_clk), 
        .RN(n192), .Q(mem_5__2_) );
  SDFFRQX2M mem_reg_5__1_ ( .D(n126), .SI(mem_5__0_), .SE(n216), .CK(W_clk), 
        .RN(n192), .Q(mem_5__1_) );
  SDFFRQX2M mem_reg_5__0_ ( .D(n125), .SI(mem_4__7_), .SE(n208), .CK(W_clk), 
        .RN(n192), .Q(mem_5__0_) );
  SDFFRQX2M mem_reg_4__7_ ( .D(n124), .SI(mem_4__6_), .SE(n220), .CK(W_clk), 
        .RN(n192), .Q(mem_4__7_) );
  SDFFRQX2M mem_reg_4__6_ ( .D(n123), .SI(mem_4__5_), .SE(n215), .CK(W_clk), 
        .RN(n192), .Q(mem_4__6_) );
  SDFFRQX2M mem_reg_4__5_ ( .D(n122), .SI(mem_4__4_), .SE(n208), .CK(W_clk), 
        .RN(n193), .Q(mem_4__5_) );
  SDFFRQX2M mem_reg_4__4_ ( .D(n121), .SI(mem_4__3_), .SE(n220), .CK(W_clk), 
        .RN(n193), .Q(mem_4__4_) );
  SDFFRQX2M mem_reg_4__3_ ( .D(n120), .SI(mem_4__2_), .SE(n214), .CK(W_clk), 
        .RN(n193), .Q(mem_4__3_) );
  SDFFRQX2M mem_reg_4__2_ ( .D(n119), .SI(mem_4__1_), .SE(n219), .CK(W_clk), 
        .RN(n193), .Q(mem_4__2_) );
  SDFFRQX2M mem_reg_4__1_ ( .D(n118), .SI(mem_4__0_), .SE(n213), .CK(W_clk), 
        .RN(n193), .Q(mem_4__1_) );
  SDFFRQX2M mem_reg_4__0_ ( .D(n117), .SI(mem_3__7_), .SE(n213), .CK(W_clk), 
        .RN(n193), .Q(mem_4__0_) );
  SDFFRQX2M mem_reg_7__7_ ( .D(n148), .SI(mem_7__6_), .SE(n219), .CK(W_clk), 
        .RN(n191), .Q(test_so) );
  SDFFRQX2M mem_reg_7__6_ ( .D(n147), .SI(mem_7__5_), .SE(n218), .CK(W_clk), 
        .RN(n191), .Q(mem_7__6_) );
  SDFFRQX2M mem_reg_7__5_ ( .D(n146), .SI(mem_7__4_), .SE(n213), .CK(W_clk), 
        .RN(n191), .Q(mem_7__5_) );
  SDFFRQX2M mem_reg_7__4_ ( .D(n145), .SI(mem_7__3_), .SE(n219), .CK(W_clk), 
        .RN(n191), .Q(mem_7__4_) );
  SDFFRQX2M mem_reg_7__3_ ( .D(n144), .SI(mem_7__2_), .SE(n215), .CK(W_clk), 
        .RN(n191), .Q(mem_7__3_) );
  SDFFRQX2M mem_reg_7__2_ ( .D(n143), .SI(mem_7__1_), .SE(n218), .CK(W_clk), 
        .RN(n191), .Q(mem_7__2_) );
  SDFFRQX2M mem_reg_7__1_ ( .D(n142), .SI(mem_7__0_), .SE(n219), .CK(W_clk), 
        .RN(n191), .Q(mem_7__1_) );
  SDFFRQX2M mem_reg_7__0_ ( .D(n141), .SI(mem_6__7_), .SE(n213), .CK(W_clk), 
        .RN(n191), .Q(mem_7__0_) );
  SDFFRQX2M mem_reg_6__7_ ( .D(n140), .SI(mem_6__6_), .SE(n216), .CK(W_clk), 
        .RN(n191), .Q(mem_6__7_) );
  SDFFRQX2M mem_reg_6__6_ ( .D(n139), .SI(mem_6__5_), .SE(n215), .CK(W_clk), 
        .RN(n191), .Q(mem_6__6_) );
  SDFFRQX2M mem_reg_6__5_ ( .D(n138), .SI(mem_6__4_), .SE(n213), .CK(W_clk), 
        .RN(n191), .Q(mem_6__5_) );
  SDFFRQX2M mem_reg_6__4_ ( .D(n137), .SI(mem_6__3_), .SE(n215), .CK(W_clk), 
        .RN(n191), .Q(mem_6__4_) );
  SDFFRQX2M mem_reg_6__3_ ( .D(n136), .SI(mem_6__2_), .SE(n207), .CK(W_clk), 
        .RN(n191), .Q(mem_6__3_) );
  SDFFRQX2M mem_reg_6__2_ ( .D(n135), .SI(mem_6__1_), .SE(n220), .CK(W_clk), 
        .RN(n192), .Q(mem_6__2_) );
  SDFFRQX2M mem_reg_6__1_ ( .D(n134), .SI(mem_6__0_), .SE(n215), .CK(W_clk), 
        .RN(n192), .Q(mem_6__1_) );
  SDFFRQX2M mem_reg_6__0_ ( .D(n133), .SI(mem_5__7_), .SE(n219), .CK(W_clk), 
        .RN(n192), .Q(mem_6__0_) );
  SDFFRQX2M mem_reg_3__7_ ( .D(n116), .SI(mem_3__6_), .SE(n209), .CK(W_clk), 
        .RN(n193), .Q(mem_3__7_) );
  SDFFRQX2M mem_reg_3__6_ ( .D(n115), .SI(mem_3__5_), .SE(n216), .CK(W_clk), 
        .RN(n193), .Q(mem_3__6_) );
  SDFFRQX2M mem_reg_3__5_ ( .D(n114), .SI(mem_3__4_), .SE(n219), .CK(W_clk), 
        .RN(n193), .Q(mem_3__5_) );
  SDFFRQX2M mem_reg_3__4_ ( .D(n113), .SI(mem_3__3_), .SE(n216), .CK(W_clk), 
        .RN(n193), .Q(mem_3__4_) );
  SDFFRQX2M mem_reg_3__3_ ( .D(n112), .SI(mem_3__2_), .SE(n208), .CK(W_clk), 
        .RN(n193), .Q(mem_3__3_) );
  SDFFRQX2M mem_reg_3__2_ ( .D(n111), .SI(mem_3__1_), .SE(n220), .CK(W_clk), 
        .RN(n193), .Q(mem_3__2_) );
  SDFFRQX2M mem_reg_3__1_ ( .D(n110), .SI(mem_3__0_), .SE(n214), .CK(W_clk), 
        .RN(n193), .Q(mem_3__1_) );
  SDFFRQX2M mem_reg_3__0_ ( .D(n109), .SI(mem_2__7_), .SE(n214), .CK(W_clk), 
        .RN(n194), .Q(mem_3__0_) );
  SDFFRQX2M mem_reg_2__7_ ( .D(n108), .SI(mem_2__6_), .SE(n219), .CK(W_clk), 
        .RN(n194), .Q(mem_2__7_) );
  SDFFRQX2M mem_reg_2__6_ ( .D(n107), .SI(mem_2__5_), .SE(n214), .CK(W_clk), 
        .RN(n194), .Q(mem_2__6_) );
  SDFFRQX2M mem_reg_2__5_ ( .D(n106), .SI(mem_2__4_), .SE(n214), .CK(W_clk), 
        .RN(n194), .Q(mem_2__5_) );
  SDFFRQX2M mem_reg_2__4_ ( .D(n105), .SI(mem_2__3_), .SE(n220), .CK(W_clk), 
        .RN(n194), .Q(mem_2__4_) );
  SDFFRQX2M mem_reg_2__3_ ( .D(n104), .SI(mem_2__2_), .SE(n218), .CK(W_clk), 
        .RN(n194), .Q(mem_2__3_) );
  SDFFRQX2M mem_reg_2__2_ ( .D(n103), .SI(mem_2__1_), .SE(n213), .CK(W_clk), 
        .RN(n194), .Q(mem_2__2_) );
  SDFFRQX2M mem_reg_2__1_ ( .D(n102), .SI(mem_2__0_), .SE(n207), .CK(W_clk), 
        .RN(n194), .Q(mem_2__1_) );
  SDFFRQX2M mem_reg_2__0_ ( .D(n101), .SI(mem_1__7_), .SE(n214), .CK(W_clk), 
        .RN(n194), .Q(mem_2__0_) );
  CLKBUFX4M U66 ( .A(W_rst), .Y(n191) );
  BUFX4M U67 ( .A(n77), .Y(n189) );
  BUFX4M U68 ( .A(n78), .Y(n188) );
  BUFX4M U69 ( .A(n79), .Y(n187) );
  BUFX4M U70 ( .A(n82), .Y(n185) );
  BUFX4M U71 ( .A(n83), .Y(n184) );
  BUFX4M U72 ( .A(n84), .Y(n183) );
  INVX2M U73 ( .A(WR_data[0]), .Y(n204) );
  INVX2M U74 ( .A(WR_data[1]), .Y(n203) );
  INVX2M U75 ( .A(WR_data[2]), .Y(n202) );
  INVX2M U76 ( .A(WR_data[3]), .Y(n201) );
  INVX2M U77 ( .A(WR_data[4]), .Y(n200) );
  INVX2M U78 ( .A(WR_data[5]), .Y(n199) );
  INVX2M U79 ( .A(WR_data[6]), .Y(n198) );
  INVX2M U80 ( .A(WR_data[7]), .Y(n197) );
  BUFX4M U81 ( .A(W_rst), .Y(n194) );
  BUFX4M U82 ( .A(W_rst), .Y(n193) );
  BUFX4M U83 ( .A(W_rst), .Y(n192) );
  BUFX2M U84 ( .A(n80), .Y(n186) );
  BUFX2M U85 ( .A(n75), .Y(n190) );
  BUFX4M U86 ( .A(n171), .Y(n180) );
  NOR2X2M U87 ( .A(n175), .B(n176), .Y(n171) );
  INVX2M U88 ( .A(n178), .Y(n177) );
  NAND3X2M U89 ( .A(n195), .B(n196), .C(n76), .Y(n75) );
  NAND3X2M U90 ( .A(n195), .B(n196), .C(n81), .Y(n80) );
  INVX2M U91 ( .A(R_addr[1]), .Y(n176) );
  INVX2M U92 ( .A(R_addr[2]), .Y(n175) );
  BUFX4M U93 ( .A(n169), .Y(n181) );
  NOR2X2M U94 ( .A(n176), .B(R_addr[2]), .Y(n169) );
  BUFX4M U95 ( .A(n172), .Y(n179) );
  NOR2X2M U96 ( .A(n175), .B(R_addr[1]), .Y(n172) );
  BUFX4M U97 ( .A(n168), .Y(n182) );
  NOR2X2M U98 ( .A(R_addr[1]), .B(R_addr[2]), .Y(n168) );
  BUFX2M U99 ( .A(R_addr[0]), .Y(n178) );
  NOR2BX2M U100 ( .AN(W_CLKEN), .B(W_addr[2]), .Y(n76) );
  INVX2M U101 ( .A(W_addr[0]), .Y(n195) );
  INVX2M U102 ( .A(W_addr[1]), .Y(n196) );
  OAI2BB2X1M U103 ( .B0(n204), .B1(n189), .A0N(mem_1__0_), .A1N(n189), .Y(n93)
         );
  OAI2BB2X1M U104 ( .B0(n203), .B1(n189), .A0N(mem_1__1_), .A1N(n189), .Y(n94)
         );
  OAI2BB2X1M U105 ( .B0(n202), .B1(n189), .A0N(mem_1__2_), .A1N(n189), .Y(n95)
         );
  OAI2BB2X1M U106 ( .B0(n201), .B1(n189), .A0N(mem_1__3_), .A1N(n189), .Y(n96)
         );
  OAI2BB2X1M U107 ( .B0(n200), .B1(n189), .A0N(mem_1__4_), .A1N(n189), .Y(n97)
         );
  OAI2BB2X1M U108 ( .B0(n199), .B1(n189), .A0N(mem_1__5_), .A1N(n189), .Y(n98)
         );
  OAI2BB2X1M U109 ( .B0(n198), .B1(n189), .A0N(mem_1__6_), .A1N(n189), .Y(n99)
         );
  OAI2BB2X1M U110 ( .B0(n197), .B1(n189), .A0N(mem_1__7_), .A1N(n189), .Y(n100) );
  OAI2BB2X1M U111 ( .B0(n204), .B1(n188), .A0N(mem_2__0_), .A1N(n188), .Y(n101) );
  OAI2BB2X1M U112 ( .B0(n203), .B1(n188), .A0N(mem_2__1_), .A1N(n188), .Y(n102) );
  OAI2BB2X1M U113 ( .B0(n202), .B1(n188), .A0N(mem_2__2_), .A1N(n188), .Y(n103) );
  OAI2BB2X1M U114 ( .B0(n201), .B1(n188), .A0N(mem_2__3_), .A1N(n188), .Y(n104) );
  OAI2BB2X1M U115 ( .B0(n200), .B1(n188), .A0N(mem_2__4_), .A1N(n188), .Y(n105) );
  OAI2BB2X1M U116 ( .B0(n199), .B1(n188), .A0N(mem_2__5_), .A1N(n188), .Y(n106) );
  OAI2BB2X1M U117 ( .B0(n198), .B1(n188), .A0N(mem_2__6_), .A1N(n188), .Y(n107) );
  OAI2BB2X1M U118 ( .B0(n197), .B1(n188), .A0N(mem_2__7_), .A1N(n188), .Y(n108) );
  OAI2BB2X1M U119 ( .B0(n204), .B1(n187), .A0N(mem_3__0_), .A1N(n187), .Y(n109) );
  OAI2BB2X1M U120 ( .B0(n203), .B1(n187), .A0N(mem_3__1_), .A1N(n187), .Y(n110) );
  OAI2BB2X1M U121 ( .B0(n202), .B1(n187), .A0N(mem_3__2_), .A1N(n187), .Y(n111) );
  OAI2BB2X1M U122 ( .B0(n201), .B1(n187), .A0N(mem_3__3_), .A1N(n187), .Y(n112) );
  OAI2BB2X1M U123 ( .B0(n200), .B1(n187), .A0N(mem_3__4_), .A1N(n187), .Y(n113) );
  OAI2BB2X1M U124 ( .B0(n199), .B1(n187), .A0N(mem_3__5_), .A1N(n187), .Y(n114) );
  OAI2BB2X1M U125 ( .B0(n198), .B1(n187), .A0N(mem_3__6_), .A1N(n187), .Y(n115) );
  OAI2BB2X1M U126 ( .B0(n197), .B1(n187), .A0N(mem_3__7_), .A1N(n187), .Y(n116) );
  OAI2BB2X1M U127 ( .B0(n204), .B1(n186), .A0N(mem_4__0_), .A1N(n186), .Y(n117) );
  OAI2BB2X1M U128 ( .B0(n203), .B1(n186), .A0N(mem_4__1_), .A1N(n186), .Y(n118) );
  OAI2BB2X1M U129 ( .B0(n202), .B1(n80), .A0N(mem_4__2_), .A1N(n186), .Y(n119)
         );
  OAI2BB2X1M U130 ( .B0(n201), .B1(n80), .A0N(mem_4__3_), .A1N(n186), .Y(n120)
         );
  OAI2BB2X1M U131 ( .B0(n200), .B1(n80), .A0N(mem_4__4_), .A1N(n186), .Y(n121)
         );
  OAI2BB2X1M U132 ( .B0(n199), .B1(n80), .A0N(mem_4__5_), .A1N(n186), .Y(n122)
         );
  OAI2BB2X1M U133 ( .B0(n198), .B1(n80), .A0N(mem_4__6_), .A1N(n186), .Y(n123)
         );
  OAI2BB2X1M U134 ( .B0(n197), .B1(n80), .A0N(mem_4__7_), .A1N(n186), .Y(n124)
         );
  OAI2BB2X1M U135 ( .B0(n204), .B1(n185), .A0N(mem_5__0_), .A1N(n185), .Y(n125) );
  OAI2BB2X1M U136 ( .B0(n203), .B1(n185), .A0N(mem_5__1_), .A1N(n185), .Y(n126) );
  OAI2BB2X1M U137 ( .B0(n202), .B1(n185), .A0N(mem_5__2_), .A1N(n185), .Y(n127) );
  OAI2BB2X1M U138 ( .B0(n201), .B1(n185), .A0N(mem_5__3_), .A1N(n185), .Y(n128) );
  OAI2BB2X1M U139 ( .B0(n200), .B1(n185), .A0N(mem_5__4_), .A1N(n185), .Y(n129) );
  OAI2BB2X1M U140 ( .B0(n199), .B1(n185), .A0N(mem_5__5_), .A1N(n185), .Y(n130) );
  OAI2BB2X1M U141 ( .B0(n198), .B1(n185), .A0N(mem_5__6_), .A1N(n185), .Y(n131) );
  OAI2BB2X1M U142 ( .B0(n197), .B1(n185), .A0N(mem_5__7_), .A1N(n185), .Y(n132) );
  OAI2BB2X1M U143 ( .B0(n204), .B1(n184), .A0N(mem_6__0_), .A1N(n184), .Y(n133) );
  OAI2BB2X1M U144 ( .B0(n203), .B1(n184), .A0N(mem_6__1_), .A1N(n184), .Y(n134) );
  OAI2BB2X1M U145 ( .B0(n202), .B1(n184), .A0N(mem_6__2_), .A1N(n184), .Y(n135) );
  OAI2BB2X1M U146 ( .B0(n201), .B1(n184), .A0N(mem_6__3_), .A1N(n184), .Y(n136) );
  OAI2BB2X1M U147 ( .B0(n200), .B1(n184), .A0N(mem_6__4_), .A1N(n184), .Y(n137) );
  OAI2BB2X1M U148 ( .B0(n199), .B1(n184), .A0N(mem_6__5_), .A1N(n184), .Y(n138) );
  OAI2BB2X1M U149 ( .B0(n198), .B1(n184), .A0N(mem_6__6_), .A1N(n184), .Y(n139) );
  OAI2BB2X1M U150 ( .B0(n197), .B1(n184), .A0N(mem_6__7_), .A1N(n184), .Y(n140) );
  OAI2BB2X1M U151 ( .B0(n204), .B1(n183), .A0N(mem_7__0_), .A1N(n183), .Y(n141) );
  OAI2BB2X1M U152 ( .B0(n203), .B1(n183), .A0N(mem_7__1_), .A1N(n183), .Y(n142) );
  OAI2BB2X1M U153 ( .B0(n202), .B1(n183), .A0N(mem_7__2_), .A1N(n183), .Y(n143) );
  OAI2BB2X1M U154 ( .B0(n201), .B1(n183), .A0N(mem_7__3_), .A1N(n183), .Y(n144) );
  OAI2BB2X1M U155 ( .B0(n200), .B1(n183), .A0N(mem_7__4_), .A1N(n183), .Y(n145) );
  OAI2BB2X1M U156 ( .B0(n199), .B1(n183), .A0N(mem_7__5_), .A1N(n183), .Y(n146) );
  OAI2BB2X1M U157 ( .B0(n198), .B1(n183), .A0N(mem_7__6_), .A1N(n183), .Y(n147) );
  OAI2BB2X1M U158 ( .B0(n197), .B1(n183), .A0N(test_so), .A1N(n183), .Y(n148)
         );
  NAND3X2M U159 ( .A(n76), .B(n196), .C(W_addr[0]), .Y(n77) );
  NAND3X2M U160 ( .A(n76), .B(n195), .C(W_addr[1]), .Y(n78) );
  NAND3X2M U161 ( .A(W_addr[0]), .B(n76), .C(W_addr[1]), .Y(n79) );
  NAND3X2M U162 ( .A(W_addr[1]), .B(W_addr[0]), .C(n81), .Y(n84) );
  NAND3X2M U163 ( .A(W_addr[0]), .B(n196), .C(n81), .Y(n82) );
  NAND3X2M U164 ( .A(W_addr[1]), .B(n195), .C(n81), .Y(n83) );
  OAI2BB2X1M U165 ( .B0(n190), .B1(n204), .A0N(mem_0__0_), .A1N(n190), .Y(n85)
         );
  OAI2BB2X1M U166 ( .B0(n190), .B1(n203), .A0N(mem_0__1_), .A1N(n190), .Y(n86)
         );
  OAI2BB2X1M U167 ( .B0(n190), .B1(n202), .A0N(mem_0__2_), .A1N(n190), .Y(n87)
         );
  OAI2BB2X1M U168 ( .B0(n190), .B1(n201), .A0N(mem_0__3_), .A1N(n190), .Y(n88)
         );
  OAI2BB2X1M U169 ( .B0(n75), .B1(n200), .A0N(mem_0__4_), .A1N(n190), .Y(n89)
         );
  OAI2BB2X1M U170 ( .B0(n75), .B1(n199), .A0N(mem_0__5_), .A1N(n190), .Y(n90)
         );
  OAI2BB2X1M U171 ( .B0(n75), .B1(n198), .A0N(mem_0__6_), .A1N(n190), .Y(n91)
         );
  OAI2BB2X1M U172 ( .B0(n75), .B1(n197), .A0N(mem_0__7_), .A1N(n190), .Y(n92)
         );
  AND2X2M U173 ( .A(W_addr[2]), .B(W_CLKEN), .Y(n81) );
  AO22X1M U174 ( .A0(mem_3__0_), .A1(n181), .B0(mem_1__0_), .B1(n182), .Y(n65)
         );
  AOI221XLM U175 ( .A0(mem_5__0_), .A1(n179), .B0(mem_7__0_), .B1(n180), .C0(
        n65), .Y(n68) );
  AO22X1M U176 ( .A0(mem_2__0_), .A1(n181), .B0(mem_0__0_), .B1(n182), .Y(n66)
         );
  AOI221XLM U177 ( .A0(mem_4__0_), .A1(n179), .B0(mem_6__0_), .B1(n180), .C0(
        n66), .Y(n67) );
  OAI22X1M U178 ( .A0(n177), .A1(n68), .B0(n178), .B1(n67), .Y(RD_data[0]) );
  AO22X1M U179 ( .A0(mem_3__1_), .A1(n181), .B0(mem_1__1_), .B1(n182), .Y(n69)
         );
  AOI221XLM U180 ( .A0(mem_5__1_), .A1(n179), .B0(mem_7__1_), .B1(n180), .C0(
        n69), .Y(n72) );
  AO22X1M U181 ( .A0(mem_2__1_), .A1(n181), .B0(mem_0__1_), .B1(n182), .Y(n70)
         );
  AOI221XLM U182 ( .A0(mem_4__1_), .A1(n179), .B0(mem_6__1_), .B1(n180), .C0(
        n70), .Y(n71) );
  OAI22X1M U183 ( .A0(n177), .A1(n72), .B0(n178), .B1(n71), .Y(RD_data[1]) );
  AO22X1M U184 ( .A0(mem_3__2_), .A1(n181), .B0(mem_1__2_), .B1(n182), .Y(n73)
         );
  AOI221XLM U185 ( .A0(mem_5__2_), .A1(n179), .B0(mem_7__2_), .B1(n180), .C0(
        n73), .Y(n150) );
  AO22X1M U186 ( .A0(mem_2__2_), .A1(n181), .B0(mem_0__2_), .B1(n182), .Y(n74)
         );
  AOI221XLM U187 ( .A0(mem_4__2_), .A1(n179), .B0(mem_6__2_), .B1(n180), .C0(
        n74), .Y(n149) );
  OAI22X1M U188 ( .A0(n177), .A1(n150), .B0(n178), .B1(n149), .Y(RD_data[2])
         );
  AO22X1M U189 ( .A0(mem_3__3_), .A1(n181), .B0(mem_1__3_), .B1(n182), .Y(n151) );
  AOI221XLM U190 ( .A0(mem_5__3_), .A1(n179), .B0(mem_7__3_), .B1(n180), .C0(
        n151), .Y(n154) );
  AO22X1M U191 ( .A0(mem_2__3_), .A1(n181), .B0(mem_0__3_), .B1(n182), .Y(n152) );
  AOI221XLM U192 ( .A0(mem_4__3_), .A1(n179), .B0(mem_6__3_), .B1(n180), .C0(
        n152), .Y(n153) );
  OAI22X1M U193 ( .A0(n177), .A1(n154), .B0(n178), .B1(n153), .Y(RD_data[3])
         );
  AO22X1M U194 ( .A0(mem_3__4_), .A1(n181), .B0(mem_1__4_), .B1(n182), .Y(n155) );
  AOI221XLM U195 ( .A0(mem_5__4_), .A1(n179), .B0(mem_7__4_), .B1(n180), .C0(
        n155), .Y(n158) );
  AO22X1M U196 ( .A0(mem_2__4_), .A1(n181), .B0(mem_0__4_), .B1(n182), .Y(n156) );
  AOI221XLM U197 ( .A0(mem_4__4_), .A1(n179), .B0(mem_6__4_), .B1(n180), .C0(
        n156), .Y(n157) );
  OAI22X1M U198 ( .A0(n177), .A1(n158), .B0(n178), .B1(n157), .Y(RD_data[4])
         );
  AO22X1M U199 ( .A0(mem_3__5_), .A1(n181), .B0(mem_1__5_), .B1(n182), .Y(n159) );
  AOI221XLM U200 ( .A0(mem_5__5_), .A1(n179), .B0(mem_7__5_), .B1(n180), .C0(
        n159), .Y(n162) );
  AO22X1M U201 ( .A0(mem_2__5_), .A1(n181), .B0(mem_0__5_), .B1(n182), .Y(n160) );
  AOI221XLM U202 ( .A0(mem_4__5_), .A1(n179), .B0(mem_6__5_), .B1(n180), .C0(
        n160), .Y(n161) );
  OAI22X1M U203 ( .A0(n177), .A1(n162), .B0(n178), .B1(n161), .Y(RD_data[5])
         );
  AO22X1M U204 ( .A0(mem_3__6_), .A1(n181), .B0(mem_1__6_), .B1(n182), .Y(n163) );
  AOI221XLM U205 ( .A0(mem_5__6_), .A1(n179), .B0(mem_7__6_), .B1(n180), .C0(
        n163), .Y(n166) );
  AO22X1M U206 ( .A0(mem_2__6_), .A1(n181), .B0(mem_0__6_), .B1(n182), .Y(n164) );
  AOI221XLM U207 ( .A0(mem_4__6_), .A1(n179), .B0(mem_6__6_), .B1(n180), .C0(
        n164), .Y(n165) );
  OAI22X1M U208 ( .A0(n177), .A1(n166), .B0(n178), .B1(n165), .Y(RD_data[6])
         );
  AO22X1M U209 ( .A0(mem_3__7_), .A1(n181), .B0(mem_1__7_), .B1(n182), .Y(n167) );
  AOI221XLM U210 ( .A0(mem_5__7_), .A1(n179), .B0(test_so), .B1(n180), .C0(
        n167), .Y(n174) );
  AO22X1M U211 ( .A0(mem_2__7_), .A1(n181), .B0(mem_0__7_), .B1(n182), .Y(n170) );
  AOI221XLM U212 ( .A0(mem_4__7_), .A1(n179), .B0(mem_6__7_), .B1(n180), .C0(
        n170), .Y(n173) );
  OAI22X1M U213 ( .A0(n174), .A1(n177), .B0(n178), .B1(n173), .Y(RD_data[7])
         );
  INVXLM U214 ( .A(test_se), .Y(n217) );
  INVXLM U215 ( .A(n217), .Y(n207) );
  INVXLM U216 ( .A(n217), .Y(n208) );
  INVXLM U217 ( .A(n217), .Y(n209) );
  INVXLM U218 ( .A(n207), .Y(n221) );
  INVXLM U219 ( .A(n221), .Y(n210) );
  INVXLM U220 ( .A(n221), .Y(n211) );
  INVXLM U221 ( .A(n221), .Y(n212) );
  DLY1X1M U222 ( .A(test_se), .Y(n213) );
  DLY1X1M U223 ( .A(test_se), .Y(n214) );
  DLY1X1M U224 ( .A(test_se), .Y(n215) );
  DLY1X1M U225 ( .A(test_se), .Y(n216) );
  DLY1X1M U226 ( .A(n209), .Y(n218) );
  DLY1X1M U227 ( .A(test_se), .Y(n219) );
  DLY1X1M U228 ( .A(test_se), .Y(n220) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_1 ( 
        W_clk, W_rst, W_inc, R_clk, R_rst, R_inc, WR_data, FULL, EMPTY, 
        RD_data, test_si2, test_si1, test_so2, test_so1, test_se );
  input [7:0] WR_data;
  output [7:0] RD_data;
  input W_clk, W_rst, W_inc, R_clk, R_rst, R_inc, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   w_ptr_2_, w_ptr_1_, w_ptr_0_, W_CLKEN, n1, n2, n3, n4, n7, n8, n11,
         n12, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2;
  wire   [3:0] WQ2_rptr;
  wire   [2:0] w_addr;
  wire   [3:0] RQ2_wptr;
  wire   [3:0] r_ptr;
  wire   [2:0] r_addr;

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(W_rst), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(R_rst), .Y(n2) );
  DLY1X1M U5 ( .A(test_se), .Y(n11) );
  DLY1X1M U6 ( .A(test_se), .Y(n12) );
  FIFO_WR_FIFO_DEPTH8_ADDR_WIDTH4_test_1 FIFO_WR_u ( .W_clk(W_clk), .W_rst(n3), 
        .W_inc(W_inc), .WQ2_rptr(WQ2_rptr), .W_ptr({test_so1, w_ptr_2_, 
        w_ptr_1_, w_ptr_0_}), .W_addr({SYNOPSYS_UNCONNECTED_1, w_addr}), 
        .W_CLKEN(W_CLKEN), .FULL(FULL), .test_si(r_ptr[3]), .test_se(n12) );
  FIFO_RD_FIFO_DEPTH8_ADDR_WIDTH4_test_1 FIFO_RD_u ( .R_clk(R_clk), .R_rst(n1), 
        .R_inc(R_inc), .RQ2_wptr(RQ2_wptr), .R_ptr(r_ptr), .R_addr({
        SYNOPSYS_UNCONNECTED_2, r_addr}), .EMPTY(EMPTY), .test_si(n8), 
        .test_se(n12) );
  DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_1 SYNC_R2W_u ( .clk(W_clk), 
        .rst(n3), .i_ptr(r_ptr), .o_ptr(WQ2_rptr), .test_si(test_si2), 
        .test_so(n7), .test_se(n12) );
  DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_0 SYNC_W2R_u ( .clk(R_clk), 
        .rst(n1), .i_ptr({test_so1, w_ptr_2_, w_ptr_1_, w_ptr_0_}), .o_ptr(
        RQ2_wptr), .test_si(n7), .test_so(test_so2), .test_se(n12) );
  FIFO_MEM_CNTRL_DATA_WIDTH8_FIFO_DEPTH8_ADDR_WIDTH4_test_1 FIFO_MEM_u ( 
        .W_clk(W_clk), .W_rst(n3), .W_CLKEN(W_CLKEN), .W_addr(w_addr), 
        .R_addr(r_addr), .WR_data(WR_data), .RD_data(RD_data), .test_si(
        test_si1), .test_so(n8), .test_se(n11) );
endmodule


module Pulse_gen_test_1 ( CLK, RST, LVL_SIG, PULSE_SIG, test_si, test_so, 
        test_se );
  input CLK, RST, LVL_SIG, test_si, test_se;
  output PULSE_SIG, test_so;


  SDFFRQX2M lvl_q_reg ( .D(LVL_SIG), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(test_so) );
  NOR2BX2M U4 ( .AN(test_so), .B(LVL_SIG), .Y(PULSE_SIG) );
endmodule


module UART_TX_FSM_test_1 ( clk, rst, data_valid, par_en, ser_done, ser_en, 
        busy, mux_sel, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input clk, rst, data_valid, par_en, ser_done, test_si, test_se;
  output ser_en, busy, test_so;
  wire   current_state_1_, current_state_0_, busy_comb, n9, n10, n11, n5, n6,
         n7, n8, n14;
  wire   [2:0] next_state;

  SDFFRQX2M busy_reg ( .D(busy_comb), .SI(test_si), .SE(n14), .CK(clk), .RN(
        rst), .Q(busy) );
  SDFFSQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(busy), .SE(n14), 
        .CK(clk), .SN(rst), .Q(current_state_0_) );
  SDFFRQX2M current_state_reg_2_ ( .D(next_state[2]), .SI(current_state_1_), 
        .SE(n14), .CK(clk), .RN(rst), .Q(test_so) );
  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(current_state_0_), 
        .SE(n14), .CK(clk), .RN(rst), .Q(current_state_1_) );
  INVX2M U7 ( .A(mux_sel[1]), .Y(n7) );
  NOR2BX2M U8 ( .AN(current_state_1_), .B(test_so), .Y(mux_sel[1]) );
  OAI32X2M U9 ( .A0(current_state_0_), .A1(test_so), .A2(current_state_1_), 
        .B0(n7), .B1(n5), .Y(mux_sel[0]) );
  NOR2X2M U10 ( .A(current_state_0_), .B(test_so), .Y(ser_en) );
  OAI31X1M U11 ( .A0(n5), .A1(data_valid), .A2(current_state_1_), .B0(n10), 
        .Y(next_state[0]) );
  AOI31X2M U12 ( .A0(current_state_1_), .A1(n5), .A2(n11), .B0(test_so), .Y(
        n10) );
  NOR2BX2M U13 ( .AN(ser_done), .B(n8), .Y(n11) );
  INVX2M U14 ( .A(par_en), .Y(n8) );
  INVX2M U15 ( .A(current_state_0_), .Y(n5) );
  NOR2X2M U16 ( .A(n9), .B(n7), .Y(next_state[2]) );
  AOI21X2M U17 ( .A0(ser_done), .A1(n8), .B0(current_state_0_), .Y(n9) );
  AOI31X2M U18 ( .A0(current_state_1_), .A1(n8), .A2(ser_done), .B0(n6), .Y(
        next_state[1]) );
  INVX2M U19 ( .A(ser_en), .Y(n6) );
  OR3X2M U20 ( .A(test_so), .B(current_state_1_), .C(n5), .Y(busy_comb) );
  DLY1X1M U21 ( .A(test_se), .Y(n14) );
endmodule


module serializer_test_1 ( clk, rst, ser_en, P_data, ser_data, ser_done, 
        test_si, test_se );
  input [7:0] P_data;
  input clk, rst, ser_en, test_si, test_se;
  output ser_data, ser_done;
  wire   N3, N4, N5, N10, N18, N19, N20, N22, n8, n9, n10, n11, n6, n7, n12,
         n13, n14, n15, n16, n17, n18, n19, n22, n23, n24;

  SDFFSQX2M ser_data_reg ( .D(N18), .SI(N5), .SE(n23), .CK(clk), .SN(rst), .Q(
        ser_data) );
  SDFFRQX2M ser_done_reg ( .D(N22), .SI(ser_data), .SE(n24), .CK(clk), .RN(rst), .Q(ser_done) );
  SDFFRQX2M cntr_reg_2_ ( .D(n18), .SI(N4), .SE(n23), .CK(clk), .RN(rst), .Q(
        N5) );
  SDFFRQX2M cntr_reg_0_ ( .D(N19), .SI(test_si), .SE(n24), .CK(clk), .RN(rst), 
        .Q(N3) );
  SDFFRQX2M cntr_reg_1_ ( .D(N20), .SI(N3), .SE(n23), .CK(clk), .RN(rst), .Q(
        N4) );
  NAND2X2M U8 ( .A(ser_en), .B(n8), .Y(n10) );
  INVX2M U9 ( .A(N3), .Y(n17) );
  NOR2BX2M U10 ( .AN(ser_en), .B(n8), .Y(N22) );
  NOR2X2M U11 ( .A(N3), .B(n10), .Y(N19) );
  NAND2BX2M U12 ( .AN(N10), .B(ser_en), .Y(N18) );
  NAND3X2M U13 ( .A(N4), .B(N3), .C(N5), .Y(n8) );
  INVX2M U14 ( .A(N4), .Y(n16) );
  INVX2M U15 ( .A(n9), .Y(n18) );
  AOI32X1M U16 ( .A0(n19), .A1(N3), .A2(N4), .B0(N5), .B1(n19), .Y(n9) );
  INVX2M U17 ( .A(n10), .Y(n19) );
  NOR2X2M U18 ( .A(n11), .B(n10), .Y(N20) );
  XNOR2X2M U19 ( .A(N3), .B(N4), .Y(n11) );
  AOI22X1M U20 ( .A0(P_data[2]), .A1(n17), .B0(P_data[3]), .B1(N3), .Y(n7) );
  AOI22X1M U21 ( .A0(P_data[0]), .A1(n17), .B0(P_data[1]), .B1(N3), .Y(n6) );
  OA22X1M U22 ( .A0(n16), .A1(n7), .B0(N4), .B1(n6), .Y(n15) );
  AOI22X1M U23 ( .A0(P_data[6]), .A1(n17), .B0(P_data[7]), .B1(N3), .Y(n13) );
  AOI22X1M U24 ( .A0(P_data[4]), .A1(n17), .B0(P_data[5]), .B1(N3), .Y(n12) );
  OAI22X1M U25 ( .A0(n13), .A1(n16), .B0(N4), .B1(n12), .Y(n14) );
  OAI2BB2X1M U26 ( .B0(n15), .B1(N5), .A0N(N5), .A1N(n14), .Y(N10) );
  INVXLM U27 ( .A(test_se), .Y(n22) );
  INVXLM U28 ( .A(n22), .Y(n23) );
  INVXLM U29 ( .A(n22), .Y(n24) );
endmodule


module parity_calc_test_1 ( clk, rst, par_typ, P_data, data_valid, par_bit, 
        test_si, test_se );
  input [7:0] P_data;
  input clk, rst, par_typ, data_valid, test_si, test_se;
  output par_bit;
  wire   n1, n3, n4, n5, n6, n8, n2;

  SDFFRQX2M par_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_bit) );
  XOR3XLM U2 ( .A(P_data[5]), .B(P_data[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_data[7]), .B(P_data[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_data[3]), .B(P_data[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  INVX2M U6 ( .A(data_valid), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(par_typ), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_data[1]), .B(P_data[0]), .C(n5), .Y(n4) );
endmodule


module MUX_test_1 ( clk, rst, ser_data, par_bit, mux_sel, tx_out, test_si, 
        test_se );
  input [1:0] mux_sel;
  input clk, rst, ser_data, par_bit, test_si, test_se;
  output tx_out;
  wire   tx_out_comb, n2, n3;

  OAI21X2M U5 ( .A0(mux_sel[0]), .A1(n2), .B0(n3), .Y(tx_out_comb) );
  NOR2BX2M U6 ( .AN(mux_sel[1]), .B(ser_data), .Y(n2) );
  NAND3X2M U7 ( .A(mux_sel[1]), .B(mux_sel[0]), .C(par_bit), .Y(n3) );
  SDFFSHQX8M tx_out_reg ( .D(tx_out_comb), .SI(test_si), .SE(test_se), .CK(clk), .SN(rst), .Q(tx_out) );
endmodule


module TX_TOP_test_1 ( CLK, RST, P_DATA, data_valid, parity_enable, 
        parity_type, TX_OUT, busy, test_si2, test_si1, test_so1, test_se );
  input [7:0] P_DATA;
  input CLK, RST, data_valid, parity_enable, parity_type, test_si2, test_si1,
         test_se;
  output TX_OUT, busy, test_so1;
  wire   ser_done, ser_en, ser_data, n1, n2, n4;
  wire   [1:0] mux_sel;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_TX_FSM_test_1 u0 ( .clk(CLK), .rst(n1), .data_valid(data_valid), 
        .par_en(parity_enable), .ser_done(ser_done), .ser_en(ser_en), .busy(
        busy), .mux_sel(mux_sel), .test_si(test_si1), .test_so(n4), .test_se(
        test_se) );
  serializer_test_1 u1 ( .clk(CLK), .rst(n1), .ser_en(ser_en), .P_data(P_DATA), 
        .ser_data(ser_data), .ser_done(ser_done), .test_si(n4), .test_se(
        test_se) );
  parity_calc_test_1 u2 ( .clk(CLK), .rst(n1), .par_typ(parity_type), .P_data(
        P_DATA), .data_valid(data_valid), .par_bit(test_so1), .test_si(
        ser_done), .test_se(test_se) );
  MUX_test_1 u3 ( .clk(CLK), .rst(n1), .ser_data(ser_data), .par_bit(test_so1), 
        .mux_sel(mux_sel), .tx_out(TX_OUT), .test_si(test_si2), .test_se(
        test_se) );
endmodule


module UART_RX_FSM_test_1 ( clk, rst, rx_in, par_en, Prescale, bit_cnt, 
        edg_cnt, limit_edg, par_err, stp_err, strt_glitch, dat_samp_en, enable, 
        data_valid, deser_en, stp_chk_en, strt_chk_en, par_chk_en, test_si, 
        test_so, test_se );
  input [5:0] Prescale;
  input [3:0] bit_cnt;
  input [5:0] edg_cnt;
  input [5:0] limit_edg;
  input clk, rst, rx_in, par_en, par_err, stp_err, strt_glitch, test_si,
         test_se;
  output dat_samp_en, enable, data_valid, deser_en, stp_chk_en, strt_chk_en,
         par_chk_en, test_so;
  wire   N14, N15, N16, N17, N18, N19, N20, N21, N24, N25, N26, N27, N28, N29,
         N30, N31, N61, N77, N78, N79, N80, N81, N82, N83, N84, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n46, n47, n48, n50, n51, n52, n53,
         n54, n55, n56, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n45, n49, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n94, n95, n96, n97, n98;
  wire   [5:0] count;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [5:2] add_54_carry;

  SDFFSQX2M current_state_reg_0_ ( .D(next_state[0]), .SI(count[5]), .SE(n97), 
        .CK(clk), .SN(n24), .Q(current_state[0]) );
  SDFFRQX2M data_valid_reg ( .D(N31), .SI(current_state[2]), .SE(n98), .CK(clk), .RN(n24), .Q(data_valid) );
  SDFFRQX2M current_state_reg_1_ ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(n97), .CK(clk), .RN(n24), .Q(current_state[1]) );
  SDFFRQX2M stretch_reg_0_ ( .D(n56), .SI(data_valid), .SE(n96), .CK(clk), 
        .RN(n24), .Q(test_so) );
  SDFFRQX2M count_reg_5_ ( .D(n55), .SI(count[4]), .SE(n95), .CK(clk), .RN(n24), .Q(count[5]) );
  SDFFRQX1M count_reg_4_ ( .D(n53), .SI(count[3]), .SE(n96), .CK(clk), .RN(n24), .Q(count[4]) );
  SDFFRQX1M count_reg_3_ ( .D(n52), .SI(count[2]), .SE(n95), .CK(clk), .RN(n24), .Q(count[3]) );
  SDFFRQX1M count_reg_2_ ( .D(n51), .SI(count[1]), .SE(n98), .CK(clk), .RN(n24), .Q(count[2]) );
  SDFFRQX1M count_reg_1_ ( .D(n50), .SI(count[0]), .SE(n97), .CK(clk), .RN(n24), .Q(count[1]) );
  SDFFRQX1M count_reg_0_ ( .D(n54), .SI(test_si), .SE(n96), .CK(clk), .RN(n24), 
        .Q(count[0]) );
  SDFFRQX1M current_state_reg_2_ ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(n95), .CK(clk), .RN(n24), .Q(current_state[2]) );
  INVX4M U6 ( .A(n25), .Y(n24) );
  NOR4X2M U27 ( .A(n62), .B(n61), .C(n60), .D(n59), .Y(N61) );
  XOR2XLM U28 ( .A(limit_edg[2]), .B(edg_cnt[2]), .Y(n60) );
  XOR2XLM U29 ( .A(limit_edg[3]), .B(edg_cnt[3]), .Y(n59) );
  OAI2BB1XLM U30 ( .A0N(n32), .A1N(limit_edg[4]), .B0(n33), .Y(N81) );
  OAI2BB1XLM U31 ( .A0N(n30), .A1N(limit_edg[2]), .B0(n31), .Y(N79) );
  OAI2BB1XLM U32 ( .A0N(n31), .A1N(limit_edg[3]), .B0(n32), .Y(N80) );
  NOR3X2M U33 ( .A(current_state[0]), .B(current_state[1]), .C(n89), .Y(
        stp_chk_en) );
  INVX2M U34 ( .A(rst), .Y(n25) );
  INVXLM U35 ( .A(N61), .Y(n83) );
  NOR2X2M U36 ( .A(n83), .B(n39), .Y(deser_en) );
  OR2X2M U37 ( .A(limit_edg[1]), .B(limit_edg[0]), .Y(n30) );
  OAI211X2M U38 ( .A0(n83), .A1(n85), .B0(n35), .C0(n87), .Y(next_state[2]) );
  INVX2M U39 ( .A(par_chk_en), .Y(n85) );
  NAND3X2M U40 ( .A(n84), .B(n91), .C(deser_en), .Y(n35) );
  NOR2X4M U41 ( .A(n90), .B(N21), .Y(n46) );
  NAND2BX2M U42 ( .AN(n46), .B(n48), .Y(N31) );
  NAND4BX1M U43 ( .AN(strt_chk_en), .B(n36), .C(n87), .D(n47), .Y(enable) );
  NOR2BX2M U44 ( .AN(n39), .B(par_chk_en), .Y(n36) );
  INVX2M U45 ( .A(stp_chk_en), .Y(n87) );
  OAI211X2M U46 ( .A0(n89), .A1(n88), .B0(n40), .C0(n41), .Y(next_state[0]) );
  AOI22X1M U47 ( .A0(N84), .A1(stp_chk_en), .B0(par_chk_en), .B1(n83), .Y(n40)
         );
  AOI31X2M U48 ( .A0(current_state[0]), .A1(n88), .A2(rx_in), .B0(n82), .Y(n41) );
  INVX2M U49 ( .A(n42), .Y(n82) );
  AOI33XLM U50 ( .A0(strt_glitch), .A1(N61), .A2(strt_chk_en), .B0(par_en), 
        .B1(n84), .B2(deser_en), .Y(n42) );
  OAI21XLM U51 ( .A0(N61), .A1(n36), .B0(n37), .Y(next_state[1]) );
  AOI31XLM U52 ( .A0(N61), .A1(n81), .A2(strt_chk_en), .B0(n38), .Y(n37) );
  INVX2M U53 ( .A(strt_glitch), .Y(n81) );
  AOI21X2M U54 ( .A0(n84), .A1(n91), .B0(n39), .Y(n38) );
  OR2X2M U55 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n26) );
  AO2B2X2M U56 ( .B0(N30), .B1(n90), .A0(test_so), .A1N(N30), .Y(n56) );
  OAI2BB1XLM U57 ( .A0N(test_so), .A1N(N21), .B0(n48), .Y(N30) );
  AO22X1M U58 ( .A0(count[4]), .A1(n90), .B0(N28), .B1(n46), .Y(n53) );
  AO22X1M U59 ( .A0(count[3]), .A1(n90), .B0(N27), .B1(n46), .Y(n52) );
  AO22X1M U60 ( .A0(count[2]), .A1(n90), .B0(N26), .B1(n46), .Y(n51) );
  AO22X1M U61 ( .A0(count[1]), .A1(n90), .B0(N25), .B1(n46), .Y(n50) );
  AO22X1M U62 ( .A0(count[0]), .A1(n90), .B0(N24), .B1(n46), .Y(n54) );
  AO22X1M U63 ( .A0(count[5]), .A1(n90), .B0(N29), .B1(n46), .Y(n55) );
  NOR3X4M U64 ( .A(n86), .B(current_state[2]), .C(n88), .Y(par_chk_en) );
  NAND3X2M U65 ( .A(n86), .B(n89), .C(current_state[1]), .Y(n39) );
  INVX2M U66 ( .A(current_state[1]), .Y(n88) );
  OR4X1M U67 ( .A(test_so), .B(n47), .C(stp_err), .D(par_err), .Y(n48) );
  INVX2M U68 ( .A(current_state[2]), .Y(n89) );
  INVX2M U69 ( .A(current_state[0]), .Y(n86) );
  NOR3X4M U70 ( .A(current_state[1]), .B(current_state[2]), .C(
        current_state[0]), .Y(strt_chk_en) );
  NAND3X2M U71 ( .A(current_state[2]), .B(n88), .C(current_state[0]), .Y(n47)
         );
  INVX2M U72 ( .A(n43), .Y(n84) );
  NAND3BX2M U73 ( .AN(bit_cnt[0]), .B(bit_cnt[3]), .C(n44), .Y(n43) );
  NOR2X2M U74 ( .A(bit_cnt[2]), .B(bit_cnt[1]), .Y(n44) );
  ADDHX1M U75 ( .A(count[1]), .B(count[0]), .CO(add_54_carry[2]), .S(N25) );
  ADDHX1M U76 ( .A(count[2]), .B(add_54_carry[2]), .CO(add_54_carry[3]), .S(
        N26) );
  ADDHX1M U77 ( .A(count[3]), .B(add_54_carry[3]), .CO(add_54_carry[4]), .S(
        N27) );
  ADDHX1M U78 ( .A(count[4]), .B(add_54_carry[4]), .CO(add_54_carry[5]), .S(
        N28) );
  INVX2M U79 ( .A(test_so), .Y(n90) );
  INVX2M U80 ( .A(par_en), .Y(n91) );
  CLKINVX1M U81 ( .A(Prescale[0]), .Y(N14) );
  OAI2BB1X1M U82 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n26), .Y(N15) );
  OR2X1M U83 ( .A(n26), .B(Prescale[2]), .Y(n27) );
  OAI2BB1X1M U84 ( .A0N(n26), .A1N(Prescale[2]), .B0(n27), .Y(N16) );
  OR2X1M U85 ( .A(n27), .B(Prescale[3]), .Y(n28) );
  OAI2BB1X1M U86 ( .A0N(n27), .A1N(Prescale[3]), .B0(n28), .Y(N17) );
  OR2X1M U87 ( .A(n28), .B(Prescale[4]), .Y(n29) );
  OAI2BB1X1M U88 ( .A0N(n28), .A1N(Prescale[4]), .B0(n29), .Y(N18) );
  NOR2X1M U89 ( .A(n29), .B(Prescale[5]), .Y(N20) );
  AO21XLM U90 ( .A0(n29), .A1(Prescale[5]), .B0(N20), .Y(N19) );
  CLKINVX1M U91 ( .A(count[0]), .Y(N24) );
  CLKXOR2X2M U92 ( .A(add_54_carry[5]), .B(count[5]), .Y(N29) );
  CLKINVX1M U93 ( .A(limit_edg[0]), .Y(N77) );
  OAI2BB1X1M U94 ( .A0N(limit_edg[0]), .A1N(limit_edg[1]), .B0(n30), .Y(N78)
         );
  OR2X1M U95 ( .A(n30), .B(limit_edg[2]), .Y(n31) );
  OR2X1M U96 ( .A(n31), .B(limit_edg[3]), .Y(n32) );
  OR2X1M U97 ( .A(n32), .B(limit_edg[4]), .Y(n33) );
  NOR2X1M U98 ( .A(n33), .B(limit_edg[5]), .Y(N83) );
  AO21XLM U99 ( .A0(n33), .A1(limit_edg[5]), .B0(N83), .Y(N82) );
  NOR2BX1M U100 ( .AN(edg_cnt[0]), .B(limit_edg[0]), .Y(n34) );
  OAI2B2X1M U101 ( .A1N(limit_edg[1]), .A0(n34), .B0(edg_cnt[1]), .B1(n34), 
        .Y(n58) );
  NOR2BX1M U102 ( .AN(limit_edg[0]), .B(edg_cnt[0]), .Y(n45) );
  OAI2B2X1M U103 ( .A1N(edg_cnt[1]), .A0(n45), .B0(limit_edg[1]), .B1(n45), 
        .Y(n57) );
  XNOR2X1M U104 ( .A(limit_edg[5]), .B(edg_cnt[5]), .Y(n49) );
  NAND3X1M U105 ( .A(n58), .B(n57), .C(n49), .Y(n62) );
  CLKXOR2X2M U106 ( .A(limit_edg[4]), .B(edg_cnt[4]), .Y(n61) );
  NOR2BX1M U107 ( .AN(N14), .B(count[0]), .Y(n63) );
  OAI2B2X1M U108 ( .A1N(count[1]), .A0(n63), .B0(N15), .B1(n63), .Y(n67) );
  XNOR2X1M U109 ( .A(N19), .B(count[5]), .Y(n66) );
  NOR2BX1M U110 ( .AN(count[0]), .B(N14), .Y(n64) );
  OAI2B2X1M U111 ( .A1N(N15), .A0(n64), .B0(count[1]), .B1(n64), .Y(n65) );
  NAND4BX1M U112 ( .AN(N20), .B(n67), .C(n66), .D(n65), .Y(n71) );
  CLKXOR2X2M U113 ( .A(N18), .B(count[4]), .Y(n70) );
  CLKXOR2X2M U114 ( .A(N16), .B(count[2]), .Y(n69) );
  CLKXOR2X2M U115 ( .A(N17), .B(count[3]), .Y(n68) );
  NOR4X1M U116 ( .A(n71), .B(n70), .C(n69), .D(n68), .Y(N21) );
  NOR2BX1M U117 ( .AN(N77), .B(edg_cnt[0]), .Y(n72) );
  OAI2B2X1M U118 ( .A1N(edg_cnt[1]), .A0(n72), .B0(N78), .B1(n72), .Y(n76) );
  XNOR2X1M U119 ( .A(N82), .B(edg_cnt[5]), .Y(n75) );
  NOR2BX1M U120 ( .AN(edg_cnt[0]), .B(N77), .Y(n73) );
  OAI2B2X1M U121 ( .A1N(N78), .A0(n73), .B0(edg_cnt[1]), .B1(n73), .Y(n74) );
  NAND4BX1M U122 ( .AN(N83), .B(n76), .C(n75), .D(n74), .Y(n80) );
  CLKXOR2X2M U123 ( .A(N81), .B(edg_cnt[4]), .Y(n79) );
  CLKXOR2X2M U124 ( .A(N79), .B(edg_cnt[2]), .Y(n78) );
  CLKXOR2X2M U125 ( .A(N80), .B(edg_cnt[3]), .Y(n77) );
  NOR4X1M U126 ( .A(n80), .B(n79), .C(n78), .D(n77), .Y(N84) );
  INVXLM U127 ( .A(test_se), .Y(n94) );
  INVXLM U128 ( .A(n94), .Y(n95) );
  INVXLM U129 ( .A(n94), .Y(n96) );
  INVXLM U130 ( .A(n94), .Y(n97) );
  INVXLM U131 ( .A(n94), .Y(n98) );
  INVX2M U3 ( .A(1'b0), .Y(dat_samp_en) );
endmodule


module edge_bit_cntr_test_1 ( clk, rst, enable, par_en, prescale, bit_cnt, 
        edg_cnt, limit_edg, test_si, test_se );
  input [5:0] prescale;
  output [3:0] bit_cnt;
  output [5:0] edg_cnt;
  output [5:0] limit_edg;
  input clk, rst, enable, par_en, test_si, test_se;
  wire   n55, N9, N23, N24, N25, N26, N39, N40, N41, N42, N43, N44, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n17, n18, n19, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n58, n59, n60, n61, n62, n63,
         n64;
  wire   [5:2] add_32_carry;

  SDFFRQX2M edg_cnt_reg_4_ ( .D(N43), .SI(n63), .SE(n62), .CK(clk), .RN(n18), 
        .Q(edg_cnt[4]) );
  SDFFRQX2M edg_cnt_reg_0_ ( .D(N39), .SI(bit_cnt[3]), .SE(n61), .CK(clk), 
        .RN(n18), .Q(edg_cnt[0]) );
  SDFFRQX2M edg_cnt_reg_1_ ( .D(N40), .SI(edg_cnt[0]), .SE(n60), .CK(clk), 
        .RN(n18), .Q(edg_cnt[1]) );
  SDFFRQX2M bit_cnt_reg_2_ ( .D(n33), .SI(bit_cnt[1]), .SE(n59), .CK(clk), 
        .RN(n18), .Q(bit_cnt[2]) );
  SDFFRQX2M bit_cnt_reg_3_ ( .D(n32), .SI(bit_cnt[2]), .SE(n62), .CK(clk), 
        .RN(n18), .Q(bit_cnt[3]) );
  SDFFRQX2M edg_cnt_reg_5_ ( .D(N44), .SI(edg_cnt[4]), .SE(n61), .CK(clk), 
        .RN(n18), .Q(edg_cnt[5]) );
  SDFFRQX2M bit_cnt_reg_0_ ( .D(n35), .SI(test_si), .SE(n60), .CK(clk), .RN(
        n18), .Q(bit_cnt[0]) );
  SDFFRQX2M bit_cnt_reg_1_ ( .D(n34), .SI(bit_cnt[0]), .SE(n59), .CK(clk), 
        .RN(n18), .Q(bit_cnt[1]) );
  SDFFRQX1M edg_cnt_reg_3_ ( .D(N42), .SI(n64), .SE(n60), .CK(clk), .RN(n18), 
        .Q(edg_cnt[3]) );
  SDFFRQX1M edg_cnt_reg_2_ ( .D(N41), .SI(edg_cnt[1]), .SE(n59), .CK(clk), 
        .RN(n18), .Q(edg_cnt[2]) );
  AO21XLM U8 ( .A0(n36), .A1(prescale[2]), .B0(n37), .Y(limit_edg[2]) );
  OR2X1M U14 ( .A(prescale[1]), .B(prescale[0]), .Y(n36) );
  NOR2X2M U15 ( .A(n36), .B(prescale[2]), .Y(n37) );
  OAI21X2M U21 ( .A0(n37), .A1(n40), .B0(n38), .Y(limit_edg[3]) );
  XNOR2X2M U22 ( .A(prescale[4]), .B(n38), .Y(limit_edg[4]) );
  XOR2XLM U23 ( .A(n55), .B(edg_cnt[2]), .Y(n47) );
  XOR2XLM U24 ( .A(limit_edg[3]), .B(edg_cnt[3]), .Y(n46) );
  XOR2XLM U25 ( .A(limit_edg[4]), .B(edg_cnt[4]), .Y(n48) );
  INVX2M U26 ( .A(n19), .Y(n18) );
  INVX2M U27 ( .A(rst), .Y(n19) );
  INVX2M U28 ( .A(n24), .Y(n50) );
  INVX2M U29 ( .A(enable), .Y(n54) );
  NOR2X2M U30 ( .A(n54), .B(N9), .Y(n24) );
  NOR2BX2M U31 ( .AN(N23), .B(n50), .Y(N40) );
  NOR2BX2M U32 ( .AN(N24), .B(n50), .Y(N41) );
  NOR2BX2M U33 ( .AN(N25), .B(n50), .Y(N42) );
  NOR2BX2M U34 ( .AN(N26), .B(n50), .Y(N43) );
  INVX2M U35 ( .A(n23), .Y(n52) );
  INVX2M U36 ( .A(prescale[3]), .Y(n40) );
  OAI32X1M U37 ( .A0(n23), .A1(bit_cnt[0]), .A2(n24), .B0(n51), .B1(n50), .Y(
        n35) );
  OAI21X2M U38 ( .A0(n27), .A1(n53), .B0(n28), .Y(n34) );
  AOI21X2M U39 ( .A0(n52), .A1(n51), .B0(n24), .Y(n27) );
  NAND4X2M U40 ( .A(n52), .B(bit_cnt[0]), .C(n50), .D(n53), .Y(n28) );
  OAI2B1X2M U41 ( .A1N(bit_cnt[3]), .A0(n20), .B0(n21), .Y(n32) );
  AOI21X2M U42 ( .A0(n52), .A1(n22), .B0(n24), .Y(n20) );
  OR4X1M U43 ( .A(n22), .B(n23), .C(n24), .D(bit_cnt[3]), .Y(n21) );
  NAND3X2M U44 ( .A(bit_cnt[0]), .B(bit_cnt[1]), .C(bit_cnt[2]), .Y(n22) );
  NOR2X2M U45 ( .A(n17), .B(n50), .Y(N44) );
  XNOR2X2M U46 ( .A(add_32_carry[5]), .B(edg_cnt[5]), .Y(n17) );
  NOR2X2M U47 ( .A(edg_cnt[0]), .B(n50), .Y(N39) );
  NOR2X2M U48 ( .A(n25), .B(n54), .Y(n33) );
  CLKXOR2X2M U49 ( .A(n26), .B(bit_cnt[2]), .Y(n25) );
  NAND3XLM U50 ( .A(bit_cnt[0]), .B(bit_cnt[1]), .C(N9), .Y(n26) );
  NAND2X2M U51 ( .A(enable), .B(n29), .Y(n23) );
  NAND4BX1M U52 ( .AN(bit_cnt[2]), .B(n30), .C(bit_cnt[3]), .D(n31), .Y(n29)
         );
  CLKXOR2X2M U53 ( .A(bit_cnt[1]), .B(bit_cnt[0]), .Y(n31) );
  CLKXOR2X2M U54 ( .A(n53), .B(par_en), .Y(n30) );
  INVX2M U55 ( .A(bit_cnt[1]), .Y(n53) );
  ADDHX1M U56 ( .A(edg_cnt[1]), .B(edg_cnt[0]), .CO(add_32_carry[2]), .S(N23)
         );
  ADDHX1M U57 ( .A(n64), .B(add_32_carry[2]), .CO(add_32_carry[3]), .S(N24) );
  ADDHX1M U58 ( .A(n63), .B(add_32_carry[3]), .CO(add_32_carry[4]), .S(N25) );
  ADDHX1M U59 ( .A(edg_cnt[4]), .B(add_32_carry[4]), .CO(add_32_carry[5]), .S(
        N26) );
  INVX2M U60 ( .A(bit_cnt[0]), .Y(n51) );
  CLKINVX1M U61 ( .A(prescale[0]), .Y(limit_edg[0]) );
  OAI2BB1X1M U62 ( .A0N(prescale[0]), .A1N(prescale[1]), .B0(n36), .Y(
        limit_edg[1]) );
  AO21XLM U63 ( .A0(n36), .A1(prescale[2]), .B0(n37), .Y(n55) );
  CLKNAND2X2M U64 ( .A(n37), .B(n40), .Y(n38) );
  NOR2X1M U65 ( .A(prescale[4]), .B(n38), .Y(n39) );
  CLKXOR2X2M U66 ( .A(prescale[5]), .B(n39), .Y(limit_edg[5]) );
  NOR2BX1M U67 ( .AN(edg_cnt[0]), .B(limit_edg[0]), .Y(n41) );
  OAI2B2X1M U68 ( .A1N(limit_edg[1]), .A0(n41), .B0(edg_cnt[1]), .B1(n41), .Y(
        n45) );
  NOR2BX1M U69 ( .AN(limit_edg[0]), .B(edg_cnt[0]), .Y(n42) );
  OAI2B2X1M U70 ( .A1N(edg_cnt[1]), .A0(n42), .B0(limit_edg[1]), .B1(n42), .Y(
        n44) );
  XNOR2X1M U71 ( .A(limit_edg[5]), .B(edg_cnt[5]), .Y(n43) );
  NAND3X1M U72 ( .A(n45), .B(n44), .C(n43), .Y(n49) );
  NOR4X1M U73 ( .A(n49), .B(n48), .C(n47), .D(n46), .Y(N9) );
  INVXLM U74 ( .A(test_se), .Y(n58) );
  INVXLM U75 ( .A(n58), .Y(n59) );
  INVXLM U76 ( .A(n58), .Y(n60) );
  INVXLM U77 ( .A(n58), .Y(n61) );
  INVXLM U78 ( .A(n58), .Y(n62) );
  DLY1X1M U79 ( .A(edg_cnt[3]), .Y(n63) );
  DLY1X1M U80 ( .A(edg_cnt[2]), .Y(n64) );
endmodule


module data_sampling_test_1 ( clk, rst, dat_samp_en, edg_cnt, rx_in, prescale, 
        sampled_bit, test_si2, test_si1, test_so1, test_se );
  input [5:0] edg_cnt;
  input [5:0] prescale;
  input clk, rst, dat_samp_en, rx_in, test_si2, test_si1, test_se;
  output sampled_bit, test_so1;
  wire   n3, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25,
         N33, n21, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n22, n23, n24, n25, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n70,
         n71, n72, n1;
  wire   [4:0] targ_edg;
  wire   [1:0] i;
  wire   [1:0] sampled_data;
  wire   [4:2] r78_carry;

  SDFFRX1M sampled_data_reg_2_ ( .D(n39), .SI(sampled_data[1]), .SE(n72), .CK(
        clk), .RN(n5), .Q(test_so1), .QN(n21) );
  SDFFSQX2M sampled_bit_reg ( .D(n38), .SI(i[1]), .SE(n72), .CK(clk), .SN(n5), 
        .Q(n3) );
  SDFFRQX2M sampled_data_reg_1_ ( .D(n40), .SI(sampled_data[0]), .SE(n72), 
        .CK(clk), .RN(n5), .Q(sampled_data[1]) );
  SDFFRQX2M i_reg_0_ ( .D(n43), .SI(test_si1), .SE(n72), .CK(clk), .RN(n5), 
        .Q(i[0]) );
  SDFFRQX2M i_reg_1_ ( .D(n42), .SI(i[0]), .SE(n72), .CK(clk), .RN(n5), .Q(
        i[1]) );
  SDFFRQX2M sampled_data_reg_0_ ( .D(n41), .SI(test_si2), .SE(n72), .CK(clk), 
        .RN(n5), .Q(sampled_data[0]) );
  XNOR2X2M U9 ( .A(prescale[4]), .B(n8), .Y(targ_edg[3]) );
  INVX2M U10 ( .A(N14), .Y(n56) );
  INVX2M U15 ( .A(n6), .Y(n5) );
  INVX2M U16 ( .A(rst), .Y(n6) );
  INVX2M U17 ( .A(N15), .Y(n57) );
  NAND2BX2M U18 ( .AN(N33), .B(n28), .Y(n37) );
  ADDHX1M U19 ( .A(targ_edg[2]), .B(r78_carry[2]), .CO(r78_carry[3]), .S(N21)
         );
  INVX2M U20 ( .A(N20), .Y(n45) );
  INVX2M U21 ( .A(N23), .Y(n48) );
  OR2X2M U22 ( .A(targ_edg[1]), .B(targ_edg[0]), .Y(n11) );
  NAND2X2M U23 ( .A(n64), .B(n62), .Y(n32) );
  NOR2X2M U24 ( .A(n65), .B(n64), .Y(n28) );
  OAI22X1M U25 ( .A0(n62), .A1(n37), .B0(n65), .B1(n32), .Y(n43) );
  INVX2M U26 ( .A(n35), .Y(n64) );
  ADDHX1M U27 ( .A(targ_edg[3]), .B(r78_carry[3]), .CO(r78_carry[4]), .S(N22)
         );
  ADDHX1M U28 ( .A(targ_edg[1]), .B(targ_edg[0]), .CO(r78_carry[2]), .S(N20)
         );
  ADDHX1M U29 ( .A(targ_edg[4]), .B(r78_carry[4]), .CO(N24), .S(N23) );
  INVX2M U30 ( .A(edg_cnt[4]), .Y(n61) );
  INVX2M U31 ( .A(edg_cnt[2]), .Y(n60) );
  OAI32X1M U32 ( .A0(n35), .A1(n36), .A2(n65), .B0(n63), .B1(n37), .Y(n42) );
  XNOR2X2M U33 ( .A(i[0]), .B(i[1]), .Y(n36) );
  NAND2X2M U34 ( .A(N25), .B(N18), .Y(n35) );
  INVX2M U35 ( .A(N16), .Y(n58) );
  OAI2B2X1M U36 ( .A1N(n30), .A0(n31), .B0(n21), .B1(n30), .Y(n39) );
  OAI21X2M U37 ( .A0(n32), .A1(n63), .B0(dat_samp_en), .Y(n30) );
  INVX2M U38 ( .A(prescale[3]), .Y(n10) );
  OAI2BB2X1M U39 ( .B0(n33), .B1(n31), .A0N(sampled_data[1]), .A1N(n33), .Y(
        n40) );
  AOI31X2M U40 ( .A0(i[0]), .A1(n63), .A2(n64), .B0(n65), .Y(n33) );
  OAI2BB2X1M U41 ( .B0(n34), .B1(n31), .A0N(sampled_data[0]), .A1N(n34), .Y(
        n41) );
  AOI2BB1X2M U42 ( .A0N(n32), .A1N(i[1]), .B0(n65), .Y(n34) );
  OAI2BB2X1M U43 ( .B0(n26), .B1(n27), .A0N(n71), .A1N(n27), .Y(n38) );
  AOI21X2M U44 ( .A0(sampled_data[1]), .A1(sampled_data[0]), .B0(n29), .Y(n26)
         );
  NAND2X2M U45 ( .A(N33), .B(n28), .Y(n27) );
  AOI2BB1X2M U46 ( .A0N(sampled_data[1]), .A1N(sampled_data[0]), .B0(n21), .Y(
        n29) );
  INVX2M U47 ( .A(N22), .Y(n47) );
  INVX2M U48 ( .A(edg_cnt[3]), .Y(n50) );
  INVX2M U49 ( .A(N21), .Y(n46) );
  INVX2M U50 ( .A(N24), .Y(n49) );
  INVX2M U51 ( .A(edg_cnt[1]), .Y(n59) );
  INVX2M U52 ( .A(i[1]), .Y(n63) );
  INVX2M U53 ( .A(i[0]), .Y(n62) );
  NAND2X2M U54 ( .A(rx_in), .B(dat_samp_en), .Y(n31) );
  INVX2M U55 ( .A(dat_samp_en), .Y(n65) );
  CLKINVX1M U56 ( .A(prescale[1]), .Y(targ_edg[0]) );
  NOR2X1M U57 ( .A(prescale[2]), .B(prescale[1]), .Y(n7) );
  AO21XLM U58 ( .A0(prescale[1]), .A1(prescale[2]), .B0(n7), .Y(targ_edg[1])
         );
  CLKNAND2X2M U59 ( .A(n7), .B(n10), .Y(n8) );
  OAI21X1M U60 ( .A0(n7), .A1(n10), .B0(n8), .Y(targ_edg[2]) );
  NOR2X1M U61 ( .A(prescale[4]), .B(n8), .Y(n9) );
  CLKXOR2X2M U62 ( .A(prescale[5]), .B(n9), .Y(targ_edg[4]) );
  CLKINVX1M U63 ( .A(targ_edg[0]), .Y(N19) );
  OAI2BB1X1M U64 ( .A0N(targ_edg[0]), .A1N(targ_edg[1]), .B0(n11), .Y(N13) );
  OR2X1M U65 ( .A(n11), .B(targ_edg[2]), .Y(n12) );
  OAI2BB1X1M U66 ( .A0N(n11), .A1N(targ_edg[2]), .B0(n12), .Y(N14) );
  XNOR2X1M U67 ( .A(targ_edg[3]), .B(n12), .Y(N15) );
  NOR3X1M U68 ( .A(targ_edg[3]), .B(targ_edg[4]), .C(n12), .Y(N17) );
  OAI21X1M U69 ( .A0(targ_edg[3]), .A1(n12), .B0(targ_edg[4]), .Y(n13) );
  NAND2BX1M U70 ( .AN(N17), .B(n13), .Y(N16) );
  NOR2X1M U71 ( .A(edg_cnt[4]), .B(n48), .Y(n25) );
  AOI2BB1X1M U72 ( .A0N(edg_cnt[1]), .A1N(n45), .B0(N19), .Y(n14) );
  AOI222X1M U73 ( .A0(edg_cnt[2]), .A1(n46), .B0(n14), .B1(edg_cnt[0]), .C0(
        edg_cnt[1]), .C1(n45), .Y(n22) );
  AOI221XLM U74 ( .A0(N22), .A1(n50), .B0(N21), .B1(n60), .C0(n22), .Y(n23) );
  AOI221XLM U75 ( .A0(edg_cnt[4]), .A1(n48), .B0(edg_cnt[3]), .B1(n47), .C0(
        n23), .Y(n24) );
  OAI2BB2X1M U76 ( .B0(n25), .B1(n24), .A0N(n49), .A1N(edg_cnt[5]), .Y(n44) );
  OAI21X1M U77 ( .A0(edg_cnt[5]), .A1(n49), .B0(n44), .Y(N25) );
  CLKINVX1M U78 ( .A(N25), .Y(N33) );
  AOI2BB1X1M U79 ( .A0N(N13), .A1N(n59), .B0(edg_cnt[0]), .Y(n51) );
  AOI222X1M U80 ( .A0(N14), .A1(n60), .B0(n51), .B1(N19), .C0(N13), .C1(n59), 
        .Y(n52) );
  AOI221XLM U81 ( .A0(edg_cnt[3]), .A1(n57), .B0(edg_cnt[2]), .B1(n56), .C0(
        n52), .Y(n53) );
  AOI221XLM U82 ( .A0(N16), .A1(n61), .B0(N15), .B1(n50), .C0(n53), .Y(n54) );
  AOI211X1M U83 ( .A0(edg_cnt[4]), .A1(n58), .B0(edg_cnt[5]), .C0(n54), .Y(n55) );
  NOR2X1M U84 ( .A(N17), .B(n55), .Y(N18) );
  INVXLM U85 ( .A(sampled_bit), .Y(n70) );
  INVXLM U86 ( .A(n70), .Y(n71) );
  DLY1X1M U87 ( .A(test_se), .Y(n72) );
  INVXLM U3 ( .A(n3), .Y(n1) );
  INVX8M U4 ( .A(n1), .Y(sampled_bit) );
endmodule


module par_chck_test_1 ( clk, rst, P_data, par_typ, par_chk_en, sampled_bit, 
        par_err, test_si, test_so, test_se );
  input [7:0] P_data;
  input clk, rst, par_typ, par_chk_en, sampled_bit, test_si, test_se;
  output par_err, test_so;
  wire   n1, n3, n4, n5, n6, n7, n9, n2, n12;

  SDFFRQX1M par_err_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(test_so) );
  INVXLM U2 ( .A(test_so), .Y(n2) );
  INVX8M U3 ( .A(n2), .Y(par_err) );
  OAI2BB2XLM U5 ( .B0(n1), .B1(n12), .A0N(par_err), .A1N(n12), .Y(n9) );
  XOR3XLM U6 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U7 ( .A(par_chk_en), .Y(n12) );
  XNOR2X2M U8 ( .A(sampled_bit), .B(par_typ), .Y(n5) );
  XOR3XLM U9 ( .A(P_data[1]), .B(P_data[0]), .C(n7), .Y(n3) );
  XNOR2X2M U11 ( .A(P_data[3]), .B(P_data[2]), .Y(n7) );
  XOR3XLM U12 ( .A(P_data[5]), .B(P_data[4]), .C(n6), .Y(n4) );
  XNOR2X2M U13 ( .A(P_data[7]), .B(P_data[6]), .Y(n6) );
endmodule


module strt_checker_test_1 ( clk, rst, strt_chk_en, sampled_bit, strt_glitch, 
        test_si, test_so, test_se );
  input clk, rst, strt_chk_en, sampled_bit, test_si, test_se;
  output strt_glitch, test_so;
  wire   n3;

  SDFFSX1M strt_glitch_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), 
        .SN(rst), .Q(strt_glitch), .QN(test_so) );
  AOI2B1X1M U3 ( .A1N(sampled_bit), .A0(strt_chk_en), .B0(test_so), .Y(n3) );
endmodule


module stp_checker_test_1 ( clk, rst, stp_chk_en, sampled_bit, stp_err, 
        test_si, test_so, test_se );
  input clk, rst, stp_chk_en, sampled_bit, test_si, test_se;
  output stp_err, test_so;
  wire   n3, n1, n6;

  SDFFRQX1M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(test_so) );
  INVXLM U2 ( .A(test_so), .Y(n1) );
  INVX8M U3 ( .A(n1), .Y(stp_err) );
  OAI2BB2XLM U6 ( .B0(sampled_bit), .B1(n6), .A0N(stp_err), .A1N(n6), .Y(n3)
         );
  INVX2M U7 ( .A(stp_chk_en), .Y(n6) );
endmodule


module deserializer_test_1 ( clk, rst, deser_en, sampled_bit, P_data, test_si, 
        test_so, test_se );
  output [7:0] P_data;
  input clk, rst, deser_en, sampled_bit, test_si, test_se;
  output test_so;
  wire   i_1_, i_0_, n1, n2, n5, n7, n8, n9, n10, n11, n12, n13, n14, n16, n17,
         n18, n19, n20, n29, n32, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n50, n51, n52, n53, n54, n55, n58, n59;

  SDFFRQX2M i_reg_0_ ( .D(n34), .SI(P_data[7]), .SE(n58), .CK(clk), .RN(n50), 
        .Q(i_0_) );
  SDFFRQX2M i_reg_1_ ( .D(n32), .SI(i_0_), .SE(n59), .CK(clk), .RN(n50), .Q(
        i_1_) );
  SDFFRQX2M i_reg_2_ ( .D(n29), .SI(i_1_), .SE(n58), .CK(clk), .RN(n50), .Q(
        test_so) );
  SDFFRQX2M P_data_reg_6_ ( .D(n36), .SI(P_data[5]), .SE(n59), .CK(clk), .RN(
        n50), .Q(P_data[6]) );
  SDFFRQX2M P_data_reg_2_ ( .D(n40), .SI(P_data[1]), .SE(n58), .CK(clk), .RN(
        n50), .Q(P_data[2]) );
  SDFFRQX2M P_data_reg_0_ ( .D(n42), .SI(test_si), .SE(n59), .CK(clk), .RN(n50), .Q(P_data[0]) );
  SDFFRQX2M P_data_reg_4_ ( .D(n38), .SI(P_data[3]), .SE(n58), .CK(clk), .RN(
        n50), .Q(P_data[4]) );
  SDFFRQX2M P_data_reg_7_ ( .D(n35), .SI(P_data[6]), .SE(n59), .CK(clk), .RN(
        n50), .Q(P_data[7]) );
  SDFFRQX2M P_data_reg_3_ ( .D(n39), .SI(P_data[2]), .SE(n58), .CK(clk), .RN(
        n50), .Q(P_data[3]) );
  SDFFRQX2M P_data_reg_1_ ( .D(n41), .SI(P_data[0]), .SE(n59), .CK(clk), .RN(
        n50), .Q(P_data[1]) );
  SDFFRQX2M P_data_reg_5_ ( .D(n37), .SI(P_data[4]), .SE(n58), .CK(clk), .RN(
        n50), .Q(P_data[5]) );
  INVX4M U14 ( .A(n51), .Y(n50) );
  INVX2M U15 ( .A(rst), .Y(n51) );
  NAND2X2M U16 ( .A(deser_en), .B(n52), .Y(n7) );
  OAI221X1M U17 ( .A0(n1), .A1(n2), .B0(n53), .B1(n55), .C0(n5), .Y(n29) );
  INVX2M U18 ( .A(n2), .Y(n53) );
  OAI21X2M U19 ( .A0(deser_en), .A1(n52), .B0(n7), .Y(n34) );
  NAND2X2M U20 ( .A(n55), .B(n54), .Y(n18) );
  NAND2X2M U21 ( .A(i_0_), .B(deser_en), .Y(n2) );
  NAND2X2M U22 ( .A(sampled_bit), .B(n53), .Y(n9) );
  XNOR2X2M U23 ( .A(i_1_), .B(n2), .Y(n32) );
  NAND2BX2M U24 ( .AN(n7), .B(sampled_bit), .Y(n11) );
  OAI21X2M U25 ( .A0(n1), .A1(n11), .B0(n17), .Y(n40) );
  OAI21X2M U26 ( .A0(n1), .A1(n7), .B0(P_data[2]), .Y(n17) );
  OAI21X2M U27 ( .A0(n1), .A1(n9), .B0(n16), .Y(n39) );
  OAI21X2M U28 ( .A0(n1), .A1(n2), .B0(P_data[3]), .Y(n16) );
  OAI21X2M U29 ( .A0(n11), .A1(n5), .B0(n14), .Y(n38) );
  OAI21X2M U30 ( .A0(n7), .A1(n5), .B0(P_data[4]), .Y(n14) );
  OAI21X2M U31 ( .A0(n9), .A1(n5), .B0(n13), .Y(n37) );
  OAI21X2M U32 ( .A0(n2), .A1(n5), .B0(P_data[5]), .Y(n13) );
  OAI21X2M U33 ( .A0(n8), .A1(n11), .B0(n12), .Y(n36) );
  OAI21X2M U45 ( .A0(n8), .A1(n7), .B0(P_data[6]), .Y(n12) );
  OAI21X2M U46 ( .A0(n8), .A1(n9), .B0(n10), .Y(n35) );
  OAI21X2M U47 ( .A0(n2), .A1(n8), .B0(P_data[7]), .Y(n10) );
  OAI21X2M U48 ( .A0(n9), .A1(n18), .B0(n19), .Y(n41) );
  OAI21X2M U49 ( .A0(n2), .A1(n18), .B0(P_data[1]), .Y(n19) );
  OAI21X2M U50 ( .A0(n11), .A1(n18), .B0(n20), .Y(n42) );
  OAI21X2M U51 ( .A0(n7), .A1(n18), .B0(P_data[0]), .Y(n20) );
  NAND2X2M U52 ( .A(test_so), .B(n54), .Y(n5) );
  NAND2X2M U53 ( .A(i_1_), .B(n55), .Y(n1) );
  NAND2X2M U54 ( .A(i_1_), .B(test_so), .Y(n8) );
  INVX2M U55 ( .A(test_so), .Y(n55) );
  INVX2M U56 ( .A(i_1_), .Y(n54) );
  INVX2M U57 ( .A(i_0_), .Y(n52) );
  DLY1X1M U58 ( .A(test_se), .Y(n58) );
  DLY1X1M U59 ( .A(test_se), .Y(n59) );
endmodule


module RX_TOP_test_1 ( CLK, RST, parity_enable, RX_IN, Prescale, parity_type, 
        framing_error, parity_error, data_valid, P_DATA, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, parity_enable, RX_IN, parity_type, test_si2, test_si1,
         test_se;
  output framing_error, parity_error, data_valid, test_so2, test_so1;
  wire   enable, par_chk_en, strt_chk_en, strt_glitch, stp_chk_en, deser_en,
         n1, n2, n5, n6, n7, n8, n9, n12, n13, n14;
  wire   [5:0] limit_edg;
  wire   [3:0] bit_cnt;
  wire   [5:0] edg_cnt;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  DLY1X1M U4 ( .A(test_so1), .Y(n12) );
  DLY1X1M U5 ( .A(test_se), .Y(n13) );
  DLY1X1M U6 ( .A(test_se), .Y(n14) );
  UART_RX_FSM_test_1 FSM_u ( .clk(CLK), .rst(n1), .rx_in(RX_IN), .par_en(
        parity_enable), .Prescale(Prescale), .bit_cnt(bit_cnt), .edg_cnt(
        edg_cnt), .limit_edg(limit_edg), .par_err(parity_error), .stp_err(
        framing_error), .strt_glitch(strt_glitch), .enable(enable), 
        .data_valid(data_valid), .deser_en(deser_en), .stp_chk_en(stp_chk_en), 
        .strt_chk_en(strt_chk_en), .par_chk_en(par_chk_en), .test_si(test_si1), 
        .test_so(n9), .test_se(n13) );
  edge_bit_cntr_test_1 edg_cnt_u ( .clk(CLK), .rst(n1), .enable(enable), 
        .par_en(parity_enable), .prescale(Prescale), .bit_cnt(bit_cnt), 
        .edg_cnt(edg_cnt), .limit_edg(limit_edg), .test_si(n8), .test_se(n14)
         );
  data_sampling_test_1 sampler_u ( .clk(CLK), .rst(n1), .dat_samp_en(1'b1), 
        .edg_cnt(edg_cnt), .rx_in(RX_IN), .prescale(Prescale), .sampled_bit(
        test_so1), .test_si2(test_si2), .test_si1(n7), .test_so1(n6), 
        .test_se(n14) );
  par_chck_test_1 parity_u ( .clk(CLK), .rst(n1), .P_data(P_DATA), .par_typ(
        parity_type), .par_chk_en(par_chk_en), .sampled_bit(n12), .par_err(
        parity_error), .test_si(edg_cnt[5]), .test_so(n7), .test_se(n13) );
  strt_checker_test_1 strt_checker_u ( .clk(CLK), .rst(n1), .strt_chk_en(
        strt_chk_en), .sampled_bit(n12), .strt_glitch(strt_glitch), .test_si(
        n5), .test_so(test_so2), .test_se(n13) );
  stp_checker_test_1 stp_checker_u ( .clk(CLK), .rst(n1), .stp_chk_en(
        stp_chk_en), .sampled_bit(n12), .stp_err(framing_error), .test_si(n6), 
        .test_so(n5), .test_se(n14) );
  deserializer_test_1 deserializer_u ( .clk(CLK), .rst(n1), .deser_en(deser_en), .sampled_bit(n12), .P_data(P_DATA), .test_si(n9), .test_so(n8), .test_se(n13) );
endmodule


module UART_DATA_WIDTH8_test_1 ( RST, TX_CLK, RX_CLK, RX_IN, TX_IN_P_DATA, 
        TX_IN_data_valid, Prescale, parity_enable, parity_type, 
        RX_OUT_data_valid, RX_OUT_P_DATA, busy, parity_error, TX_OUT, 
        framing_error, test_si3, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [7:0] TX_IN_P_DATA;
  input [5:0] Prescale;
  output [7:0] RX_OUT_P_DATA;
  input RST, TX_CLK, RX_CLK, RX_IN, TX_IN_data_valid, parity_enable,
         parity_type, test_si3, test_si2, test_si1, test_se;
  output RX_OUT_data_valid, busy, parity_error, TX_OUT, framing_error,
         test_so2, test_so1;
  wire   n1, n2, n5;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  TX_TOP_test_1 UART_TX_u ( .CLK(TX_CLK), .RST(n1), .P_DATA(TX_IN_P_DATA), 
        .data_valid(TX_IN_data_valid), .parity_enable(parity_enable), 
        .parity_type(parity_type), .TX_OUT(TX_OUT), .busy(busy), .test_si2(
        test_si3), .test_si1(n5), .test_so1(test_so2), .test_se(test_se) );
  RX_TOP_test_1 UART_RX_u ( .CLK(RX_CLK), .RST(n1), .parity_enable(
        parity_enable), .RX_IN(RX_IN), .Prescale(Prescale), .parity_type(
        parity_type), .framing_error(framing_error), .parity_error(
        parity_error), .data_valid(RX_OUT_data_valid), .P_DATA(RX_OUT_P_DATA), 
        .test_si2(test_si2), .test_si1(test_si1), .test_so2(n5), .test_so1(
        test_so1), .test_se(test_se) );
endmodule


module Data_syn_NUM_STAGES2_BUS_WIDTH8_test_1 ( CLK, RST, bus_enable, 
        unsync_bus, enable_pulse, sync_bus, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse, test_so;
  wire   sync_reg_1_, sync_reg_0_, n1, n3, n5, n7, n9, n11, n13, n15, n17, n22,
         n23, n24, n27;

  SDFFRQX2M sync_reg_reg_2_ ( .D(sync_reg_1_), .SI(sync_reg_1_), .SE(n27), 
        .CK(CLK), .RN(n22), .Q(test_so) );
  SDFFRQX2M sync_reg_reg_1_ ( .D(sync_reg_0_), .SI(sync_reg_0_), .SE(n27), 
        .CK(CLK), .RN(n22), .Q(sync_reg_1_) );
  SDFFRQX2M sync_bus_reg_7_ ( .D(n17), .SI(sync_bus[6]), .SE(n27), .CK(CLK), 
        .RN(n22), .Q(sync_bus[7]) );
  SDFFRQX2M enable_pulse_reg ( .D(n24), .SI(test_si), .SE(n27), .CK(CLK), .RN(
        n22), .Q(enable_pulse) );
  SDFFRQX2M sync_bus_reg_3_ ( .D(n9), .SI(sync_bus[2]), .SE(n27), .CK(CLK), 
        .RN(n22), .Q(sync_bus[3]) );
  SDFFRQX2M sync_bus_reg_6_ ( .D(n15), .SI(sync_bus[5]), .SE(n27), .CK(CLK), 
        .RN(n22), .Q(sync_bus[6]) );
  SDFFRQX2M sync_bus_reg_2_ ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(CLK), 
        .RN(n22), .Q(sync_bus[2]) );
  SDFFRQX2M sync_bus_reg_5_ ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(CLK), .RN(n22), .Q(sync_bus[5]) );
  SDFFRQX2M sync_bus_reg_1_ ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(CLK), 
        .RN(n22), .Q(sync_bus[1]) );
  SDFFRQX2M sync_bus_reg_4_ ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(CLK), .RN(n22), .Q(sync_bus[4]) );
  SDFFRQX2M sync_bus_reg_0_ ( .D(n3), .SI(enable_pulse), .SE(test_se), .CK(CLK), .RN(n22), .Q(sync_bus[0]) );
  SDFFRQX2M sync_reg_reg_0_ ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(CLK), .RN(n22), .Q(sync_reg_0_) );
  NAND2BX2M U3 ( .AN(test_so), .B(sync_reg_1_), .Y(n1) );
  INVX2M U4 ( .A(n1), .Y(n24) );
  INVX4M U5 ( .A(n23), .Y(n22) );
  INVX2M U6 ( .A(RST), .Y(n23) );
  AO22X1M U7 ( .A0(unsync_bus[0]), .A1(n24), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U8 ( .A0(unsync_bus[4]), .A1(n24), .B0(sync_bus[4]), .B1(n1), .Y(n11) );
  AO22X1M U9 ( .A0(unsync_bus[1]), .A1(n24), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n24), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U11 ( .A0(unsync_bus[2]), .A1(n24), .B0(sync_bus[2]), .B1(n1), .Y(n7) );
  AO22X1M U12 ( .A0(unsync_bus[3]), .A1(n24), .B0(sync_bus[3]), .B1(n1), .Y(n9) );
  AO22X1M U25 ( .A0(unsync_bus[6]), .A1(n24), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U26 ( .A0(unsync_bus[7]), .A1(n24), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
  DLY1X1M U27 ( .A(test_se), .Y(n27) );
endmodule


module SYS_TOP ( RST_N, UART_CLK, REF_CLK, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error, SE, SI, scan_clk, scan_rst, test_mode, SO );
  input [3:0] SI;
  output [3:0] SO;
  input RST_N, UART_CLK, REF_CLK, UART_RX_IN, SE, scan_clk, scan_rst,
         test_mode;
  output UART_TX_O, parity_error, framing_error;
  wire   REF_CLK_mux, UART_CLK_mux, RST_N_mux, GATED_CLK_mux, GATED_CLK,
         RX_CLK_mux, RX_CLK, TX_CLK_mux, TX_CLK, SYNC_RST_1_mux, SYNC_RST_1,
         SYNC_RST_2_mux, SYNC_RST_2, CLK_EN, ALU_EN, OUT_VALID, WrEn, RdEn,
         RdData_Valid, FULL, sync_RX_OUT_data_valid, TX_IN_data_valid, R_inc,
         EMPTY, busy, RX_OUT_data_valid, n1, n2, n3, n4, n6, n7, n8, n9, n10,
         n13, n16, n17, n18, n19, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
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

  INVX2M U11 ( .A(n4), .Y(n3) );
  INVX2M U12 ( .A(EMPTY), .Y(n1) );
  BUFX2M U13 ( .A(OUT_VALID), .Y(n2) );
  MX2X2M U14 ( .A(RST_N), .B(scan_rst), .S0(test_mode), .Y(RST_N_mux) );
  INVX2M U15 ( .A(SYNC_RST_1_mux), .Y(n4) );
  MX2X2M U16 ( .A(SYNC_RST_1), .B(scan_rst), .S0(test_mode), .Y(SYNC_RST_1_mux) );
  MX2X2M U17 ( .A(SYNC_RST_2), .B(scan_rst), .S0(test_mode), .Y(SYNC_RST_2_mux) );
  CLKMX2X4M U18 ( .A(REF_CLK), .B(scan_clk), .S0(test_mode), .Y(REF_CLK_mux)
         );
  CLKMX2X4M U19 ( .A(RX_CLK), .B(scan_clk), .S0(test_mode), .Y(RX_CLK_mux) );
  CLKMX2X4M U20 ( .A(TX_CLK), .B(scan_clk), .S0(test_mode), .Y(TX_CLK_mux) );
  CLKMX2X4M U21 ( .A(UART_CLK), .B(scan_clk), .S0(test_mode), .Y(UART_CLK_mux)
         );
  CLKMX2X4M U22 ( .A(GATED_CLK), .B(scan_clk), .S0(test_mode), .Y(
        GATED_CLK_mux) );
  DLY1X1M U28 ( .A(n26), .Y(n25) );
  DLY1X1M U29 ( .A(n28), .Y(n26) );
  INVXLM U30 ( .A(n47), .Y(n27) );
  INVXLM U31 ( .A(n47), .Y(n28) );
  INVXLM U32 ( .A(SE), .Y(n47) );
  INVXLM U33 ( .A(n47), .Y(n29) );
  INVXLM U34 ( .A(n47), .Y(n30) );
  INVXLM U35 ( .A(n33), .Y(n31) );
  INVXLM U36 ( .A(n31), .Y(n32) );
  INVXLM U37 ( .A(n29), .Y(n33) );
  DLY1X1M U38 ( .A(n43), .Y(n34) );
  DLY1X1M U39 ( .A(n45), .Y(n35) );
  INVXLM U40 ( .A(n49), .Y(n36) );
  INVXLM U41 ( .A(n36), .Y(n37) );
  DLY1X1M U42 ( .A(n40), .Y(n38) );
  INVXLM U43 ( .A(n42), .Y(n39) );
  INVXLM U44 ( .A(n39), .Y(n40) );
  INVXLM U45 ( .A(n48), .Y(n41) );
  INVXLM U46 ( .A(n41), .Y(n42) );
  INVXLM U47 ( .A(n41), .Y(n43) );
  INVXLM U48 ( .A(n48), .Y(n44) );
  INVXLM U49 ( .A(n44), .Y(n45) );
  INVXLM U50 ( .A(n44), .Y(n46) );
  INVXLM U51 ( .A(n32), .Y(n48) );
  INVXLM U52 ( .A(n32), .Y(n49) );
  rst_sync_NUM_STAGES2_test_0 RST_SYNC_1_u ( .CLK(REF_CLK_mux), .RST(RST_N_mux), .sync_rst(SYNC_RST_1), .test_si(n18), .test_so(n17), .test_se(n49) );
  rst_sync_NUM_STAGES2_test_1 RST_SYNC_2_u ( .CLK(UART_CLK_mux), .RST(
        RST_N_mux), .sync_rst(SYNC_RST_2), .test_si(n17), .test_so(n16), 
        .test_se(n37) );
  CLK_GATE clk_gate_u ( .CLK_EN(CLK_EN), .CLK(REF_CLK_mux), .GATED_CLK(
        GATED_CLK) );
  ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 ALU_u ( .CLK(GATED_CLK_mux), .RST(n3), 
        .A(REG0), .B(REG1), .EN(ALU_EN), .ALU_FUN(ALU_FUN), .ALU_OUT(ALU_OUT), 
        .OUT_VALID(OUT_VALID), .test_si(SI[3]), .test_se(n27) );
  reg_file_MEM_WIDTH8_MEM_DEPTH16_ADDR_WIDTH4_test_1 Regfile_u ( .WrEn(WrEn), 
        .RdEn(RdEn), .CLK(REF_CLK_mux), .RST(n3), .Address(Address), .WrData(
        WrData), .RdData(RdData), .RdData_valid(RdData_Valid), .REG0(REG0), 
        .REG1(REG1), .REG2(REG2), .REG3(REG3), .test_si2(SI[1]), .test_si1(n16), .test_so2(n13), .test_so1(SO[2]), .test_se(SE) );
  SYS_CTRL_test_1 sys_ctrl_u ( .CLK(REF_CLK_mux), .RST(n3), .FULL(FULL), 
        .ALU_OUT(ALU_OUT), .OUT_Valid(n2), .RX_P_Data(sync_RX_OUT_P_DATA), 
        .RX_D_VLD(sync_RX_OUT_data_valid), .RdData(RdData), .RdData_Valid(
        RdData_Valid), .ALU_EN(ALU_EN), .ALU_FUN(ALU_FUN), .CLK_EN(CLK_EN), 
        .Address(Address), .WrEN(WrEn), .RdEN(RdEn), .WrData(WrData), 
        .TX_P_Data(TX_IN_P_DATA), .TX_D_VLD(TX_IN_data_valid), .test_si(n7), 
        .test_so(n6), .test_se(n29) );
  CLKDIV_MUX_WIDTH8 CLKDIV_MUX_u ( .IN(REG2[7:2]), .OUT({
        SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4, RX_div_ratio[3:0]}) );
  clk_div_RATIO_WD8_test_0 clk_div_RX_u ( .i_ref_clk(UART_CLK_mux), .i_rst_n(
        SYNC_RST_2_mux), .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        RX_div_ratio[3:0]}), .o_div_clk(RX_CLK), .test_si(n10), .test_so(n9), 
        .test_se(n34) );
  clk_div_RATIO_WD8_test_1 clk_div_TX_u ( .i_ref_clk(UART_CLK_mux), .i_rst_n(
        SYNC_RST_2_mux), .i_clk_en(1'b1), .i_div_ratio(REG3), .o_div_clk(
        TX_CLK), .test_si(n9), .test_so(n8), .test_se(n35) );
  ASYNC_FIFO_DATA_WIDTH8_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_1 FIFO_u ( 
        .W_clk(REF_CLK_mux), .W_rst(n3), .W_inc(TX_IN_data_valid), .R_clk(
        TX_CLK_mux), .R_rst(SYNC_RST_2_mux), .R_inc(R_inc), .WR_data(
        TX_IN_P_DATA), .FULL(FULL), .EMPTY(EMPTY), .RD_data(RD_data), 
        .test_si2(SI[2]), .test_si1(OUT_VALID), .test_so2(n19), .test_so1(
        SO[3]), .test_se(n30) );
  Pulse_gen_test_1 PULSE_GEN_u ( .CLK(TX_CLK_mux), .RST(SYNC_RST_2_mux), 
        .LVL_SIG(busy), .PULSE_SIG(R_inc), .test_si(n19), .test_so(n18), 
        .test_se(n46) );
  UART_DATA_WIDTH8_test_1 UART_u ( .RST(SYNC_RST_2_mux), .TX_CLK(TX_CLK_mux), 
        .RX_CLK(RX_CLK_mux), .RX_IN(UART_RX_IN), .TX_IN_P_DATA(RD_data), 
        .TX_IN_data_valid(n1), .Prescale(REG2[7:2]), .parity_enable(REG2[0]), 
        .parity_type(REG2[1]), .RX_OUT_data_valid(RX_OUT_data_valid), 
        .RX_OUT_P_DATA(RX_OUT_P_DATA), .busy(busy), .parity_error(parity_error), .TX_OUT(SO[0]), .framing_error(framing_error), .test_si3(n6), .test_si2(
        SI[0]), .test_si1(n13), .test_so2(n10), .test_so1(SO[1]), .test_se(n25) );
  Data_syn_NUM_STAGES2_BUS_WIDTH8_test_1 synchronizer_u ( .CLK(REF_CLK_mux), 
        .RST(n3), .bus_enable(RX_OUT_data_valid), .unsync_bus(RX_OUT_P_DATA), 
        .enable_pulse(sync_RX_OUT_data_valid), .sync_bus(sync_RX_OUT_P_DATA), 
        .test_si(n8), .test_so(n7), .test_se(n38) );
  CLKBUFX8M U27 ( .A(SO[0]), .Y(UART_TX_O) );
endmodule

