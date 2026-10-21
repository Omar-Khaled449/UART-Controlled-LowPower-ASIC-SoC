module SYS_TOP (
	RST_N, 
	UART_CLK, 
	REF_CLK, 
	UART_RX_IN, 
	UART_TX_O, 
	parity_error, 
	framing_error, 
	SE, 
	SI, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SO);
   input RST_N;
   input UART_CLK;
   input REF_CLK;
   input UART_RX_IN;
   output UART_TX_O;
   output parity_error;
   output framing_error;
   input SE;
   input [3:0] SI;
   input scan_clk;
   input scan_rst;
   input test_mode;
   output [3:0] SO;

   // Internal wires
   wire FE_PHN7_RST_N;
   wire FE_PHN6_RST_N;
   wire FE_PHN5_scan_rst;
   wire FE_PHN4_scan_rst;
   wire FE_PHN3_scan_rst;
   wire FE_PHN2_scan_rst;
   wire FE_PHN1_scan_rst;
   wire FE_PHN0_scan_rst;
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L14_N0;
   wire scan_clk__L13_N0;
   wire scan_clk__L12_N0;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_CLK_mux__L9_N15;
   wire REF_CLK_mux__L9_N14;
   wire REF_CLK_mux__L9_N13;
   wire REF_CLK_mux__L9_N12;
   wire REF_CLK_mux__L9_N11;
   wire REF_CLK_mux__L9_N10;
   wire REF_CLK_mux__L9_N9;
   wire REF_CLK_mux__L9_N8;
   wire REF_CLK_mux__L9_N7;
   wire REF_CLK_mux__L9_N6;
   wire REF_CLK_mux__L9_N5;
   wire REF_CLK_mux__L9_N4;
   wire REF_CLK_mux__L9_N3;
   wire REF_CLK_mux__L9_N2;
   wire REF_CLK_mux__L9_N1;
   wire REF_CLK_mux__L9_N0;
   wire REF_CLK_mux__L8_N7;
   wire REF_CLK_mux__L8_N6;
   wire REF_CLK_mux__L8_N5;
   wire REF_CLK_mux__L8_N4;
   wire REF_CLK_mux__L8_N3;
   wire REF_CLK_mux__L8_N2;
   wire REF_CLK_mux__L8_N1;
   wire REF_CLK_mux__L8_N0;
   wire REF_CLK_mux__L7_N3;
   wire REF_CLK_mux__L7_N2;
   wire REF_CLK_mux__L7_N1;
   wire REF_CLK_mux__L7_N0;
   wire REF_CLK_mux__L6_N1;
   wire REF_CLK_mux__L6_N0;
   wire REF_CLK_mux__L5_N0;
   wire REF_CLK_mux__L4_N0;
   wire REF_CLK_mux__L3_N1;
   wire REF_CLK_mux__L3_N0;
   wire REF_CLK_mux__L2_N0;
   wire REF_CLK_mux__L1_N0;
   wire UART_CLK_mux__L14_N1;
   wire UART_CLK_mux__L14_N0;
   wire UART_CLK_mux__L13_N0;
   wire UART_CLK_mux__L12_N0;
   wire UART_CLK_mux__L11_N0;
   wire UART_CLK_mux__L10_N0;
   wire UART_CLK_mux__L9_N0;
   wire UART_CLK_mux__L8_N2;
   wire UART_CLK_mux__L8_N1;
   wire UART_CLK_mux__L8_N0;
   wire UART_CLK_mux__L7_N1;
   wire UART_CLK_mux__L7_N0;
   wire UART_CLK_mux__L6_N1;
   wire UART_CLK_mux__L6_N0;
   wire UART_CLK_mux__L5_N0;
   wire UART_CLK_mux__L4_N0;
   wire UART_CLK_mux__L3_N2;
   wire UART_CLK_mux__L3_N1;
   wire UART_CLK_mux__L3_N0;
   wire UART_CLK_mux__L2_N0;
   wire UART_CLK_mux__L1_N0;
   wire RX_CLK__L1_N0;
   wire RX_CLK_mux__L4_N1;
   wire RX_CLK_mux__L4_N0;
   wire RX_CLK_mux__L3_N0;
   wire RX_CLK_mux__L2_N0;
   wire RX_CLK_mux__L1_N0;
   wire TX_CLK_mux__L5_N1;
   wire TX_CLK_mux__L5_N0;
   wire TX_CLK_mux__L4_N0;
   wire TX_CLK_mux__L3_N0;
   wire TX_CLK_mux__L2_N0;
   wire TX_CLK_mux__L1_N0;
   wire GATED_CLK_mux__L4_N1;
   wire GATED_CLK_mux__L4_N0;
   wire GATED_CLK_mux__L3_N0;
   wire GATED_CLK_mux__L2_N0;
   wire GATED_CLK_mux__L1_N0;
   wire FE_OFN4_SYNC_RST_2_mux;
   wire FE_OFN2_SYNC_RST_1_mux;
   wire FE_OFN0_SYNC_RST_1_mux;
   wire REF_CLK_mux;
   wire UART_CLK_mux;
   wire RST_N_mux;
   wire GATED_CLK_mux;
   wire GATED_CLK;
   wire RX_CLK_mux;
   wire RX_CLK;
   wire TX_CLK_mux;
   wire TX_CLK;
   wire SYNC_RST_1_mux;
   wire SYNC_RST_1;
   wire SYNC_RST_2_mux;
   wire SYNC_RST_2;
   wire CLK_EN;
   wire ALU_EN;
   wire OUT_VALID;
   wire WrEn;
   wire RdEn;
   wire RdData_Valid;
   wire FULL;
   wire sync_RX_OUT_data_valid;
   wire TX_IN_data_valid;
   wire R_inc;
   wire EMPTY;
   wire busy;
   wire RX_OUT_data_valid;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n13;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire SYNOPSYS_UNCONNECTED_1;
   wire SYNOPSYS_UNCONNECTED_2;
   wire SYNOPSYS_UNCONNECTED_3;
   wire SYNOPSYS_UNCONNECTED_4;
   wire [7:0] REG0;
   wire [7:0] REG1;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [3:0] Address;
   wire [7:0] WrData;
   wire [7:0] RdData;
   wire [7:0] REG2;
   wire [7:0] REG3;
   wire [7:0] sync_RX_OUT_P_DATA;
   wire [7:0] TX_IN_P_DATA;
   wire [7:0] RX_div_ratio;
   wire [7:0] RD_data;
   wire [7:0] RX_OUT_P_DATA;

   DLY4X1M FE_PHC7_RST_N (.Y(FE_PHN7_RST_N), 
	.A(FE_PHN6_RST_N));
   DLY4X1M FE_PHC6_RST_N (.Y(FE_PHN6_RST_N), 
	.A(RST_N));
   DLY4X1M FE_PHC5_scan_rst (.Y(FE_PHN5_scan_rst), 
	.A(FE_PHN2_scan_rst));
   DLY4X1M FE_PHC4_scan_rst (.Y(FE_PHN4_scan_rst), 
	.A(FE_PHN1_scan_rst));
   DLY4X1M FE_PHC3_scan_rst (.Y(FE_PHN3_scan_rst), 
	.A(FE_PHN0_scan_rst));
   DLY4X1M FE_PHC2_scan_rst (.Y(FE_PHN2_scan_rst), 
	.A(scan_rst));
   DLY4X1M FE_PHC1_scan_rst (.Y(FE_PHN1_scan_rst), 
	.A(scan_rst));
   DLY4X1M FE_PHC0_scan_rst (.Y(FE_PHN0_scan_rst), 
	.A(scan_rst));
   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX32M scan_clk__L14_I0 (.Y(scan_clk__L14_N0), 
	.A(scan_clk__L13_N0));
   CLKINVX40M scan_clk__L13_I0 (.Y(scan_clk__L13_N0), 
	.A(scan_clk__L12_N0));
   CLKBUFX40M scan_clk__L12_I0 (.Y(scan_clk__L12_N0), 
	.A(scan_clk__L11_N0));
   CLKBUFX40M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N0));
   CLKBUFX40M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX40M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX24M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX24M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX24M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX24M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX24M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX40M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N0));
   CLKINVX40M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M REF_CLK_mux__L9_I15 (.Y(REF_CLK_mux__L9_N15), 
	.A(REF_CLK_mux__L8_N7));
   CLKINVX32M REF_CLK_mux__L9_I14 (.Y(REF_CLK_mux__L9_N14), 
	.A(REF_CLK_mux__L8_N7));
   CLKINVX32M REF_CLK_mux__L9_I13 (.Y(REF_CLK_mux__L9_N13), 
	.A(REF_CLK_mux__L8_N6));
   CLKINVX32M REF_CLK_mux__L9_I12 (.Y(REF_CLK_mux__L9_N12), 
	.A(REF_CLK_mux__L8_N6));
   CLKINVX32M REF_CLK_mux__L9_I11 (.Y(REF_CLK_mux__L9_N11), 
	.A(REF_CLK_mux__L8_N5));
   CLKINVX32M REF_CLK_mux__L9_I10 (.Y(REF_CLK_mux__L9_N10), 
	.A(REF_CLK_mux__L8_N5));
   CLKINVX32M REF_CLK_mux__L9_I9 (.Y(REF_CLK_mux__L9_N9), 
	.A(REF_CLK_mux__L8_N4));
   CLKINVX32M REF_CLK_mux__L9_I8 (.Y(REF_CLK_mux__L9_N8), 
	.A(REF_CLK_mux__L8_N4));
   CLKINVX32M REF_CLK_mux__L9_I7 (.Y(REF_CLK_mux__L9_N7), 
	.A(REF_CLK_mux__L8_N3));
   CLKINVX32M REF_CLK_mux__L9_I6 (.Y(REF_CLK_mux__L9_N6), 
	.A(REF_CLK_mux__L8_N3));
   CLKINVX32M REF_CLK_mux__L9_I5 (.Y(REF_CLK_mux__L9_N5), 
	.A(REF_CLK_mux__L8_N2));
   CLKINVX32M REF_CLK_mux__L9_I4 (.Y(REF_CLK_mux__L9_N4), 
	.A(REF_CLK_mux__L8_N2));
   CLKINVX32M REF_CLK_mux__L9_I3 (.Y(REF_CLK_mux__L9_N3), 
	.A(REF_CLK_mux__L8_N1));
   CLKINVX32M REF_CLK_mux__L9_I2 (.Y(REF_CLK_mux__L9_N2), 
	.A(REF_CLK_mux__L8_N1));
   CLKINVX32M REF_CLK_mux__L9_I1 (.Y(REF_CLK_mux__L9_N1), 
	.A(REF_CLK_mux__L8_N0));
   CLKINVX32M REF_CLK_mux__L9_I0 (.Y(REF_CLK_mux__L9_N0), 
	.A(REF_CLK_mux__L8_N0));
   CLKINVX40M REF_CLK_mux__L8_I7 (.Y(REF_CLK_mux__L8_N7), 
	.A(REF_CLK_mux__L7_N3));
   CLKINVX40M REF_CLK_mux__L8_I6 (.Y(REF_CLK_mux__L8_N6), 
	.A(REF_CLK_mux__L7_N3));
   CLKINVX40M REF_CLK_mux__L8_I5 (.Y(REF_CLK_mux__L8_N5), 
	.A(REF_CLK_mux__L7_N2));
   CLKINVX40M REF_CLK_mux__L8_I4 (.Y(REF_CLK_mux__L8_N4), 
	.A(REF_CLK_mux__L7_N2));
   CLKINVX40M REF_CLK_mux__L8_I3 (.Y(REF_CLK_mux__L8_N3), 
	.A(REF_CLK_mux__L7_N1));
   CLKINVX40M REF_CLK_mux__L8_I2 (.Y(REF_CLK_mux__L8_N2), 
	.A(REF_CLK_mux__L7_N1));
   CLKINVX40M REF_CLK_mux__L8_I1 (.Y(REF_CLK_mux__L8_N1), 
	.A(REF_CLK_mux__L7_N0));
   CLKINVX40M REF_CLK_mux__L8_I0 (.Y(REF_CLK_mux__L8_N0), 
	.A(REF_CLK_mux__L7_N0));
   CLKINVX40M REF_CLK_mux__L7_I3 (.Y(REF_CLK_mux__L7_N3), 
	.A(REF_CLK_mux__L6_N1));
   CLKINVX40M REF_CLK_mux__L7_I2 (.Y(REF_CLK_mux__L7_N2), 
	.A(REF_CLK_mux__L6_N1));
   CLKINVX40M REF_CLK_mux__L7_I1 (.Y(REF_CLK_mux__L7_N1), 
	.A(REF_CLK_mux__L6_N0));
   CLKINVX40M REF_CLK_mux__L7_I0 (.Y(REF_CLK_mux__L7_N0), 
	.A(REF_CLK_mux__L6_N0));
   CLKINVX40M REF_CLK_mux__L6_I1 (.Y(REF_CLK_mux__L6_N1), 
	.A(REF_CLK_mux__L5_N0));
   CLKINVX40M REF_CLK_mux__L6_I0 (.Y(REF_CLK_mux__L6_N0), 
	.A(REF_CLK_mux__L5_N0));
   CLKINVX40M REF_CLK_mux__L5_I0 (.Y(REF_CLK_mux__L5_N0), 
	.A(REF_CLK_mux__L4_N0));
   CLKBUFX20M REF_CLK_mux__L4_I0 (.Y(REF_CLK_mux__L4_N0), 
	.A(REF_CLK_mux__L3_N0));
   CLKINVX32M REF_CLK_mux__L3_I1 (.Y(REF_CLK_mux__L3_N1), 
	.A(REF_CLK_mux__L2_N0));
   CLKBUFX20M REF_CLK_mux__L3_I0 (.Y(REF_CLK_mux__L3_N0), 
	.A(REF_CLK_mux__L2_N0));
   CLKBUFX20M REF_CLK_mux__L2_I0 (.Y(REF_CLK_mux__L2_N0), 
	.A(REF_CLK_mux__L1_N0));
   CLKINVX6M REF_CLK_mux__L1_I0 (.Y(REF_CLK_mux__L1_N0), 
	.A(REF_CLK_mux));
   CLKINVX16M UART_CLK_mux__L14_I1 (.Y(UART_CLK_mux__L14_N1), 
	.A(UART_CLK_mux__L13_N0));
   CLKINVX16M UART_CLK_mux__L14_I0 (.Y(UART_CLK_mux__L14_N0), 
	.A(UART_CLK_mux__L13_N0));
   CLKINVX32M UART_CLK_mux__L13_I0 (.Y(UART_CLK_mux__L13_N0), 
	.A(UART_CLK_mux__L12_N0));
   CLKINVX40M UART_CLK_mux__L12_I0 (.Y(UART_CLK_mux__L12_N0), 
	.A(UART_CLK_mux__L11_N0));
   CLKBUFX40M UART_CLK_mux__L11_I0 (.Y(UART_CLK_mux__L11_N0), 
	.A(UART_CLK_mux__L10_N0));
   CLKBUFX20M UART_CLK_mux__L10_I0 (.Y(UART_CLK_mux__L10_N0), 
	.A(UART_CLK_mux__L9_N0));
   CLKBUFX20M UART_CLK_mux__L9_I0 (.Y(UART_CLK_mux__L9_N0), 
	.A(UART_CLK_mux__L8_N2));
   CLKBUFX20M UART_CLK_mux__L8_I2 (.Y(UART_CLK_mux__L8_N2), 
	.A(UART_CLK_mux__L7_N1));
   CLKINVX16M UART_CLK_mux__L8_I1 (.Y(UART_CLK_mux__L8_N1), 
	.A(UART_CLK_mux__L7_N0));
   CLKINVX16M UART_CLK_mux__L8_I0 (.Y(UART_CLK_mux__L8_N0), 
	.A(UART_CLK_mux__L7_N0));
   CLKBUFX20M UART_CLK_mux__L7_I1 (.Y(UART_CLK_mux__L7_N1), 
	.A(UART_CLK_mux__L6_N1));
   CLKINVX32M UART_CLK_mux__L7_I0 (.Y(UART_CLK_mux__L7_N0), 
	.A(UART_CLK_mux__L6_N0));
   CLKBUFX20M UART_CLK_mux__L6_I1 (.Y(UART_CLK_mux__L6_N1), 
	.A(UART_CLK_mux__L5_N0));
   CLKINVX40M UART_CLK_mux__L6_I0 (.Y(UART_CLK_mux__L6_N0), 
	.A(UART_CLK_mux__L5_N0));
   CLKBUFX20M UART_CLK_mux__L5_I0 (.Y(UART_CLK_mux__L5_N0), 
	.A(UART_CLK_mux__L4_N0));
   CLKBUFX20M UART_CLK_mux__L4_I0 (.Y(UART_CLK_mux__L4_N0), 
	.A(UART_CLK_mux__L3_N2));
   CLKBUFX40M UART_CLK_mux__L3_I2 (.Y(UART_CLK_mux__L3_N2), 
	.A(UART_CLK_mux__L2_N0));
   CLKINVX16M UART_CLK_mux__L3_I1 (.Y(UART_CLK_mux__L3_N1), 
	.A(UART_CLK_mux__L2_N0));
   CLKINVX16M UART_CLK_mux__L3_I0 (.Y(UART_CLK_mux__L3_N0), 
	.A(UART_CLK_mux__L2_N0));
   CLKINVX32M UART_CLK_mux__L2_I0 (.Y(UART_CLK_mux__L2_N0), 
	.A(UART_CLK_mux__L1_N0));
   CLKBUFX20M UART_CLK_mux__L1_I0 (.Y(UART_CLK_mux__L1_N0), 
	.A(UART_CLK_mux));
   CLKBUFX12M RX_CLK__L1_I0 (.Y(RX_CLK__L1_N0), 
	.A(RX_CLK));
   CLKINVX40M RX_CLK_mux__L4_I1 (.Y(RX_CLK_mux__L4_N1), 
	.A(RX_CLK_mux__L3_N0));
   CLKINVX40M RX_CLK_mux__L4_I0 (.Y(RX_CLK_mux__L4_N0), 
	.A(RX_CLK_mux__L3_N0));
   CLKINVX40M RX_CLK_mux__L3_I0 (.Y(RX_CLK_mux__L3_N0), 
	.A(RX_CLK_mux__L2_N0));
   CLKBUFX40M RX_CLK_mux__L2_I0 (.Y(RX_CLK_mux__L2_N0), 
	.A(RX_CLK_mux__L1_N0));
   CLKBUFX12M RX_CLK_mux__L1_I0 (.Y(RX_CLK_mux__L1_N0), 
	.A(RX_CLK_mux));
   CLKINVX40M TX_CLK_mux__L5_I1 (.Y(TX_CLK_mux__L5_N1), 
	.A(TX_CLK_mux__L4_N0));
   CLKINVX40M TX_CLK_mux__L5_I0 (.Y(TX_CLK_mux__L5_N0), 
	.A(TX_CLK_mux__L4_N0));
   CLKINVX40M TX_CLK_mux__L4_I0 (.Y(TX_CLK_mux__L4_N0), 
	.A(TX_CLK_mux__L3_N0));
   CLKBUFX40M TX_CLK_mux__L3_I0 (.Y(TX_CLK_mux__L3_N0), 
	.A(TX_CLK_mux__L2_N0));
   CLKBUFX40M TX_CLK_mux__L2_I0 (.Y(TX_CLK_mux__L2_N0), 
	.A(TX_CLK_mux__L1_N0));
   CLKBUFX12M TX_CLK_mux__L1_I0 (.Y(TX_CLK_mux__L1_N0), 
	.A(TX_CLK_mux));
   CLKINVX40M GATED_CLK_mux__L4_I1 (.Y(GATED_CLK_mux__L4_N1), 
	.A(GATED_CLK_mux__L3_N0));
   CLKINVX40M GATED_CLK_mux__L4_I0 (.Y(GATED_CLK_mux__L4_N0), 
	.A(GATED_CLK_mux__L3_N0));
   CLKINVX40M GATED_CLK_mux__L3_I0 (.Y(GATED_CLK_mux__L3_N0), 
	.A(GATED_CLK_mux__L2_N0));
   CLKBUFX40M GATED_CLK_mux__L2_I0 (.Y(GATED_CLK_mux__L2_N0), 
	.A(GATED_CLK_mux__L1_N0));
   CLKBUFX12M GATED_CLK_mux__L1_I0 (.Y(GATED_CLK_mux__L1_N0), 
	.A(GATED_CLK_mux));
   BUFX8M FE_OFC4_SYNC_RST_2_mux (.Y(FE_OFN4_SYNC_RST_2_mux), 
	.A(SYNC_RST_2_mux));
   BUFX4M FE_OFC2_SYNC_RST_1_mux (.Y(FE_OFN2_SYNC_RST_1_mux), 
	.A(SYNC_RST_1_mux));
   BUFX6M FE_OFC0_SYNC_RST_1_mux (.Y(FE_OFN0_SYNC_RST_1_mux), 
	.A(SYNC_RST_1_mux));
   MX2X2M U14 (.Y(RST_N_mux), 
	.S0(test_mode), 
	.B(FE_PHN3_scan_rst), 
	.A(FE_PHN7_RST_N));
   MX2X8M U16 (.Y(SYNC_RST_1_mux), 
	.S0(test_mode), 
	.B(FE_PHN5_scan_rst), 
	.A(SYNC_RST_1));
   CLKMX2X2M U17 (.Y(SYNC_RST_2_mux), 
	.S0(test_mode), 
	.B(FE_PHN4_scan_rst), 
	.A(SYNC_RST_2));
   CLKMX2X4M U18 (.Y(REF_CLK_mux), 
	.S0(test_mode), 
	.B(scan_clk__L8_N0), 
	.A(REF_CLK__L2_N0));
   CLKMX2X4M U19 (.Y(RX_CLK_mux), 
	.S0(test_mode), 
	.B(scan_clk__L14_N0), 
	.A(RX_CLK__L1_N0));
   CLKMX2X4M U20 (.Y(TX_CLK_mux), 
	.S0(test_mode), 
	.B(scan_clk__L14_N0), 
	.A(TX_CLK));
   CLKMX2X4M U21 (.Y(UART_CLK_mux), 
	.S0(test_mode), 
	.B(scan_clk__L2_N0), 
	.A(UART_CLK__L2_N0));
   CLKMX2X4M U22 (.Y(GATED_CLK_mux), 
	.S0(test_mode), 
	.B(scan_clk__L14_N0), 
	.A(GATED_CLK));
   DLY1X1M U28 (.Y(n25), 
	.A(n26));
   DLY1X1M U29 (.Y(n26), 
	.A(n28));
   INVXLM U30 (.Y(n27), 
	.A(n47));
   INVXLM U31 (.Y(n28), 
	.A(n47));
   INVXLM U32 (.Y(n47), 
	.A(SE));
   INVXLM U33 (.Y(n29), 
	.A(n47));
   INVXLM U34 (.Y(n30), 
	.A(n47));
   INVXLM U35 (.Y(n31), 
	.A(n33));
   INVXLM U36 (.Y(n32), 
	.A(n31));
   INVXLM U37 (.Y(n33), 
	.A(n29));
   DLY1X1M U38 (.Y(n34), 
	.A(n43));
   DLY1X1M U39 (.Y(n35), 
	.A(n45));
   INVXLM U40 (.Y(n36), 
	.A(n49));
   INVXLM U41 (.Y(n37), 
	.A(n36));
   DLY1X1M U42 (.Y(n38), 
	.A(n40));
   INVXLM U43 (.Y(n39), 
	.A(n42));
   INVXLM U44 (.Y(n40), 
	.A(n39));
   INVXLM U45 (.Y(n41), 
	.A(n48));
   INVXLM U46 (.Y(n42), 
	.A(n41));
   INVXLM U47 (.Y(n43), 
	.A(n41));
   INVXLM U48 (.Y(n44), 
	.A(n48));
   INVXLM U49 (.Y(n45), 
	.A(n44));
   INVXLM U50 (.Y(n46), 
	.A(n44));
   INVXLM U51 (.Y(n48), 
	.A(n32));
   INVXLM U52 (.Y(n49), 
	.A(n32));
   rst_sync_NUM_STAGES2_test_0 RST_SYNC_1_u (.CLK(REF_CLK_mux__L9_N3), 
	.RST(RST_N_mux), 
	.sync_rst(SYNC_RST_1), 
	.test_si(n18), 
	.test_so(n17), 
	.test_se(n49));
   rst_sync_NUM_STAGES2_test_1 RST_SYNC_2_u (.CLK(UART_CLK_mux__L14_N0), 
	.RST(RST_N_mux), 
	.sync_rst(SYNC_RST_2), 
	.test_si(n17), 
	.test_so(n16), 
	.test_se(n37), 
	.UART_CLK_mux__L14_N1(UART_CLK_mux__L14_N1));
   CLK_GATE clk_gate_u (.CLK_EN(CLK_EN), 
	.CLK(REF_CLK_mux__L3_N1), 
	.GATED_CLK(GATED_CLK));
   ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 ALU_u (.CLK(GATED_CLK_mux__L4_N0), 
	.RST(SYNC_RST_1_mux), 
	.A({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.B({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(OUT_VALID), 
	.test_si(SI[3]), 
	.test_se(n27), 
	.FE_OFN2_SYNC_RST_1_mux(FE_OFN2_SYNC_RST_1_mux), 
	.GATED_CLK_mux__L4_N1(GATED_CLK_mux__L4_N1));
   reg_file_MEM_WIDTH8_MEM_DEPTH16_ADDR_WIDTH4_test_1 Regfile_u (.WrEn(WrEn), 
	.RdEn(RdEn), 
	.CLK(REF_CLK_mux__L9_N1), 
	.RST(SYNC_RST_1_mux), 
	.Address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_valid(RdData_Valid), 
	.REG0({ REG0[7],
		REG0[6],
		REG0[5],
		REG0[4],
		REG0[3],
		REG0[2],
		REG0[1],
		REG0[0] }), 
	.REG1({ REG1[7],
		REG1[6],
		REG1[5],
		REG1[4],
		REG1[3],
		REG1[2],
		REG1[1],
		REG1[0] }), 
	.REG2({ REG2[7],
		REG2[6],
		REG2[5],
		REG2[4],
		REG2[3],
		REG2[2],
		REG2[1],
		REG2[0] }), 
	.REG3({ REG3[7],
		REG3[6],
		REG3[5],
		REG3[4],
		REG3[3],
		REG3[2],
		REG3[1],
		REG3[0] }), 
	.test_si2(SI[1]), 
	.test_si1(n16), 
	.test_so2(n13), 
	.test_so1(SO[2]), 
	.test_se(SE), 
	.FE_OFN0_SYNC_RST_1_mux(FE_OFN0_SYNC_RST_1_mux), 
	.REF_CLK_mux__L9_N10(REF_CLK_mux__L9_N10), 
	.REF_CLK_mux__L9_N11(REF_CLK_mux__L9_N11), 
	.REF_CLK_mux__L9_N12(REF_CLK_mux__L9_N12), 
	.REF_CLK_mux__L9_N13(REF_CLK_mux__L9_N13), 
	.REF_CLK_mux__L9_N14(REF_CLK_mux__L9_N14), 
	.REF_CLK_mux__L9_N15(REF_CLK_mux__L9_N15), 
	.REF_CLK_mux__L9_N5(REF_CLK_mux__L9_N5), 
	.REF_CLK_mux__L9_N8(REF_CLK_mux__L9_N8), 
	.REF_CLK_mux__L9_N9(REF_CLK_mux__L9_N9));
   SYS_CTRL_test_1 sys_ctrl_u (.CLK(REF_CLK_mux__L9_N0), 
	.RST(SYNC_RST_1_mux), 
	.FULL(FULL), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_Valid(OUT_VALID), 
	.RX_P_Data({ sync_RX_OUT_P_DATA[7],
		sync_RX_OUT_P_DATA[6],
		sync_RX_OUT_P_DATA[5],
		sync_RX_OUT_P_DATA[4],
		sync_RX_OUT_P_DATA[3],
		sync_RX_OUT_P_DATA[2],
		sync_RX_OUT_P_DATA[1],
		sync_RX_OUT_P_DATA[0] }), 
	.RX_D_VLD(sync_RX_OUT_data_valid), 
	.RdData({ RdData[7],
		RdData[6],
		RdData[5],
		RdData[4],
		RdData[3],
		RdData[2],
		RdData[1],
		RdData[0] }), 
	.RdData_Valid(RdData_Valid), 
	.ALU_EN(ALU_EN), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.CLK_EN(CLK_EN), 
	.Address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.WrEN(WrEn), 
	.RdEN(RdEn), 
	.WrData({ WrData[7],
		WrData[6],
		WrData[5],
		WrData[4],
		WrData[3],
		WrData[2],
		WrData[1],
		WrData[0] }), 
	.TX_P_Data({ TX_IN_P_DATA[7],
		TX_IN_P_DATA[6],
		TX_IN_P_DATA[5],
		TX_IN_P_DATA[4],
		TX_IN_P_DATA[3],
		TX_IN_P_DATA[2],
		TX_IN_P_DATA[1],
		TX_IN_P_DATA[0] }), 
	.TX_D_VLD(TX_IN_data_valid), 
	.test_si(n7), 
	.test_so(n6), 
	.test_se(n29), 
	.FE_OFN2_SYNC_RST_1_mux(FE_OFN2_SYNC_RST_1_mux), 
	.REF_CLK_mux__L9_N1(REF_CLK_mux__L9_N1), 
	.REF_CLK_mux__L9_N10(REF_CLK_mux__L9_N10), 
	.REF_CLK_mux__L9_N3(REF_CLK_mux__L9_N3));
   CLKDIV_MUX_WIDTH8 CLKDIV_MUX_u (.IN({ REG2[7],
		REG2[6],
		REG2[5],
		REG2[4],
		REG2[3],
		REG2[2] }), 
	.OUT({ SYNOPSYS_UNCONNECTED_1,
		SYNOPSYS_UNCONNECTED_2,
		SYNOPSYS_UNCONNECTED_3,
		SYNOPSYS_UNCONNECTED_4,
		RX_div_ratio[3],
		RX_div_ratio[2],
		RX_div_ratio[1],
		RX_div_ratio[0] }));
   clk_div_RATIO_WD8_test_0 clk_div_RX_u (.i_ref_clk(UART_CLK_mux__L14_N1), 
	.i_rst_n(SYNC_RST_2_mux), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		RX_div_ratio[3],
		RX_div_ratio[2],
		RX_div_ratio[1],
		RX_div_ratio[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si(n10), 
	.test_so(n9), 
	.test_se(n34), 
	.FE_OFN4_SYNC_RST_2_mux(FE_OFN4_SYNC_RST_2_mux), 
	.UART_CLK_mux__L3_N0(UART_CLK_mux__L3_N0), 
	.UART_CLK_mux__L8_N1(UART_CLK_mux__L8_N1));
   clk_div_RATIO_WD8_test_1 clk_div_TX_u (.i_ref_clk(UART_CLK_mux__L14_N0), 
	.i_rst_n(SYNC_RST_2_mux), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ REG3[7],
		REG3[6],
		REG3[5],
		REG3[4],
		REG3[3],
		REG3[2],
		REG3[1],
		REG3[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si(n9), 
	.test_so(n8), 
	.test_se(n35), 
	.UART_CLK_mux__L3_N1(UART_CLK_mux__L3_N1), 
	.UART_CLK_mux__L8_N0(UART_CLK_mux__L8_N0));
   ASYNC_FIFO_DATA_WIDTH8_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_1 FIFO_u (.W_clk(REF_CLK_mux__L9_N2), 
	.W_rst(FE_OFN0_SYNC_RST_1_mux), 
	.W_inc(TX_IN_data_valid), 
	.R_clk(TX_CLK_mux__L5_N0), 
	.R_rst(FE_OFN4_SYNC_RST_2_mux), 
	.R_inc(R_inc), 
	.WR_data({ TX_IN_P_DATA[7],
		TX_IN_P_DATA[6],
		TX_IN_P_DATA[5],
		TX_IN_P_DATA[4],
		TX_IN_P_DATA[3],
		TX_IN_P_DATA[2],
		TX_IN_P_DATA[1],
		TX_IN_P_DATA[0] }), 
	.FULL(FULL), 
	.EMPTY(EMPTY), 
	.RD_data({ RD_data[7],
		RD_data[6],
		RD_data[5],
		RD_data[4],
		RD_data[3],
		RD_data[2],
		RD_data[1],
		RD_data[0] }), 
	.test_si2(SI[2]), 
	.test_si1(OUT_VALID), 
	.test_so2(n19), 
	.test_so1(SO[3]), 
	.test_se(n30), 
	.TX_CLK_mux__L5_N1(TX_CLK_mux__L5_N1), 
	.REF_CLK_mux__L9_N4(REF_CLK_mux__L9_N4), 
	.REF_CLK_mux__L9_N5(REF_CLK_mux__L9_N5), 
	.REF_CLK_mux__L9_N6(REF_CLK_mux__L9_N6), 
	.REF_CLK_mux__L9_N7(REF_CLK_mux__L9_N7));
   Pulse_gen_test_1 PULSE_GEN_u (.CLK(TX_CLK_mux__L5_N0), 
	.RST(FE_OFN4_SYNC_RST_2_mux), 
	.LVL_SIG(busy), 
	.PULSE_SIG(R_inc), 
	.test_si(n19), 
	.test_so(n18), 
	.test_se(n46));
   UART_DATA_WIDTH8_test_1 UART_u (.RST(FE_OFN4_SYNC_RST_2_mux), 
	.TX_CLK(TX_CLK_mux__L5_N0), 
	.RX_CLK(RX_CLK_mux__L4_N0), 
	.RX_IN(UART_RX_IN), 
	.TX_IN_P_DATA({ RD_data[7],
		RD_data[6],
		RD_data[5],
		RD_data[4],
		RD_data[3],
		RD_data[2],
		RD_data[1],
		RD_data[0] }), 
	.TX_IN_data_valid(EMPTY), 
	.Prescale({ REG2[7],
		REG2[6],
		REG2[5],
		REG2[4],
		REG2[3],
		REG2[2] }), 
	.parity_enable(REG2[0]), 
	.parity_type(REG2[1]), 
	.RX_OUT_data_valid(RX_OUT_data_valid), 
	.RX_OUT_P_DATA({ RX_OUT_P_DATA[7],
		RX_OUT_P_DATA[6],
		RX_OUT_P_DATA[5],
		RX_OUT_P_DATA[4],
		RX_OUT_P_DATA[3],
		RX_OUT_P_DATA[2],
		RX_OUT_P_DATA[1],
		RX_OUT_P_DATA[0] }), 
	.busy(busy), 
	.parity_error(parity_error), 
	.TX_OUT(SO[0]), 
	.framing_error(framing_error), 
	.test_si3(n6), 
	.test_si2(SI[0]), 
	.test_si1(n13), 
	.test_so2(n10), 
	.test_so1(SO[1]), 
	.test_se(n25), 
	.TX_CLK_mux__L5_N1(TX_CLK_mux__L5_N1), 
	.RX_CLK_mux__L4_N1(RX_CLK_mux__L4_N1));
   Data_syn_NUM_STAGES2_BUS_WIDTH8_test_1 synchronizer_u (.CLK(REF_CLK_mux__L9_N0), 
	.RST(SYNC_RST_1_mux), 
	.bus_enable(RX_OUT_data_valid), 
	.unsync_bus({ RX_OUT_P_DATA[7],
		RX_OUT_P_DATA[6],
		RX_OUT_P_DATA[5],
		RX_OUT_P_DATA[4],
		RX_OUT_P_DATA[3],
		RX_OUT_P_DATA[2],
		RX_OUT_P_DATA[1],
		RX_OUT_P_DATA[0] }), 
	.enable_pulse(sync_RX_OUT_data_valid), 
	.sync_bus({ sync_RX_OUT_P_DATA[7],
		sync_RX_OUT_P_DATA[6],
		sync_RX_OUT_P_DATA[5],
		sync_RX_OUT_P_DATA[4],
		sync_RX_OUT_P_DATA[3],
		sync_RX_OUT_P_DATA[2],
		sync_RX_OUT_P_DATA[1],
		sync_RX_OUT_P_DATA[0] }), 
	.test_si(n8), 
	.test_so(n7), 
	.test_se(n38), 
	.FE_OFN2_SYNC_RST_1_mux(FE_OFN2_SYNC_RST_1_mux), 
	.REF_CLK_mux__L9_N3(REF_CLK_mux__L9_N3));
   CLKBUFX12M U27 (.Y(UART_TX_O), 
	.A(SO[0]));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Oct  7 20:18:20 2026
/////////////////////////////////////////////////////////////
module rst_sync_NUM_STAGES2_test_0 (
	CLK, 
	RST, 
	sync_rst, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   output sync_rst;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M sync_reg_reg_0_ (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_rst), 
	.D(test_so), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_rst), 
	.SE(test_se), 
	.RN(RST), 
	.Q(test_so), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module rst_sync_NUM_STAGES2_test_1 (
	CLK, 
	RST, 
	sync_rst, 
	test_si, 
	test_so, 
	test_se, 
	UART_CLK_mux__L14_N1);
   input CLK;
   input RST;
   output sync_rst;
   input test_si;
   output test_so;
   input test_se;
   input UART_CLK_mux__L14_N1;

   // Internal wires
   wire HTIE_LTIEHI_NET;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M sync_reg_reg_0_ (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_rst), 
	.D(test_so), 
	.CK(UART_CLK_mux__L14_N1));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_rst), 
	.SE(test_se), 
	.RN(RST), 
	.Q(test_so), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
endmodule

module CLK_GATE (
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(CLK_EN), 
	.CK(CLK));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	n153, 
	n145, 
	n163, 
	n162, 
	n154, 
	n156, 
	n158, 
	n159, 
	n160, 
	n161);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input n153;
   input n145;
   input n163;
   input n162;
   input n154;
   input n156;
   input n158;
   input n159;
   input n160;
   input n161;

   // Internal wires
   wire FE_RN_559_0;
   wire FE_RN_558_0;
   wire FE_RN_557_0;
   wire FE_RN_556_0;
   wire FE_RN_555_0;
   wire FE_RN_554_0;
   wire FE_RN_553_0;
   wire FE_RN_552_0;
   wire FE_RN_551_0;
   wire FE_RN_550_0;
   wire FE_RN_549_0;
   wire FE_RN_548_0;
   wire FE_RN_547_0;
   wire FE_RN_538_0;
   wire FE_RN_536_0;
   wire FE_RN_535_0;
   wire FE_RN_533_0;
   wire FE_RN_532_0;
   wire FE_RN_530_0;
   wire FE_RN_529_0;
   wire FE_RN_528_0;
   wire FE_RN_527_0;
   wire FE_RN_526_0;
   wire FE_RN_525_0;
   wire FE_RN_522_0;
   wire FE_RN_521_0;
   wire FE_RN_520_0;
   wire FE_RN_519_0;
   wire FE_RN_518_0;
   wire FE_RN_517_0;
   wire FE_RN_516_0;
   wire FE_RN_515_0;
   wire FE_RN_509_0;
   wire FE_RN_508_0;
   wire FE_RN_506_0;
   wire FE_RN_505_0;
   wire FE_RN_504_0;
   wire FE_RN_503_0;
   wire FE_RN_501_0;
   wire FE_RN_500_0;
   wire FE_RN_498_0;
   wire FE_RN_496_0;
   wire FE_RN_495_0;
   wire FE_RN_494_0;
   wire FE_RN_493_0;
   wire FE_RN_492_0;
   wire FE_RN_491_0;
   wire FE_RN_490_0;
   wire FE_RN_489_0;
   wire FE_RN_487_0;
   wire FE_RN_486_0;
   wire FE_RN_485_0;
   wire FE_RN_484_0;
   wire FE_RN_483_0;
   wire FE_RN_482_0;
   wire FE_RN_481_0;
   wire FE_RN_480_0;
   wire FE_RN_479_0;
   wire FE_RN_478_0;
   wire FE_RN_477_0;
   wire FE_RN_476_0;
   wire FE_RN_475_0;
   wire FE_RN_474_0;
   wire FE_RN_473_0;
   wire FE_RN_472_0;
   wire FE_RN_469_0;
   wire FE_RN_468_0;
   wire FE_RN_467_0;
   wire FE_RN_466_0;
   wire FE_RN_465_0;
   wire FE_RN_464_0;
   wire FE_RN_425_0;
   wire FE_RN_424_0;
   wire FE_RN_423_0;
   wire FE_RN_421_0;
   wire FE_RN_420_0;
   wire FE_RN_419_0;
   wire FE_RN_418_0;
   wire FE_RN_417_0;
   wire FE_RN_415_0;
   wire FE_RN_414_0;
   wire FE_RN_413_0;
   wire FE_RN_412_0;
   wire FE_RN_411_0;
   wire FE_RN_410_0;
   wire FE_RN_409_0;
   wire FE_RN_408_0;
   wire FE_RN_407_0;
   wire FE_RN_406_0;
   wire FE_RN_405_0;
   wire FE_RN_404_0;
   wire FE_RN_403_0;
   wire FE_RN_402_0;
   wire FE_RN_401_0;
   wire FE_RN_400_0;
   wire FE_RN_399_0;
   wire FE_RN_398_0;
   wire FE_RN_395_0;
   wire FE_RN_394_0;
   wire FE_RN_393_0;
   wire FE_RN_392_0;
   wire FE_RN_391_0;
   wire FE_RN_390_0;
   wire FE_RN_389_0;
   wire FE_RN_388_0;
   wire FE_RN_387_0;
   wire FE_RN_386_0;
   wire FE_RN_385_0;
   wire FE_RN_384_0;
   wire FE_RN_383_0;
   wire FE_RN_380_0;
   wire FE_RN_379_0;
   wire FE_RN_378_0;
   wire FE_RN_377_0;
   wire FE_RN_376_0;
   wire FE_RN_374_0;
   wire FE_RN_373_0;
   wire FE_RN_372_0;
   wire FE_RN_371_0;
   wire FE_RN_370_0;
   wire FE_RN_369_0;
   wire FE_RN_368_0;
   wire FE_RN_367_0;
   wire FE_RN_366_0;
   wire FE_RN_363_0;
   wire FE_RN_362_0;
   wire FE_RN_361_0;
   wire FE_RN_338_0;
   wire FE_RN_337_0;
   wire FE_RN_334_0;
   wire FE_RN_331_0;
   wire FE_RN_330_0;
   wire FE_RN_329_0;
   wire FE_RN_328_0;
   wire FE_RN_327_0;
   wire FE_RN_326_0;
   wire FE_RN_324_0;
   wire FE_RN_323_0;
   wire FE_RN_322_0;
   wire FE_RN_321_0;
   wire FE_RN_320_0;
   wire FE_RN_318_0;
   wire FE_RN_317_0;
   wire FE_RN_315_0;
   wire FE_RN_314_0;
   wire FE_RN_313_0;
   wire FE_RN_312_0;
   wire FE_RN_311_0;
   wire FE_RN_309_0;
   wire FE_RN_308_0;
   wire FE_RN_307_0;
   wire FE_RN_306_0;
   wire FE_RN_303_0;
   wire FE_RN_302_0;
   wire FE_RN_301_0;
   wire FE_RN_300_0;
   wire FE_RN_299_0;
   wire FE_RN_298_0;
   wire FE_RN_297_0;
   wire FE_RN_295_0;
   wire FE_RN_294_0;
   wire FE_RN_293_0;
   wire FE_RN_292_0;
   wire FE_RN_290_0;
   wire FE_RN_289_0;
   wire FE_RN_288_0;
   wire FE_RN_287_0;
   wire FE_RN_286_0;
   wire FE_RN_284_0;
   wire FE_RN_283_0;
   wire FE_RN_282_0;
   wire FE_RN_281_0;
   wire FE_RN_280_0;
   wire FE_RN_279_0;
   wire FE_RN_278_0;
   wire FE_RN_274_0;
   wire FE_RN_273_0;
   wire FE_RN_272_0;
   wire FE_RN_271_0;
   wire FE_RN_270_0;
   wire FE_RN_269_0;
   wire FE_RN_268_0;
   wire FE_RN_267_0;
   wire FE_RN_266_0;
   wire FE_RN_265_0;
   wire FE_RN_264_0;
   wire FE_RN_260_0;
   wire FE_RN_259_0;
   wire FE_RN_258_0;
   wire FE_RN_257_0;
   wire FE_RN_256_0;
   wire FE_RN_255_0;
   wire FE_RN_252_0;
   wire FE_RN_251_0;
   wire FE_RN_250_0;
   wire FE_RN_248_0;
   wire FE_RN_245_0;
   wire FE_RN_244_0;
   wire FE_RN_243_0;
   wire FE_RN_241_0;
   wire FE_RN_240_0;
   wire FE_RN_239_0;
   wire FE_RN_237_0;
   wire FE_RN_236_0;
   wire FE_RN_235_0;
   wire FE_RN_233_0;
   wire FE_RN_231_0;
   wire FE_RN_230_0;
   wire FE_RN_229_0;
   wire FE_RN_228_0;
   wire FE_RN_227_0;
   wire FE_RN_226_0;
   wire FE_RN_225_0;
   wire FE_RN_224_0;
   wire FE_RN_221_0;
   wire FE_RN_220_0;
   wire FE_RN_219_0;
   wire FE_RN_218_0;
   wire FE_RN_217_0;
   wire FE_RN_215_0;
   wire FE_RN_214_0;
   wire FE_RN_213_0;
   wire FE_RN_185_0;
   wire FE_RN_184_0;
   wire FE_RN_182_0;
   wire FE_RN_181_0;
   wire FE_RN_180_0;
   wire FE_RN_179_0;
   wire FE_RN_178_0;
   wire FE_RN_177_0;
   wire FE_RN_176_0;
   wire FE_RN_175_0;
   wire FE_RN_174_0;
   wire FE_RN_173_0;
   wire FE_RN_172_0;
   wire FE_RN_171_0;
   wire FE_RN_170_0;
   wire FE_RN_169_0;
   wire FE_RN_168_0;
   wire FE_RN_166_0;
   wire FE_RN_163_0;
   wire FE_RN_162_0;
   wire FE_RN_161_0;
   wire FE_RN_160_0;
   wire FE_RN_159_0;
   wire FE_RN_158_0;
   wire FE_RN_157_0;
   wire FE_RN_155_0;
   wire FE_RN_154_0;
   wire FE_RN_153_0;
   wire FE_RN_151_0;
   wire FE_RN_147_0;
   wire FE_RN_144_0;
   wire FE_RN_143_0;
   wire FE_RN_142_0;
   wire FE_RN_141_0;
   wire FE_RN_140_0;
   wire FE_RN_138_0;
   wire FE_RN_136_0;
   wire FE_RN_111_0;
   wire FE_RN_110_0;
   wire FE_RN_109_0;
   wire FE_RN_107_0;
   wire FE_RN_106_0;
   wire FE_RN_105_0;
   wire FE_RN_104_0;
   wire FE_RN_103_0;
   wire FE_RN_99_0;
   wire FE_RN_98_0;
   wire FE_RN_97_0;
   wire FE_RN_96_0;
   wire FE_RN_89_0;
   wire FE_RN_88_0;
   wire FE_RN_87_0;
   wire FE_RN_86_0;
   wire FE_RN_85_0;
   wire FE_RN_84_0;
   wire FE_RN_83_0;
   wire FE_RN_82_0;
   wire FE_RN_81_0;
   wire FE_RN_80_0;
   wire FE_RN_78_0;
   wire FE_RN_77_0;
   wire FE_RN_76_0;
   wire FE_RN_75_0;
   wire FE_RN_74_0;
   wire FE_RN_73_0;
   wire FE_RN_72_0;
   wire FE_RN_71_0;
   wire FE_RN_69_0;
   wire FE_RN_68_0;
   wire FE_RN_67_0;
   wire FE_RN_66_0;
   wire FE_RN_65_0;
   wire FE_RN_64_0;
   wire FE_RN_63_0;
   wire FE_RN_62_0;
   wire FE_RN_61_0;
   wire FE_RN_59_0;
   wire FE_RN_58_0;
   wire FE_RN_57_0;
   wire FE_RN_55_0;
   wire FE_RN_54_0;
   wire FE_RN_53_0;
   wire FE_RN_52_0;
   wire FE_RN_51_0;
   wire FE_RN_50_0;
   wire FE_RN_49_0;
   wire FE_RN_47_0;
   wire FE_RN_46_0;
   wire FE_RN_43_0;
   wire FE_RN_42_0;
   wire FE_RN_41_0;
   wire FE_RN_40_0;
   wire FE_RN_39_0;
   wire FE_RN_36_0;
   wire FE_RN_35_0;
   wire FE_RN_33_0;
   wire FE_RN_32_0;
   wire FE_RN_29_0;
   wire FE_RN_28_0;
   wire FE_RN_27_0;
   wire FE_RN_25_0;
   wire FE_RN_23_0;
   wire FE_RN_22_0;
   wire FE_RN_21_0;
   wire FE_RN_20_0;
   wire FE_RN_19_0;
   wire FE_RN_18_0;
   wire FE_RN_15_0;
   wire FE_RN_14_0;
   wire FE_RN_12_0;
   wire FE_RN_11_0;
   wire FE_RN_10_0;
   wire FE_RN_9_0;
   wire FE_RN_8_0;
   wire FE_RN_7_0;
   wire FE_RN_5_0;
   wire FE_RN_2_0;
   wire FE_RN_0_0;
   wire u_div_SumTmp_1__0_;
   wire u_div_SumTmp_1__1_;
   wire u_div_SumTmp_1__2_;
   wire u_div_SumTmp_1__3_;
   wire u_div_SumTmp_1__4_;
   wire u_div_SumTmp_1__5_;
   wire u_div_SumTmp_1__6_;
   wire u_div_SumTmp_2__0_;
   wire u_div_SumTmp_2__1_;
   wire u_div_SumTmp_2__2_;
   wire u_div_SumTmp_2__3_;
   wire u_div_SumTmp_2__4_;
   wire u_div_SumTmp_2__5_;
   wire u_div_SumTmp_3__0_;
   wire u_div_SumTmp_3__1_;
   wire u_div_SumTmp_3__2_;
   wire u_div_SumTmp_3__3_;
   wire u_div_SumTmp_3__4_;
   wire u_div_SumTmp_4__0_;
   wire u_div_SumTmp_4__1_;
   wire u_div_SumTmp_4__2_;
   wire u_div_SumTmp_4__3_;
   wire u_div_SumTmp_5__0_;
   wire u_div_SumTmp_5__1_;
   wire u_div_SumTmp_5__2_;
   wire u_div_SumTmp_6__0_;
   wire u_div_SumTmp_6__1_;
   wire u_div_SumTmp_7__0_;
   wire u_div_CryTmp_0__1_;
   wire u_div_CryTmp_0__2_;
   wire u_div_CryTmp_0__3_;
   wire u_div_CryTmp_0__4_;
   wire u_div_CryTmp_0__5_;
   wire u_div_CryTmp_0__6_;
   wire u_div_CryTmp_0__7_;
   wire u_div_CryTmp_1__1_;
   wire u_div_CryTmp_1__2_;
   wire u_div_CryTmp_2__1_;
   wire u_div_CryTmp_2__2_;
   wire u_div_CryTmp_2__3_;
   wire u_div_CryTmp_2__4_;
   wire u_div_CryTmp_3__1_;
   wire u_div_CryTmp_4__1_;
   wire u_div_CryTmp_4__2_;
   wire u_div_CryTmp_5__1_;
   wire u_div_CryTmp_5__2_;
   wire u_div_CryTmp_6__1_;
   wire u_div_CryTmp_7__1_;
   wire u_div_PartRem_1__1_;
   wire u_div_PartRem_1__2_;
   wire u_div_PartRem_1__3_;
   wire u_div_PartRem_1__4_;
   wire u_div_PartRem_1__5_;
   wire u_div_PartRem_1__6_;
   wire u_div_PartRem_1__7_;
   wire u_div_PartRem_2__1_;
   wire u_div_PartRem_2__2_;
   wire u_div_PartRem_2__3_;
   wire u_div_PartRem_2__4_;
   wire u_div_PartRem_2__5_;
   wire u_div_PartRem_2__6_;
   wire u_div_PartRem_3__1_;
   wire u_div_PartRem_3__2_;
   wire u_div_PartRem_3__3_;
   wire u_div_PartRem_3__4_;
   wire u_div_PartRem_3__5_;
   wire u_div_PartRem_4__1_;
   wire u_div_PartRem_4__2_;
   wire u_div_PartRem_4__3_;
   wire u_div_PartRem_4__4_;
   wire u_div_PartRem_5__1_;
   wire u_div_PartRem_5__3_;
   wire u_div_PartRem_6__1_;
   wire u_div_PartRem_6__2_;
   wire u_div_PartRem_7__1_;
   wire n1;
   wire n2;
   wire n3;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;

   NAND3X2M FE_RC_663_0 (.Y(FE_RN_525_0), 
	.C(FE_RN_557_0), 
	.B(FE_RN_505_0), 
	.A(FE_RN_526_0));
   AND2X6M FE_RC_662_0 (.Y(quotient[1]), 
	.B(n153), 
	.A(FE_RN_548_0));
   INVX2M FE_RC_661_0 (.Y(FE_RN_559_0), 
	.A(n153));
   AOI2B1X1M FE_RC_660_0 (.Y(FE_RN_558_0), 
	.B0(FE_RN_559_0), 
	.A1N(FE_RN_529_0), 
	.A0(FE_RN_536_0));
   INVX2M FE_RC_659_0 (.Y(FE_RN_557_0), 
	.A(FE_RN_528_0));
   INVX2M FE_RC_658_0 (.Y(FE_RN_556_0), 
	.A(FE_RN_550_0));
   NAND3X2M FE_RC_657_0 (.Y(FE_RN_555_0), 
	.C(FE_RN_536_0), 
	.B(FE_RN_557_0), 
	.A(FE_RN_556_0));
   NAND2X2M FE_RC_656_0 (.Y(FE_RN_554_0), 
	.B(FE_RN_558_0), 
	.A(FE_RN_555_0));
   INVX2M FE_RC_655_0 (.Y(FE_RN_553_0), 
	.A(FE_RN_529_0));
   INVX2M FE_RC_654_0 (.Y(FE_RN_552_0), 
	.A(FE_RN_536_0));
   AOI2B1X1M FE_RC_653_0 (.Y(FE_RN_551_0), 
	.B0(FE_RN_552_0), 
	.A1N(FE_RN_553_0), 
	.A0(FE_RN_528_0));
   NAND2X2M FE_RC_652_0 (.Y(FE_RN_550_0), 
	.B(FE_RN_526_0), 
	.A(FE_RN_505_0));
   NAND2X2M FE_RC_651_0 (.Y(FE_RN_549_0), 
	.B(FE_RN_529_0), 
	.A(FE_RN_550_0));
   NAND2X4M FE_RC_650_0 (.Y(FE_RN_548_0), 
	.B(FE_RN_551_0), 
	.A(FE_RN_549_0));
   NAND3X2M FE_RC_649_0 (.Y(FE_RN_547_0), 
	.C(n153), 
	.B(u_div_SumTmp_1__0_), 
	.A(FE_RN_548_0));
   OAI2BB1X2M FE_RC_648_0 (.Y(u_div_PartRem_1__1_), 
	.B0(FE_RN_547_0), 
	.A1N(FE_RN_554_0), 
	.A0N(a[1]));
   INVX2M FE_RC_637_0 (.Y(FE_RN_538_0), 
	.A(n145));
   INVX2M FE_RC_635_0 (.Y(FE_RN_536_0), 
	.A(FE_RN_532_0));
   OAI2BB1X2M FE_RC_634_0 (.Y(FE_RN_535_0), 
	.B0(FE_RN_536_0), 
	.A1N(FE_RN_530_0), 
	.A0N(FE_RN_538_0));
   NOR2X2M FE_RC_632_0 (.Y(FE_RN_533_0), 
	.B(FE_RN_553_0), 
	.A(FE_RN_532_0));
   MXI2X1M FE_RC_631_0 (.Y(u_div_SumTmp_1__6_), 
	.S0(FE_RN_525_0), 
	.B(FE_RN_533_0), 
	.A(FE_RN_535_0));
   AND2X2M FE_RC_630_0 (.Y(FE_RN_532_0), 
	.B(n145), 
	.A(u_div_PartRem_2__6_));
   INVX2M FE_RC_628_0 (.Y(FE_RN_530_0), 
	.A(u_div_PartRem_2__6_));
   NAND2BX2M FE_RC_627_0 (.Y(FE_RN_529_0), 
	.B(FE_RN_530_0), 
	.AN(n145));
   INVX2M FE_RC_626_0 (.Y(FE_RN_528_0), 
	.A(FE_RN_521_0));
   AND2X2M FE_RC_625_0 (.Y(FE_RN_527_0), 
	.B(FE_RN_493_0), 
	.A(FE_RN_503_0));
   NAND2X4M FE_RC_624_0 (.Y(FE_RN_526_0), 
	.B(FE_RN_489_0), 
	.A(FE_RN_527_0));
   CLKNAND2X2M FE_RC_619_0 (.Y(FE_RN_522_0), 
	.B(FE_RN_506_0), 
	.A(FE_RN_520_0));
   INVX2M FE_RC_618_0 (.Y(FE_RN_521_0), 
	.A(FE_RN_508_0));
   CLKNAND2X2M FE_RC_617_0 (.Y(FE_RN_520_0), 
	.B(FE_RN_503_0), 
	.A(FE_RN_521_0));
   NAND3X2M FE_RC_616_0 (.Y(FE_RN_519_0), 
	.C(FE_RN_493_0), 
	.B(FE_RN_489_0), 
	.A(FE_RN_520_0));
   INVX2M FE_RC_615_0 (.Y(FE_RN_518_0), 
	.A(FE_RN_493_0));
   INVX2M FE_RC_614_0 (.Y(FE_RN_517_0), 
	.A(FE_RN_520_0));
   NAND3X2M FE_RC_613_0 (.Y(FE_RN_516_0), 
	.C(FE_RN_494_0), 
	.B(FE_RN_518_0), 
	.A(FE_RN_517_0));
   INVX2M FE_RC_612_0 (.Y(FE_RN_515_0), 
	.A(FE_RN_489_0));
   NAND3X2M FE_RC_606_0 (.Y(FE_RN_509_0), 
	.C(FE_RN_494_0), 
	.B(FE_RN_515_0), 
	.A(FE_RN_517_0));
   NAND4X2M FE_RC_605_0 (.Y(u_div_SumTmp_1__5_), 
	.D(FE_RN_522_0), 
	.C(FE_RN_519_0), 
	.B(FE_RN_516_0), 
	.A(FE_RN_509_0));
   AND2X2M FE_RC_604_0 (.Y(FE_RN_508_0), 
	.B(n154), 
	.A(u_div_PartRem_2__5_));
   INVX2M FE_RC_602_0 (.Y(FE_RN_506_0), 
	.A(FE_RN_494_0));
   NAND2X2M FE_RC_601_0 (.Y(FE_RN_505_0), 
	.B(FE_RN_506_0), 
	.A(FE_RN_503_0));
   INVX2M FE_RC_600_0 (.Y(FE_RN_504_0), 
	.A(u_div_PartRem_2__5_));
   NAND2BX2M FE_RC_599_0 (.Y(FE_RN_503_0), 
	.B(FE_RN_504_0), 
	.AN(n154));
   INVX2M FE_RC_596_0 (.Y(FE_RN_501_0), 
	.A(n14));
   INVX2M FE_RC_595_0 (.Y(FE_RN_500_0), 
	.A(u_div_PartRem_2__4_));
   OAI2BB1X2M FE_RC_593_0 (.Y(FE_RN_498_0), 
	.B0(FE_RN_494_0), 
	.A1N(FE_RN_500_0), 
	.A0N(FE_RN_501_0));
   NOR2X2M FE_RC_591_0 (.Y(FE_RN_496_0), 
	.B(FE_RN_518_0), 
	.A(FE_RN_495_0));
   MXI2X1M FE_RC_590_0 (.Y(u_div_SumTmp_1__4_), 
	.S0(FE_RN_489_0), 
	.B(FE_RN_496_0), 
	.A(FE_RN_498_0));
   AND2X2M FE_RC_589_0 (.Y(FE_RN_495_0), 
	.B(n14), 
	.A(u_div_PartRem_2__4_));
   INVX2M FE_RC_588_0 (.Y(FE_RN_494_0), 
	.A(FE_RN_495_0));
   OR2X2M FE_RC_587_0 (.Y(FE_RN_493_0), 
	.B(n14), 
	.A(u_div_PartRem_2__4_));
   INVX2M FE_RC_586_0 (.Y(FE_RN_492_0), 
	.A(FE_RN_473_0));
   INVX2M FE_RC_585_0 (.Y(FE_RN_491_0), 
	.A(FE_RN_474_0));
   NAND2X2M FE_RC_584_0 (.Y(FE_RN_490_0), 
	.B(FE_RN_492_0), 
	.A(FE_RN_491_0));
   NAND2X2M FE_RC_583_0 (.Y(FE_RN_489_0), 
	.B(FE_RN_464_0), 
	.A(FE_RN_490_0));
   INVX2M FE_RC_580_0 (.Y(FE_RN_487_0), 
	.A(u_div_PartRem_3__1_));
   INVX2M FE_RC_579_0 (.Y(FE_RN_486_0), 
	.A(u_div_SumTmp_2__1_));
   MXI2X1M FE_RC_578_0 (.Y(u_div_PartRem_2__2_), 
	.S0(quotient[2]), 
	.B(FE_RN_486_0), 
	.A(FE_RN_487_0));
   INVX2M FE_RC_577_0 (.Y(FE_RN_485_0), 
	.A(FE_RN_465_0));
   INVX2M FE_RC_576_0 (.Y(FE_RN_484_0), 
	.A(u_div_CryTmp_1__2_));
   INVX2M FE_RC_575_0 (.Y(FE_RN_483_0), 
	.A(FE_RN_467_0));
   AOI21X2M FE_RC_574_0 (.Y(FE_RN_482_0), 
	.B0(FE_RN_483_0), 
	.A1(FE_RN_484_0), 
	.A0(FE_RN_472_0));
   CLKXOR2X2M FE_RC_573_0 (.Y(FE_RN_481_0), 
	.B(n15), 
	.A(u_div_PartRem_2__3_));
   MXI2X1M FE_RC_572_0 (.Y(u_div_SumTmp_1__3_), 
	.S0(FE_RN_481_0), 
	.B(FE_RN_482_0), 
	.A(FE_RN_485_0));
   XNOR2X2M FE_RC_571_0 (.Y(FE_RN_480_0), 
	.B(n16), 
	.A(FE_RN_469_0));
   CLKNAND2X2M FE_RC_570_0 (.Y(FE_RN_479_0), 
	.B(FE_RN_472_0), 
	.A(FE_RN_467_0));
   CLKNAND2X2M FE_RC_569_0 (.Y(FE_RN_478_0), 
	.B(u_div_CryTmp_1__2_), 
	.A(FE_RN_479_0));
   OAI21X2M FE_RC_568_0 (.Y(u_div_SumTmp_1__2_), 
	.B0(FE_RN_478_0), 
	.A1(u_div_CryTmp_1__2_), 
	.A0(FE_RN_480_0));
   INVX2M FE_RC_567_0 (.Y(FE_RN_477_0), 
	.A(u_div_CryTmp_1__2_));
   INVX2M FE_RC_566_0 (.Y(FE_RN_476_0), 
	.A(n15));
   NAND2X2M FE_RC_565_0 (.Y(FE_RN_475_0), 
	.B(FE_RN_476_0), 
	.A(FE_RN_472_0));
   AOI2B1X1M FE_RC_564_0 (.Y(FE_RN_474_0), 
	.B0(FE_RN_475_0), 
	.A1N(FE_RN_477_0), 
	.A0(FE_RN_467_0));
   INVX2M FE_RC_563_0 (.Y(FE_RN_473_0), 
	.A(u_div_PartRem_2__3_));
   NAND2X4M FE_RC_562_0 (.Y(FE_RN_472_0), 
	.B(n16), 
	.A(FE_RN_469_0));
   MXI2X6M FE_RC_559_0 (.Y(FE_RN_469_0), 
	.S0(quotient[2]), 
	.B(FE_RN_486_0), 
	.A(FE_RN_487_0));
   INVX2M FE_RC_558_0 (.Y(FE_RN_468_0), 
	.A(n16));
   NAND2BX8M FE_RC_557_0 (.Y(FE_RN_467_0), 
	.B(FE_RN_468_0), 
	.AN(FE_RN_469_0));
   NAND2X2M FE_RC_556_0 (.Y(FE_RN_466_0), 
	.B(u_div_CryTmp_1__2_), 
	.A(FE_RN_467_0));
   CLKNAND2X2M FE_RC_555_0 (.Y(FE_RN_465_0), 
	.B(FE_RN_472_0), 
	.A(FE_RN_466_0));
   NAND2X2M FE_RC_554_0 (.Y(FE_RN_464_0), 
	.B(n15), 
	.A(FE_RN_465_0));
   INVX2M FE_RC_509_0 (.Y(FE_RN_425_0), 
	.A(FE_RN_405_0));
   CLKNAND2X2M FE_RC_508_0 (.Y(FE_RN_424_0), 
	.B(FE_RN_393_0), 
	.A(FE_RN_425_0));
   OAI2B11X2M FE_RC_507_0 (.Y(u_div_PartRem_2__1_), 
	.C0(FE_RN_395_0), 
	.B0(FE_RN_424_0), 
	.A1N(a[2]), 
	.A0(FE_RN_393_0));
   INVX2M FE_RC_506_0 (.Y(FE_RN_423_0), 
	.A(FE_RN_417_0));
   AOI32X1M FE_RC_504_0 (.Y(FE_RN_421_0), 
	.B1(a[2]), 
	.B0(FE_RN_410_0), 
	.A2(n161), 
	.A1(FE_RN_395_0), 
	.A0(FE_RN_423_0));
   INVX2M FE_RC_503_0 (.Y(FE_RN_420_0), 
	.A(u_div_CryTmp_1__1_));
   INVX2M FE_RC_502_0 (.Y(FE_RN_419_0), 
	.A(n17));
   INVX2M FE_RC_501_0 (.Y(FE_RN_418_0), 
	.A(FE_RN_400_0));
   OAI2BB1X2M FE_RC_500_0 (.Y(FE_RN_417_0), 
	.B0(FE_RN_418_0), 
	.A1N(FE_RN_419_0), 
	.A0N(FE_RN_420_0));
   AND3X2M FE_RC_498_0 (.Y(FE_RN_415_0), 
	.C(FE_RN_395_0), 
	.B(FE_RN_423_0), 
	.A(FE_RN_405_0));
   INVX2M FE_RC_497_0 (.Y(FE_RN_414_0), 
	.A(FE_RN_410_0));
   NOR2X2M FE_RC_496_0 (.Y(FE_RN_413_0), 
	.B(FE_RN_414_0), 
	.A(FE_RN_405_0));
   OAI21X2M FE_RC_495_0 (.Y(FE_RN_412_0), 
	.B0(FE_RN_393_0), 
	.A1(FE_RN_413_0), 
	.A0(FE_RN_415_0));
   INVX2M FE_RC_494_0 (.Y(FE_RN_411_0), 
	.A(FE_RN_395_0));
   NAND2BX2M FE_RC_493_0 (.Y(FE_RN_410_0), 
	.B(FE_RN_401_0), 
	.AN(FE_RN_400_0));
   CLKNAND2X2M FE_RC_492_0 (.Y(FE_RN_409_0), 
	.B(FE_RN_411_0), 
	.A(FE_RN_410_0));
   OAI211X2M FE_RC_491_0 (.Y(u_div_SumTmp_1__1_), 
	.C0(FE_RN_409_0), 
	.B0(FE_RN_412_0), 
	.A1(FE_RN_393_0), 
	.A0(FE_RN_421_0));
   AND2X2M FE_RC_490_0 (.Y(FE_RN_408_0), 
	.B(a[2]), 
	.A(FE_RN_401_0));
   INVX2M FE_RC_489_0 (.Y(FE_RN_407_0), 
	.A(FE_RN_401_0));
   INVX2M FE_RC_488_0 (.Y(FE_RN_406_0), 
	.A(FE_RN_398_0));
   CLKNAND2X2M FE_RC_487_0 (.Y(FE_RN_405_0), 
	.B(u_div_SumTmp_2__0_), 
	.A(FE_RN_406_0));
   NOR2X2M FE_RC_486_0 (.Y(FE_RN_404_0), 
	.B(FE_RN_407_0), 
	.A(FE_RN_405_0));
   CLKNAND2X2M FE_RC_485_0 (.Y(FE_RN_403_0), 
	.B(FE_RN_393_0), 
	.A(FE_RN_404_0));
   INVX2M FE_RC_484_0 (.Y(FE_RN_402_0), 
	.A(n17));
   NAND2BX2M FE_RC_483_0 (.Y(FE_RN_401_0), 
	.B(FE_RN_402_0), 
	.AN(u_div_CryTmp_1__1_));
   AND2X2M FE_RC_482_0 (.Y(FE_RN_400_0), 
	.B(u_div_CryTmp_1__1_), 
	.A(n17));
   AOI2B1X1M FE_RC_481_0 (.Y(FE_RN_399_0), 
	.B0(FE_RN_400_0), 
	.A1N(FE_RN_395_0), 
	.A0(FE_RN_401_0));
   OAI2B11X4M FE_RC_480_0 (.Y(u_div_CryTmp_1__2_), 
	.C0(FE_RN_399_0), 
	.B0(FE_RN_403_0), 
	.A1N(FE_RN_408_0), 
	.A0(FE_RN_393_0));
   AND2X12M FE_RC_479_0 (.Y(quotient[2]), 
	.B(n21), 
	.A(FE_RN_393_0));
   INVX2M FE_RC_478_0 (.Y(FE_RN_398_0), 
	.A(n21));
   CLKNAND2X2M FE_RC_475_0 (.Y(FE_RN_395_0), 
	.B(FE_RN_398_0), 
	.A(a[2]));
   NAND3X4M FE_RC_473_0 (.Y(FE_RN_394_0), 
	.C(FE_RN_361_0), 
	.B(FE_RN_362_0), 
	.A(u_div_CryTmp_2__4_));
   NAND3X4M FE_RC_472_0 (.Y(FE_RN_393_0), 
	.C(FE_RN_369_0), 
	.B(FE_RN_366_0), 
	.A(FE_RN_394_0));
   INVX2M FE_RC_470_0 (.Y(FE_RN_392_0), 
	.A(u_div_PartRem_3__5_));
   INVX2M FE_RC_469_0 (.Y(FE_RN_391_0), 
	.A(FE_RN_361_0));
   NAND3X2M FE_RC_468_0 (.Y(FE_RN_390_0), 
	.C(n154), 
	.B(FE_RN_392_0), 
	.A(FE_RN_391_0));
   INVX2M FE_RC_467_0 (.Y(FE_RN_389_0), 
	.A(FE_RN_368_0));
   INVX2M FE_RC_466_0 (.Y(FE_RN_388_0), 
	.A(FE_RN_362_0));
   NAND2X2M FE_RC_465_0 (.Y(FE_RN_387_0), 
	.B(FE_RN_389_0), 
	.A(FE_RN_388_0));
   MXI2X1M FE_RC_464_0 (.Y(FE_RN_386_0), 
	.S0(n154), 
	.B(FE_RN_368_0), 
	.A(FE_RN_361_0));
   CLKNAND2X2M FE_RC_463_0 (.Y(FE_RN_385_0), 
	.B(u_div_PartRem_3__5_), 
	.A(FE_RN_386_0));
   NAND2X2M FE_RC_462_0 (.Y(FE_RN_384_0), 
	.B(n154), 
	.A(u_div_PartRem_3__5_));
   CLKNAND2X2M FE_RC_461_0 (.Y(FE_RN_383_0), 
	.B(FE_RN_384_0), 
	.A(FE_RN_362_0));
   NAND3X2M FE_RC_458_0 (.Y(FE_RN_380_0), 
	.C(n154), 
	.B(FE_RN_392_0), 
	.A(FE_RN_368_0));
   OAI21X2M FE_RC_457_0 (.Y(FE_RN_379_0), 
	.B0(FE_RN_380_0), 
	.A1(FE_RN_392_0), 
	.A0(FE_RN_370_0));
   INVX2M FE_RC_456_0 (.Y(FE_RN_378_0), 
	.A(u_div_CryTmp_2__4_));
   AOI32X1M FE_RC_455_0 (.Y(FE_RN_377_0), 
	.B1(FE_RN_378_0), 
	.B0(FE_RN_379_0), 
	.A2(FE_RN_361_0), 
	.A1(u_div_CryTmp_2__4_), 
	.A0(FE_RN_383_0));
   NAND4X2M FE_RC_454_0 (.Y(u_div_SumTmp_2__5_), 
	.D(FE_RN_390_0), 
	.C(FE_RN_387_0), 
	.B(FE_RN_385_0), 
	.A(FE_RN_377_0));
   XOR2X2M FE_RC_453_0 (.Y(FE_RN_376_0), 
	.B(n14), 
	.A(u_div_PartRem_3__4_));
   CLKNAND2X2M FE_RC_451_0 (.Y(FE_RN_374_0), 
	.B(FE_RN_376_0), 
	.A(FE_RN_378_0));
   CLKNAND2X2M FE_RC_450_0 (.Y(FE_RN_373_0), 
	.B(FE_RN_368_0), 
	.A(FE_RN_361_0));
   CLKNAND2X2M FE_RC_449_0 (.Y(FE_RN_372_0), 
	.B(u_div_CryTmp_2__4_), 
	.A(FE_RN_373_0));
   CLKNAND2X2M FE_RC_448_0 (.Y(u_div_SumTmp_2__4_), 
	.B(FE_RN_374_0), 
	.A(FE_RN_372_0));
   INVX2M FE_RC_447_0 (.Y(FE_RN_371_0), 
	.A(n154));
   NAND2X2M FE_RC_446_0 (.Y(FE_RN_370_0), 
	.B(FE_RN_371_0), 
	.A(FE_RN_368_0));
   CLKNAND2X2M FE_RC_445_0 (.Y(FE_RN_369_0), 
	.B(u_div_PartRem_3__5_), 
	.A(FE_RN_370_0));
   NAND2X2M FE_RC_444_0 (.Y(FE_RN_368_0), 
	.B(n14), 
	.A(u_div_PartRem_3__4_));
   INVX2M FE_RC_443_0 (.Y(FE_RN_367_0), 
	.A(FE_RN_368_0));
   CLKNAND2X2M FE_RC_442_0 (.Y(FE_RN_366_0), 
	.B(n154), 
	.A(FE_RN_367_0));
   INVX2M FE_RC_439_0 (.Y(FE_RN_363_0), 
	.A(u_div_PartRem_3__5_));
   NAND2X2M FE_RC_438_0 (.Y(FE_RN_362_0), 
	.B(FE_RN_371_0), 
	.A(FE_RN_363_0));
   OR2X2M FE_RC_437_0 (.Y(FE_RN_361_0), 
	.B(n14), 
	.A(u_div_PartRem_3__4_));
   INVX2M FE_RC_411_0 (.Y(FE_RN_338_0), 
	.A(FE_RN_328_0));
   CLKNAND2X2M FE_RC_410_0 (.Y(u_div_PartRem_3__3_), 
	.B(FE_RN_326_0), 
	.A(FE_RN_338_0));
   INVX2M FE_RC_409_0 (.Y(FE_RN_337_0), 
	.A(u_div_CryTmp_2__3_));
   OAI2BB2X1M FE_RC_406_0 (.Y(FE_RN_334_0), 
	.B1(FE_RN_476_0), 
	.B0(u_div_SumTmp_3__2_), 
	.A1N(u_div_SumTmp_3__2_), 
	.A0N(FE_RN_476_0));
   OAI2BB2X1M FE_RC_403_0 (.Y(FE_RN_331_0), 
	.B1(FE_RN_476_0), 
	.B0(u_div_PartRem_4__2_), 
	.A1N(u_div_PartRem_4__2_), 
	.A0N(FE_RN_476_0));
   OAI2B2X1M FE_RC_402_0 (.Y(FE_RN_330_0), 
	.B1(FE_RN_331_0), 
	.B0(quotient[3]), 
	.A1N(quotient[3]), 
	.A0(FE_RN_334_0));
   MXI2X1M FE_RC_401_0 (.Y(u_div_SumTmp_2__3_), 
	.S0(FE_RN_330_0), 
	.B(FE_RN_337_0), 
	.A(u_div_CryTmp_2__3_));
   OAI21X2M FE_RC_400_0 (.Y(FE_RN_329_0), 
	.B0(n15), 
	.A1(FE_RN_328_0), 
	.A0(FE_RN_327_0));
   AND2X2M FE_RC_399_0 (.Y(FE_RN_328_0), 
	.B(quotient[3]), 
	.A(u_div_SumTmp_3__2_));
   NOR2BX2M FE_RC_398_0 (.Y(FE_RN_327_0), 
	.B(quotient[3]), 
	.AN(u_div_PartRem_4__2_));
   INVX2M FE_RC_397_0 (.Y(FE_RN_326_0), 
	.A(FE_RN_327_0));
   NAND3BX2M FE_RC_395_0 (.Y(FE_RN_324_0), 
	.C(FE_RN_476_0), 
	.B(FE_RN_326_0), 
	.AN(FE_RN_328_0));
   NAND2X2M FE_RC_394_0 (.Y(FE_RN_323_0), 
	.B(u_div_CryTmp_2__3_), 
	.A(FE_RN_324_0));
   NAND2X4M FE_RC_393_0 (.Y(u_div_CryTmp_2__4_), 
	.B(FE_RN_329_0), 
	.A(FE_RN_323_0));
   NAND2X4M FE_RC_392_0 (.Y(quotient[3]), 
	.B(FE_RN_278_0), 
	.A(FE_RN_264_0));
   CLKNAND2X2M FE_RC_391_0 (.Y(FE_RN_322_0), 
	.B(u_div_SumTmp_3__1_), 
	.A(FE_RN_309_0));
   NAND2BX2M FE_RC_390_0 (.Y(u_div_PartRem_3__2_), 
	.B(FE_RN_322_0), 
	.AN(FE_RN_308_0));
   INVX2M FE_RC_389_0 (.Y(FE_RN_321_0), 
	.A(u_div_CryTmp_2__2_));
   INVX2M FE_RC_388_0 (.Y(FE_RN_320_0), 
	.A(u_div_PartRem_4__1_));
   AOI22X1M FE_RC_386_0 (.Y(FE_RN_318_0), 
	.B1(u_div_PartRem_4__1_), 
	.B0(FE_RN_468_0), 
	.A1(n16), 
	.A0(FE_RN_320_0));
   INVX2M FE_RC_385_0 (.Y(FE_RN_317_0), 
	.A(u_div_SumTmp_3__1_));
   AOI22X1M FE_RC_383_0 (.Y(FE_RN_315_0), 
	.B1(u_div_SumTmp_3__1_), 
	.B0(FE_RN_468_0), 
	.A1(n16), 
	.A0(FE_RN_317_0));
   MXI2X1M FE_RC_382_0 (.Y(FE_RN_314_0), 
	.S0(FE_RN_309_0), 
	.B(FE_RN_315_0), 
	.A(FE_RN_318_0));
   INVX2M FE_RC_381_0 (.Y(FE_RN_313_0), 
	.A(FE_RN_314_0));
   MXI2X1M FE_RC_380_0 (.Y(u_div_SumTmp_2__2_), 
	.S0(FE_RN_313_0), 
	.B(FE_RN_321_0), 
	.A(u_div_CryTmp_2__2_));
   AND2X2M FE_RC_379_0 (.Y(FE_RN_312_0), 
	.B(u_div_SumTmp_3__1_), 
	.A(FE_RN_309_0));
   OAI21X2M FE_RC_378_0 (.Y(FE_RN_311_0), 
	.B0(n16), 
	.A1(FE_RN_308_0), 
	.A0(FE_RN_312_0));
   NAND2X4M FE_RC_376_0 (.Y(FE_RN_309_0), 
	.B(FE_RN_264_0), 
	.A(FE_RN_278_0));
   NOR2X2M FE_RC_375_0 (.Y(FE_RN_308_0), 
	.B(FE_RN_320_0), 
	.A(FE_RN_309_0));
   INVX2M FE_RC_374_0 (.Y(FE_RN_307_0), 
	.A(FE_RN_308_0));
   INVX2M FE_RC_373_0 (.Y(FE_RN_306_0), 
	.A(FE_RN_278_0));
   OAI2B1X2M FE_RC_370_0 (.Y(FE_RN_303_0), 
	.B0(FE_RN_468_0), 
	.A1N(u_div_SumTmp_3__1_), 
	.A0(FE_RN_264_0));
   AOI2B1X1M FE_RC_369_0 (.Y(FE_RN_302_0), 
	.B0(FE_RN_303_0), 
	.A1N(FE_RN_317_0), 
	.A0(FE_RN_306_0));
   NAND2X2M FE_RC_368_0 (.Y(FE_RN_301_0), 
	.B(FE_RN_307_0), 
	.A(FE_RN_302_0));
   NAND2X2M FE_RC_367_0 (.Y(FE_RN_300_0), 
	.B(u_div_CryTmp_2__2_), 
	.A(FE_RN_301_0));
   NAND2X4M FE_RC_366_0 (.Y(u_div_CryTmp_2__3_), 
	.B(FE_RN_311_0), 
	.A(FE_RN_300_0));
   NAND2BX2M FE_RC_365_0 (.Y(FE_RN_264_0), 
	.B(FE_RN_265_0), 
	.AN(FE_RN_259_0));
   INVX2M FE_RC_364_0 (.Y(FE_RN_299_0), 
	.A(FE_RN_287_0));
   NOR2BX2M FE_RC_363_0 (.Y(FE_RN_298_0), 
	.B(FE_RN_299_0), 
	.AN(FE_RN_272_0));
   CLKNAND2X2M FE_RC_362_0 (.Y(u_div_PartRem_3__1_), 
	.B(FE_RN_266_0), 
	.A(FE_RN_298_0));
   INVX2M FE_RC_361_0 (.Y(FE_RN_297_0), 
	.A(u_div_CryTmp_2__1_));
   INVX2M FE_RC_359_0 (.Y(FE_RN_295_0), 
	.A(FE_RN_282_0));
   OAI2BB1X2M FE_RC_358_0 (.Y(FE_RN_294_0), 
	.B0(FE_RN_295_0), 
	.A1N(FE_RN_419_0), 
	.A0N(FE_RN_297_0));
   NOR2X2M FE_RC_357_0 (.Y(FE_RN_293_0), 
	.B(FE_RN_294_0), 
	.A(FE_RN_286_0));
   NAND2X2M FE_RC_356_0 (.Y(FE_RN_292_0), 
	.B(FE_RN_266_0), 
	.A(FE_RN_293_0));
   CLKNAND2X2M FE_RC_354_0 (.Y(FE_RN_290_0), 
	.B(FE_RN_284_0), 
	.A(FE_RN_295_0));
   CLKNAND2X2M FE_RC_353_0 (.Y(FE_RN_289_0), 
	.B(FE_RN_290_0), 
	.A(FE_RN_286_0));
   OAI2B11X2M FE_RC_352_0 (.Y(u_div_SumTmp_2__1_), 
	.C0(FE_RN_289_0), 
	.B0(FE_RN_292_0), 
	.A1N(FE_RN_290_0), 
	.A0(FE_RN_266_0));
   AND2X2M FE_RC_351_0 (.Y(FE_RN_288_0), 
	.B(FE_RN_265_0), 
	.A(u_div_SumTmp_3__0_));
   NAND2BX2M FE_RC_350_0 (.Y(FE_RN_287_0), 
	.B(FE_RN_288_0), 
	.AN(FE_RN_259_0));
   NAND2X2M FE_RC_349_0 (.Y(FE_RN_286_0), 
	.B(FE_RN_272_0), 
	.A(FE_RN_287_0));
   NAND2BX2M FE_RC_347_0 (.Y(FE_RN_284_0), 
	.B(FE_RN_419_0), 
	.AN(u_div_CryTmp_2__1_));
   INVX2M FE_RC_346_0 (.Y(FE_RN_283_0), 
	.A(FE_RN_284_0));
   AND2X2M FE_RC_345_0 (.Y(FE_RN_282_0), 
	.B(u_div_CryTmp_2__1_), 
	.A(n17));
   AOI2B1X2M FE_RC_344_0 (.Y(FE_RN_281_0), 
	.B0(FE_RN_282_0), 
	.A1N(FE_RN_283_0), 
	.A0(FE_RN_286_0));
   OAI2B1X4M FE_RC_343_0 (.Y(u_div_CryTmp_2__2_), 
	.B0(FE_RN_281_0), 
	.A1N(FE_RN_284_0), 
	.A0(FE_RN_266_0));
   CLKNAND2X2M FE_RC_342_0 (.Y(FE_RN_280_0), 
	.B(FE_RN_237_0), 
	.A(FE_RN_250_0));
   NAND2X2M FE_RC_341_0 (.Y(FE_RN_248_0), 
	.B(FE_RN_239_0), 
	.A(FE_RN_280_0));
   INVX2M FE_RC_340_0 (.Y(FE_RN_279_0), 
	.A(FE_RN_269_0));
   NAND2X4M FE_RC_339_0 (.Y(FE_RN_278_0), 
	.B(FE_RN_279_0), 
	.A(FE_RN_273_0));
   NAND2X4M FE_RC_334_0 (.Y(FE_RN_274_0), 
	.B(FE_RN_237_0), 
	.A(FE_RN_250_0));
   NAND2X4M FE_RC_333_0 (.Y(FE_RN_273_0), 
	.B(FE_RN_239_0), 
	.A(FE_RN_274_0));
   NAND3X2M FE_RC_332_0 (.Y(FE_RN_272_0), 
	.C(u_div_SumTmp_3__0_), 
	.B(FE_RN_279_0), 
	.A(FE_RN_273_0));
   INVX2M FE_RC_331_0 (.Y(FE_RN_271_0), 
	.A(FE_RN_239_0));
   INVX2M FE_RC_330_0 (.Y(FE_RN_270_0), 
	.A(FE_RN_237_0));
   CLKNAND2X2M FE_RC_329_0 (.Y(FE_RN_269_0), 
	.B(FE_RN_265_0), 
	.A(FE_RN_252_0));
   AOI21X2M FE_RC_328_0 (.Y(FE_RN_268_0), 
	.B0(FE_RN_269_0), 
	.A1(FE_RN_239_0), 
	.A0(FE_RN_270_0));
   OAI21X2M FE_RC_327_0 (.Y(FE_RN_267_0), 
	.B0(FE_RN_268_0), 
	.A1(FE_RN_271_0), 
	.A0(FE_RN_250_0));
   NAND3X2M FE_RC_326_0 (.Y(FE_RN_266_0), 
	.C(FE_RN_264_0), 
	.B(a[3]), 
	.A(FE_RN_267_0));
   AND2X2M FE_RC_324_0 (.Y(FE_RN_265_0), 
	.B(n154), 
	.A(n21));
   CLKNAND2X2M FE_RC_319_0 (.Y(FE_RN_233_0), 
	.B(FE_RN_251_0), 
	.A(FE_RN_236_0));
   INVX2M FE_RC_317_0 (.Y(FE_RN_260_0), 
	.A(u_div_PartRem_4__4_));
   INVX2M FE_RC_316_0 (.Y(FE_RN_259_0), 
	.A(FE_RN_255_0));
   OAI2BB1X2M FE_RC_315_0 (.Y(FE_RN_258_0), 
	.B0(FE_RN_259_0), 
	.A1N(FE_RN_260_0), 
	.A0N(FE_RN_501_0));
   INVX2M FE_RC_314_0 (.Y(FE_RN_257_0), 
	.A(FE_RN_252_0));
   NOR2X2M FE_RC_313_0 (.Y(FE_RN_256_0), 
	.B(FE_RN_257_0), 
	.A(FE_RN_255_0));
   MXI2X1M FE_RC_312_0 (.Y(u_div_SumTmp_3__4_), 
	.S0(FE_RN_248_0), 
	.B(FE_RN_256_0), 
	.A(FE_RN_258_0));
   AND2X2M FE_RC_311_0 (.Y(FE_RN_255_0), 
	.B(n14), 
	.A(u_div_PartRem_4__4_));
   NAND2BX2M FE_RC_308_0 (.Y(FE_RN_252_0), 
	.B(FE_RN_260_0), 
	.AN(n14));
   NAND2BX4M FE_RC_307_0 (.Y(FE_RN_251_0), 
	.B(FE_RN_235_0), 
	.AN(FE_RN_220_0));
   NAND2X4M FE_RC_306_0 (.Y(FE_RN_250_0), 
	.B(FE_RN_236_0), 
	.A(FE_RN_251_0));
   INVX2M FE_RC_300_0 (.Y(FE_RN_245_0), 
	.A(u_div_PartRem_4__3_));
   INVX2M FE_RC_299_0 (.Y(FE_RN_244_0), 
	.A(FE_RN_240_0));
   OAI2BB1X2M FE_RC_298_0 (.Y(FE_RN_243_0), 
	.B0(FE_RN_244_0), 
	.A1N(FE_RN_245_0), 
	.A0N(FE_RN_476_0));
   NOR2X2M FE_RC_296_0 (.Y(FE_RN_241_0), 
	.B(FE_RN_270_0), 
	.A(FE_RN_240_0));
   MXI2X1M FE_RC_295_0 (.Y(u_div_SumTmp_3__3_), 
	.S0(FE_RN_233_0), 
	.B(FE_RN_241_0), 
	.A(FE_RN_243_0));
   AND2X2M FE_RC_294_0 (.Y(FE_RN_240_0), 
	.B(n15), 
	.A(u_div_PartRem_4__3_));
   INVX2M FE_RC_293_0 (.Y(FE_RN_239_0), 
	.A(FE_RN_240_0));
   NAND2BX2M FE_RC_291_0 (.Y(FE_RN_237_0), 
	.B(FE_RN_476_0), 
	.AN(u_div_PartRem_4__3_));
   NAND2X4M FE_RC_290_0 (.Y(FE_RN_236_0), 
	.B(n16), 
	.A(FE_RN_213_0));
   INVX2M FE_RC_289_0 (.Y(FE_RN_235_0), 
	.A(FE_RN_219_0));
   CLKNAND2X2M FE_RC_284_0 (.Y(u_div_PartRem_4__1_), 
	.B(FE_RN_170_0), 
	.A(FE_RN_179_0));
   INVX2M FE_RC_283_0 (.Y(FE_RN_231_0), 
	.A(u_div_CryTmp_3__1_));
   INVX2M FE_RC_282_0 (.Y(FE_RN_230_0), 
	.A(FE_RN_215_0));
   AOI21X2M FE_RC_281_0 (.Y(FE_RN_229_0), 
	.B0(FE_RN_230_0), 
	.A1(FE_RN_231_0), 
	.A0(FE_RN_218_0));
   XOR2X2M FE_RC_280_0 (.Y(FE_RN_228_0), 
	.B(n16), 
	.A(u_div_PartRem_4__2_));
   NAND2BX2M FE_RC_279_0 (.Y(FE_RN_227_0), 
	.B(FE_RN_228_0), 
	.AN(FE_RN_229_0));
   OAI2B1X2M FE_RC_278_0 (.Y(u_div_SumTmp_3__2_), 
	.B0(FE_RN_227_0), 
	.A1N(FE_RN_213_0), 
	.A0(FE_RN_228_0));
   XNOR2X2M FE_RC_277_0 (.Y(FE_RN_226_0), 
	.B(n17), 
	.A(FE_RN_217_0));
   CLKNAND2X2M FE_RC_276_0 (.Y(FE_RN_225_0), 
	.B(FE_RN_218_0), 
	.A(FE_RN_215_0));
   CLKNAND2X2M FE_RC_275_0 (.Y(FE_RN_224_0), 
	.B(u_div_CryTmp_3__1_), 
	.A(FE_RN_225_0));
   OAI21X2M FE_RC_274_0 (.Y(u_div_SumTmp_3__1_), 
	.B0(FE_RN_224_0), 
	.A1(u_div_CryTmp_3__1_), 
	.A0(FE_RN_226_0));
   NAND2X2M FE_RC_271_0 (.Y(FE_RN_221_0), 
	.B(FE_RN_468_0), 
	.A(FE_RN_218_0));
   AOI2B1X2M FE_RC_270_0 (.Y(FE_RN_220_0), 
	.B0(FE_RN_221_0), 
	.A1N(FE_RN_231_0), 
	.A0(FE_RN_215_0));
   INVX2M FE_RC_269_0 (.Y(FE_RN_219_0), 
	.A(u_div_PartRem_4__2_));
   NAND2X2M FE_RC_268_0 (.Y(FE_RN_218_0), 
	.B(n17), 
	.A(FE_RN_217_0));
   NAND2X2M FE_RC_267_0 (.Y(FE_RN_217_0), 
	.B(FE_RN_179_0), 
	.A(FE_RN_170_0));
   NAND2BX4M FE_RC_265_0 (.Y(FE_RN_215_0), 
	.B(FE_RN_402_0), 
	.AN(FE_RN_217_0));
   NAND2X2M FE_RC_264_0 (.Y(FE_RN_214_0), 
	.B(u_div_CryTmp_3__1_), 
	.A(FE_RN_215_0));
   CLKNAND2X2M FE_RC_263_0 (.Y(FE_RN_213_0), 
	.B(FE_RN_218_0), 
	.A(FE_RN_214_0));
   INVX2M FE_RC_230_0 (.Y(FE_RN_166_0), 
	.A(FE_RN_174_0));
   AND2X6M FE_RC_229_0 (.Y(quotient[4]), 
	.B(n20), 
	.A(FE_RN_171_0));
   INVX2M FE_RC_228_0 (.Y(FE_RN_185_0), 
	.A(FE_RN_168_0));
   NAND2X2M FE_RC_227_0 (.Y(FE_RN_184_0), 
	.B(FE_RN_185_0), 
	.A(FE_RN_174_0));
   AOI2B1X1M FE_RC_225_0 (.Y(FE_RN_182_0), 
	.B0(u_div_PartRem_5__3_), 
	.A1N(FE_RN_476_0), 
	.A0(FE_RN_184_0));
   INVX2M FE_RC_224_0 (.Y(FE_RN_181_0), 
	.A(FE_RN_178_0));
   OAI21X2M FE_RC_223_0 (.Y(FE_RN_180_0), 
	.B0(n20), 
	.A1(FE_RN_181_0), 
	.A0(FE_RN_173_0));
   OAI21X4M FE_RC_222_0 (.Y(FE_RN_179_0), 
	.B0(a[4]), 
	.A1(FE_RN_180_0), 
	.A0(FE_RN_182_0));
   NAND2X2M FE_RC_221_0 (.Y(FE_RN_178_0), 
	.B(n15), 
	.A(FE_RN_168_0));
   INVX2M FE_RC_220_0 (.Y(FE_RN_177_0), 
	.A(FE_RN_174_0));
   NAND2X2M FE_RC_219_0 (.Y(FE_RN_176_0), 
	.B(n15), 
	.A(FE_RN_177_0));
   INVX2M FE_RC_218_0 (.Y(FE_RN_175_0), 
	.A(FE_RN_151_0));
   NAND2X2M FE_RC_217_0 (.Y(FE_RN_174_0), 
	.B(u_div_CryTmp_4__2_), 
	.A(FE_RN_138_0));
   CLKNAND2X2M FE_RC_216_0 (.Y(FE_RN_173_0), 
	.B(FE_RN_175_0), 
	.A(FE_RN_174_0));
   CLKNAND2X2M FE_RC_215_0 (.Y(FE_RN_172_0), 
	.B(u_div_PartRem_5__3_), 
	.A(FE_RN_173_0));
   NAND3X4M FE_RC_214_0 (.Y(FE_RN_171_0), 
	.C(FE_RN_178_0), 
	.B(FE_RN_176_0), 
	.A(FE_RN_172_0));
   NAND3X4M FE_RC_213_0 (.Y(FE_RN_170_0), 
	.C(n20), 
	.B(u_div_SumTmp_4__0_), 
	.A(FE_RN_171_0));
   INVX2M FE_RC_211_0 (.Y(FE_RN_169_0), 
	.A(FE_RN_166_0));
   CLKNAND2X2M FE_RC_210_0 (.Y(FE_RN_136_0), 
	.B(FE_RN_147_0), 
	.A(FE_RN_169_0));
   INVX2M FE_RC_209_0 (.Y(FE_RN_168_0), 
	.A(FE_RN_147_0));
   INVX4M FE_RC_203_0 (.Y(quotient[5]), 
	.A(FE_RN_141_0));
   INVX2M FE_RC_202_0 (.Y(FE_RN_163_0), 
	.A(u_div_SumTmp_5__1_));
   INVX2M FE_RC_201_0 (.Y(FE_RN_162_0), 
	.A(u_div_PartRem_6__1_));
   INVX2M FE_RC_199_0 (.Y(FE_RN_161_0), 
	.A(FE_RN_136_0));
   CLKXOR2X2M FE_RC_198_0 (.Y(FE_RN_160_0), 
	.B(n15), 
	.A(u_div_PartRem_5__3_));
   INVX2M FE_RC_197_0 (.Y(FE_RN_159_0), 
	.A(FE_RN_147_0));
   OAI21X2M FE_RC_196_0 (.Y(FE_RN_158_0), 
	.B0(FE_RN_138_0), 
	.A1(u_div_CryTmp_4__2_), 
	.A0(FE_RN_159_0));
   CLKNAND2X2M FE_RC_195_0 (.Y(FE_RN_157_0), 
	.B(FE_RN_160_0), 
	.A(FE_RN_158_0));
   OAI21X2M FE_RC_194_0 (.Y(u_div_SumTmp_4__3_), 
	.B0(FE_RN_157_0), 
	.A1(FE_RN_160_0), 
	.A0(FE_RN_161_0));
   OAI21X2M FE_RC_192_0 (.Y(FE_RN_155_0), 
	.B0(FE_RN_147_0), 
	.A1(n16), 
	.A0(FE_RN_140_0));
   CLKNAND2X2M FE_RC_191_0 (.Y(FE_RN_154_0), 
	.B(FE_RN_147_0), 
	.A(FE_RN_138_0));
   CLKNAND2X2M FE_RC_190_0 (.Y(FE_RN_153_0), 
	.B(u_div_CryTmp_4__2_), 
	.A(FE_RN_154_0));
   OAI21X2M FE_RC_189_0 (.Y(u_div_SumTmp_4__2_), 
	.B0(FE_RN_153_0), 
	.A1(u_div_CryTmp_4__2_), 
	.A0(FE_RN_155_0));
   CLKNAND2X2M FE_RC_187_0 (.Y(FE_RN_151_0), 
	.B(FE_RN_476_0), 
	.A(FE_RN_147_0));
   NAND2X2M FE_RC_183_0 (.Y(FE_RN_147_0), 
	.B(n16), 
	.A(FE_RN_140_0));
   INVX2M FE_RC_180_0 (.Y(FE_RN_144_0), 
	.A(FE_RN_88_0));
   INVX2M FE_RC_179_0 (.Y(FE_RN_143_0), 
	.A(FE_RN_89_0));
   NAND2X2M FE_RC_178_0 (.Y(FE_RN_142_0), 
	.B(FE_RN_143_0), 
	.A(FE_RN_73_0));
   NAND2X4M FE_RC_177_0 (.Y(FE_RN_141_0), 
	.B(FE_RN_144_0), 
	.A(FE_RN_142_0));
   MXI2X3M FE_RC_176_0 (.Y(FE_RN_140_0), 
	.S0(FE_RN_141_0), 
	.B(FE_RN_162_0), 
	.A(FE_RN_163_0));
   NAND2BX2M FE_RC_174_0 (.Y(FE_RN_138_0), 
	.B(FE_RN_468_0), 
	.AN(FE_RN_140_0));
   OAI2BB2X1M FE_RC_144_0 (.Y(u_div_PartRem_5__1_), 
	.B1(quotient[5]), 
	.B0(n158), 
	.A1N(u_div_SumTmp_5__0_), 
	.A0N(quotient[5]));
   OAI2BB2X1M FE_RC_141_0 (.Y(FE_RN_111_0), 
	.B1(n17), 
	.B0(n158), 
	.A1N(n158), 
	.A0N(n17));
   XNOR2X2M FE_RC_140_0 (.Y(FE_RN_110_0), 
	.B(u_div_CryTmp_4__1_), 
	.A(FE_RN_111_0));
   INVX2M FE_RC_139_0 (.Y(FE_RN_109_0), 
	.A(u_div_CryTmp_4__1_));
   CLKXOR2X2M FE_RC_137_0 (.Y(FE_RN_107_0), 
	.B(n17), 
	.A(u_div_SumTmp_5__0_));
   CLKNAND2X2M FE_RC_136_0 (.Y(FE_RN_106_0), 
	.B(FE_RN_109_0), 
	.A(FE_RN_107_0));
   OAI21X2M FE_RC_135_0 (.Y(FE_RN_105_0), 
	.B0(FE_RN_106_0), 
	.A1(FE_RN_109_0), 
	.A0(FE_RN_107_0));
   CLKNAND2X2M FE_RC_134_0 (.Y(FE_RN_104_0), 
	.B(quotient[5]), 
	.A(FE_RN_105_0));
   OAI21X2M FE_RC_133_0 (.Y(u_div_SumTmp_4__1_), 
	.B0(FE_RN_104_0), 
	.A1(quotient[5]), 
	.A0(FE_RN_110_0));
   CLKNAND2X2M FE_RC_132_0 (.Y(FE_RN_103_0), 
	.B(a[5]), 
	.A(FE_RN_99_0));
   NAND2BX2M FE_RC_128_0 (.Y(FE_RN_99_0), 
	.B(FE_RN_402_0), 
	.AN(u_div_CryTmp_4__1_));
   INVX2M FE_RC_127_0 (.Y(FE_RN_98_0), 
	.A(u_div_SumTmp_5__0_));
   NOR2BX2M FE_RC_126_0 (.Y(FE_RN_97_0), 
	.B(FE_RN_98_0), 
	.AN(FE_RN_99_0));
   CLKNAND2X2M FE_RC_125_0 (.Y(FE_RN_96_0), 
	.B(quotient[5]), 
	.A(FE_RN_97_0));
   OAI221X4M FE_RC_124_0 (.Y(u_div_CryTmp_4__2_), 
	.C0(FE_RN_96_0), 
	.B1(FE_RN_402_0), 
	.B0(FE_RN_109_0), 
	.A1(quotient[5]), 
	.A0(FE_RN_103_0));
   INVX2M FE_RC_115_0 (.Y(FE_RN_89_0), 
	.A(FE_RN_81_0));
   INVX2M FE_RC_114_0 (.Y(FE_RN_88_0), 
	.A(n19));
   INVX2M FE_RC_112_0 (.Y(quotient[6]), 
	.A(FE_RN_77_0));
   INVX2M FE_RC_111_0 (.Y(FE_RN_87_0), 
	.A(FE_RN_76_0));
   INVX2M FE_RC_110_0 (.Y(FE_RN_86_0), 
	.A(FE_RN_80_0));
   CLKNAND2X2M FE_RC_109_0 (.Y(u_div_PartRem_6__2_), 
	.B(FE_RN_87_0), 
	.A(FE_RN_86_0));
   INVX2M FE_RC_108_0 (.Y(FE_RN_85_0), 
	.A(u_div_CryTmp_5__2_));
   XNOR2X2M FE_RC_107_0 (.Y(FE_RN_84_0), 
	.B(n16), 
	.A(u_div_SumTmp_6__1_));
   XNOR2X2M FE_RC_106_0 (.Y(FE_RN_83_0), 
	.B(n16), 
	.A(u_div_PartRem_7__1_));
   MXI2X1M FE_RC_105_0 (.Y(FE_RN_82_0), 
	.S0(FE_RN_77_0), 
	.B(FE_RN_83_0), 
	.A(FE_RN_84_0));
   MXI2X1M FE_RC_104_0 (.Y(u_div_SumTmp_5__2_), 
	.S0(FE_RN_82_0), 
	.B(u_div_CryTmp_5__2_), 
	.A(FE_RN_85_0));
   OAI21X2M FE_RC_103_0 (.Y(FE_RN_81_0), 
	.B0(n16), 
	.A1(FE_RN_80_0), 
	.A0(FE_RN_76_0));
   NOR2BX2M FE_RC_102_0 (.Y(FE_RN_80_0), 
	.B(FE_RN_77_0), 
	.AN(u_div_SumTmp_6__1_));
   NAND2X2M FE_RC_100_0 (.Y(FE_RN_78_0), 
	.B(FE_RN_53_0), 
	.A(FE_RN_71_0));
   CLKNAND2X2M FE_RC_99_0 (.Y(FE_RN_77_0), 
	.B(FE_RN_43_0), 
	.A(FE_RN_78_0));
   AND2X2M FE_RC_98_0 (.Y(FE_RN_76_0), 
	.B(u_div_PartRem_7__1_), 
	.A(FE_RN_77_0));
   NOR2X2M FE_RC_97_0 (.Y(FE_RN_75_0), 
	.B(n16), 
	.A(FE_RN_76_0));
   CLKNAND2X2M FE_RC_96_0 (.Y(FE_RN_74_0), 
	.B(FE_RN_86_0), 
	.A(FE_RN_75_0));
   NAND2X2M FE_RC_95_0 (.Y(FE_RN_73_0), 
	.B(u_div_CryTmp_5__2_), 
	.A(FE_RN_74_0));
   INVX2M FE_RC_93_0 (.Y(FE_RN_72_0), 
	.A(FE_RN_11_0));
   NOR2BX2M FE_RC_92_0 (.Y(FE_RN_71_0), 
	.B(FE_RN_72_0), 
	.AN(FE_RN_14_0));
   OAI2B11X2M FE_RC_89_0 (.Y(u_div_PartRem_6__1_), 
	.C0(FE_RN_51_0), 
	.B0(FE_RN_42_0), 
	.A1N(a[6]), 
	.A0(FE_RN_52_0));
   INVX2M FE_RC_88_0 (.Y(FE_RN_69_0), 
	.A(FE_RN_39_0));
   INVX2M FE_RC_87_0 (.Y(FE_RN_68_0), 
	.A(FE_RN_58_0));
   NAND4X2M FE_RC_86_0 (.Y(FE_RN_67_0), 
	.D(FE_RN_69_0), 
	.C(FE_RN_42_0), 
	.B(FE_RN_68_0), 
	.A(FE_RN_52_0));
   INVX2M FE_RC_85_0 (.Y(FE_RN_66_0), 
	.A(FE_RN_52_0));
   CLKNAND2X2M FE_RC_84_0 (.Y(FE_RN_65_0), 
	.B(a[6]), 
	.A(FE_RN_58_0));
   NOR2X2M FE_RC_83_0 (.Y(FE_RN_64_0), 
	.B(a[6]), 
	.A(FE_RN_58_0));
   CLKNAND2X2M FE_RC_82_0 (.Y(FE_RN_63_0), 
	.B(FE_RN_42_0), 
	.A(FE_RN_64_0));
   CLKNAND2X2M FE_RC_81_0 (.Y(FE_RN_62_0), 
	.B(FE_RN_65_0), 
	.A(FE_RN_63_0));
   NAND2X2M FE_RC_80_0 (.Y(FE_RN_61_0), 
	.B(FE_RN_66_0), 
	.A(FE_RN_62_0));
   INVX2M FE_RC_78_0 (.Y(FE_RN_59_0), 
	.A(u_div_CryTmp_5__1_));
   OAI21X2M FE_RC_77_0 (.Y(FE_RN_58_0), 
	.B0(FE_RN_47_0), 
	.A1(FE_RN_59_0), 
	.A0(FE_RN_402_0));
   CLKNAND2X2M FE_RC_76_0 (.Y(FE_RN_57_0), 
	.B(FE_RN_58_0), 
	.A(FE_RN_50_0));
   NAND3X2M FE_RC_75_0 (.Y(u_div_SumTmp_5__1_), 
	.C(FE_RN_67_0), 
	.B(FE_RN_61_0), 
	.A(FE_RN_57_0));
   INVX2M FE_RC_73_0 (.Y(FE_RN_55_0), 
	.A(FE_RN_7_0));
   INVX2M FE_RC_72_0 (.Y(FE_RN_54_0), 
	.A(FE_RN_18_0));
   CLKNAND2X2M FE_RC_71_0 (.Y(FE_RN_53_0), 
	.B(FE_RN_55_0), 
	.A(FE_RN_54_0));
   NAND3X2M FE_RC_70_0 (.Y(FE_RN_52_0), 
	.C(FE_RN_14_0), 
	.B(FE_RN_11_0), 
	.A(FE_RN_53_0));
   CLKNAND2X2M FE_RC_69_0 (.Y(FE_RN_51_0), 
	.B(FE_RN_39_0), 
	.A(FE_RN_52_0));
   CLKNAND2X2M FE_RC_68_0 (.Y(FE_RN_50_0), 
	.B(FE_RN_42_0), 
	.A(FE_RN_51_0));
   AOI21X2M FE_RC_67_0 (.Y(FE_RN_49_0), 
	.B0(FE_RN_50_0), 
	.A1(a[6]), 
	.A0(FE_RN_66_0));
   NAND2BX2M FE_RC_65_0 (.Y(FE_RN_47_0), 
	.B(FE_RN_402_0), 
	.AN(u_div_CryTmp_5__1_));
   INVX2M FE_RC_64_0 (.Y(FE_RN_46_0), 
	.A(FE_RN_47_0));
   OAI22X2M FE_RC_61_0 (.Y(u_div_CryTmp_5__2_), 
	.B1(FE_RN_419_0), 
	.B0(FE_RN_59_0), 
	.A1(FE_RN_46_0), 
	.A0(FE_RN_49_0));
   INVX2M FE_RC_60_0 (.Y(FE_RN_43_0), 
	.A(FE_RN_40_0));
   CLKNAND2X2M FE_RC_58_0 (.Y(FE_RN_42_0), 
	.B(a[6]), 
	.A(FE_RN_40_0));
   INVX2M FE_RC_57_0 (.Y(FE_RN_41_0), 
	.A(u_div_SumTmp_6__0_));
   CLKNAND2X2M FE_RC_56_0 (.Y(FE_RN_40_0), 
	.B(n16), 
	.A(n19));
   NOR2X2M FE_RC_55_0 (.Y(FE_RN_39_0), 
	.B(FE_RN_41_0), 
	.A(FE_RN_40_0));
   INVX2M FE_RC_50_0 (.Y(FE_RN_36_0), 
	.A(FE_RN_10_0));
   CLKNAND2X2M FE_RC_49_0 (.Y(FE_RN_35_0), 
	.B(a[7]), 
	.A(FE_RN_7_0));
   OAI2B1X2M FE_RC_48_0 (.Y(u_div_PartRem_7__1_), 
	.B0(FE_RN_35_0), 
	.A1N(FE_RN_36_0), 
	.A0(FE_RN_7_0));
   OAI21X2M FE_RC_46_0 (.Y(FE_RN_33_0), 
	.B0(FE_RN_11_0), 
	.A1(u_div_CryTmp_6__1_), 
	.A0(n17));
   INVX2M FE_RC_45_0 (.Y(FE_RN_32_0), 
	.A(FE_RN_33_0));
   CLKNAND2X2M FE_RC_42_0 (.Y(FE_RN_29_0), 
	.B(FE_RN_15_0), 
	.A(FE_RN_11_0));
   AOI22X1M FE_RC_41_0 (.Y(FE_RN_28_0), 
	.B1(FE_RN_29_0), 
	.B0(FE_RN_36_0), 
	.A1(FE_RN_10_0), 
	.A0(FE_RN_32_0));
   INVX2M FE_RC_40_0 (.Y(FE_RN_27_0), 
	.A(u_div_CryTmp_6__1_));
   INVX2M FE_RC_38_0 (.Y(FE_RN_25_0), 
	.A(a[7]));
   CLKNAND2X2M FE_RC_36_0 (.Y(FE_RN_23_0), 
	.B(n17), 
	.A(FE_RN_25_0));
   OAI21X2M FE_RC_35_0 (.Y(FE_RN_22_0), 
	.B0(FE_RN_23_0), 
	.A1(n17), 
	.A0(FE_RN_25_0));
   NOR2X2M FE_RC_34_0 (.Y(FE_RN_21_0), 
	.B(FE_RN_27_0), 
	.A(FE_RN_22_0));
   AOI21X2M FE_RC_33_0 (.Y(FE_RN_20_0), 
	.B0(FE_RN_21_0), 
	.A1(FE_RN_27_0), 
	.A0(FE_RN_22_0));
   MXI2X1M FE_RC_32_0 (.Y(u_div_SumTmp_6__1_), 
	.S0(FE_RN_7_0), 
	.B(FE_RN_20_0), 
	.A(FE_RN_28_0));
   INVX2M FE_RC_31_0 (.Y(FE_RN_19_0), 
	.A(FE_RN_10_0));
   NAND2X2M FE_RC_30_0 (.Y(FE_RN_18_0), 
	.B(FE_RN_19_0), 
	.A(FE_RN_15_0));
   NAND2BX4M FE_RC_27_0 (.Y(FE_RN_15_0), 
	.B(FE_RN_419_0), 
	.AN(u_div_CryTmp_6__1_));
   NAND3BX2M FE_RC_26_0 (.Y(FE_RN_14_0), 
	.C(FE_RN_15_0), 
	.B(FE_RN_7_0), 
	.AN(FE_RN_25_0));
   NOR2BX2M FE_RC_24_0 (.Y(FE_RN_12_0), 
	.B(FE_RN_419_0), 
	.AN(u_div_CryTmp_6__1_));
   INVX2M FE_RC_23_0 (.Y(FE_RN_11_0), 
	.A(FE_RN_12_0));
   INVX2M FE_RC_21_0 (.Y(quotient[7]), 
	.A(FE_RN_7_0));
   INVX2M FE_RC_20_0 (.Y(FE_RN_10_0), 
	.A(u_div_SumTmp_7__0_));
   NAND2X2M FE_RC_19_0 (.Y(FE_RN_9_0), 
	.B(n17), 
	.A(n15));
   NOR2X2M FE_RC_18_0 (.Y(FE_RN_8_0), 
	.B(FE_RN_5_0), 
	.A(FE_RN_9_0));
   NAND3X4M FE_RC_17_0 (.Y(FE_RN_7_0), 
	.C(u_div_CryTmp_7__1_), 
	.B(n20), 
	.A(FE_RN_8_0));
   AND3X6M FE_RC_14_0 (.Y(n20), 
	.C(FE_RN_0_0), 
	.B(n14), 
	.A(FE_RN_2_0));
   AND2X2M FE_RC_13_0 (.Y(n19), 
	.B(n15), 
	.A(n20));
   INVX2M FE_RC_12_0 (.Y(FE_RN_5_0), 
	.A(n16));
   NOR2X2M FE_RC_9_0 (.Y(n21), 
	.B(b[7]), 
	.A(b[6]));
   NOR2X2M FE_RC_7_0 (.Y(FE_RN_2_0), 
	.B(b[7]), 
	.A(b[6]));
   INVX2M FE_RC_2_0 (.Y(FE_RN_0_0), 
	.A(b[5]));
   INVX4M FE_RC_0_0 (.Y(n14), 
	.A(b[4]));
   ADDFHX2M u_div_u_fa_PartRem_0_0_4 (.CO(u_div_CryTmp_0__5_), 
	.CI(u_div_CryTmp_0__4_), 
	.B(n14), 
	.A(u_div_PartRem_1__4_));
   ADDFHX2M u_div_u_fa_PartRem_0_0_5 (.CO(u_div_CryTmp_0__6_), 
	.CI(u_div_CryTmp_0__5_), 
	.B(n154), 
	.A(u_div_PartRem_1__5_));
   ADDFHX2M u_div_u_fa_PartRem_0_0_2 (.CO(u_div_CryTmp_0__3_), 
	.CI(u_div_CryTmp_0__2_), 
	.B(n16), 
	.A(u_div_PartRem_1__2_));
   ADDFHX2M u_div_u_fa_PartRem_0_0_3 (.CO(u_div_CryTmp_0__4_), 
	.CI(u_div_CryTmp_0__3_), 
	.B(n15), 
	.A(u_div_PartRem_1__3_));
   ADDFHX1M u_div_u_fa_PartRem_0_0_1 (.CO(u_div_CryTmp_0__2_), 
	.CI(u_div_CryTmp_0__1_), 
	.B(n17), 
	.A(u_div_PartRem_1__1_));
   ADDFHX2M u_div_u_fa_PartRem_0_0_6 (.CO(u_div_CryTmp_0__7_), 
	.CI(u_div_CryTmp_0__6_), 
	.B(n145), 
	.A(u_div_PartRem_1__6_));
   ADDFHX2M u_div_u_fa_PartRem_0_0_7 (.CO(quotient[0]), 
	.CI(u_div_CryTmp_0__7_), 
	.B(n153), 
	.A(u_div_PartRem_1__7_));
   INVX4M U1 (.Y(n18), 
	.A(b[0]));
   CLKINVX6M U4 (.Y(n17), 
	.A(b[1]));
   CLKINVX6M U5 (.Y(n16), 
	.A(b[2]));
   CLKINVX6M U6 (.Y(n15), 
	.A(b[3]));
   OR2X2M U7 (.Y(u_div_CryTmp_7__1_), 
	.B(a[7]), 
	.A(n18));
   XNOR2X2M U8 (.Y(u_div_SumTmp_2__0_), 
	.B(a[2]), 
	.A(n18));
   XNOR2X2M U9 (.Y(u_div_SumTmp_3__0_), 
	.B(a[3]), 
	.A(n18));
   XNOR2X2M U10 (.Y(u_div_SumTmp_4__0_), 
	.B(a[4]), 
	.A(n18));
   XNOR2X2M U11 (.Y(u_div_SumTmp_5__0_), 
	.B(a[5]), 
	.A(n18));
   XNOR2X2M U12 (.Y(u_div_SumTmp_6__0_), 
	.B(a[6]), 
	.A(n18));
   XNOR2X2M U13 (.Y(u_div_SumTmp_7__0_), 
	.B(a[7]), 
	.A(n18));
   NAND2X2M U14 (.Y(u_div_CryTmp_0__1_), 
	.B(n163), 
	.A(n3));
   NAND2X2M U16 (.Y(u_div_CryTmp_5__1_), 
	.B(n158), 
	.A(n3));
   CLKINVX2M U18 (.Y(n3), 
	.A(n18));
   NAND2X2M U19 (.Y(u_div_CryTmp_4__1_), 
	.B(n159), 
	.A(n3));
   CLKNAND2X2M U22 (.Y(u_div_CryTmp_3__1_), 
	.B(n160), 
	.A(n3));
   NAND2X2M U24 (.Y(u_div_CryTmp_2__1_), 
	.B(n161), 
	.A(n3));
   NAND2X2M U26 (.Y(u_div_CryTmp_1__1_), 
	.B(n162), 
	.A(n3));
   NAND2X2M U28 (.Y(u_div_CryTmp_6__1_), 
	.B(n2), 
	.A(n1));
   CLKINVX2M U29 (.Y(n2), 
	.A(a[6]));
   CLKINVX2M U30 (.Y(n1), 
	.A(n18));
   XNOR2X2M U31 (.Y(u_div_SumTmp_1__0_), 
	.B(a[1]), 
	.A(n18));
   CLKMX2X2M U36 (.Y(u_div_PartRem_1__7_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__6_), 
	.A(u_div_PartRem_2__6_));
   CLKMX2X2M U37 (.Y(u_div_PartRem_2__6_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__5_), 
	.A(u_div_PartRem_3__5_));
   CLKMX2X2M U38 (.Y(u_div_PartRem_3__5_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__4_), 
	.A(u_div_PartRem_4__4_));
   CLKMX2X2M U39 (.Y(u_div_PartRem_4__4_), 
	.S0(quotient[4]), 
	.B(u_div_SumTmp_4__3_), 
	.A(u_div_PartRem_5__3_));
   MX2X1M U40 (.Y(u_div_PartRem_5__3_), 
	.S0(quotient[5]), 
	.B(u_div_SumTmp_5__2_), 
	.A(u_div_PartRem_6__2_));
   CLKMX2X2M U43 (.Y(u_div_PartRem_1__6_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__5_), 
	.A(u_div_PartRem_2__5_));
   CLKMX2X2M U44 (.Y(u_div_PartRem_2__5_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__4_), 
	.A(u_div_PartRem_3__4_));
   CLKMX2X2M U45 (.Y(u_div_PartRem_3__4_), 
	.S0(quotient[3]), 
	.B(u_div_SumTmp_3__3_), 
	.A(u_div_PartRem_4__3_));
   CLKMX2X2M U46 (.Y(u_div_PartRem_4__3_), 
	.S0(quotient[4]), 
	.B(u_div_SumTmp_4__2_), 
	.A(FE_RN_140_0));
   CLKMX2X2M U49 (.Y(u_div_PartRem_1__5_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__4_), 
	.A(u_div_PartRem_2__4_));
   CLKMX2X2M U50 (.Y(u_div_PartRem_2__4_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__3_), 
	.A(u_div_PartRem_3__3_));
   CLKMX2X2M U52 (.Y(u_div_PartRem_4__2_), 
	.S0(quotient[4]), 
	.B(u_div_SumTmp_4__1_), 
	.A(u_div_PartRem_5__1_));
   CLKMX2X2M U54 (.Y(u_div_PartRem_1__4_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__3_), 
	.A(u_div_PartRem_2__3_));
   CLKMX2X2M U55 (.Y(u_div_PartRem_2__3_), 
	.S0(quotient[2]), 
	.B(u_div_SumTmp_2__2_), 
	.A(u_div_PartRem_3__2_));
   CLKMX2X2M U58 (.Y(u_div_PartRem_1__3_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__2_), 
	.A(u_div_PartRem_2__2_));
   CLKMX2X2M U61 (.Y(u_div_PartRem_1__2_), 
	.S0(quotient[1]), 
	.B(u_div_SumTmp_1__1_), 
	.A(u_div_PartRem_2__1_));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n153, 
	n155, 
	n154, 
	n144, 
	n140, 
	n142, 
	n145, 
	n163);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n153;
   input n155;
   input n154;
   input n144;
   input n140;
   input n142;
   input n145;
   input n163;

   // Internal wires
   wire n8;
   wire [8:1] carry;

   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n153), 
	.A(A[7]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n154), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n155), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n144), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n142), 
	.A(A[2]));
   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n8), 
	.A(A[1]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n145), 
	.A(A[6]));
   XNOR2X2M U2 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n140));
   INVX2M U4 (.Y(n8), 
	.A(B[1]));
   NAND2X2M U5 (.Y(carry[1]), 
	.B(n163), 
	.A(B[0]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire [7:2] carry;

   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(n1), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   AND2X2M U1 (.Y(n1), 
	.B(A[0]), 
	.A(B[0]));
   CLKXOR2X2M U2 (.Y(SUM[0]), 
	.B(A[0]), 
	.A(B[0]));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;

   NAND2X2M U2 (.Y(n13), 
	.B(B[7]), 
	.A(A[7]));
   INVX2M U3 (.Y(n7), 
	.A(A[6]));
   CLKXOR2X2M U4 (.Y(SUM[13]), 
	.B(n16), 
	.A(B[13]));
   INVX2M U5 (.Y(SUM[6]), 
	.A(n7));
   CLKXOR2X2M U6 (.Y(SUM[7]), 
	.B(B[7]), 
	.A(A[7]));
   BUFX2M U7 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U8 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U9 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U10 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U11 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U12 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U13 (.Y(SUM[9]), 
	.B(n9), 
	.A(n8));
   NOR2X1M U14 (.Y(n9), 
	.B(n11), 
	.A(n10));
   CLKXOR2X2M U15 (.Y(SUM[8]), 
	.B(n13), 
	.A(n12));
   NAND2BX1M U16 (.Y(n12), 
	.B(n15), 
	.AN(n14));
   OAI2BB1X1M U17 (.Y(n16), 
	.B0(n18), 
	.A1N(A[12]), 
	.A0N(n17));
   OAI21X1M U18 (.Y(n18), 
	.B0(B[12]), 
	.A1(n17), 
	.A0(A[12]));
   XOR3XLM U19 (.Y(SUM[12]), 
	.C(n17), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U20 (.Y(n17), 
	.B0N(n21), 
	.A1(n20), 
	.A0(n19));
   XNOR2X1M U21 (.Y(SUM[11]), 
	.B(n22), 
	.A(n20));
   NOR2X1M U22 (.Y(n22), 
	.B(n19), 
	.A(n21));
   NOR2X1M U23 (.Y(n19), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U24 (.Y(n21), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U25 (.Y(n20), 
	.B0(n25), 
	.A1(n24), 
	.A0(n23));
   CLKXOR2X2M U26 (.Y(SUM[10]), 
	.B(n24), 
	.A(n26));
   AOI2BB1X1M U27 (.Y(n24), 
	.B0(n10), 
	.A1N(n11), 
	.A0N(n8));
   AND2X1M U28 (.Y(n10), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U29 (.Y(n11), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U30 (.Y(n8), 
	.B0(n15), 
	.A1(n14), 
	.A0(n13));
   CLKNAND2X2M U31 (.Y(n15), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U32 (.Y(n14), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U33 (.Y(n26), 
	.B(n25), 
	.AN(n23));
   CLKNAND2X2M U34 (.Y(n25), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U35 (.Y(n23), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n144, 
	n140, 
	n142, 
	n145, 
	n156, 
	n157, 
	n158, 
	n159, 
	n160, 
	n161, 
	n163, 
	n162, 
	n153, 
	n155, 
	n154);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n144;
   input n140;
   input n142;
   input n145;
   input n156;
   input n157;
   input n158;
   input n159;
   input n160;
   input n161;
   input n163;
   input n162;
   input n153;
   input n155;
   input n154;

   // Internal wires
   wire ab_7__7_;
   wire ab_7__6_;
   wire ab_7__5_;
   wire ab_7__4_;
   wire ab_7__3_;
   wire ab_7__2_;
   wire ab_7__1_;
   wire ab_7__0_;
   wire ab_6__7_;
   wire ab_6__6_;
   wire ab_6__5_;
   wire ab_6__4_;
   wire ab_6__3_;
   wire ab_6__2_;
   wire ab_6__1_;
   wire ab_6__0_;
   wire ab_5__7_;
   wire ab_5__6_;
   wire ab_5__5_;
   wire ab_5__4_;
   wire ab_5__3_;
   wire ab_5__2_;
   wire ab_5__1_;
   wire ab_5__0_;
   wire ab_4__7_;
   wire ab_4__6_;
   wire ab_4__5_;
   wire ab_4__4_;
   wire ab_4__3_;
   wire ab_4__2_;
   wire ab_4__1_;
   wire ab_4__0_;
   wire ab_3__7_;
   wire ab_3__6_;
   wire ab_3__5_;
   wire ab_3__4_;
   wire ab_3__3_;
   wire ab_3__2_;
   wire ab_3__1_;
   wire ab_3__0_;
   wire ab_2__7_;
   wire ab_2__6_;
   wire ab_2__5_;
   wire ab_2__4_;
   wire ab_2__3_;
   wire ab_2__2_;
   wire ab_2__1_;
   wire ab_2__0_;
   wire ab_1__7_;
   wire ab_1__6_;
   wire ab_1__5_;
   wire ab_1__4_;
   wire ab_1__3_;
   wire ab_1__2_;
   wire ab_1__1_;
   wire ab_1__0_;
   wire ab_0__7_;
   wire ab_0__6_;
   wire ab_0__5_;
   wire ab_0__4_;
   wire ab_0__3_;
   wire ab_0__2_;
   wire ab_0__1_;
   wire CARRYB_7__6_;
   wire CARRYB_7__5_;
   wire CARRYB_7__4_;
   wire CARRYB_7__3_;
   wire CARRYB_7__2_;
   wire CARRYB_7__1_;
   wire CARRYB_7__0_;
   wire CARRYB_6__6_;
   wire CARRYB_6__5_;
   wire CARRYB_6__4_;
   wire CARRYB_6__3_;
   wire CARRYB_6__2_;
   wire CARRYB_6__1_;
   wire CARRYB_6__0_;
   wire CARRYB_5__6_;
   wire CARRYB_5__5_;
   wire CARRYB_5__4_;
   wire CARRYB_5__3_;
   wire CARRYB_5__2_;
   wire CARRYB_5__1_;
   wire CARRYB_5__0_;
   wire CARRYB_4__6_;
   wire CARRYB_4__5_;
   wire CARRYB_4__4_;
   wire CARRYB_4__3_;
   wire CARRYB_4__2_;
   wire CARRYB_4__1_;
   wire CARRYB_4__0_;
   wire CARRYB_3__6_;
   wire CARRYB_3__5_;
   wire CARRYB_3__4_;
   wire CARRYB_3__3_;
   wire CARRYB_3__2_;
   wire CARRYB_3__1_;
   wire CARRYB_3__0_;
   wire CARRYB_2__6_;
   wire CARRYB_2__5_;
   wire CARRYB_2__4_;
   wire CARRYB_2__3_;
   wire CARRYB_2__2_;
   wire CARRYB_2__1_;
   wire CARRYB_2__0_;
   wire SUMB_7__6_;
   wire SUMB_7__5_;
   wire SUMB_7__4_;
   wire SUMB_7__3_;
   wire SUMB_7__2_;
   wire SUMB_7__1_;
   wire SUMB_7__0_;
   wire SUMB_6__6_;
   wire SUMB_6__5_;
   wire SUMB_6__4_;
   wire SUMB_6__3_;
   wire SUMB_6__2_;
   wire SUMB_6__1_;
   wire SUMB_5__6_;
   wire SUMB_5__5_;
   wire SUMB_5__4_;
   wire SUMB_5__3_;
   wire SUMB_5__2_;
   wire SUMB_5__1_;
   wire SUMB_4__6_;
   wire SUMB_4__5_;
   wire SUMB_4__4_;
   wire SUMB_4__3_;
   wire SUMB_4__2_;
   wire SUMB_4__1_;
   wire SUMB_3__6_;
   wire SUMB_3__5_;
   wire SUMB_3__4_;
   wire SUMB_3__3_;
   wire SUMB_3__2_;
   wire SUMB_3__1_;
   wire SUMB_2__6_;
   wire SUMB_2__5_;
   wire SUMB_2__4_;
   wire SUMB_2__3_;
   wire SUMB_2__2_;
   wire SUMB_2__1_;
   wire SUMB_1__6_;
   wire SUMB_1__5_;
   wire SUMB_1__4_;
   wire SUMB_1__3_;
   wire SUMB_1__2_;
   wire SUMB_1__1_;
   wire A1_12_;
   wire A1_11_;
   wire A1_10_;
   wire A1_9_;
   wire A1_8_;
   wire A1_7_;
   wire A1_6_;
   wire A1_4_;
   wire A1_3_;
   wire A1_2_;
   wire A1_1_;
   wire A1_0_;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n23;

   ADDFX2M S3_6_6 (.S(SUMB_6__6_), 
	.CO(CARRYB_6__6_), 
	.CI(ab_5__7_), 
	.B(CARRYB_5__6_), 
	.A(ab_6__6_));
   ADDFX2M S2_6_5 (.S(SUMB_6__5_), 
	.CO(CARRYB_6__5_), 
	.CI(SUMB_5__6_), 
	.B(CARRYB_5__5_), 
	.A(ab_6__5_));
   ADDFX2M S3_5_6 (.S(SUMB_5__6_), 
	.CO(CARRYB_5__6_), 
	.CI(ab_4__7_), 
	.B(CARRYB_4__6_), 
	.A(ab_5__6_));
   ADDFX2M S5_6 (.S(SUMB_7__6_), 
	.CO(CARRYB_7__6_), 
	.CI(ab_6__7_), 
	.B(CARRYB_6__6_), 
	.A(ab_7__6_));
   ADDFX2M S4_5 (.S(SUMB_7__5_), 
	.CO(CARRYB_7__5_), 
	.CI(SUMB_6__6_), 
	.B(CARRYB_6__5_), 
	.A(ab_7__5_));
   ADDFX2M S4_4 (.S(SUMB_7__4_), 
	.CO(CARRYB_7__4_), 
	.CI(SUMB_6__5_), 
	.B(CARRYB_6__4_), 
	.A(ab_7__4_));
   ADDFX2M S2_2_4 (.S(SUMB_2__4_), 
	.CO(CARRYB_2__4_), 
	.CI(SUMB_1__5_), 
	.B(n8), 
	.A(ab_2__4_));
   ADDFX2M S2_6_4 (.S(SUMB_6__4_), 
	.CO(CARRYB_6__4_), 
	.CI(SUMB_5__5_), 
	.B(CARRYB_5__4_), 
	.A(ab_6__4_));
   ADDFX2M S2_5_5 (.S(SUMB_5__5_), 
	.CO(CARRYB_5__5_), 
	.CI(SUMB_4__6_), 
	.B(CARRYB_4__5_), 
	.A(ab_5__5_));
   ADDFX2M S3_4_6 (.S(SUMB_4__6_), 
	.CO(CARRYB_4__6_), 
	.CI(ab_3__7_), 
	.B(CARRYB_3__6_), 
	.A(ab_4__6_));
   ADDFX2M S3_3_6 (.S(SUMB_3__6_), 
	.CO(CARRYB_3__6_), 
	.CI(ab_2__7_), 
	.B(CARRYB_2__6_), 
	.A(ab_3__6_));
   ADDFX2M S2_4_4 (.S(SUMB_4__4_), 
	.CO(CARRYB_4__4_), 
	.CI(SUMB_3__5_), 
	.B(CARRYB_3__4_), 
	.A(ab_4__4_));
   ADDFX2M S2_3_5 (.S(SUMB_3__5_), 
	.CO(CARRYB_3__5_), 
	.CI(SUMB_2__6_), 
	.B(CARRYB_2__5_), 
	.A(ab_3__5_));
   ADDFX2M S2_3_4 (.S(SUMB_3__4_), 
	.CO(CARRYB_3__4_), 
	.CI(SUMB_2__5_), 
	.B(CARRYB_2__4_), 
	.A(ab_3__4_));
   ADDFX2M S2_2_5 (.S(SUMB_2__5_), 
	.CO(CARRYB_2__5_), 
	.CI(SUMB_1__6_), 
	.B(n7), 
	.A(ab_2__5_));
   ADDFX2M S3_2_6 (.S(SUMB_2__6_), 
	.CO(CARRYB_2__6_), 
	.CI(ab_1__7_), 
	.B(n9), 
	.A(ab_2__6_));
   ADDFX2M S2_6_3 (.S(SUMB_6__3_), 
	.CO(CARRYB_6__3_), 
	.CI(SUMB_5__4_), 
	.B(CARRYB_5__3_), 
	.A(ab_6__3_));
   ADDFX2M S2_5_4 (.S(SUMB_5__4_), 
	.CO(CARRYB_5__4_), 
	.CI(SUMB_4__5_), 
	.B(CARRYB_4__4_), 
	.A(ab_5__4_));
   ADDFX2M S2_6_2 (.S(SUMB_6__2_), 
	.CO(CARRYB_6__2_), 
	.CI(SUMB_5__3_), 
	.B(CARRYB_5__2_), 
	.A(ab_6__2_));
   ADDFX2M S2_6_1 (.S(SUMB_6__1_), 
	.CO(CARRYB_6__1_), 
	.CI(SUMB_5__2_), 
	.B(CARRYB_5__1_), 
	.A(ab_6__1_));
   ADDFX2M S1_6_0 (.S(A1_4_), 
	.CO(CARRYB_6__0_), 
	.CI(SUMB_5__1_), 
	.B(CARRYB_5__0_), 
	.A(ab_6__0_));
   ADDFX2M S2_4_5 (.S(SUMB_4__5_), 
	.CO(CARRYB_4__5_), 
	.CI(SUMB_3__6_), 
	.B(CARRYB_3__5_), 
	.A(ab_4__5_));
   ADDFX2M S2_5_3 (.S(SUMB_5__3_), 
	.CO(CARRYB_5__3_), 
	.CI(SUMB_4__4_), 
	.B(CARRYB_4__3_), 
	.A(ab_5__3_));
   ADDFX2M S2_5_2 (.S(SUMB_5__2_), 
	.CO(CARRYB_5__2_), 
	.CI(SUMB_4__3_), 
	.B(CARRYB_4__2_), 
	.A(ab_5__2_));
   ADDFX2M S2_5_1 (.S(SUMB_5__1_), 
	.CO(CARRYB_5__1_), 
	.CI(SUMB_4__2_), 
	.B(CARRYB_4__1_), 
	.A(ab_5__1_));
   ADDFX2M S1_5_0 (.S(A1_3_), 
	.CO(CARRYB_5__0_), 
	.CI(SUMB_4__1_), 
	.B(CARRYB_4__0_), 
	.A(ab_5__0_));
   ADDFX2M S2_4_3 (.S(SUMB_4__3_), 
	.CO(CARRYB_4__3_), 
	.CI(SUMB_3__4_), 
	.B(CARRYB_3__3_), 
	.A(ab_4__3_));
   ADDFX2M S2_4_2 (.S(SUMB_4__2_), 
	.CO(CARRYB_4__2_), 
	.CI(SUMB_3__3_), 
	.B(CARRYB_3__2_), 
	.A(ab_4__2_));
   ADDFX2M S2_4_1 (.S(SUMB_4__1_), 
	.CO(CARRYB_4__1_), 
	.CI(SUMB_3__2_), 
	.B(CARRYB_3__1_), 
	.A(ab_4__1_));
   ADDFX2M S1_4_0 (.S(A1_2_), 
	.CO(CARRYB_4__0_), 
	.CI(SUMB_3__1_), 
	.B(CARRYB_3__0_), 
	.A(ab_4__0_));
   ADDFX2M S2_3_3 (.S(SUMB_3__3_), 
	.CO(CARRYB_3__3_), 
	.CI(SUMB_2__4_), 
	.B(CARRYB_2__3_), 
	.A(ab_3__3_));
   ADDFX2M S2_3_2 (.S(SUMB_3__2_), 
	.CO(CARRYB_3__2_), 
	.CI(SUMB_2__3_), 
	.B(CARRYB_2__2_), 
	.A(ab_3__2_));
   ADDFX2M S2_3_1 (.S(SUMB_3__1_), 
	.CO(CARRYB_3__1_), 
	.CI(SUMB_2__2_), 
	.B(CARRYB_2__1_), 
	.A(ab_3__1_));
   ADDFX2M S1_3_0 (.S(A1_1_), 
	.CO(CARRYB_3__0_), 
	.CI(SUMB_2__1_), 
	.B(CARRYB_2__0_), 
	.A(ab_3__0_));
   ADDFX2M S2_2_3 (.S(SUMB_2__3_), 
	.CO(CARRYB_2__3_), 
	.CI(SUMB_1__4_), 
	.B(n6), 
	.A(ab_2__3_));
   ADDFX2M S2_2_2 (.S(SUMB_2__2_), 
	.CO(CARRYB_2__2_), 
	.CI(SUMB_1__3_), 
	.B(n5), 
	.A(ab_2__2_));
   ADDFX2M S2_2_1 (.S(SUMB_2__1_), 
	.CO(CARRYB_2__1_), 
	.CI(SUMB_1__2_), 
	.B(n4), 
	.A(ab_2__1_));
   ADDFX2M S1_2_0 (.S(A1_0_), 
	.CO(CARRYB_2__0_), 
	.CI(SUMB_1__1_), 
	.B(n3), 
	.A(ab_2__0_));
   ADDFX2M S4_2 (.S(SUMB_7__2_), 
	.CO(CARRYB_7__2_), 
	.CI(SUMB_6__3_), 
	.B(CARRYB_6__2_), 
	.A(ab_7__2_));
   ADDFX2M S4_1 (.S(SUMB_7__1_), 
	.CO(CARRYB_7__1_), 
	.CI(SUMB_6__2_), 
	.B(CARRYB_6__1_), 
	.A(ab_7__1_));
   ADDFX2M S4_0 (.S(SUMB_7__0_), 
	.CO(CARRYB_7__0_), 
	.CI(SUMB_6__1_), 
	.B(CARRYB_6__0_), 
	.A(ab_7__0_));
   ADDFX2M S4_3 (.S(SUMB_7__3_), 
	.CO(CARRYB_7__3_), 
	.CI(SUMB_6__4_), 
	.B(CARRYB_6__3_), 
	.A(ab_7__3_));
   AND2X2M U2 (.Y(n3), 
	.B(ab_1__0_), 
	.A(ab_0__1_));
   AND2X2M U3 (.Y(n4), 
	.B(ab_1__1_), 
	.A(ab_0__2_));
   AND2X2M U4 (.Y(n5), 
	.B(ab_1__2_), 
	.A(ab_0__3_));
   AND2X2M U5 (.Y(n6), 
	.B(ab_1__3_), 
	.A(ab_0__4_));
   AND2X2M U6 (.Y(n7), 
	.B(ab_1__5_), 
	.A(ab_0__6_));
   AND2X2M U7 (.Y(n8), 
	.B(ab_1__4_), 
	.A(ab_0__5_));
   AND2X2M U8 (.Y(n9), 
	.B(ab_1__6_), 
	.A(ab_0__7_));
   AND2X2M U9 (.Y(n10), 
	.B(ab_7__7_), 
	.A(CARRYB_7__6_));
   CLKXOR2X2M U10 (.Y(A1_7_), 
	.B(SUMB_7__2_), 
	.A(CARRYB_7__1_));
   CLKXOR2X2M U11 (.Y(A1_8_), 
	.B(SUMB_7__3_), 
	.A(CARRYB_7__2_));
   AND2X2M U12 (.Y(n11), 
	.B(SUMB_7__1_), 
	.A(CARRYB_7__0_));
   AND2X2M U13 (.Y(n12), 
	.B(SUMB_7__2_), 
	.A(CARRYB_7__1_));
   CLKXOR2X2M U14 (.Y(A1_10_), 
	.B(SUMB_7__5_), 
	.A(CARRYB_7__4_));
   CLKXOR2X2M U15 (.Y(A1_9_), 
	.B(SUMB_7__4_), 
	.A(CARRYB_7__3_));
   CLKXOR2X2M U16 (.Y(A1_11_), 
	.B(SUMB_7__6_), 
	.A(CARRYB_7__5_));
   AND2X2M U17 (.Y(n13), 
	.B(SUMB_7__4_), 
	.A(CARRYB_7__3_));
   AND2X2M U18 (.Y(n14), 
	.B(SUMB_7__3_), 
	.A(CARRYB_7__2_));
   AND2X2M U19 (.Y(n15), 
	.B(SUMB_7__5_), 
	.A(CARRYB_7__4_));
   CLKXOR2X2M U20 (.Y(A1_12_), 
	.B(ab_7__7_), 
	.A(CARRYB_7__6_));
   CLKXOR2X2M U21 (.Y(A1_6_), 
	.B(SUMB_7__1_), 
	.A(CARRYB_7__0_));
   AND2X2M U22 (.Y(n16), 
	.B(SUMB_7__6_), 
	.A(CARRYB_7__5_));
   CLKXOR2X2M U23 (.Y(PRODUCT[1]), 
	.B(ab_0__1_), 
	.A(ab_1__0_));
   CLKXOR2X2M U27 (.Y(SUMB_1__1_), 
	.B(ab_0__2_), 
	.A(ab_1__1_));
   CLKXOR2X2M U28 (.Y(SUMB_1__2_), 
	.B(ab_0__3_), 
	.A(ab_1__2_));
   CLKXOR2X2M U29 (.Y(SUMB_1__3_), 
	.B(ab_0__4_), 
	.A(ab_1__3_));
   CLKXOR2X2M U30 (.Y(SUMB_1__4_), 
	.B(ab_0__5_), 
	.A(ab_1__4_));
   CLKXOR2X2M U31 (.Y(SUMB_1__6_), 
	.B(ab_0__7_), 
	.A(ab_1__6_));
   CLKXOR2X2M U32 (.Y(SUMB_1__5_), 
	.B(ab_0__6_), 
	.A(ab_1__5_));
   INVX2M U41 (.Y(n23), 
	.A(B[1]));
   NOR2X1M U47 (.Y(ab_7__7_), 
	.B(n153), 
	.A(n156));
   NOR2X1M U48 (.Y(ab_7__6_), 
	.B(n145), 
	.A(n156));
   NOR2X1M U49 (.Y(ab_7__5_), 
	.B(n154), 
	.A(n156));
   NOR2X1M U50 (.Y(ab_7__4_), 
	.B(n155), 
	.A(n156));
   NOR2X1M U51 (.Y(ab_7__3_), 
	.B(n144), 
	.A(n156));
   NOR2X1M U52 (.Y(ab_7__2_), 
	.B(n142), 
	.A(n156));
   NOR2X1M U53 (.Y(ab_7__1_), 
	.B(n23), 
	.A(n156));
   NOR2X1M U54 (.Y(ab_7__0_), 
	.B(n140), 
	.A(n156));
   NOR2X1M U55 (.Y(ab_6__7_), 
	.B(n157), 
	.A(n153));
   NOR2X1M U56 (.Y(ab_6__6_), 
	.B(n157), 
	.A(n145));
   NOR2X1M U57 (.Y(ab_6__5_), 
	.B(n157), 
	.A(n154));
   NOR2X1M U58 (.Y(ab_6__4_), 
	.B(n157), 
	.A(n155));
   NOR2X1M U59 (.Y(ab_6__3_), 
	.B(n157), 
	.A(n144));
   NOR2X1M U60 (.Y(ab_6__2_), 
	.B(n157), 
	.A(n142));
   NOR2X1M U61 (.Y(ab_6__1_), 
	.B(n157), 
	.A(n23));
   NOR2X1M U62 (.Y(ab_6__0_), 
	.B(n157), 
	.A(n140));
   NOR2X1M U63 (.Y(ab_5__7_), 
	.B(n158), 
	.A(n153));
   NOR2X1M U64 (.Y(ab_5__6_), 
	.B(n158), 
	.A(n145));
   NOR2X1M U65 (.Y(ab_5__5_), 
	.B(n158), 
	.A(n154));
   NOR2X1M U66 (.Y(ab_5__4_), 
	.B(n158), 
	.A(n155));
   NOR2X1M U67 (.Y(ab_5__3_), 
	.B(n158), 
	.A(n144));
   NOR2X1M U68 (.Y(ab_5__2_), 
	.B(n158), 
	.A(n142));
   NOR2X1M U69 (.Y(ab_5__1_), 
	.B(n158), 
	.A(n23));
   NOR2X1M U70 (.Y(ab_5__0_), 
	.B(n158), 
	.A(n140));
   NOR2X1M U71 (.Y(ab_4__7_), 
	.B(n159), 
	.A(n153));
   NOR2X1M U72 (.Y(ab_4__6_), 
	.B(n159), 
	.A(n145));
   NOR2X1M U73 (.Y(ab_4__5_), 
	.B(n159), 
	.A(n154));
   NOR2X1M U74 (.Y(ab_4__4_), 
	.B(n159), 
	.A(n155));
   NOR2X1M U75 (.Y(ab_4__3_), 
	.B(n159), 
	.A(n144));
   NOR2X1M U76 (.Y(ab_4__2_), 
	.B(n159), 
	.A(n142));
   NOR2X1M U77 (.Y(ab_4__1_), 
	.B(n159), 
	.A(n23));
   NOR2X1M U78 (.Y(ab_4__0_), 
	.B(n159), 
	.A(n140));
   NOR2X1M U79 (.Y(ab_3__7_), 
	.B(n160), 
	.A(n153));
   NOR2X1M U80 (.Y(ab_3__6_), 
	.B(n160), 
	.A(n145));
   NOR2X1M U81 (.Y(ab_3__5_), 
	.B(n160), 
	.A(n154));
   NOR2X1M U82 (.Y(ab_3__4_), 
	.B(n160), 
	.A(n155));
   NOR2X1M U83 (.Y(ab_3__3_), 
	.B(n160), 
	.A(n144));
   NOR2X1M U84 (.Y(ab_3__2_), 
	.B(n160), 
	.A(n142));
   NOR2X1M U85 (.Y(ab_3__1_), 
	.B(n160), 
	.A(n23));
   NOR2X1M U86 (.Y(ab_3__0_), 
	.B(n160), 
	.A(n140));
   NOR2X1M U87 (.Y(ab_2__7_), 
	.B(n161), 
	.A(n153));
   NOR2X1M U88 (.Y(ab_2__6_), 
	.B(n161), 
	.A(n145));
   NOR2X1M U89 (.Y(ab_2__5_), 
	.B(n161), 
	.A(n154));
   NOR2X1M U90 (.Y(ab_2__4_), 
	.B(n161), 
	.A(n155));
   NOR2X1M U91 (.Y(ab_2__3_), 
	.B(n161), 
	.A(n144));
   NOR2X1M U92 (.Y(ab_2__2_), 
	.B(n161), 
	.A(n142));
   NOR2X1M U93 (.Y(ab_2__1_), 
	.B(n161), 
	.A(n23));
   NOR2X1M U94 (.Y(ab_2__0_), 
	.B(n161), 
	.A(n140));
   NOR2X1M U95 (.Y(ab_1__7_), 
	.B(n162), 
	.A(n153));
   NOR2X1M U96 (.Y(ab_1__6_), 
	.B(n162), 
	.A(n145));
   NOR2X1M U97 (.Y(ab_1__5_), 
	.B(n162), 
	.A(n154));
   NOR2X1M U98 (.Y(ab_1__4_), 
	.B(n162), 
	.A(n155));
   NOR2X1M U99 (.Y(ab_1__3_), 
	.B(n162), 
	.A(n144));
   NOR2X1M U100 (.Y(ab_1__2_), 
	.B(n162), 
	.A(n142));
   NOR2X1M U101 (.Y(ab_1__1_), 
	.B(n162), 
	.A(n23));
   NOR2X1M U102 (.Y(ab_1__0_), 
	.B(n162), 
	.A(n140));
   NOR2X1M U103 (.Y(ab_0__7_), 
	.B(n163), 
	.A(n153));
   NOR2X1M U104 (.Y(ab_0__6_), 
	.B(n163), 
	.A(n145));
   NOR2X1M U105 (.Y(ab_0__5_), 
	.B(n163), 
	.A(n154));
   NOR2X1M U106 (.Y(ab_0__4_), 
	.B(n163), 
	.A(n155));
   NOR2X1M U107 (.Y(ab_0__3_), 
	.B(n163), 
	.A(n144));
   NOR2X1M U108 (.Y(ab_0__2_), 
	.B(n163), 
	.A(n142));
   NOR2X1M U109 (.Y(ab_0__1_), 
	.B(n163), 
	.A(n23));
   NOR2X1M U110 (.Y(PRODUCT[0]), 
	.B(n163), 
	.A(n140));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_1 FS_1 (.A({ 1'b0,
		A1_12_,
		A1_11_,
		A1_10_,
		A1_9_,
		A1_8_,
		A1_7_,
		A1_6_,
		SUMB_7__0_,
		A1_4_,
		A1_3_,
		A1_2_,
		A1_1_,
		A1_0_ }), 
	.B({ n10,
		n16,
		n15,
		n13,
		n14,
		n12,
		n11,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module ALU_OPER_WIDTH8_OUT_WIDTH16_test_1 (
	CLK, 
	RST, 
	A, 
	B, 
	EN, 
	ALU_FUN, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	FE_OFN2_SYNC_RST_1_mux, 
	GATED_CLK_mux__L4_N1);
   input CLK;
   input RST;
   input [7:0] A;
   input [7:0] B;
   input EN;
   input [3:0] ALU_FUN;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input FE_OFN2_SYNC_RST_1_mux;
   input GATED_CLK_mux__L4_N1;

   // Internal wires
   wire N67;
   wire N68;
   wire N69;
   wire N70;
   wire N71;
   wire N72;
   wire N73;
   wire N74;
   wire N75;
   wire N76;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N84;
   wire N85;
   wire N86;
   wire N87;
   wire N88;
   wire N89;
   wire N90;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N157;
   wire N158;
   wire N159;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n167;
   wire n168;
   wire n169;
   wire SYNOPSYS_UNCONNECTED_1;
   wire SYNOPSYS_UNCONNECTED_2;
   wire SYNOPSYS_UNCONNECTED_3;
   wire SYNOPSYS_UNCONNECTED_4;
   wire SYNOPSYS_UNCONNECTED_5;
   wire SYNOPSYS_UNCONNECTED_6;
   wire SYNOPSYS_UNCONNECTED_7;
   wire SYNOPSYS_UNCONNECTED_8;
   wire [15:0] ALU_OUT_Comb;

   SDFFRQX2M ALU_OUT_reg_15_ (.SI(ALU_OUT[14]), 
	.SE(n168), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[15]), 
	.D(ALU_OUT_Comb[15]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_14_ (.SI(ALU_OUT[13]), 
	.SE(n167), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[14]), 
	.D(ALU_OUT_Comb[14]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_13_ (.SI(ALU_OUT[12]), 
	.SE(n169), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[13]), 
	.D(ALU_OUT_Comb[13]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_12_ (.SI(ALU_OUT[11]), 
	.SE(n168), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[12]), 
	.D(ALU_OUT_Comb[12]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_11_ (.SI(ALU_OUT[10]), 
	.SE(n167), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[11]), 
	.D(ALU_OUT_Comb[11]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_10_ (.SI(ALU_OUT[9]), 
	.SE(n169), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[10]), 
	.D(ALU_OUT_Comb[10]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_9_ (.SI(ALU_OUT[8]), 
	.SE(n168), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[9]), 
	.D(ALU_OUT_Comb[9]), 
	.CK(CLK));
   SDFFRQX2M ALU_OUT_reg_8_ (.SI(ALU_OUT[7]), 
	.SE(n167), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[8]), 
	.D(ALU_OUT_Comb[8]), 
	.CK(GATED_CLK_mux__L4_N1));
   SDFFRHQX1M ALU_OUT_reg_0_ (.SI(test_si), 
	.SE(n169), 
	.RN(RST), 
	.Q(ALU_OUT[0]), 
	.D(ALU_OUT_Comb[0]), 
	.CK(GATED_CLK_mux__L4_N1));
   SDFFRQX2M ALU_OUT_reg_7_ (.SI(ALU_OUT[6]), 
	.SE(n168), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[7]), 
	.D(ALU_OUT_Comb[7]), 
	.CK(GATED_CLK_mux__L4_N1));
   SDFFRQX2M ALU_OUT_reg_6_ (.SI(ALU_OUT[5]), 
	.SE(n167), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_OUT[6]), 
	.D(ALU_OUT_Comb[6]), 
	.CK(GATED_CLK_mux__L4_N1));
   SDFFRQX2M ALU_OUT_reg_5_ (.SI(ALU_OUT[4]), 
	.SE(n169), 
	.RN(RST), 
	.Q(ALU_OUT[5]), 
	.D(ALU_OUT_Comb[5]), 
	.CK(GATED_CLK_mux__L4_N1));
   SDFFRQX2M ALU_OUT_reg_4_ (.SI(ALU_OUT[3]), 
	.SE(n168), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(ALU_OUT_Comb[4]), 
	.CK(GATED_CLK_mux__L4_N1));
   SDFFRQX2M ALU_OUT_reg_3_ (.SI(ALU_OUT[2]), 
	.SE(n167), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(ALU_OUT_Comb[3]), 
	.CK(GATED_CLK_mux__L4_N1));
   SDFFRQX1M ALU_OUT_reg_2_ (.SI(ALU_OUT[1]), 
	.SE(n169), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(ALU_OUT_Comb[2]), 
	.CK(GATED_CLK_mux__L4_N1));
   SDFFRQX1M ALU_OUT_reg_1_ (.SI(ALU_OUT[0]), 
	.SE(n168), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(ALU_OUT_Comb[1]), 
	.CK(GATED_CLK_mux__L4_N1));
   SDFFRQX2M OUT_VALID_reg (.SI(ALU_OUT[15]), 
	.SE(n167), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(OUT_VALID), 
	.D(EN), 
	.CK(CLK));
   NOR3BX2M U25 (.Y(n66), 
	.C(ALU_FUN[2]), 
	.B(n151), 
	.AN(n122));
   INVX2M U29 (.Y(n147), 
	.A(EN));
   AOI31X2M U33 (.Y(ALU_OUT_Comb[0]), 
	.B0(n147), 
	.A2(n112), 
	.A1(n111), 
	.A0(n110));
   AOI22X1M U34 (.Y(n110), 
	.B1(n54), 
	.B0(N67), 
	.A1(n67), 
	.A0(N76));
   AOI211X2M U35 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n163), 
	.A0(n58));
   AOI222X2M U36 (.Y(n111), 
	.C1(n66), 
	.C0(N101), 
	.B1(n59), 
	.B0(A[0]), 
	.A1(n52), 
	.A0(N85));
   AOI31X2M U37 (.Y(ALU_OUT_Comb[1]), 
	.B0(n147), 
	.A2(n100), 
	.A1(n99), 
	.A0(n98));
   AOI222X1M U38 (.Y(n98), 
	.C1(n67), 
	.C0(N77), 
	.B1(n52), 
	.B0(N86), 
	.A1(n54), 
	.A0(N68));
   AOI211X2M U39 (.Y(n100), 
	.C0(n102), 
	.B0(n101), 
	.A1(n149), 
	.A0(A[2]));
   AOI222XLM U40 (.Y(n99), 
	.C1(n59), 
	.C0(A[1]), 
	.B1(n162), 
	.B0(n58), 
	.A1(n66), 
	.A0(N102));
   AOI31X2M U41 (.Y(ALU_OUT_Comb[2]), 
	.B0(n147), 
	.A2(n94), 
	.A1(n93), 
	.A0(n92));
   AOI22X1M U42 (.Y(n92), 
	.B1(n54), 
	.B0(N69), 
	.A1(n67), 
	.A0(N78));
   AOI221XLM U43 (.Y(n94), 
	.C0(n95), 
	.B1(n161), 
	.B0(n58), 
	.A1(n149), 
	.A0(A[3]));
   AOI222XLM U44 (.Y(n93), 
	.C1(n66), 
	.C0(N103), 
	.B1(n59), 
	.B0(A[2]), 
	.A1(n52), 
	.A0(N87));
   AOI31X2M U45 (.Y(ALU_OUT_Comb[3]), 
	.B0(n147), 
	.A2(n88), 
	.A1(n87), 
	.A0(n86));
   AOI22X1M U46 (.Y(n86), 
	.B1(n54), 
	.B0(N70), 
	.A1(n67), 
	.A0(N79));
   AOI221XLM U47 (.Y(n88), 
	.C0(n89), 
	.B1(n160), 
	.B0(n58), 
	.A1(n149), 
	.A0(A[4]));
   AOI222XLM U48 (.Y(n87), 
	.C1(n66), 
	.C0(N104), 
	.B1(n59), 
	.B0(A[3]), 
	.A1(n52), 
	.A0(N88));
   AOI31X2M U49 (.Y(ALU_OUT_Comb[4]), 
	.B0(n147), 
	.A2(n82), 
	.A1(n81), 
	.A0(n80));
   AOI22X1M U50 (.Y(n80), 
	.B1(n54), 
	.B0(N71), 
	.A1(n67), 
	.A0(N80));
   AOI221XLM U51 (.Y(n82), 
	.C0(n83), 
	.B1(n159), 
	.B0(n58), 
	.A1(A[5]), 
	.A0(n149));
   AOI222XLM U52 (.Y(n81), 
	.C1(n66), 
	.C0(N105), 
	.B1(n59), 
	.B0(A[4]), 
	.A1(n52), 
	.A0(N89));
   OAI2BB1X2M U53 (.Y(ALU_OUT_Comb[14]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N99));
   OAI2BB1X2M U54 (.Y(ALU_OUT_Comb[15]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N100));
   OAI2BB1X2M U55 (.Y(ALU_OUT_Comb[13]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N98));
   AOI31X2M U56 (.Y(ALU_OUT_Comb[5]), 
	.B0(n147), 
	.A2(n76), 
	.A1(n75), 
	.A0(n74));
   AOI221XLM U57 (.Y(n76), 
	.C0(n77), 
	.B1(n158), 
	.B0(n58), 
	.A1(A[6]), 
	.A0(n149));
   AOI22X1M U58 (.Y(n74), 
	.B1(n54), 
	.B0(N72), 
	.A1(n67), 
	.A0(N81));
   AOI222XLM U59 (.Y(n75), 
	.C1(n66), 
	.C0(N106), 
	.B1(n59), 
	.B0(A[5]), 
	.A1(n52), 
	.A0(N90));
   OAI2BB1X2M U60 (.Y(ALU_OUT_Comb[10]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N95));
   OAI2BB1X2M U61 (.Y(ALU_OUT_Comb[11]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N96));
   OAI2BB1X2M U62 (.Y(ALU_OUT_Comb[12]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N97));
   INVX2M U63 (.Y(n145), 
	.A(B[6]));
   AOI31X2M U64 (.Y(ALU_OUT_Comb[6]), 
	.B0(n147), 
	.A2(n70), 
	.A1(n69), 
	.A0(n68));
   AOI221XLM U65 (.Y(n70), 
	.C0(n71), 
	.B1(n157), 
	.B0(n58), 
	.A1(A[7]), 
	.A0(n149));
   AOI22X1M U66 (.Y(n68), 
	.B1(n54), 
	.B0(N73), 
	.A1(n67), 
	.A0(N82));
   AOI222XLM U67 (.Y(n69), 
	.C1(n66), 
	.C0(N107), 
	.B1(A[6]), 
	.B0(n59), 
	.A1(n52), 
	.A0(N91));
   AOI31X2M U68 (.Y(ALU_OUT_Comb[7]), 
	.B0(n147), 
	.A2(n57), 
	.A1(n56), 
	.A0(n55));
   AOI221XLM U69 (.Y(n57), 
	.C0(n60), 
	.B1(A[7]), 
	.B0(n59), 
	.A1(n156), 
	.A0(n58));
   AOI22X1M U70 (.Y(n55), 
	.B1(n54), 
	.B0(N74), 
	.A1(n67), 
	.A0(N83));
   AOI22XLM U71 (.Y(n56), 
	.B1(n52), 
	.B0(N92), 
	.A1(n66), 
	.A0(N108));
   AOI21X2M U72 (.Y(ALU_OUT_Comb[8]), 
	.B0(n147), 
	.A1(n51), 
	.A0(n50));
   AOI21X2M U73 (.Y(n50), 
	.B0(n146), 
	.A1(n54), 
	.A0(N75));
   AOI2BB2XLM U74 (.Y(n51), 
	.B1(n52), 
	.B0(N93), 
	.A1N(n53), 
	.A0N(n156));
   OAI2BB1X2M U75 (.Y(ALU_OUT_Comb[9]), 
	.B0(n49), 
	.A1N(n48), 
	.A0N(N94));
   AND4X2M U76 (.Y(n107), 
	.D(n152), 
	.C(ALU_FUN[3]), 
	.B(n116), 
	.A(N159));
   INVX2M U77 (.Y(n146), 
	.A(n109));
   AOI211X2M U78 (.Y(n109), 
	.C0(n64), 
	.B0(n58), 
	.A1(n67), 
	.A0(N84));
   OAI2BB1X2M U79 (.Y(n65), 
	.B0(n118), 
	.A1N(n116), 
	.A0N(n117));
   OAI222X1M U80 (.Y(n71), 
	.C1(n158), 
	.C0(n53), 
	.B1(n73), 
	.B0(B[6]), 
	.A1(n145), 
	.A0(n72));
   AOI221XLM U81 (.Y(n73), 
	.C0(n58), 
	.B1(n157), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[6]));
   AOI221XLM U82 (.Y(n72), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[6]), 
	.A1(n157), 
	.A0(n63));
   NOR2X2M U83 (.Y(n122), 
	.B(ALU_FUN[3]), 
	.A(n152));
   OAI2BB1X2M U84 (.Y(n64), 
	.B0(n118), 
	.A1N(n122), 
	.A0N(n150));
   NAND3X2M U85 (.Y(n53), 
	.C(ALU_FUN[3]), 
	.B(n152), 
	.A(n150));
   NOR2BX2M U86 (.Y(n48), 
	.B(n147), 
	.AN(n52));
   AND2X2M U87 (.Y(n59), 
	.B(n122), 
	.A(n116));
   INVX2M U88 (.Y(n149), 
	.A(n108));
   INVX2M U89 (.Y(n148), 
	.A(n117));
   INVX2M U90 (.Y(n162), 
	.A(A[1]));
   AND2X2M U91 (.Y(n67), 
	.B(n122), 
	.A(n123));
   INVX2M U92 (.Y(n163), 
	.A(A[0]));
   NOR2X2M U94 (.Y(n58), 
	.B(n148), 
	.A(n124));
   INVX2M U95 (.Y(n156), 
	.A(A[7]));
   INVX2M U96 (.Y(n157), 
	.A(A[6]));
   INVX2M U97 (.Y(n161), 
	.A(A[2]));
   INVX2M U98 (.Y(n160), 
	.A(A[3]));
   INVX2M U99 (.Y(n158), 
	.A(A[5]));
   INVX2M U100 (.Y(n159), 
	.A(A[4]));
   INVX2M U101 (.Y(n150), 
	.A(n124));
   AND3X2M U102 (.Y(n63), 
	.C(ALU_FUN[3]), 
	.B(n152), 
	.A(n123));
   NOR2BX2M U103 (.Y(n54), 
	.B(n148), 
	.AN(n123));
   INVX2M U111 (.Y(n141), 
	.A(n37));
   INVX2M U112 (.Y(n143), 
	.A(n125));
   OAI21X2M U113 (.Y(n113), 
	.B0(n120), 
	.A1(n119), 
	.A0(B[0]));
   AOI221XLM U114 (.Y(n119), 
	.C0(n58), 
	.B1(n163), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[0]));
   AOI31X2M U115 (.Y(n120), 
	.B0(n107), 
	.A2(n121), 
	.A1(ALU_FUN[3]), 
	.A0(N157));
   NOR3X2M U116 (.Y(n121), 
	.C(ALU_FUN[0]), 
	.B(ALU_FUN[2]), 
	.A(n151));
   OAI21X2M U117 (.Y(n101), 
	.B0(n105), 
	.A1(n104), 
	.A0(B[1]));
   AOI221XLM U118 (.Y(n104), 
	.C0(n58), 
	.B1(n162), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[1]));
   AOI31X2M U119 (.Y(n105), 
	.B0(n107), 
	.A2(n106), 
	.A1(ALU_FUN[3]), 
	.A0(N158));
   NOR3X2M U120 (.Y(n106), 
	.C(n151), 
	.B(ALU_FUN[2]), 
	.A(n152));
   INVX2M U121 (.Y(n140), 
	.A(B[0]));
   INVX2M U122 (.Y(n142), 
	.A(B[2]));
   NAND2X2M U123 (.Y(n49), 
	.B(n146), 
	.A(EN));
   INVX2M U124 (.Y(n144), 
	.A(B[3]));
   OAI222X1M U125 (.Y(n60), 
	.C1(n157), 
	.C0(n53), 
	.B1(n62), 
	.B0(B[7]), 
	.A1(n153), 
	.A0(n61));
   INVX2M U126 (.Y(n153), 
	.A(B[7]));
   AOI221XLM U127 (.Y(n62), 
	.C0(n58), 
	.B1(n156), 
	.B0(n64), 
	.A1(A[7]), 
	.A0(n63));
   AOI221XLM U128 (.Y(n61), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[7]), 
	.A1(n156), 
	.A0(n63));
   OAI222X1M U129 (.Y(n83), 
	.C1(n160), 
	.C0(n53), 
	.B1(n85), 
	.B0(B[4]), 
	.A1(n155), 
	.A0(n84));
   INVX2M U130 (.Y(n155), 
	.A(B[4]));
   AOI221XLM U131 (.Y(n85), 
	.C0(n58), 
	.B1(n159), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[4]));
   AOI221XLM U132 (.Y(n84), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[4]), 
	.A1(n159), 
	.A0(n63));
   OAI222X1M U133 (.Y(n77), 
	.C1(n159), 
	.C0(n53), 
	.B1(n79), 
	.B0(B[5]), 
	.A1(n154), 
	.A0(n78));
   INVX2M U134 (.Y(n154), 
	.A(B[5]));
   AOI221XLM U135 (.Y(n79), 
	.C0(n58), 
	.B1(n158), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[5]));
   AOI221XLM U136 (.Y(n78), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[5]), 
	.A1(n158), 
	.A0(n63));
   OAI222X1M U137 (.Y(n95), 
	.C1(n162), 
	.C0(n53), 
	.B1(n97), 
	.B0(B[2]), 
	.A1(n142), 
	.A0(n96));
   AOI221XLM U138 (.Y(n97), 
	.C0(n58), 
	.B1(n161), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[2]));
   AOI221XLM U139 (.Y(n96), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[2]), 
	.A1(n161), 
	.A0(n63));
   OAI222X1M U140 (.Y(n89), 
	.C1(n161), 
	.C0(n53), 
	.B1(n91), 
	.B0(B[3]), 
	.A1(n144), 
	.A0(n90));
   AOI221XLM U141 (.Y(n91), 
	.C0(n58), 
	.B1(n160), 
	.B0(n64), 
	.A1(n63), 
	.A0(A[3]));
   AOI221XLM U142 (.Y(n90), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[3]), 
	.A1(n160), 
	.A0(n63));
   NOR2X2M U143 (.Y(n123), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   OAI2B2X1M U144 (.Y(n102), 
	.B1(n163), 
	.B0(n53), 
	.A1N(B[1]), 
	.A0(n103));
   AOI221XLM U145 (.Y(n103), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[1]), 
	.A1(n162), 
	.A0(n63));
   OAI2B2X1M U146 (.Y(n114), 
	.B1(n162), 
	.B0(n108), 
	.A1N(B[0]), 
	.A0(n115));
   AOI221XLM U147 (.Y(n115), 
	.C0(n59), 
	.B1(n65), 
	.B0(A[0]), 
	.A1(n163), 
	.A0(n63));
   INVX2M U148 (.Y(n151), 
	.A(ALU_FUN[1]));
   INVX2M U149 (.Y(n152), 
	.A(ALU_FUN[0]));
   NAND3X2M U150 (.Y(n118), 
	.C(ALU_FUN[3]), 
	.B(ALU_FUN[0]), 
	.A(n123));
   AND2X2M U151 (.Y(n116), 
	.B(n151), 
	.A(ALU_FUN[2]));
   NAND2X2M U152 (.Y(n124), 
	.B(ALU_FUN[1]), 
	.A(ALU_FUN[2]));
   NOR3X2M U153 (.Y(n52), 
	.C(n151), 
	.B(ALU_FUN[2]), 
	.A(n148));
   NAND3X2M U154 (.Y(n108), 
	.C(n116), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NOR2X2M U155 (.Y(n117), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[3]));
   NOR2X1M U156 (.Y(n136), 
	.B(B[7]), 
	.A(n156));
   NAND2BX1M U157 (.Y(n129), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U158 (.Y(n41), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U159 (.Y(n131), 
	.B(n41), 
	.A(n129));
   NOR2X1M U160 (.Y(n126), 
	.B(A[3]), 
	.A(n144));
   NOR2X1M U161 (.Y(n40), 
	.B(A[2]), 
	.A(n142));
   NOR2X1M U162 (.Y(n37), 
	.B(A[0]), 
	.A(n140));
   CLKNAND2X2M U163 (.Y(n128), 
	.B(n142), 
	.A(A[2]));
   NAND2BX1M U164 (.Y(n46), 
	.B(n128), 
	.AN(n40));
   AOI21X1M U165 (.Y(n38), 
	.B0(B[1]), 
	.A1(n162), 
	.A0(n37));
   AOI211X1M U166 (.Y(n39), 
	.C0(n38), 
	.B0(n46), 
	.A1(n141), 
	.A0(A[1]));
   CLKNAND2X2M U167 (.Y(n127), 
	.B(n144), 
	.A(A[3]));
   OAI31X1M U168 (.Y(n42), 
	.B0(n127), 
	.A2(n39), 
	.A1(n40), 
	.A0(n126));
   NAND2BX1M U169 (.Y(n134), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U170 (.Y(n43), 
	.C0(n134), 
	.B0(n41), 
	.A1(n42), 
	.A0(n131));
   NAND2BX1M U171 (.Y(n130), 
	.B(A[5]), 
	.AN(B[5]));
   XNOR2X1M U172 (.Y(n133), 
	.B(B[6]), 
	.A(A[6]));
   AOI32X1M U173 (.Y(n44), 
	.B1(n157), 
	.B0(B[6]), 
	.A2(n133), 
	.A1(n130), 
	.A0(n43));
   CLKNAND2X2M U174 (.Y(n137), 
	.B(n156), 
	.A(B[7]));
   OAI21X1M U175 (.Y(N159), 
	.B0(n137), 
	.A1(n44), 
	.A0(n136));
   CLKNAND2X2M U176 (.Y(n47), 
	.B(n140), 
	.A(A[0]));
   OA21X1M U177 (.Y(n45), 
	.B0(B[1]), 
	.A1(n162), 
	.A0(n47));
   AOI211X1M U178 (.Y(n125), 
	.C0(n45), 
	.B0(n46), 
	.A1(n162), 
	.A0(n47));
   AOI31X1M U179 (.Y(n132), 
	.B0(n126), 
	.A2(n127), 
	.A1(n128), 
	.A0(n143));
   OAI2B11X1M U180 (.Y(n135), 
	.C0(n129), 
	.B0(n130), 
	.A1N(n132), 
	.A0(n131));
   AOI32X1M U181 (.Y(n138), 
	.B1(n145), 
	.B0(A[6]), 
	.A2(n133), 
	.A1(n134), 
	.A0(n135));
   AOI2B1X1M U182 (.Y(n139), 
	.B0(n136), 
	.A1N(n138), 
	.A0(n137));
   CLKINVX1M U183 (.Y(N158), 
	.A(n139));
   NOR2X1M U184 (.Y(N157), 
	.B(N158), 
	.A(N159));
   DLY1X1M U186 (.Y(n167), 
	.A(test_se));
   DLY1X1M U187 (.Y(n168), 
	.A(n169));
   DLY1X1M U188 (.Y(n169), 
	.A(test_se));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW_div_uns_0 div_46 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101 }), 
	.remainder({ SYNOPSYS_UNCONNECTED_1,
		SYNOPSYS_UNCONNECTED_2,
		SYNOPSYS_UNCONNECTED_3,
		SYNOPSYS_UNCONNECTED_4,
		SYNOPSYS_UNCONNECTED_5,
		SYNOPSYS_UNCONNECTED_6,
		SYNOPSYS_UNCONNECTED_7,
		SYNOPSYS_UNCONNECTED_8 }), 
	.n153(n153), 
	.n145(n145), 
	.n163(n163), 
	.n162(n162), 
	.n154(n154), 
	.n156(n156), 
	.n158(n158), 
	.n159(n159), 
	.n160(n160), 
	.n161(n161));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_sub_0 sub_40 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N84,
		N83,
		N82,
		N81,
		N80,
		N79,
		N78,
		N77,
		N76 }), 
	.n153(n153), 
	.n155(n155), 
	.n154(n154), 
	.n144(n144), 
	.n140(n140), 
	.n142(n142), 
	.n145(n145), 
	.n163(n163));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW01_add_0 add_37 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N75,
		N74,
		N73,
		N72,
		N71,
		N70,
		N69,
		N68,
		N67 }));
   ALU_OPER_WIDTH8_OUT_WIDTH16_DW02_mult_0 mult_43 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N100,
		N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91,
		N90,
		N89,
		N88,
		N87,
		N86,
		N85 }), 
	.n144(n144), 
	.n140(n140), 
	.n142(n142), 
	.n145(n145), 
	.n156(n156), 
	.n157(n157), 
	.n158(n158), 
	.n159(n159), 
	.n160(n160), 
	.n161(n161), 
	.n163(n163), 
	.n162(n162), 
	.n153(n153), 
	.n155(n155), 
	.n154(n154));
endmodule

module reg_file_MEM_WIDTH8_MEM_DEPTH16_ADDR_WIDTH4_test_1 (
	WrEn, 
	RdEn, 
	CLK, 
	RST, 
	Address, 
	WrData, 
	RdData, 
	RdData_valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_SYNC_RST_1_mux, 
	REF_CLK_mux__L9_N10, 
	REF_CLK_mux__L9_N11, 
	REF_CLK_mux__L9_N12, 
	REF_CLK_mux__L9_N13, 
	REF_CLK_mux__L9_N14, 
	REF_CLK_mux__L9_N15, 
	REF_CLK_mux__L9_N5, 
	REF_CLK_mux__L9_N8, 
	REF_CLK_mux__L9_N9);
   input WrEn;
   input RdEn;
   input CLK;
   input RST;
   input [3:0] Address;
   input [7:0] WrData;
   output [7:0] RdData;
   output RdData_valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_SYNC_RST_1_mux;
   input REF_CLK_mux__L9_N10;
   input REF_CLK_mux__L9_N11;
   input REF_CLK_mux__L9_N12;
   input REF_CLK_mux__L9_N13;
   input REF_CLK_mux__L9_N14;
   input REF_CLK_mux__L9_N15;
   input REF_CLK_mux__L9_N5;
   input REF_CLK_mux__L9_N8;
   input REF_CLK_mux__L9_N9;

   // Internal wires
   wire FE_OFN15_REG0_2_;
   wire FE_OFN14_REG0_3_;
   wire FE_OFN13_REG0_4_;
   wire FE_OFN12_REG0_5_;
   wire FE_OFN11_REG0_6_;
   wire FE_OFN10_REG0_7_;
   wire FE_OFN9_REG1_7_;
   wire FE_OFN7_n400;
   wire FE_OFN6_n398;
   wire FE_OFN3_SYNC_RST_1_mux;
   wire mem_15__6_;
   wire mem_15__5_;
   wire mem_15__4_;
   wire mem_15__3_;
   wire mem_15__2_;
   wire mem_15__1_;
   wire mem_15__0_;
   wire mem_14__7_;
   wire mem_14__6_;
   wire mem_14__5_;
   wire mem_14__4_;
   wire mem_14__3_;
   wire mem_14__2_;
   wire mem_14__1_;
   wire mem_14__0_;
   wire mem_13__7_;
   wire mem_13__6_;
   wire mem_13__5_;
   wire mem_13__4_;
   wire mem_13__3_;
   wire mem_13__2_;
   wire mem_13__1_;
   wire mem_13__0_;
   wire mem_12__7_;
   wire mem_12__6_;
   wire mem_12__5_;
   wire mem_12__4_;
   wire mem_12__3_;
   wire mem_12__2_;
   wire mem_12__1_;
   wire mem_12__0_;
   wire mem_11__7_;
   wire mem_11__6_;
   wire mem_11__5_;
   wire mem_11__4_;
   wire mem_11__3_;
   wire mem_11__2_;
   wire mem_11__1_;
   wire mem_11__0_;
   wire mem_10__7_;
   wire mem_10__6_;
   wire mem_10__5_;
   wire mem_10__4_;
   wire mem_10__3_;
   wire mem_10__2_;
   wire mem_10__1_;
   wire mem_10__0_;
   wire mem_9__7_;
   wire mem_9__6_;
   wire mem_9__5_;
   wire mem_9__4_;
   wire mem_9__3_;
   wire mem_9__2_;
   wire mem_9__1_;
   wire mem_9__0_;
   wire mem_8__7_;
   wire mem_8__6_;
   wire mem_8__5_;
   wire mem_8__4_;
   wire mem_8__3_;
   wire mem_8__2_;
   wire mem_8__1_;
   wire mem_8__0_;
   wire mem_7__7_;
   wire mem_7__6_;
   wire mem_7__5_;
   wire mem_7__4_;
   wire mem_7__3_;
   wire mem_7__2_;
   wire mem_7__1_;
   wire mem_7__0_;
   wire mem_6__7_;
   wire mem_6__6_;
   wire mem_6__5_;
   wire mem_6__4_;
   wire mem_6__3_;
   wire mem_6__2_;
   wire mem_6__1_;
   wire mem_6__0_;
   wire mem_5__7_;
   wire mem_5__6_;
   wire mem_5__5_;
   wire mem_5__4_;
   wire mem_5__3_;
   wire mem_5__2_;
   wire mem_5__1_;
   wire mem_5__0_;
   wire mem_4__7_;
   wire mem_4__6_;
   wire mem_4__5_;
   wire mem_4__4_;
   wire mem_4__3_;
   wire mem_4__2_;
   wire mem_4__1_;
   wire mem_4__0_;
   wire N35;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n411;
   wire n455;
   wire n456;
   wire n457;
   wire n458;
   wire n459;
   wire n460;
   wire n461;
   wire n462;
   wire n463;
   wire n464;
   wire n468;
   wire n469;
   wire n470;
   wire n471;
   wire n472;
   wire n473;
   wire n474;
   wire n475;
   wire n476;
   wire n477;
   wire n478;
   wire n479;
   wire n480;
   wire n481;
   wire n482;
   wire n483;
   wire n484;
   wire n485;
   wire n486;
   wire n487;
   wire n488;
   wire n489;
   wire n490;
   wire n491;
   wire n492;
   wire n1;

   CLKBUFX2M FE_OFC15_REG0_2_ (.Y(REG0[2]), 
	.A(FE_OFN15_REG0_2_));
   CLKBUFX2M FE_OFC14_REG0_3_ (.Y(REG0[3]), 
	.A(FE_OFN14_REG0_3_));
   CLKBUFX2M FE_OFC13_REG0_4_ (.Y(REG0[4]), 
	.A(FE_OFN13_REG0_4_));
   CLKBUFX2M FE_OFC12_REG0_5_ (.Y(REG0[5]), 
	.A(FE_OFN12_REG0_5_));
   CLKBUFX6M FE_OFC11_REG0_6_ (.Y(REG0[6]), 
	.A(FE_OFN11_REG0_6_));
   BUFX4M FE_OFC10_REG0_7_ (.Y(REG0[7]), 
	.A(FE_OFN10_REG0_7_));
   BUFX4M FE_OFC9_REG1_7_ (.Y(REG1[7]), 
	.A(FE_OFN9_REG1_7_));
   BUFX2M FE_OFC7_n400 (.Y(FE_OFN7_n400), 
	.A(n400));
   BUFX2M FE_OFC6_n398 (.Y(FE_OFN6_n398), 
	.A(n398));
   BUFX8M FE_OFC3_SYNC_RST_1_mux (.Y(FE_OFN3_SYNC_RST_1_mux), 
	.A(FE_OFN0_SYNC_RST_1_mux));
   SDFFRQX2M RdData_reg_7_ (.SI(RdData[6]), 
	.SE(n481), 
	.RN(RST), 
	.Q(RdData[7]), 
	.D(n186), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M RdData_reg_6_ (.SI(RdData[5]), 
	.SE(n481), 
	.RN(RST), 
	.Q(RdData[6]), 
	.D(n185), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M RdData_reg_5_ (.SI(RdData[4]), 
	.SE(n491), 
	.RN(RST), 
	.Q(RdData[5]), 
	.D(n184), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M RdData_reg_4_ (.SI(RdData[3]), 
	.SE(n482), 
	.RN(RST), 
	.Q(RdData[4]), 
	.D(n183), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M RdData_reg_3_ (.SI(RdData[2]), 
	.SE(n483), 
	.RN(RST), 
	.Q(RdData[3]), 
	.D(n182), 
	.CK(CLK));
   SDFFRQX2M RdData_reg_2_ (.SI(RdData[1]), 
	.SE(n489), 
	.RN(RST), 
	.Q(RdData[2]), 
	.D(n181), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M RdData_reg_1_ (.SI(RdData[0]), 
	.SE(n490), 
	.RN(RST), 
	.Q(RdData[1]), 
	.D(n180), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M RdData_reg_0_ (.SI(test_si1), 
	.SE(n482), 
	.RN(RST), 
	.Q(RdData[0]), 
	.D(n179), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M RdData_valid_reg (.SI(RdData[7]), 
	.SE(n483), 
	.RN(RST), 
	.Q(RdData_valid), 
	.D(n178), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_15__7_ (.SI(mem_15__6_), 
	.SE(n484), 
	.RN(RST), 
	.Q(test_so2), 
	.D(n314), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_15__6_ (.SI(mem_15__5_), 
	.SE(n485), 
	.RN(RST), 
	.Q(mem_15__6_), 
	.D(n313), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_15__5_ (.SI(mem_15__4_), 
	.SE(n486), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_15__5_), 
	.D(n312), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_15__4_ (.SI(mem_15__3_), 
	.SE(n480), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_15__4_), 
	.D(n311), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_15__3_ (.SI(mem_15__2_), 
	.SE(n491), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_15__3_), 
	.D(n310), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_15__2_ (.SI(mem_15__1_), 
	.SE(n484), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_15__2_), 
	.D(n309), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_15__1_ (.SI(mem_15__0_), 
	.SE(n485), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_15__1_), 
	.D(n308), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_15__0_ (.SI(mem_14__7_), 
	.SE(n486), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_15__0_), 
	.D(n307), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_13__7_ (.SI(mem_13__6_), 
	.SE(n489), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_13__7_), 
	.D(n298), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_13__6_ (.SI(mem_13__5_), 
	.SE(n490), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_13__6_), 
	.D(n297), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_13__5_ (.SI(mem_13__4_), 
	.SE(n479), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_13__5_), 
	.D(n296), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_13__4_ (.SI(mem_13__3_), 
	.SE(n479), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_13__4_), 
	.D(n295), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_13__3_ (.SI(mem_13__2_), 
	.SE(n479), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_13__3_), 
	.D(n294), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_13__2_ (.SI(mem_13__1_), 
	.SE(n479), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_13__2_), 
	.D(n293), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_13__1_ (.SI(mem_13__0_), 
	.SE(n479), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_13__1_), 
	.D(n292), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_13__0_ (.SI(mem_12__7_), 
	.SE(n487), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_13__0_), 
	.D(n291), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_11__7_ (.SI(mem_11__6_), 
	.SE(n488), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_11__7_), 
	.D(n282), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_11__6_ (.SI(mem_11__5_), 
	.SE(n492), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_11__6_), 
	.D(n281), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_11__5_ (.SI(mem_11__4_), 
	.SE(n479), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_11__5_), 
	.D(n280), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_11__4_ (.SI(mem_11__3_), 
	.SE(n491), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_11__4_), 
	.D(n279), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_11__3_ (.SI(mem_11__2_), 
	.SE(n489), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_11__3_), 
	.D(n278), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_11__2_ (.SI(mem_11__1_), 
	.SE(n490), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_11__2_), 
	.D(n277), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_11__1_ (.SI(mem_11__0_), 
	.SE(n480), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_11__1_), 
	.D(n276), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_11__0_ (.SI(mem_10__7_), 
	.SE(n482), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_11__0_), 
	.D(n275), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_9__7_ (.SI(mem_9__6_), 
	.SE(n483), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_9__7_), 
	.D(n266), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_9__6_ (.SI(mem_9__5_), 
	.SE(n484), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_9__6_), 
	.D(n265), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_9__5_ (.SI(mem_9__4_), 
	.SE(n485), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_9__5_), 
	.D(n264), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_9__4_ (.SI(mem_9__3_), 
	.SE(n486), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_9__4_), 
	.D(n263), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_9__3_ (.SI(mem_9__2_), 
	.SE(n487), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_9__3_), 
	.D(n262), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_9__2_ (.SI(mem_9__1_), 
	.SE(n488), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_9__2_), 
	.D(n261), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_9__1_ (.SI(mem_9__0_), 
	.SE(n492), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_9__1_), 
	.D(n260), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_9__0_ (.SI(mem_8__7_), 
	.SE(n480), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_9__0_), 
	.D(n259), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_7__7_ (.SI(mem_7__6_), 
	.SE(n491), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_7__7_), 
	.D(n250), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_7__6_ (.SI(mem_7__5_), 
	.SE(n482), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_7__6_), 
	.D(n249), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_7__5_ (.SI(mem_7__4_), 
	.SE(n483), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_7__5_), 
	.D(n248), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_7__4_ (.SI(mem_7__3_), 
	.SE(n484), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_7__4_), 
	.D(n247), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_7__3_ (.SI(mem_7__2_), 
	.SE(n485), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_7__3_), 
	.D(n246), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_7__2_ (.SI(mem_7__1_), 
	.SE(n486), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_7__2_), 
	.D(n245), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_7__1_ (.SI(mem_7__0_), 
	.SE(n489), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_7__1_), 
	.D(n244), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_7__0_ (.SI(mem_6__7_), 
	.SE(n490), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_7__0_), 
	.D(n243), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_5__7_ (.SI(mem_5__6_), 
	.SE(n487), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_5__7_), 
	.D(n234), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_5__6_ (.SI(mem_5__5_), 
	.SE(n488), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_5__6_), 
	.D(n233), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_5__5_ (.SI(mem_5__4_), 
	.SE(n492), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_5__5_), 
	.D(n232), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_5__4_ (.SI(mem_5__3_), 
	.SE(n491), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_5__4_), 
	.D(n231), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_5__3_ (.SI(mem_5__2_), 
	.SE(n489), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_5__3_), 
	.D(n230), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_5__2_ (.SI(mem_5__1_), 
	.SE(n490), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_5__2_), 
	.D(n229), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_5__1_ (.SI(mem_5__0_), 
	.SE(n480), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_5__1_), 
	.D(n228), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_5__0_ (.SI(mem_4__7_), 
	.SE(n482), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_5__0_), 
	.D(n227), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_14__7_ (.SI(mem_14__6_), 
	.SE(n483), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_14__7_), 
	.D(n306), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_14__6_ (.SI(mem_14__5_), 
	.SE(n484), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_14__6_), 
	.D(n305), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_14__5_ (.SI(mem_14__4_), 
	.SE(n485), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_14__5_), 
	.D(n304), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_14__4_ (.SI(mem_14__3_), 
	.SE(n486), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_14__4_), 
	.D(n303), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_14__3_ (.SI(mem_14__2_), 
	.SE(n487), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_14__3_), 
	.D(n302), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_14__2_ (.SI(mem_14__1_), 
	.SE(n488), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_14__2_), 
	.D(n301), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_14__1_ (.SI(mem_14__0_), 
	.SE(n492), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_14__1_), 
	.D(n300), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_14__0_ (.SI(mem_13__7_), 
	.SE(n491), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_14__0_), 
	.D(n299), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_12__7_ (.SI(mem_12__6_), 
	.SE(n489), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_12__7_), 
	.D(n290), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_12__6_ (.SI(mem_12__5_), 
	.SE(n490), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_12__6_), 
	.D(n289), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_12__5_ (.SI(mem_12__4_), 
	.SE(n480), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_12__5_), 
	.D(n288), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_12__4_ (.SI(mem_12__3_), 
	.SE(n482), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_12__4_), 
	.D(n287), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_12__3_ (.SI(mem_12__2_), 
	.SE(n483), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_12__3_), 
	.D(n286), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_12__2_ (.SI(mem_12__1_), 
	.SE(n484), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_12__2_), 
	.D(n285), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_12__1_ (.SI(mem_12__0_), 
	.SE(n485), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_12__1_), 
	.D(n284), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_12__0_ (.SI(mem_11__7_), 
	.SE(n486), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_12__0_), 
	.D(n283), 
	.CK(REF_CLK_mux__L9_N9));
   SDFFRQX2M mem_reg_10__7_ (.SI(mem_10__6_), 
	.SE(n487), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_10__7_), 
	.D(n274), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_10__6_ (.SI(mem_10__5_), 
	.SE(n488), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_10__6_), 
	.D(n273), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_10__5_ (.SI(mem_10__4_), 
	.SE(n492), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_10__5_), 
	.D(n272), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_10__4_ (.SI(mem_10__3_), 
	.SE(n491), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_10__4_), 
	.D(n271), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_10__3_ (.SI(mem_10__2_), 
	.SE(n482), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_10__3_), 
	.D(n270), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_10__2_ (.SI(mem_10__1_), 
	.SE(n483), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_10__2_), 
	.D(n269), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_10__1_ (.SI(mem_10__0_), 
	.SE(n484), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_10__1_), 
	.D(n268), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_10__0_ (.SI(mem_9__7_), 
	.SE(n485), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_10__0_), 
	.D(n267), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_8__7_ (.SI(mem_8__6_), 
	.SE(n486), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_8__7_), 
	.D(n258), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_8__6_ (.SI(mem_8__5_), 
	.SE(n489), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_8__6_), 
	.D(n257), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_8__5_ (.SI(mem_8__4_), 
	.SE(n490), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_8__5_), 
	.D(n256), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_8__4_ (.SI(mem_8__3_), 
	.SE(n480), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_8__4_), 
	.D(n255), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_8__3_ (.SI(test_si2), 
	.SE(n477), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(mem_8__3_), 
	.D(n254), 
	.CK(REF_CLK_mux__L9_N13));
   SDFFRQX2M mem_reg_8__1_ (.SI(mem_8__0_), 
	.SE(n473), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_8__1_), 
	.D(n252), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_8__0_ (.SI(mem_7__7_), 
	.SE(n474), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_8__0_), 
	.D(n251), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_6__7_ (.SI(mem_6__6_), 
	.SE(n472), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_6__7_), 
	.D(n242), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_6__6_ (.SI(mem_6__5_), 
	.SE(n472), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_6__6_), 
	.D(n241), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_6__5_ (.SI(mem_6__4_), 
	.SE(n475), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_6__5_), 
	.D(n240), 
	.CK(REF_CLK_mux__L9_N12));
   SDFFRQX2M mem_reg_6__4_ (.SI(mem_6__3_), 
	.SE(n476), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_6__4_), 
	.D(n239), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_6__3_ (.SI(mem_6__2_), 
	.SE(n468), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_6__3_), 
	.D(n238), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_6__2_ (.SI(mem_6__1_), 
	.SE(n477), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_6__2_), 
	.D(n237), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_6__1_ (.SI(mem_6__0_), 
	.SE(n468), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_6__1_), 
	.D(n236), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_6__0_ (.SI(mem_5__7_), 
	.SE(n472), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_6__0_), 
	.D(n235), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_4__7_ (.SI(mem_4__6_), 
	.SE(n473), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_4__7_), 
	.D(n226), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_4__6_ (.SI(mem_4__5_), 
	.SE(n476), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_4__6_), 
	.D(n225), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_4__5_ (.SI(mem_4__4_), 
	.SE(n474), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_4__5_), 
	.D(n224), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_4__4_ (.SI(mem_4__3_), 
	.SE(n473), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_4__4_), 
	.D(n223), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_4__3_ (.SI(mem_4__2_), 
	.SE(n475), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_4__3_), 
	.D(n222), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_4__2_ (.SI(mem_4__1_), 
	.SE(n473), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_4__2_), 
	.D(n221), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_4__1_ (.SI(mem_4__0_), 
	.SE(n477), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_4__1_), 
	.D(n220), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFRQX2M mem_reg_4__0_ (.SI(REG3[7]), 
	.SE(n474), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_4__0_), 
	.D(n219), 
	.CK(REF_CLK_mux__L9_N14));
   SDFFSQX2M mem_reg_2__0_ (.SN(RST), 
	.SI(REG1[7]), 
	.SE(n487), 
	.Q(REG2[0]), 
	.D(n203), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_2__1_ (.SI(REG2[0]), 
	.SE(n473), 
	.RN(RST), 
	.Q(REG2[1]), 
	.D(n204), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_3__0_ (.SI(REG2[7]), 
	.SE(n472), 
	.RN(RST), 
	.Q(REG3[0]), 
	.D(n211), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_3__7_ (.SI(REG3[6]), 
	.SE(n475), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(REG3[7]), 
	.D(n218), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_3__6_ (.SI(REG3[5]), 
	.SE(n468), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(REG3[6]), 
	.D(n217), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFSQX2M mem_reg_3__5_ (.SN(FE_OFN0_SYNC_RST_1_mux), 
	.SI(REG3[4]), 
	.SE(n488), 
	.Q(REG3[5]), 
	.D(n216), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_3__4_ (.SI(REG3[3]), 
	.SE(n468), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(REG3[4]), 
	.D(n215), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_3__2_ (.SI(REG3[1]), 
	.SE(n477), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(REG3[2]), 
	.D(n213), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_3__3_ (.SI(REG3[2]), 
	.SE(n472), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(REG3[3]), 
	.D(n214), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_3__1_ (.SI(REG3[0]), 
	.SE(n474), 
	.RN(RST), 
	.Q(REG3[1]), 
	.D(n212), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_0__1_ (.SI(REG0[0]), 
	.SE(n476), 
	.RN(RST), 
	.Q(REG0[1]), 
	.D(n188), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_0__0_ (.SI(RdData_valid), 
	.SE(n475), 
	.RN(RST), 
	.Q(REG0[0]), 
	.D(n187), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRQX2M mem_reg_2__4_ (.SI(REG2[3]), 
	.SE(n477), 
	.RN(RST), 
	.Q(REG2[4]), 
	.D(n207), 
	.CK(CLK));
   SDFFRQX2M mem_reg_0__2_ (.SI(REG0[1]), 
	.SE(n474), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(FE_OFN15_REG0_2_), 
	.D(n189), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRQX2M mem_reg_0__3_ (.SI(REG0[2]), 
	.SE(n476), 
	.RN(RST), 
	.Q(FE_OFN14_REG0_3_), 
	.D(n190), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRQX2M mem_reg_0__4_ (.SI(REG0[3]), 
	.SE(n469), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(FE_OFN13_REG0_4_), 
	.D(n191), 
	.CK(REF_CLK_mux__L9_N11));
   SDFFRHQX1M mem_reg_0__5_ (.SI(REG0[4]), 
	.SE(n470), 
	.RN(RST), 
	.Q(FE_OFN12_REG0_5_), 
	.D(n192), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRHQX2M mem_reg_0__6_ (.SI(REG0[5]), 
	.SE(n471), 
	.RN(RST), 
	.Q(FE_OFN11_REG0_6_), 
	.D(n193), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRHQX1M mem_reg_0__7_ (.SI(REG0[6]), 
	.SE(n469), 
	.RN(RST), 
	.Q(FE_OFN10_REG0_7_), 
	.D(n194), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRHQX4M mem_reg_1__6_ (.SI(REG1[5]), 
	.SE(n470), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(REG1[6]), 
	.D(n201), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFSQX2M mem_reg_2__7_ (.SN(RST), 
	.SI(REG2[6]), 
	.SE(n492), 
	.Q(REG2[7]), 
	.D(n210), 
	.CK(REF_CLK_mux__L9_N15));
   SDFFRQX2M mem_reg_2__5_ (.SI(REG2[4]), 
	.SE(n471), 
	.RN(RST), 
	.Q(REG2[5]), 
	.D(n208), 
	.CK(CLK));
   SDFFRQX2M mem_reg_2__6_ (.SI(REG2[5]), 
	.SE(n469), 
	.RN(RST), 
	.Q(REG2[6]), 
	.D(n209), 
	.CK(CLK));
   SDFFRQX2M mem_reg_2__2_ (.SI(REG2[1]), 
	.SE(n470), 
	.RN(RST), 
	.Q(REG2[2]), 
	.D(n205), 
	.CK(CLK));
   SDFFRHQX4M mem_reg_1__2_ (.SI(REG1[1]), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(REG1[2]), 
	.D(n197), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRHQX4M mem_reg_1__1_ (.SI(REG1[0]), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(REG1[1]), 
	.D(n196), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRHQX4M mem_reg_1__0_ (.SI(REG0[7]), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(REG1[0]), 
	.D(n195), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRHQX4M mem_reg_1__3_ (.SI(REG1[2]), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(REG1[3]), 
	.D(n198), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRHQX4M mem_reg_1__5_ (.SI(REG1[4]), 
	.SE(n480), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(REG1[5]), 
	.D(n200), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRHQX4M mem_reg_1__4_ (.SI(REG1[3]), 
	.SE(n481), 
	.RN(FE_OFN3_SYNC_RST_1_mux), 
	.Q(REG1[4]), 
	.D(n199), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRHQX2M mem_reg_1__7_ (.SI(REG1[6]), 
	.SE(n481), 
	.RN(RST), 
	.Q(FE_OFN9_REG1_7_), 
	.D(n202), 
	.CK(REF_CLK_mux__L9_N8));
   SDFFRQX2M mem_reg_2__3_ (.SI(REG2[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(REG2[3]), 
	.D(n206), 
	.CK(CLK));
   NAND2X2M U141 (.Y(n391), 
	.B(Address[2]), 
	.A(Address[3]));
   NOR2X2M U142 (.Y(n158), 
	.B(Address[2]), 
	.A(n409));
   NOR2X2M U143 (.Y(n153), 
	.B(Address[2]), 
	.A(Address[1]));
   NAND2X2M U144 (.Y(n151), 
	.B(n456), 
	.A(RdEn));
   CLKINVX2M U145 (.Y(n464), 
	.A(WrData[0]));
   CLKINVX2M U146 (.Y(n463), 
	.A(WrData[1]));
   CLKINVX2M U147 (.Y(n462), 
	.A(WrData[2]));
   CLKINVX2M U148 (.Y(n461), 
	.A(WrData[3]));
   CLKINVX2M U149 (.Y(n460), 
	.A(WrData[4]));
   CLKINVX2M U150 (.Y(n459), 
	.A(WrData[5]));
   CLKINVX2M U151 (.Y(n458), 
	.A(WrData[6]));
   CLKINVX2M U152 (.Y(n457), 
	.A(WrData[7]));
   NAND2X2M U194 (.Y(n152), 
	.B(n154), 
	.A(n153));
   NAND2X2M U195 (.Y(n157), 
	.B(n154), 
	.A(n158));
   NAND2X2M U196 (.Y(n159), 
	.B(n156), 
	.A(n158));
   AND2X2M U197 (.Y(n154), 
	.B(n408), 
	.A(n165));
   AND2X2M U198 (.Y(n168), 
	.B(n408), 
	.A(n176));
   NAND2X2M U199 (.Y(n155), 
	.B(n153), 
	.A(n156));
   NAND2X2M U200 (.Y(n167), 
	.B(n153), 
	.A(n168));
   NAND2X2M U201 (.Y(n169), 
	.B(n153), 
	.A(n170));
   NAND2X2M U202 (.Y(n171), 
	.B(n158), 
	.A(n168));
   NAND2X2M U203 (.Y(n172), 
	.B(n158), 
	.A(n170));
   NAND2X2M U204 (.Y(n162), 
	.B(n156), 
	.A(n161));
   NAND2X2M U205 (.Y(n166), 
	.B(n156), 
	.A(n164));
   NAND2X2M U206 (.Y(n160), 
	.B(n154), 
	.A(n161));
   NAND2X2M U207 (.Y(n163), 
	.B(n154), 
	.A(n164));
   NAND2X2M U208 (.Y(n175), 
	.B(n164), 
	.A(n168));
   NAND2X2M U209 (.Y(n177), 
	.B(n164), 
	.A(n170));
   NAND2X2M U210 (.Y(n173), 
	.B(n161), 
	.A(n168));
   NAND2X2M U211 (.Y(n174), 
	.B(n161), 
	.A(n170));
   INVX2M U212 (.Y(n455), 
	.A(n151));
   AO22X1M U215 (.Y(n180), 
	.B1(n151), 
	.B0(RdData[1]), 
	.A1(n455), 
	.A0(N41));
   INVX2M U216 (.Y(n410), 
	.A(Address[2]));
   INVX2M U217 (.Y(n408), 
	.A(Address[0]));
   INVX2M U218 (.Y(n409), 
	.A(Address[1]));
   INVX2M U219 (.Y(n411), 
	.A(Address[3]));
   AO22X1M U220 (.Y(n179), 
	.B1(n151), 
	.B0(RdData[0]), 
	.A1(n455), 
	.A0(N42));
   AO22X1M U221 (.Y(n181), 
	.B1(n151), 
	.B0(RdData[2]), 
	.A1(n455), 
	.A0(N40));
   AO22X1M U222 (.Y(n182), 
	.B1(n151), 
	.B0(RdData[3]), 
	.A1(n455), 
	.A0(N39));
   AO22X1M U223 (.Y(n183), 
	.B1(n151), 
	.B0(RdData[4]), 
	.A1(n455), 
	.A0(N38));
   AO22X1M U224 (.Y(n184), 
	.B1(n151), 
	.B0(RdData[5]), 
	.A1(n455), 
	.A0(N37));
   AO22X1M U225 (.Y(n185), 
	.B1(n151), 
	.B0(RdData[6]), 
	.A1(n455), 
	.A0(N36));
   AO22X1M U226 (.Y(n186), 
	.B1(n151), 
	.B0(RdData[7]), 
	.A1(n455), 
	.A0(N35));
   NOR2X2M U227 (.Y(n150), 
	.B(RdEn), 
	.A(n456));
   NOR2BX2M U228 (.Y(n165), 
	.B(Address[3]), 
	.AN(n150));
   OAI2BB2X1M U229 (.Y(n195), 
	.B1(n155), 
	.B0(n464), 
	.A1N(n155), 
	.A0N(REG1[0]));
   OAI2BB2X1M U230 (.Y(n196), 
	.B1(n155), 
	.B0(n463), 
	.A1N(n155), 
	.A0N(REG1[1]));
   OAI2BB2X1M U231 (.Y(n197), 
	.B1(n155), 
	.B0(n462), 
	.A1N(n155), 
	.A0N(REG1[2]));
   OAI2BB2X1M U232 (.Y(n198), 
	.B1(n155), 
	.B0(n461), 
	.A1N(n155), 
	.A0N(REG1[3]));
   OAI2BB2X1M U233 (.Y(n199), 
	.B1(n155), 
	.B0(n460), 
	.A1N(n155), 
	.A0N(REG1[4]));
   OAI2BB2X1M U234 (.Y(n200), 
	.B1(n155), 
	.B0(n459), 
	.A1N(n155), 
	.A0N(REG1[5]));
   OAI2BB2X1M U235 (.Y(n201), 
	.B1(n155), 
	.B0(n458), 
	.A1N(n155), 
	.A0N(REG1[6]));
   OAI2BB2X1M U236 (.Y(n202), 
	.B1(n155), 
	.B0(n457), 
	.A1N(n155), 
	.A0N(REG1[7]));
   OAI2BB2X1M U237 (.Y(n204), 
	.B1(n157), 
	.B0(n463), 
	.A1N(n157), 
	.A0N(REG2[1]));
   OAI2BB2X1M U238 (.Y(n205), 
	.B1(n157), 
	.B0(n462), 
	.A1N(n157), 
	.A0N(REG2[2]));
   OAI2BB2X1M U239 (.Y(n206), 
	.B1(n157), 
	.B0(n461), 
	.A1N(n157), 
	.A0N(REG2[3]));
   OAI2BB2X1M U240 (.Y(n207), 
	.B1(n157), 
	.B0(n460), 
	.A1N(n157), 
	.A0N(REG2[4]));
   OAI2BB2X1M U241 (.Y(n208), 
	.B1(n157), 
	.B0(n459), 
	.A1N(n157), 
	.A0N(REG2[5]));
   OAI2BB2X1M U242 (.Y(n209), 
	.B1(n157), 
	.B0(n458), 
	.A1N(n157), 
	.A0N(REG2[6]));
   OAI2BB2X1M U243 (.Y(n211), 
	.B1(n159), 
	.B0(n464), 
	.A1N(n159), 
	.A0N(REG3[0]));
   OAI2BB2X1M U244 (.Y(n212), 
	.B1(n159), 
	.B0(n463), 
	.A1N(n159), 
	.A0N(REG3[1]));
   OAI2BB2X1M U245 (.Y(n213), 
	.B1(n159), 
	.B0(n462), 
	.A1N(n159), 
	.A0N(REG3[2]));
   OAI2BB2X1M U246 (.Y(n214), 
	.B1(n159), 
	.B0(n461), 
	.A1N(n159), 
	.A0N(REG3[3]));
   OAI2BB2X1M U247 (.Y(n215), 
	.B1(n159), 
	.B0(n460), 
	.A1N(n159), 
	.A0N(REG3[4]));
   OAI2BB2X1M U248 (.Y(n217), 
	.B1(n159), 
	.B0(n458), 
	.A1N(n159), 
	.A0N(REG3[6]));
   OAI2BB2X1M U249 (.Y(n218), 
	.B1(n159), 
	.B0(n457), 
	.A1N(n159), 
	.A0N(REG3[7]));
   OAI2BB2X1M U250 (.Y(n219), 
	.B1(n160), 
	.B0(n464), 
	.A1N(n160), 
	.A0N(mem_4__0_));
   OAI2BB2X1M U251 (.Y(n220), 
	.B1(n160), 
	.B0(n463), 
	.A1N(n160), 
	.A0N(mem_4__1_));
   OAI2BB2X1M U252 (.Y(n221), 
	.B1(n160), 
	.B0(n462), 
	.A1N(n160), 
	.A0N(mem_4__2_));
   OAI2BB2X1M U253 (.Y(n222), 
	.B1(n160), 
	.B0(n461), 
	.A1N(n160), 
	.A0N(mem_4__3_));
   OAI2BB2X1M U254 (.Y(n223), 
	.B1(n160), 
	.B0(n460), 
	.A1N(n160), 
	.A0N(mem_4__4_));
   OAI2BB2X1M U255 (.Y(n224), 
	.B1(n160), 
	.B0(n459), 
	.A1N(n160), 
	.A0N(mem_4__5_));
   OAI2BB2X1M U256 (.Y(n225), 
	.B1(n160), 
	.B0(n458), 
	.A1N(n160), 
	.A0N(mem_4__6_));
   OAI2BB2X1M U257 (.Y(n226), 
	.B1(n160), 
	.B0(n457), 
	.A1N(n160), 
	.A0N(mem_4__7_));
   OAI2BB2X1M U258 (.Y(n227), 
	.B1(n162), 
	.B0(n464), 
	.A1N(n162), 
	.A0N(mem_5__0_));
   OAI2BB2X1M U259 (.Y(n228), 
	.B1(n162), 
	.B0(n463), 
	.A1N(n162), 
	.A0N(mem_5__1_));
   OAI2BB2X1M U260 (.Y(n229), 
	.B1(n162), 
	.B0(n462), 
	.A1N(n162), 
	.A0N(mem_5__2_));
   OAI2BB2X1M U261 (.Y(n230), 
	.B1(n162), 
	.B0(n461), 
	.A1N(n162), 
	.A0N(mem_5__3_));
   OAI2BB2X1M U262 (.Y(n231), 
	.B1(n162), 
	.B0(n460), 
	.A1N(n162), 
	.A0N(mem_5__4_));
   OAI2BB2X1M U263 (.Y(n232), 
	.B1(n162), 
	.B0(n459), 
	.A1N(n162), 
	.A0N(mem_5__5_));
   OAI2BB2X1M U264 (.Y(n233), 
	.B1(n162), 
	.B0(n458), 
	.A1N(n162), 
	.A0N(mem_5__6_));
   OAI2BB2X1M U265 (.Y(n234), 
	.B1(n162), 
	.B0(n457), 
	.A1N(n162), 
	.A0N(mem_5__7_));
   OAI2BB2X1M U266 (.Y(n235), 
	.B1(n163), 
	.B0(n464), 
	.A1N(n163), 
	.A0N(mem_6__0_));
   OAI2BB2X1M U267 (.Y(n236), 
	.B1(n163), 
	.B0(n463), 
	.A1N(n163), 
	.A0N(mem_6__1_));
   OAI2BB2X1M U268 (.Y(n237), 
	.B1(n163), 
	.B0(n462), 
	.A1N(n163), 
	.A0N(mem_6__2_));
   OAI2BB2X1M U269 (.Y(n238), 
	.B1(n163), 
	.B0(n461), 
	.A1N(n163), 
	.A0N(mem_6__3_));
   OAI2BB2X1M U270 (.Y(n239), 
	.B1(n163), 
	.B0(n460), 
	.A1N(n163), 
	.A0N(mem_6__4_));
   OAI2BB2X1M U271 (.Y(n240), 
	.B1(n163), 
	.B0(n459), 
	.A1N(n163), 
	.A0N(mem_6__5_));
   OAI2BB2X1M U272 (.Y(n241), 
	.B1(n163), 
	.B0(n458), 
	.A1N(n163), 
	.A0N(mem_6__6_));
   OAI2BB2X1M U273 (.Y(n242), 
	.B1(n163), 
	.B0(n457), 
	.A1N(n163), 
	.A0N(mem_6__7_));
   OAI2BB2X1M U274 (.Y(n243), 
	.B1(n166), 
	.B0(n464), 
	.A1N(n166), 
	.A0N(mem_7__0_));
   OAI2BB2X1M U275 (.Y(n244), 
	.B1(n166), 
	.B0(n463), 
	.A1N(n166), 
	.A0N(mem_7__1_));
   OAI2BB2X1M U276 (.Y(n245), 
	.B1(n166), 
	.B0(n462), 
	.A1N(n166), 
	.A0N(mem_7__2_));
   OAI2BB2X1M U277 (.Y(n246), 
	.B1(n166), 
	.B0(n461), 
	.A1N(n166), 
	.A0N(mem_7__3_));
   OAI2BB2X1M U278 (.Y(n247), 
	.B1(n166), 
	.B0(n460), 
	.A1N(n166), 
	.A0N(mem_7__4_));
   OAI2BB2X1M U279 (.Y(n248), 
	.B1(n166), 
	.B0(n459), 
	.A1N(n166), 
	.A0N(mem_7__5_));
   OAI2BB2X1M U280 (.Y(n249), 
	.B1(n166), 
	.B0(n458), 
	.A1N(n166), 
	.A0N(mem_7__6_));
   OAI2BB2X1M U281 (.Y(n250), 
	.B1(n166), 
	.B0(n457), 
	.A1N(n166), 
	.A0N(mem_7__7_));
   OAI2BB2X1M U282 (.Y(n251), 
	.B1(n167), 
	.B0(n464), 
	.A1N(n167), 
	.A0N(mem_8__0_));
   OAI2BB2X1M U283 (.Y(n252), 
	.B1(n167), 
	.B0(n463), 
	.A1N(n167), 
	.A0N(mem_8__1_));
   OAI2BB2X1M U284 (.Y(n253), 
	.B1(n167), 
	.B0(n462), 
	.A1N(n167), 
	.A0N(test_so1));
   OAI2BB2X1M U285 (.Y(n254), 
	.B1(n167), 
	.B0(n461), 
	.A1N(n167), 
	.A0N(mem_8__3_));
   OAI2BB2X1M U286 (.Y(n255), 
	.B1(n167), 
	.B0(n460), 
	.A1N(n167), 
	.A0N(mem_8__4_));
   OAI2BB2X1M U287 (.Y(n256), 
	.B1(n167), 
	.B0(n459), 
	.A1N(n167), 
	.A0N(mem_8__5_));
   OAI2BB2X1M U288 (.Y(n257), 
	.B1(n167), 
	.B0(n458), 
	.A1N(n167), 
	.A0N(mem_8__6_));
   OAI2BB2X1M U289 (.Y(n258), 
	.B1(n167), 
	.B0(n457), 
	.A1N(n167), 
	.A0N(mem_8__7_));
   OAI2BB2X1M U290 (.Y(n259), 
	.B1(n169), 
	.B0(n464), 
	.A1N(n169), 
	.A0N(mem_9__0_));
   OAI2BB2X1M U291 (.Y(n260), 
	.B1(n169), 
	.B0(n463), 
	.A1N(n169), 
	.A0N(mem_9__1_));
   OAI2BB2X1M U292 (.Y(n261), 
	.B1(n169), 
	.B0(n462), 
	.A1N(n169), 
	.A0N(mem_9__2_));
   OAI2BB2X1M U293 (.Y(n262), 
	.B1(n169), 
	.B0(n461), 
	.A1N(n169), 
	.A0N(mem_9__3_));
   OAI2BB2X1M U294 (.Y(n263), 
	.B1(n169), 
	.B0(n460), 
	.A1N(n169), 
	.A0N(mem_9__4_));
   OAI2BB2X1M U295 (.Y(n264), 
	.B1(n169), 
	.B0(n459), 
	.A1N(n169), 
	.A0N(mem_9__5_));
   OAI2BB2X1M U296 (.Y(n265), 
	.B1(n169), 
	.B0(n458), 
	.A1N(n169), 
	.A0N(mem_9__6_));
   OAI2BB2X1M U297 (.Y(n266), 
	.B1(n169), 
	.B0(n457), 
	.A1N(n169), 
	.A0N(mem_9__7_));
   OAI2BB2X1M U298 (.Y(n267), 
	.B1(n171), 
	.B0(n464), 
	.A1N(n171), 
	.A0N(mem_10__0_));
   OAI2BB2X1M U299 (.Y(n268), 
	.B1(n171), 
	.B0(n463), 
	.A1N(n171), 
	.A0N(mem_10__1_));
   OAI2BB2X1M U300 (.Y(n269), 
	.B1(n171), 
	.B0(n462), 
	.A1N(n171), 
	.A0N(mem_10__2_));
   OAI2BB2X1M U301 (.Y(n270), 
	.B1(n171), 
	.B0(n461), 
	.A1N(n171), 
	.A0N(mem_10__3_));
   OAI2BB2X1M U302 (.Y(n271), 
	.B1(n171), 
	.B0(n460), 
	.A1N(n171), 
	.A0N(mem_10__4_));
   OAI2BB2X1M U303 (.Y(n272), 
	.B1(n171), 
	.B0(n459), 
	.A1N(n171), 
	.A0N(mem_10__5_));
   OAI2BB2X1M U304 (.Y(n273), 
	.B1(n171), 
	.B0(n458), 
	.A1N(n171), 
	.A0N(mem_10__6_));
   OAI2BB2X1M U305 (.Y(n274), 
	.B1(n171), 
	.B0(n457), 
	.A1N(n171), 
	.A0N(mem_10__7_));
   OAI2BB2X1M U306 (.Y(n275), 
	.B1(n172), 
	.B0(n464), 
	.A1N(n172), 
	.A0N(mem_11__0_));
   OAI2BB2X1M U307 (.Y(n276), 
	.B1(n172), 
	.B0(n463), 
	.A1N(n172), 
	.A0N(mem_11__1_));
   OAI2BB2X1M U308 (.Y(n277), 
	.B1(n172), 
	.B0(n462), 
	.A1N(n172), 
	.A0N(mem_11__2_));
   OAI2BB2X1M U309 (.Y(n278), 
	.B1(n172), 
	.B0(n461), 
	.A1N(n172), 
	.A0N(mem_11__3_));
   OAI2BB2X1M U310 (.Y(n279), 
	.B1(n172), 
	.B0(n460), 
	.A1N(n172), 
	.A0N(mem_11__4_));
   OAI2BB2X1M U311 (.Y(n280), 
	.B1(n172), 
	.B0(n459), 
	.A1N(n172), 
	.A0N(mem_11__5_));
   OAI2BB2X1M U312 (.Y(n281), 
	.B1(n172), 
	.B0(n458), 
	.A1N(n172), 
	.A0N(mem_11__6_));
   OAI2BB2X1M U313 (.Y(n282), 
	.B1(n172), 
	.B0(n457), 
	.A1N(n172), 
	.A0N(mem_11__7_));
   OAI2BB2X1M U314 (.Y(n283), 
	.B1(n173), 
	.B0(n464), 
	.A1N(n173), 
	.A0N(mem_12__0_));
   OAI2BB2X1M U315 (.Y(n284), 
	.B1(n173), 
	.B0(n463), 
	.A1N(n173), 
	.A0N(mem_12__1_));
   OAI2BB2X1M U316 (.Y(n285), 
	.B1(n173), 
	.B0(n462), 
	.A1N(n173), 
	.A0N(mem_12__2_));
   OAI2BB2X1M U317 (.Y(n286), 
	.B1(n173), 
	.B0(n461), 
	.A1N(n173), 
	.A0N(mem_12__3_));
   OAI2BB2X1M U318 (.Y(n287), 
	.B1(n173), 
	.B0(n460), 
	.A1N(n173), 
	.A0N(mem_12__4_));
   OAI2BB2X1M U319 (.Y(n288), 
	.B1(n173), 
	.B0(n459), 
	.A1N(n173), 
	.A0N(mem_12__5_));
   OAI2BB2X1M U320 (.Y(n289), 
	.B1(n173), 
	.B0(n458), 
	.A1N(n173), 
	.A0N(mem_12__6_));
   OAI2BB2X1M U321 (.Y(n290), 
	.B1(n173), 
	.B0(n457), 
	.A1N(n173), 
	.A0N(mem_12__7_));
   OAI2BB2X1M U322 (.Y(n291), 
	.B1(n174), 
	.B0(n464), 
	.A1N(n174), 
	.A0N(mem_13__0_));
   OAI2BB2X1M U323 (.Y(n292), 
	.B1(n174), 
	.B0(n463), 
	.A1N(n174), 
	.A0N(mem_13__1_));
   OAI2BB2X1M U324 (.Y(n293), 
	.B1(n174), 
	.B0(n462), 
	.A1N(n174), 
	.A0N(mem_13__2_));
   OAI2BB2X1M U325 (.Y(n294), 
	.B1(n174), 
	.B0(n461), 
	.A1N(n174), 
	.A0N(mem_13__3_));
   OAI2BB2X1M U326 (.Y(n295), 
	.B1(n174), 
	.B0(n460), 
	.A1N(n174), 
	.A0N(mem_13__4_));
   OAI2BB2X1M U327 (.Y(n296), 
	.B1(n174), 
	.B0(n459), 
	.A1N(n174), 
	.A0N(mem_13__5_));
   OAI2BB2X1M U328 (.Y(n297), 
	.B1(n174), 
	.B0(n458), 
	.A1N(n174), 
	.A0N(mem_13__6_));
   OAI2BB2X1M U329 (.Y(n298), 
	.B1(n174), 
	.B0(n457), 
	.A1N(n174), 
	.A0N(mem_13__7_));
   OAI2BB2X1M U330 (.Y(n299), 
	.B1(n175), 
	.B0(n464), 
	.A1N(n175), 
	.A0N(mem_14__0_));
   OAI2BB2X1M U331 (.Y(n300), 
	.B1(n175), 
	.B0(n463), 
	.A1N(n175), 
	.A0N(mem_14__1_));
   OAI2BB2X1M U332 (.Y(n301), 
	.B1(n175), 
	.B0(n462), 
	.A1N(n175), 
	.A0N(mem_14__2_));
   OAI2BB2X1M U333 (.Y(n302), 
	.B1(n175), 
	.B0(n461), 
	.A1N(n175), 
	.A0N(mem_14__3_));
   OAI2BB2X1M U334 (.Y(n303), 
	.B1(n175), 
	.B0(n460), 
	.A1N(n175), 
	.A0N(mem_14__4_));
   OAI2BB2X1M U335 (.Y(n304), 
	.B1(n175), 
	.B0(n459), 
	.A1N(n175), 
	.A0N(mem_14__5_));
   OAI2BB2X1M U336 (.Y(n305), 
	.B1(n175), 
	.B0(n458), 
	.A1N(n175), 
	.A0N(mem_14__6_));
   OAI2BB2X1M U337 (.Y(n306), 
	.B1(n175), 
	.B0(n457), 
	.A1N(n175), 
	.A0N(mem_14__7_));
   OAI2BB2X1M U338 (.Y(n307), 
	.B1(n177), 
	.B0(n464), 
	.A1N(n177), 
	.A0N(mem_15__0_));
   OAI2BB2X1M U339 (.Y(n308), 
	.B1(n177), 
	.B0(n463), 
	.A1N(n177), 
	.A0N(mem_15__1_));
   OAI2BB2X1M U340 (.Y(n309), 
	.B1(n177), 
	.B0(n462), 
	.A1N(n177), 
	.A0N(mem_15__2_));
   OAI2BB2X1M U341 (.Y(n310), 
	.B1(n177), 
	.B0(n461), 
	.A1N(n177), 
	.A0N(mem_15__3_));
   OAI2BB2X1M U342 (.Y(n311), 
	.B1(n177), 
	.B0(n460), 
	.A1N(n177), 
	.A0N(mem_15__4_));
   OAI2BB2X1M U343 (.Y(n312), 
	.B1(n177), 
	.B0(n459), 
	.A1N(n177), 
	.A0N(mem_15__5_));
   OAI2BB2X1M U344 (.Y(n313), 
	.B1(n177), 
	.B0(n458), 
	.A1N(n177), 
	.A0N(mem_15__6_));
   OAI2BB2X1M U345 (.Y(n314), 
	.B1(n177), 
	.B0(n457), 
	.A1N(n177), 
	.A0N(test_so2));
   OAI2BB2X1M U346 (.Y(n187), 
	.B1(n464), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[0]));
   OAI2BB2X1M U347 (.Y(n188), 
	.B1(n463), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[1]));
   OAI2BB2X1M U348 (.Y(n189), 
	.B1(n462), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[2]));
   OAI2BB2X1M U349 (.Y(n190), 
	.B1(n461), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[3]));
   OAI2BB2X1M U350 (.Y(n191), 
	.B1(n460), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[4]));
   OAI2BB2X1M U351 (.Y(n192), 
	.B1(n459), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[5]));
   OAI2BB2X1M U352 (.Y(n193), 
	.B1(n458), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[6]));
   OAI2BB2X1M U353 (.Y(n194), 
	.B1(n457), 
	.B0(n152), 
	.A1N(n152), 
	.A0N(REG0[7]));
   OAI2BB2X1M U354 (.Y(n203), 
	.B1(n157), 
	.B0(n464), 
	.A1N(n157), 
	.A0N(REG2[0]));
   OAI2BB2X1M U355 (.Y(n210), 
	.B1(n157), 
	.B0(n457), 
	.A1N(n157), 
	.A0N(REG2[7]));
   OAI2BB2X1M U356 (.Y(n216), 
	.B1(n159), 
	.B0(n459), 
	.A1N(n159), 
	.A0N(REG3[5]));
   AND2X2M U357 (.Y(n156), 
	.B(Address[0]), 
	.A(n165));
   AND2X2M U358 (.Y(n170), 
	.B(Address[0]), 
	.A(n176));
   INVX2M U359 (.Y(n456), 
	.A(WrEn));
   AND2X2M U360 (.Y(n176), 
	.B(n150), 
	.A(Address[3]));
   AND2X2M U361 (.Y(n161), 
	.B(n409), 
	.A(Address[2]));
   AND2X2M U362 (.Y(n164), 
	.B(Address[1]), 
	.A(Address[2]));
   AO21XLM U363 (.Y(n178), 
	.B0(n455), 
	.A1(n150), 
	.A0(RdData_valid));
   NOR2X1M U364 (.Y(n398), 
	.B(Address[0]), 
	.A(n409));
   NOR2X4M U365 (.Y(n397), 
	.B(n408), 
	.A(n409));
   AOI22X1M U366 (.Y(n140), 
	.B1(n397), 
	.B0(mem_11__0_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_10__0_));
   NOR2X1M U367 (.Y(n400), 
	.B(Address[1]), 
	.A(Address[0]));
   NOR2X4M U368 (.Y(n399), 
	.B(Address[1]), 
	.A(n408));
   AOI22X1M U369 (.Y(n139), 
	.B1(n399), 
	.B0(mem_9__0_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_8__0_));
   CLKNAND2X2M U370 (.Y(n388), 
	.B(n410), 
	.A(Address[3]));
   AOI21X1M U371 (.Y(n315), 
	.B0(n388), 
	.A1(n139), 
	.A0(n140));
   AOI22X1M U372 (.Y(n142), 
	.B1(n397), 
	.B0(mem_15__0_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_14__0_));
   AOI22X1M U373 (.Y(n141), 
	.B1(n399), 
	.B0(mem_13__0_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_12__0_));
   AOI21X1M U374 (.Y(n149), 
	.B0(n391), 
	.A1(n141), 
	.A0(n142));
   AOI22X1M U375 (.Y(n144), 
	.B1(n397), 
	.B0(REG3[0]), 
	.A1(FE_OFN6_n398), 
	.A0(REG2[0]));
   AOI22X1M U376 (.Y(n143), 
	.B1(n399), 
	.B0(REG1[0]), 
	.A1(FE_OFN7_n400), 
	.A0(REG0[0]));
   CLKNAND2X2M U377 (.Y(n394), 
	.B(n411), 
	.A(n410));
   AOI21X1M U378 (.Y(n148), 
	.B0(n394), 
	.A1(n143), 
	.A0(n144));
   AOI22X1M U379 (.Y(n146), 
	.B1(n397), 
	.B0(mem_7__0_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_6__0_));
   AOI22X1M U380 (.Y(n145), 
	.B1(n399), 
	.B0(mem_5__0_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_4__0_));
   CLKNAND2X2M U381 (.Y(n401), 
	.B(n411), 
	.A(Address[2]));
   AOI21X1M U382 (.Y(n147), 
	.B0(n401), 
	.A1(n145), 
	.A0(n146));
   OR4X1M U383 (.Y(N42), 
	.D(n147), 
	.C(n148), 
	.B(n149), 
	.A(n315));
   AOI22X1M U384 (.Y(n317), 
	.B1(n397), 
	.B0(mem_11__1_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_10__1_));
   AOI22X1M U385 (.Y(n316), 
	.B1(n399), 
	.B0(mem_9__1_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_8__1_));
   AOI21X1M U386 (.Y(n327), 
	.B0(n388), 
	.A1(n316), 
	.A0(n317));
   AOI22X1M U387 (.Y(n319), 
	.B1(n397), 
	.B0(mem_15__1_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_14__1_));
   AOI22X1M U388 (.Y(n318), 
	.B1(n399), 
	.B0(mem_13__1_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_12__1_));
   AOI21X1M U389 (.Y(n326), 
	.B0(n391), 
	.A1(n318), 
	.A0(n319));
   AOI22X1M U390 (.Y(n321), 
	.B1(n397), 
	.B0(REG3[1]), 
	.A1(FE_OFN6_n398), 
	.A0(REG2[1]));
   AOI22X1M U391 (.Y(n320), 
	.B1(n399), 
	.B0(REG1[1]), 
	.A1(FE_OFN7_n400), 
	.A0(REG0[1]));
   AOI21X1M U392 (.Y(n325), 
	.B0(n394), 
	.A1(n320), 
	.A0(n321));
   AOI22X1M U393 (.Y(n323), 
	.B1(n397), 
	.B0(mem_7__1_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_6__1_));
   AOI22X1M U394 (.Y(n322), 
	.B1(n399), 
	.B0(mem_5__1_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_4__1_));
   AOI21X1M U395 (.Y(n324), 
	.B0(n401), 
	.A1(n322), 
	.A0(n323));
   OR4X1M U396 (.Y(N41), 
	.D(n324), 
	.C(n325), 
	.B(n326), 
	.A(n327));
   AOI22X1M U397 (.Y(n329), 
	.B1(n397), 
	.B0(mem_11__2_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_10__2_));
   AOI22X1M U398 (.Y(n328), 
	.B1(n399), 
	.B0(mem_9__2_), 
	.A1(FE_OFN7_n400), 
	.A0(test_so1));
   AOI21X1M U399 (.Y(n339), 
	.B0(n388), 
	.A1(n328), 
	.A0(n329));
   AOI22X1M U400 (.Y(n331), 
	.B1(n397), 
	.B0(mem_15__2_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_14__2_));
   AOI22X1M U401 (.Y(n330), 
	.B1(n399), 
	.B0(mem_13__2_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_12__2_));
   AOI21X1M U402 (.Y(n338), 
	.B0(n391), 
	.A1(n330), 
	.A0(n331));
   AOI22X1M U403 (.Y(n333), 
	.B1(n397), 
	.B0(REG3[2]), 
	.A1(FE_OFN6_n398), 
	.A0(REG2[2]));
   AOI22X1M U404 (.Y(n332), 
	.B1(n399), 
	.B0(REG1[2]), 
	.A1(FE_OFN7_n400), 
	.A0(REG0[2]));
   AOI21X1M U405 (.Y(n337), 
	.B0(n394), 
	.A1(n332), 
	.A0(n333));
   AOI22X1M U406 (.Y(n335), 
	.B1(n397), 
	.B0(mem_7__2_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_6__2_));
   AOI22X1M U407 (.Y(n334), 
	.B1(n399), 
	.B0(mem_5__2_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_4__2_));
   AOI21X1M U408 (.Y(n336), 
	.B0(n401), 
	.A1(n334), 
	.A0(n335));
   OR4X1M U409 (.Y(N40), 
	.D(n336), 
	.C(n337), 
	.B(n338), 
	.A(n339));
   AOI22X1M U410 (.Y(n341), 
	.B1(n397), 
	.B0(mem_11__3_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_10__3_));
   AOI22X1M U411 (.Y(n340), 
	.B1(n399), 
	.B0(mem_9__3_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_8__3_));
   AOI21X1M U412 (.Y(n351), 
	.B0(n388), 
	.A1(n340), 
	.A0(n341));
   AOI22X1M U413 (.Y(n343), 
	.B1(n397), 
	.B0(mem_15__3_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_14__3_));
   AOI22X1M U414 (.Y(n342), 
	.B1(n399), 
	.B0(mem_13__3_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_12__3_));
   AOI21X1M U415 (.Y(n350), 
	.B0(n391), 
	.A1(n342), 
	.A0(n343));
   AOI22X1M U416 (.Y(n345), 
	.B1(n397), 
	.B0(REG3[3]), 
	.A1(FE_OFN6_n398), 
	.A0(REG2[3]));
   AOI22X1M U417 (.Y(n344), 
	.B1(n399), 
	.B0(REG1[3]), 
	.A1(FE_OFN7_n400), 
	.A0(REG0[3]));
   AOI21X1M U418 (.Y(n349), 
	.B0(n394), 
	.A1(n344), 
	.A0(n345));
   AOI22X1M U419 (.Y(n347), 
	.B1(n397), 
	.B0(mem_7__3_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_6__3_));
   AOI22X1M U420 (.Y(n346), 
	.B1(n399), 
	.B0(mem_5__3_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_4__3_));
   AOI21X1M U421 (.Y(n348), 
	.B0(n401), 
	.A1(n346), 
	.A0(n347));
   OR4X1M U422 (.Y(N39), 
	.D(n348), 
	.C(n349), 
	.B(n350), 
	.A(n351));
   AOI22X1M U423 (.Y(n353), 
	.B1(n397), 
	.B0(mem_11__4_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_10__4_));
   AOI22X1M U424 (.Y(n352), 
	.B1(n399), 
	.B0(mem_9__4_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_8__4_));
   AOI21X1M U425 (.Y(n363), 
	.B0(n388), 
	.A1(n352), 
	.A0(n353));
   AOI22X1M U426 (.Y(n355), 
	.B1(n397), 
	.B0(mem_15__4_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_14__4_));
   AOI22X1M U427 (.Y(n354), 
	.B1(n399), 
	.B0(mem_13__4_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_12__4_));
   AOI21X1M U428 (.Y(n362), 
	.B0(n391), 
	.A1(n354), 
	.A0(n355));
   AOI22X1M U429 (.Y(n357), 
	.B1(n397), 
	.B0(REG3[4]), 
	.A1(FE_OFN6_n398), 
	.A0(REG2[4]));
   AOI22X1M U430 (.Y(n356), 
	.B1(n399), 
	.B0(REG1[4]), 
	.A1(FE_OFN7_n400), 
	.A0(REG0[4]));
   AOI21X1M U431 (.Y(n361), 
	.B0(n394), 
	.A1(n356), 
	.A0(n357));
   AOI22X1M U432 (.Y(n359), 
	.B1(n397), 
	.B0(mem_7__4_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_6__4_));
   AOI22X1M U433 (.Y(n358), 
	.B1(n399), 
	.B0(mem_5__4_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_4__4_));
   AOI21X1M U434 (.Y(n360), 
	.B0(n401), 
	.A1(n358), 
	.A0(n359));
   OR4X1M U435 (.Y(N38), 
	.D(n360), 
	.C(n361), 
	.B(n362), 
	.A(n363));
   AOI22X1M U436 (.Y(n365), 
	.B1(n397), 
	.B0(mem_11__5_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_10__5_));
   AOI22X1M U437 (.Y(n364), 
	.B1(n399), 
	.B0(mem_9__5_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_8__5_));
   AOI21X1M U438 (.Y(n375), 
	.B0(n388), 
	.A1(n364), 
	.A0(n365));
   AOI22X1M U439 (.Y(n367), 
	.B1(n397), 
	.B0(mem_15__5_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_14__5_));
   AOI22X1M U440 (.Y(n366), 
	.B1(n399), 
	.B0(mem_13__5_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_12__5_));
   AOI21X1M U441 (.Y(n374), 
	.B0(n391), 
	.A1(n366), 
	.A0(n367));
   AOI22X1M U442 (.Y(n369), 
	.B1(n397), 
	.B0(REG3[5]), 
	.A1(FE_OFN6_n398), 
	.A0(REG2[5]));
   AOI22X1M U443 (.Y(n368), 
	.B1(n399), 
	.B0(REG1[5]), 
	.A1(FE_OFN7_n400), 
	.A0(REG0[5]));
   AOI21X1M U444 (.Y(n373), 
	.B0(n394), 
	.A1(n368), 
	.A0(n369));
   AOI22X1M U445 (.Y(n371), 
	.B1(n397), 
	.B0(mem_7__5_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_6__5_));
   AOI22X1M U446 (.Y(n370), 
	.B1(n399), 
	.B0(mem_5__5_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_4__5_));
   AOI21X1M U447 (.Y(n372), 
	.B0(n401), 
	.A1(n370), 
	.A0(n371));
   OR4X1M U448 (.Y(N37), 
	.D(n372), 
	.C(n373), 
	.B(n374), 
	.A(n375));
   AOI22X1M U449 (.Y(n377), 
	.B1(n397), 
	.B0(mem_11__6_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_10__6_));
   AOI22X1M U450 (.Y(n376), 
	.B1(n399), 
	.B0(mem_9__6_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_8__6_));
   AOI21X1M U451 (.Y(n387), 
	.B0(n388), 
	.A1(n376), 
	.A0(n377));
   AOI22X1M U452 (.Y(n379), 
	.B1(n397), 
	.B0(mem_15__6_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_14__6_));
   AOI22X1M U453 (.Y(n378), 
	.B1(n399), 
	.B0(mem_13__6_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_12__6_));
   AOI21X1M U454 (.Y(n386), 
	.B0(n391), 
	.A1(n378), 
	.A0(n379));
   AOI22X1M U455 (.Y(n381), 
	.B1(n397), 
	.B0(REG3[6]), 
	.A1(FE_OFN6_n398), 
	.A0(REG2[6]));
   AOI22X1M U456 (.Y(n380), 
	.B1(n399), 
	.B0(REG1[6]), 
	.A1(FE_OFN7_n400), 
	.A0(REG0[6]));
   AOI21X1M U457 (.Y(n385), 
	.B0(n394), 
	.A1(n380), 
	.A0(n381));
   AOI22X1M U458 (.Y(n383), 
	.B1(n397), 
	.B0(mem_7__6_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_6__6_));
   AOI22X1M U459 (.Y(n382), 
	.B1(n399), 
	.B0(mem_5__6_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_4__6_));
   AOI21X1M U460 (.Y(n384), 
	.B0(n401), 
	.A1(n382), 
	.A0(n383));
   OR4X1M U461 (.Y(N36), 
	.D(n384), 
	.C(n385), 
	.B(n386), 
	.A(n387));
   AOI22X1M U462 (.Y(n390), 
	.B1(n397), 
	.B0(mem_11__7_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_10__7_));
   AOI22X1M U463 (.Y(n389), 
	.B1(n399), 
	.B0(mem_9__7_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_8__7_));
   AOI21X1M U464 (.Y(n407), 
	.B0(n388), 
	.A1(n389), 
	.A0(n390));
   AOI22X1M U465 (.Y(n393), 
	.B1(n397), 
	.B0(test_so2), 
	.A1(FE_OFN6_n398), 
	.A0(mem_14__7_));
   AOI22X1M U466 (.Y(n392), 
	.B1(n399), 
	.B0(mem_13__7_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_12__7_));
   AOI21X1M U467 (.Y(n406), 
	.B0(n391), 
	.A1(n392), 
	.A0(n393));
   AOI22X1M U468 (.Y(n396), 
	.B1(n397), 
	.B0(REG3[7]), 
	.A1(FE_OFN6_n398), 
	.A0(REG2[7]));
   AOI22X1M U469 (.Y(n395), 
	.B1(n399), 
	.B0(REG1[7]), 
	.A1(FE_OFN7_n400), 
	.A0(REG0[7]));
   AOI21X1M U470 (.Y(n405), 
	.B0(n394), 
	.A1(n395), 
	.A0(n396));
   AOI22X1M U471 (.Y(n403), 
	.B1(n397), 
	.B0(mem_7__7_), 
	.A1(FE_OFN6_n398), 
	.A0(mem_6__7_));
   AOI22X1M U472 (.Y(n402), 
	.B1(n399), 
	.B0(mem_5__7_), 
	.A1(FE_OFN7_n400), 
	.A0(mem_4__7_));
   AOI21X1M U473 (.Y(n404), 
	.B0(n401), 
	.A1(n402), 
	.A0(n403));
   OR4X1M U474 (.Y(N35), 
	.D(n404), 
	.C(n405), 
	.B(n406), 
	.A(n407));
   DLY1X1M U475 (.Y(n468), 
	.A(test_se));
   INVXLM U476 (.Y(n478), 
	.A(n475));
   INVXLM U477 (.Y(n469), 
	.A(n478));
   INVXLM U478 (.Y(n470), 
	.A(n478));
   INVXLM U479 (.Y(n471), 
	.A(n478));
   DLY1X1M U480 (.Y(n472), 
	.A(test_se));
   DLY1X1M U481 (.Y(n473), 
	.A(test_se));
   DLY1X1M U482 (.Y(n474), 
	.A(test_se));
   DLY1X1M U483 (.Y(n475), 
	.A(test_se));
   DLY1X1M U484 (.Y(n476), 
	.A(test_se));
   DLY1X1M U485 (.Y(n477), 
	.A(test_se));
   DLY1X1M U486 (.Y(n479), 
	.A(n474));
   DLY1X1M U487 (.Y(n480), 
	.A(n473));
   DLY1X1M U488 (.Y(n481), 
	.A(n479));
   DLY1X1M U489 (.Y(n482), 
	.A(n476));
   DLY1X1M U490 (.Y(n483), 
	.A(n472));
   DLY1X1M U491 (.Y(n484), 
	.A(n477));
   DLY1X1M U492 (.Y(n485), 
	.A(n473));
   DLY1X1M U493 (.Y(n486), 
	.A(n475));
   DLY1X1M U494 (.Y(n487), 
	.A(n476));
   DLY1X1M U495 (.Y(n488), 
	.A(n472));
   DLY1X1M U496 (.Y(n489), 
	.A(n477));
   DLY1X1M U497 (.Y(n490), 
	.A(n468));
   DLY1X1M U498 (.Y(n491), 
	.A(n474));
   DLY1X1M U499 (.Y(n492), 
	.A(n468));
   SDFFRQX4M mem_reg_8__2_ (.SI(mem_8__1_), 
	.SE(n475), 
	.RN(FE_OFN0_SYNC_RST_1_mux), 
	.Q(mem_8__2_), 
	.D(n253), 
	.CK(REF_CLK_mux__L9_N12));
   INVXLM U3 (.Y(n1), 
	.A(mem_8__2_));
   CLKINVX12M U4 (.Y(test_so1), 
	.A(n1));
endmodule

module SYS_CTRL_test_1 (
	CLK, 
	RST, 
	FULL, 
	ALU_OUT, 
	OUT_Valid, 
	RX_P_Data, 
	RX_D_VLD, 
	RdData, 
	RdData_Valid, 
	ALU_EN, 
	ALU_FUN, 
	CLK_EN, 
	Address, 
	WrEN, 
	RdEN, 
	WrData, 
	TX_P_Data, 
	TX_D_VLD, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN2_SYNC_RST_1_mux, 
	REF_CLK_mux__L9_N1, 
	REF_CLK_mux__L9_N10, 
	REF_CLK_mux__L9_N3);
   input CLK;
   input RST;
   input FULL;
   input [15:0] ALU_OUT;
   input OUT_Valid;
   input [7:0] RX_P_Data;
   input RX_D_VLD;
   input [7:0] RdData;
   input RdData_Valid;
   output ALU_EN;
   output [3:0] ALU_FUN;
   output CLK_EN;
   output [3:0] Address;
   output WrEN;
   output RdEN;
   output [7:0] WrData;
   output [7:0] TX_P_Data;
   output TX_D_VLD;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN2_SYNC_RST_1_mux;
   input REF_CLK_mux__L9_N1;
   input REF_CLK_mux__L9_N10;
   input REF_CLK_mux__L9_N3;

   // Internal wires
   wire FE_OFN16_n137;
   wire ALU_EN_comb;
   wire CLK_EN_comb;
   wire WrEN_comb;
   wire TX_D_VLD_comb;
   wire n52;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n53;
   wire n55;
   wire n61;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire [3:0] current_state;
   wire [7:0] alu_out_reg;
   wire [3:0] next_state;
   wire [3:0] ALU_FUN_comb;
   wire [7:0] WrData_comb;
   wire [7:0] TX_P_Data_comb;

   BUFX2M FE_OFC16_n137 (.Y(FE_OFN16_n137), 
	.A(n137));
   SDFFRQX2M alu_out_reg_reg_7_ (.SI(alu_out_reg[6]), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(alu_out_reg[7]), 
	.D(n85), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M alu_out_reg_reg_6_ (.SI(alu_out_reg[5]), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(alu_out_reg[6]), 
	.D(n158), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M alu_out_reg_reg_5_ (.SI(alu_out_reg[4]), 
	.SE(n182), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(alu_out_reg[5]), 
	.D(n159), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M alu_out_reg_reg_4_ (.SI(alu_out_reg[3]), 
	.SE(n185), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(alu_out_reg[4]), 
	.D(n160), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M alu_out_reg_reg_3_ (.SI(alu_out_reg[2]), 
	.SE(n179), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(alu_out_reg[3]), 
	.D(n161), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M alu_out_reg_reg_2_ (.SI(alu_out_reg[1]), 
	.SE(n185), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(alu_out_reg[2]), 
	.D(n162), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M alu_out_reg_reg_1_ (.SI(alu_out_reg[0]), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(alu_out_reg[1]), 
	.D(n163), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M alu_out_reg_reg_0_ (.SI(WrEN), 
	.SE(n179), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(alu_out_reg[0]), 
	.D(n164), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M TX_P_Data_reg_7_ (.SI(TX_P_Data[6]), 
	.SE(n181), 
	.RN(RST), 
	.Q(TX_P_Data[7]), 
	.D(TX_P_Data_comb[7]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M TX_P_Data_reg_6_ (.SI(TX_P_Data[5]), 
	.SE(n185), 
	.RN(RST), 
	.Q(TX_P_Data[6]), 
	.D(TX_P_Data_comb[6]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M TX_P_Data_reg_5_ (.SI(TX_P_Data[4]), 
	.SE(n183), 
	.RN(RST), 
	.Q(TX_P_Data[5]), 
	.D(TX_P_Data_comb[5]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M TX_P_Data_reg_4_ (.SI(TX_P_Data[3]), 
	.SE(n180), 
	.RN(RST), 
	.Q(TX_P_Data[4]), 
	.D(TX_P_Data_comb[4]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M TX_P_Data_reg_3_ (.SI(TX_P_Data[2]), 
	.SE(n183), 
	.RN(RST), 
	.Q(TX_P_Data[3]), 
	.D(TX_P_Data_comb[3]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M TX_P_Data_reg_2_ (.SI(TX_P_Data[1]), 
	.SE(n182), 
	.RN(RST), 
	.Q(TX_P_Data[2]), 
	.D(TX_P_Data_comb[2]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M TX_P_Data_reg_1_ (.SI(TX_P_Data[0]), 
	.SE(n184), 
	.RN(RST), 
	.Q(TX_P_Data[1]), 
	.D(TX_P_Data_comb[1]), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M TX_P_Data_reg_0_ (.SI(TX_D_VLD), 
	.SE(n177), 
	.RN(RST), 
	.Q(TX_P_Data[0]), 
	.D(TX_P_Data_comb[0]), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRX1M alu_out_reg_reg_15_ (.SI(n169), 
	.SE(n177), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.QN(n62), 
	.Q(n168), 
	.D(n152), 
	.CK(CLK));
   SDFFRX1M alu_out_reg_reg_14_ (.SI(n170), 
	.SE(n180), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.QN(n63), 
	.Q(n169), 
	.D(n151), 
	.CK(CLK));
   SDFFRX1M alu_out_reg_reg_13_ (.SI(n171), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.QN(n64), 
	.Q(n170), 
	.D(n150), 
	.CK(CLK));
   SDFFRX1M alu_out_reg_reg_12_ (.SI(n172), 
	.SE(n179), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.QN(n65), 
	.Q(n171), 
	.D(n149), 
	.CK(CLK));
   SDFFRX1M alu_out_reg_reg_11_ (.SI(n173), 
	.SE(n181), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.QN(n66), 
	.Q(n172), 
	.D(n148), 
	.CK(CLK));
   SDFFRX1M alu_out_reg_reg_10_ (.SI(n174), 
	.SE(n185), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.QN(n67), 
	.Q(n173), 
	.D(n147), 
	.CK(CLK));
   SDFFRX1M alu_out_reg_reg_9_ (.SI(n175), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.QN(n68), 
	.Q(n174), 
	.D(n146), 
	.CK(CLK));
   SDFFRX1M alu_out_reg_reg_8_ (.SI(alu_out_reg[7]), 
	.SE(n184), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.QN(n69), 
	.Q(n175), 
	.D(n145), 
	.CK(CLK));
   SDFFRQX2M WrData_reg_7_ (.SI(WrData[6]), 
	.SE(n181), 
	.RN(RST), 
	.Q(WrData[7]), 
	.D(WrData_comb[7]), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M WrData_reg_6_ (.SI(WrData[5]), 
	.SE(n185), 
	.RN(RST), 
	.Q(WrData[6]), 
	.D(WrData_comb[6]), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M WrData_reg_5_ (.SI(WrData[4]), 
	.SE(n178), 
	.RN(RST), 
	.Q(WrData[5]), 
	.D(WrData_comb[5]), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M WrData_reg_4_ (.SI(WrData[3]), 
	.SE(n180), 
	.RN(RST), 
	.Q(WrData[4]), 
	.D(WrData_comb[4]), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M WrData_reg_3_ (.SI(WrData[2]), 
	.SE(n184), 
	.RN(RST), 
	.Q(WrData[3]), 
	.D(WrData_comb[3]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M WrData_reg_2_ (.SI(WrData[1]), 
	.SE(n183), 
	.RN(RST), 
	.Q(WrData[2]), 
	.D(WrData_comb[2]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M WrData_reg_1_ (.SI(WrData[0]), 
	.SE(n180), 
	.RN(RST), 
	.Q(WrData[1]), 
	.D(WrData_comb[1]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M WrData_reg_0_ (.SI(TX_P_Data[7]), 
	.SE(n181), 
	.RN(RST), 
	.Q(WrData[0]), 
	.D(WrData_comb[0]), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M ALU_EN_reg (.SI(test_si), 
	.SE(n185), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_EN), 
	.D(ALU_EN_comb), 
	.CK(CLK));
   SDFFRQX2M WrEN_reg (.SI(WrData[7]), 
	.SE(n180), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(WrEN), 
	.D(WrEN_comb), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M TX_D_VLD_reg (.SI(RdEN), 
	.SE(n183), 
	.RN(RST), 
	.Q(TX_D_VLD), 
	.D(TX_D_VLD_comb), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFSQX2M current_state_reg_1_ (.SN(RST), 
	.SI(current_state[0]), 
	.SE(n177), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(CLK));
   SDFFRX1M done_reg (.SI(current_state[3]), 
	.SE(n182), 
	.RN(RST), 
	.QN(n52), 
	.Q(test_so), 
	.D(n157), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M RdEN_reg (.SI(CLK_EN), 
	.SE(n184), 
	.RN(RST), 
	.Q(RdEN), 
	.D(n82), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M current_state_reg_3_ (.SI(current_state[2]), 
	.SE(n182), 
	.RN(RST), 
	.Q(current_state[3]), 
	.D(next_state[3]), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M current_state_reg_0_ (.SI(n168), 
	.SE(n180), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(CLK));
   SDFFRQX2M ALU_FUN_reg_3_ (.SI(ALU_FUN[2]), 
	.SE(n181), 
	.RN(RST), 
	.Q(ALU_FUN[3]), 
	.D(ALU_FUN_comb[3]), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M ALU_FUN_reg_1_ (.SI(ALU_FUN[0]), 
	.SE(n184), 
	.RN(RST), 
	.Q(ALU_FUN[1]), 
	.D(ALU_FUN_comb[1]), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M current_state_reg_2_ (.SI(current_state[1]), 
	.SE(n185), 
	.RN(RST), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M ALU_FUN_reg_0_ (.SI(ALU_EN), 
	.SE(n180), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(ALU_FUN[0]), 
	.D(ALU_FUN_comb[0]), 
	.CK(CLK));
   SDFFRQX2M Address_reg_3_ (.SI(Address[2]), 
	.SE(n182), 
	.RN(RST), 
	.Q(Address[3]), 
	.D(n156), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M Address_reg_1_ (.SI(Address[0]), 
	.SE(n183), 
	.RN(RST), 
	.Q(Address[1]), 
	.D(n154), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M Address_reg_0_ (.SI(ALU_FUN[3]), 
	.SE(n182), 
	.RN(RST), 
	.Q(Address[0]), 
	.D(n153), 
	.CK(REF_CLK_mux__L9_N10));
   SDFFRQX2M Address_reg_2_ (.SI(Address[1]), 
	.SE(n181), 
	.RN(RST), 
	.Q(Address[2]), 
	.D(n155), 
	.CK(REF_CLK_mux__L9_N1));
   SDFFRQX2M CLK_EN_reg (.SI(Address[3]), 
	.SE(n183), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(CLK_EN), 
	.D(CLK_EN_comb), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M ALU_FUN_reg_2_ (.SI(ALU_FUN[1]), 
	.SE(n178), 
	.RN(RST), 
	.Q(ALU_FUN[2]), 
	.D(ALU_FUN_comb[2]), 
	.CK(REF_CLK_mux__L9_N10));
   AOI211X2M U53 (.Y(n106), 
	.C0(n87), 
	.B0(FULL), 
	.A1(n52), 
	.A0(n55));
   NAND3X2M U54 (.Y(n96), 
	.C(current_state[2]), 
	.B(n133), 
	.A(current_state[0]));
   NOR2X2M U55 (.Y(n134), 
	.B(n90), 
	.A(n131));
   INVX2M U56 (.Y(n71), 
	.A(WrEN_comb));
   NOR2X2M U57 (.Y(WrEN_comb), 
	.B(n134), 
	.A(n73));
   NOR2BX2M U58 (.Y(n93), 
	.B(FE_OFN16_n137), 
	.AN(n135));
   INVX2M U59 (.Y(n78), 
	.A(n132));
   INVX2M U60 (.Y(n61), 
	.A(FULL));
   INVX2M U61 (.Y(n80), 
	.A(n131));
   NAND2X2M U62 (.Y(TX_D_VLD_comb), 
	.B(n70), 
	.A(n93));
   INVX2M U63 (.Y(n53), 
	.A(n55));
   NAND2X2M U68 (.Y(n131), 
	.B(n97), 
	.A(n111));
   NOR2X2M U69 (.Y(WrData_comb[4]), 
	.B(n71), 
	.A(n76));
   NOR2X2M U70 (.Y(WrData_comb[6]), 
	.B(n71), 
	.A(n75));
   OAI21X2M U71 (.Y(n126), 
	.B0(RX_D_VLD), 
	.A1(n132), 
	.A0(n131));
   NOR2X2M U72 (.Y(ALU_EN_comb), 
	.B(n96), 
	.A(n73));
   NAND2BX2M U73 (.Y(n135), 
	.B(n61), 
	.AN(n86));
   AOI21X2M U74 (.Y(n109), 
	.B0(n73), 
	.A1(n97), 
	.A0(n110));
   NAND3X2M U75 (.Y(n110), 
	.C(n100), 
	.B(n83), 
	.A(n81));
   AOI21X2M U76 (.Y(n108), 
	.B0(RX_D_VLD), 
	.A1(n111), 
	.A0(n91));
   NAND2X2M U77 (.Y(n132), 
	.B(n110), 
	.A(n91));
   NAND4X2M U78 (.Y(CLK_EN_comb), 
	.D(n96), 
	.C(n87), 
	.B(n86), 
	.A(n80));
   AOI21X2M U79 (.Y(n95), 
	.B0(RX_D_VLD), 
	.A1(n96), 
	.A0(n91));
   OAI211X2M U80 (.Y(next_state[3]), 
	.C0(n72), 
	.B0(n87), 
	.A1(n61), 
	.A0(n86));
   INVX2M U81 (.Y(n72), 
	.A(ALU_EN_comb));
   NOR2X2M U82 (.Y(ALU_FUN_comb[0]), 
	.B(n128), 
	.A(n96));
   NOR2X2M U83 (.Y(ALU_FUN_comb[1]), 
	.B(n129), 
	.A(n96));
   NOR2X2M U84 (.Y(ALU_FUN_comb[2]), 
	.B(n130), 
	.A(n96));
   NOR2X2M U85 (.Y(ALU_FUN_comb[3]), 
	.B(n116), 
	.A(n96));
   INVX2M U86 (.Y(n74), 
	.A(n116));
   NOR2X2M U87 (.Y(WrData_comb[3]), 
	.B(n116), 
	.A(n134));
   INVX2M U88 (.Y(n82), 
	.A(n112));
   NOR2X2M U89 (.Y(WrData_comb[0]), 
	.B(n128), 
	.A(n134));
   NOR2X2M U90 (.Y(WrData_comb[1]), 
	.B(n129), 
	.A(n134));
   NOR2X2M U91 (.Y(WrData_comb[2]), 
	.B(n130), 
	.A(n134));
   NAND2X2M U92 (.Y(next_state[0]), 
	.B(n105), 
	.A(n104));
   NOR4X1M U93 (.Y(n105), 
	.D(n109), 
	.C(n108), 
	.B(n107), 
	.A(n106));
   AOI211X2M U94 (.Y(n104), 
	.C0(n113), 
	.B0(n88), 
	.A1(n165), 
	.A0(n82));
   AOI21X2M U95 (.Y(n107), 
	.B0(n61), 
	.A1(n86), 
	.A0(n112));
   NAND3BX2M U96 (.Y(next_state[2]), 
	.C(n89), 
	.B(n80), 
	.AN(n88));
   AOI2BB2XLM U97 (.Y(n89), 
	.B1(n73), 
	.B0(n90), 
	.A1N(n73), 
	.A0N(n91));
   INVX2M U98 (.Y(n79), 
	.A(n97));
   NOR3X2M U100 (.Y(n137), 
	.C(n165), 
	.B(FULL), 
	.A(n112));
   INVX2M U101 (.Y(n70), 
	.A(n106));
   INVX2M U102 (.Y(n73), 
	.A(RX_D_VLD));
   INVX2M U103 (.Y(n164), 
	.A(n118));
   INVX2M U104 (.Y(n163), 
	.A(n119));
   INVX2M U105 (.Y(n162), 
	.A(n120));
   INVX2M U106 (.Y(n161), 
	.A(n121));
   INVX2M U107 (.Y(n160), 
	.A(n122));
   INVX2M U108 (.Y(n159), 
	.A(n123));
   INVX2M U109 (.Y(n158), 
	.A(n124));
   INVX2M U110 (.Y(n85), 
	.A(n125));
   NOR3X2M U113 (.Y(n90), 
	.C(n84), 
	.B(current_state[3]), 
	.A(current_state[1]));
   NAND2X2M U114 (.Y(n111), 
	.B(current_state[0]), 
	.A(n90));
   INVX2M U115 (.Y(n84), 
	.A(current_state[2]));
   NOR2BX2M U116 (.Y(WrData_comb[5]), 
	.B(n71), 
	.AN(RX_P_Data[5]));
   NOR2BX2M U117 (.Y(WrData_comb[7]), 
	.B(n71), 
	.AN(RX_P_Data[7]));
   NOR3BX2M U118 (.Y(n98), 
	.C(current_state[2]), 
	.B(current_state[0]), 
	.AN(n133));
   NOR3BX2M U119 (.Y(n101), 
	.C(RX_P_Data[4]), 
	.B(RX_P_Data[0]), 
	.AN(n117));
   NAND3X2M U120 (.Y(n86), 
	.C(current_state[3]), 
	.B(current_state[0]), 
	.A(n100));
   NOR3BX2M U121 (.Y(n102), 
	.C(n76), 
	.B(n103), 
	.AN(RX_P_Data[0]));
   NAND3X2M U122 (.Y(n97), 
	.C(current_state[2]), 
	.B(n81), 
	.A(n133));
   NOR2X2M U123 (.Y(n100), 
	.B(current_state[1]), 
	.A(current_state[2]));
   NAND3X2M U124 (.Y(n91), 
	.C(current_state[0]), 
	.B(n84), 
	.A(n133));
   NAND2X2M U125 (.Y(n116), 
	.B(RX_D_VLD), 
	.A(RX_P_Data[3]));
   NAND3X2M U126 (.Y(n114), 
	.C(RX_P_Data[7]), 
	.B(n98), 
	.A(n74));
   NAND3X2M U127 (.Y(n112), 
	.C(n100), 
	.B(n83), 
	.A(current_state[0]));
   OAI22X1M U128 (.Y(n88), 
	.B1(n114), 
	.B0(n115), 
	.A1(n96), 
	.A0(RX_D_VLD));
   AOI31X2M U129 (.Y(n115), 
	.B0(n101), 
	.A2(RX_P_Data[4]), 
	.A1(n117), 
	.A0(RX_P_Data[0]));
   NOR2BX2M U130 (.Y(n133), 
	.B(current_state[3]), 
	.AN(current_state[1]));
   OAI221X1M U131 (.Y(TX_P_Data_comb[0]), 
	.C0(n144), 
	.B1(n70), 
	.B0(n118), 
	.A1(n135), 
	.A0(n69));
   NAND2X2M U132 (.Y(n144), 
	.B(FE_OFN16_n137), 
	.A(RdData[0]));
   OAI221X1M U133 (.Y(TX_P_Data_comb[1]), 
	.C0(n143), 
	.B1(n70), 
	.B0(n119), 
	.A1(n135), 
	.A0(n68));
   NAND2X2M U134 (.Y(n143), 
	.B(FE_OFN16_n137), 
	.A(RdData[1]));
   OAI221X1M U135 (.Y(TX_P_Data_comb[2]), 
	.C0(n142), 
	.B1(n70), 
	.B0(n120), 
	.A1(n135), 
	.A0(n67));
   NAND2X2M U136 (.Y(n142), 
	.B(FE_OFN16_n137), 
	.A(RdData[2]));
   OAI221X1M U137 (.Y(TX_P_Data_comb[3]), 
	.C0(n141), 
	.B1(n70), 
	.B0(n121), 
	.A1(n135), 
	.A0(n66));
   NAND2X2M U138 (.Y(n141), 
	.B(FE_OFN16_n137), 
	.A(RdData[3]));
   OAI221X1M U139 (.Y(TX_P_Data_comb[4]), 
	.C0(n140), 
	.B1(n70), 
	.B0(n122), 
	.A1(n135), 
	.A0(n65));
   NAND2X2M U140 (.Y(n140), 
	.B(FE_OFN16_n137), 
	.A(RdData[4]));
   OAI221X1M U141 (.Y(TX_P_Data_comb[5]), 
	.C0(n139), 
	.B1(n70), 
	.B0(n123), 
	.A1(n135), 
	.A0(n64));
   NAND2X2M U142 (.Y(n139), 
	.B(FE_OFN16_n137), 
	.A(RdData[5]));
   OAI221X1M U143 (.Y(TX_P_Data_comb[6]), 
	.C0(n138), 
	.B1(n70), 
	.B0(n124), 
	.A1(n135), 
	.A0(n63));
   NAND2X2M U144 (.Y(n138), 
	.B(FE_OFN16_n137), 
	.A(RdData[6]));
   OAI221X1M U145 (.Y(TX_P_Data_comb[7]), 
	.C0(n136), 
	.B1(n70), 
	.B0(n125), 
	.A1(n135), 
	.A0(n62));
   NAND2X2M U146 (.Y(n136), 
	.B(FE_OFN16_n137), 
	.A(RdData[7]));
   NAND3X2M U147 (.Y(n87), 
	.C(current_state[3]), 
	.B(n81), 
	.A(n100));
   NOR4X1M U148 (.Y(n117), 
	.D(RX_P_Data[5]), 
	.C(RX_P_Data[1]), 
	.B(n77), 
	.A(n75));
   NAND4X2M U149 (.Y(n103), 
	.D(n75), 
	.C(n77), 
	.B(RX_P_Data[1]), 
	.A(RX_P_Data[5]));
   NOR4X1M U150 (.Y(n113), 
	.D(n103), 
	.C(n114), 
	.B(RX_P_Data[0]), 
	.A(RX_P_Data[4]));
   INVX2M U151 (.Y(n81), 
	.A(current_state[0]));
   OAI21X2M U152 (.Y(n153), 
	.B0(n127), 
	.A1(n126), 
	.A0(n97));
   AOI2BB2XLM U153 (.Y(n127), 
	.B1(n126), 
	.B0(Address[0]), 
	.A1N(n78), 
	.A0N(n128));
   INVX2M U154 (.Y(n83), 
	.A(current_state[3]));
   OAI2BB2X1M U155 (.Y(n156), 
	.B1(n116), 
	.B0(n78), 
	.A1N(n126), 
	.A0N(Address[3]));
   INVX2M U156 (.Y(n75), 
	.A(RX_P_Data[6]));
   OAI2BB2X1M U157 (.Y(n154), 
	.B1(n129), 
	.B0(n78), 
	.A1N(n126), 
	.A0N(Address[1]));
   OAI2BB2X1M U158 (.Y(n155), 
	.B1(n130), 
	.B0(n78), 
	.A1N(n126), 
	.A0N(Address[2]));
   INVX2M U159 (.Y(n76), 
	.A(RX_P_Data[4]));
   OAI21X2M U160 (.Y(n157), 
	.B0(n55), 
	.A1(n52), 
	.A0(n98));
   INVX2M U161 (.Y(n77), 
	.A(RX_P_Data[2]));
   NAND3X2M U162 (.Y(next_state[1]), 
	.C(n94), 
	.B(n93), 
	.A(n92));
   AOI2BB2XLM U163 (.Y(n92), 
	.B1(n99), 
	.B0(n98), 
	.A1N(n100), 
	.A0N(n83));
   AOI211X2M U164 (.Y(n94), 
	.C0(n95), 
	.B0(n79), 
	.A1(RX_D_VLD), 
	.A0(n90));
   OAI211X2M U165 (.Y(n99), 
	.C0(RX_P_Data[7]), 
	.B0(n74), 
	.A1(n102), 
	.A0(n101));
   INVX2M U166 (.Y(n55), 
	.A(OUT_Valid));
   AOI22X1M U167 (.Y(n118), 
	.B1(ALU_OUT[0]), 
	.B0(n53), 
	.A1(n55), 
	.A0(alu_out_reg[0]));
   AOI22X1M U168 (.Y(n119), 
	.B1(n53), 
	.B0(ALU_OUT[1]), 
	.A1(n55), 
	.A0(alu_out_reg[1]));
   AOI22X1M U169 (.Y(n120), 
	.B1(n53), 
	.B0(ALU_OUT[2]), 
	.A1(n55), 
	.A0(alu_out_reg[2]));
   AOI22X1M U170 (.Y(n121), 
	.B1(n53), 
	.B0(ALU_OUT[3]), 
	.A1(n55), 
	.A0(alu_out_reg[3]));
   AOI22X1M U171 (.Y(n122), 
	.B1(n53), 
	.B0(ALU_OUT[4]), 
	.A1(n55), 
	.A0(alu_out_reg[4]));
   AOI22X1M U172 (.Y(n123), 
	.B1(n53), 
	.B0(ALU_OUT[5]), 
	.A1(n55), 
	.A0(alu_out_reg[5]));
   AOI22X1M U173 (.Y(n124), 
	.B1(n53), 
	.B0(ALU_OUT[6]), 
	.A1(n55), 
	.A0(alu_out_reg[6]));
   AOI22X1M U174 (.Y(n125), 
	.B1(n53), 
	.B0(ALU_OUT[7]), 
	.A1(n55), 
	.A0(alu_out_reg[7]));
   NAND2X2M U175 (.Y(n129), 
	.B(RX_D_VLD), 
	.A(RX_P_Data[1]));
   NAND2X2M U176 (.Y(n130), 
	.B(RX_D_VLD), 
	.A(RX_P_Data[2]));
   NAND2X2M U177 (.Y(n128), 
	.B(RX_D_VLD), 
	.A(RX_P_Data[0]));
   OAI2BB2X1M U178 (.Y(n145), 
	.B1(n69), 
	.B0(OUT_Valid), 
	.A1N(n53), 
	.A0N(ALU_OUT[8]));
   OAI2BB2X1M U179 (.Y(n146), 
	.B1(n68), 
	.B0(OUT_Valid), 
	.A1N(n53), 
	.A0N(ALU_OUT[9]));
   OAI2BB2X1M U180 (.Y(n147), 
	.B1(n67), 
	.B0(OUT_Valid), 
	.A1N(OUT_Valid), 
	.A0N(ALU_OUT[10]));
   OAI2BB2X1M U181 (.Y(n148), 
	.B1(n66), 
	.B0(OUT_Valid), 
	.A1N(OUT_Valid), 
	.A0N(ALU_OUT[11]));
   OAI2BB2X1M U182 (.Y(n149), 
	.B1(n65), 
	.B0(OUT_Valid), 
	.A1N(OUT_Valid), 
	.A0N(ALU_OUT[12]));
   OAI2BB2X1M U183 (.Y(n150), 
	.B1(n64), 
	.B0(OUT_Valid), 
	.A1N(n53), 
	.A0N(ALU_OUT[13]));
   OAI2BB2X1M U184 (.Y(n151), 
	.B1(n63), 
	.B0(OUT_Valid), 
	.A1N(n53), 
	.A0N(ALU_OUT[14]));
   OAI2BB2X1M U185 (.Y(n152), 
	.B1(n62), 
	.B0(OUT_Valid), 
	.A1N(n53), 
	.A0N(ALU_OUT[15]));
   INVX2M U186 (.Y(n165), 
	.A(RdData_Valid));
   DLY1X1M U187 (.Y(n177), 
	.A(test_se));
   DLY1X1M U188 (.Y(n178), 
	.A(test_se));
   DLY1X1M U189 (.Y(n179), 
	.A(test_se));
   DLY1X1M U190 (.Y(n180), 
	.A(n179));
   DLY1X1M U191 (.Y(n181), 
	.A(n179));
   DLY1X1M U192 (.Y(n182), 
	.A(n178));
   DLY1X1M U193 (.Y(n183), 
	.A(n177));
   DLY1X1M U194 (.Y(n184), 
	.A(n178));
   DLY1X1M U195 (.Y(n185), 
	.A(n178));
endmodule

module CLKDIV_MUX_WIDTH8 (
	IN, 
	OUT);
   input [5:0] IN;
   output [7:0] OUT;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NOR3X2M U11 (.Y(OUT[1]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n7));
   NOR3X2M U12 (.Y(OUT[2]), 
	.C(IN[0]), 
	.B(IN[1]), 
	.A(n6));
   NAND4BX1M U13 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(IN[4]), 
	.AN(IN[3]));
   NAND4BX1M U14 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(IN[3]), 
	.AN(IN[4]));
   NOR4X1M U15 (.Y(OUT[3]), 
	.D(IN[4]), 
	.C(IN[5]), 
	.B(IN[3]), 
	.A(n5));
   NAND3X2M U16 (.Y(n5), 
	.C(IN[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U17 (.Y(n15), 
	.A(IN[2]));
   INVX2M U18 (.Y(n17), 
	.A(IN[0]));
   INVX2M U19 (.Y(n16), 
	.A(IN[1]));
   INVX2M U20 (.Y(n14), 
	.A(IN[5]));
   OAI211X2M U21 (.Y(OUT[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U22 (.Y(n8), 
	.D(n15), 
	.C(IN[3]), 
	.B(IN[4]), 
	.A(IN[5]));
   NAND2X2M U23 (.Y(n9), 
	.B(n6), 
	.A(n7));
   INVX2M U3 (.Y(OUT[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(OUT[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(OUT[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(OUT[4]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module clk_div_RATIO_WD8_0_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module clk_div_RATIO_WD8_test_0 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_SYNC_RST_2_mux, 
	UART_CLK_mux__L3_N0, 
	UART_CLK_mux__L8_N1);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_SYNC_RST_2_mux;
   input UART_CLK_mux__L3_N0;
   input UART_CLK_mux__L8_N1;

   // Internal wires
   wire FE_PHN11_div_clk__Exclude_0_NET;
   wire FE_PHN10_div_clk__Exclude_0_NET;
   wire div_clk__L1_N0;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N2;
   wire div_clk;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N52;
   wire N53;
   wire N54;
   wire N55;
   wire N56;
   wire N57;
   wire N58;
   wire n29;
   wire n30;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n48;
   wire [6:0] half;
   wire [6:0] i;

   DLY4X1M FE_PHC11_div_clk__Exclude_0_NET (.Y(FE_PHN11_div_clk__Exclude_0_NET), 
	.A(FE_PHN10_div_clk__Exclude_0_NET));
   DLY4X1M FE_PHC10_div_clk__Exclude_0_NET (.Y(FE_PHN10_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   CLKBUFX12M div_clk__L1_I0 (.Y(div_clk__L1_N0), 
	.A(div_clk));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg (.SI(test_si), 
	.SE(n48), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n30), 
	.CK(UART_CLK_mux__L3_N0));
   SDFFRQX2M tick_1_reg (.SI(i[6]), 
	.SE(n48), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n29), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_6_ (.SI(i[5]), 
	.SE(n48), 
	.RN(i_rst_n), 
	.Q(i[6]), 
	.D(N58), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_0_ (.SI(FE_PHN11_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[0]), 
	.D(N52), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_2_ (.SI(i[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[2]), 
	.D(N54), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_1_ (.SI(i[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[1]), 
	.D(N53), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_5_ (.SI(i[4]), 
	.SE(test_se), 
	.RN(FE_OFN4_SYNC_RST_2_mux), 
	.Q(i[5]), 
	.D(N57), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_4_ (.SI(i[3]), 
	.SE(test_se), 
	.RN(FE_OFN4_SYNC_RST_2_mux), 
	.Q(i[4]), 
	.D(N56), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_3_ (.SI(i[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[3]), 
	.D(N55), 
	.CK(i_ref_clk));
   OR2X2M U7 (.Y(n3), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   INVX2M U14 (.Y(n17), 
	.A(LTIE_LTIELO_NET));
   MX2X2M U16 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk__L1_N0), 
	.A(UART_CLK_mux__L8_N1));
   CLKINVX1M U17 (.Y(half[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U18 (.Y(half[1]), 
	.B0(n3), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U19 (.Y(n4), 
	.B(i_div_ratio[3]), 
	.A(n3));
   OAI2BB1X1M U20 (.Y(half[2]), 
	.B0(n4), 
	.A1N(i_div_ratio[3]), 
	.A0N(n3));
   NOR2X1M U21 (.Y(n5), 
	.B(LTIE_LTIELO_NET), 
	.A(n4));
   AO21XLM U22 (.Y(half[3]), 
	.B0(n5), 
	.A1(LTIE_LTIELO_NET), 
	.A0(n4));
   CLKNAND2X2M U23 (.Y(n6), 
	.B(n17), 
	.A(n5));
   OAI21X1M U24 (.Y(half[4]), 
	.B0(n6), 
	.A1(n17), 
	.A0(n5));
   XNOR2X1M U25 (.Y(half[5]), 
	.B(n6), 
	.A(LTIE_LTIELO_NET));
   NOR2X1M U26 (.Y(n7), 
	.B(n6), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U27 (.Y(half[6]), 
	.B(n7), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U28 (.Y(n30), 
	.B(n18), 
	.A(div_clk__Exclude_0_NET));
   NOR2X1M U29 (.Y(n18), 
	.B(n20), 
	.A(n19));
   MXI2X1M U30 (.Y(n29), 
	.S0(test_so), 
	.B(n22), 
	.A(n21));
   OR2X1M U31 (.Y(n21), 
	.B(n20), 
	.A(n19));
   NOR2BX1M U32 (.Y(N58), 
	.B(n22), 
	.AN(N24));
   NOR2BX1M U33 (.Y(N57), 
	.B(n22), 
	.AN(N23));
   NOR2BX1M U34 (.Y(N56), 
	.B(n22), 
	.AN(N22));
   NOR2BX1M U35 (.Y(N55), 
	.B(n22), 
	.AN(N21));
   NOR2BX1M U36 (.Y(N54), 
	.B(n22), 
	.AN(N20));
   NOR2BX1M U37 (.Y(N53), 
	.B(n22), 
	.AN(N19));
   NOR2BX1M U38 (.Y(N52), 
	.B(n22), 
	.AN(N18));
   CLKNAND2X2M U39 (.Y(n22), 
	.B(N2), 
	.A(n19));
   MXI2X1M U40 (.Y(n19), 
	.S0(n25), 
	.B(n24), 
	.A(n23));
   AND2X1M U41 (.Y(n25), 
	.B(i_div_ratio[0]), 
	.A(test_so));
   NOR4X1M U42 (.Y(n24), 
	.D(n31), 
	.C(n28), 
	.B(n27), 
	.A(n26));
   CLKXOR2X2M U43 (.Y(n31), 
	.B(i[3]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U44 (.Y(n28), 
	.B(i[5]), 
	.A(LTIE_LTIELO_NET));
   CLKXOR2X2M U45 (.Y(n27), 
	.B(i[4]), 
	.A(LTIE_LTIELO_NET));
   NAND4X1M U46 (.Y(n26), 
	.D(n35), 
	.C(n34), 
	.B(n33), 
	.A(n32));
   XNOR2X1M U47 (.Y(n35), 
	.B(LTIE_LTIELO_NET), 
	.A(i[6]));
   XNOR2X1M U48 (.Y(n34), 
	.B(i_div_ratio[1]), 
	.A(i[0]));
   XNOR2X1M U49 (.Y(n33), 
	.B(i_div_ratio[2]), 
	.A(i[1]));
   XNOR2X1M U50 (.Y(n32), 
	.B(i_div_ratio[3]), 
	.A(i[2]));
   NOR4X1M U51 (.Y(n23), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   CLKXOR2X2M U52 (.Y(n39), 
	.B(half[3]), 
	.A(i[3]));
   CLKXOR2X2M U53 (.Y(n38), 
	.B(half[5]), 
	.A(i[5]));
   CLKXOR2X2M U54 (.Y(n37), 
	.B(half[4]), 
	.A(i[4]));
   NAND4X1M U55 (.Y(n36), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   XNOR2X1M U56 (.Y(n43), 
	.B(half[6]), 
	.A(i[6]));
   XNOR2X1M U57 (.Y(n42), 
	.B(half[0]), 
	.A(i[0]));
   XNOR2X1M U58 (.Y(n41), 
	.B(half[1]), 
	.A(i[1]));
   XNOR2X1M U59 (.Y(n40), 
	.B(half[2]), 
	.A(i[2]));
   CLKINVX1M U60 (.Y(N2), 
	.A(n20));
   OAI21X1M U61 (.Y(n20), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n45), 
	.A0(n44));
   OR3X1M U62 (.Y(n45), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U63 (.Y(n44), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   DLY1X1M U64 (.Y(n48), 
	.A(test_se));
   clk_div_RATIO_WD8_0_DW01_inc_0 r76 (.A({ i[6],
		i[5],
		i[4],
		i[3],
		i[2],
		i[1],
		i[0] }), 
	.SUM({ N24,
		N23,
		N22,
		N21,
		N20,
		N19,
		N18 }));
endmodule

module clk_div_RATIO_WD8_1_DW01_inc_0 (
	A, 
	SUM);
   input [6:0] A;
   output [6:0] SUM;

   // Internal wires
   wire [6:2] carry;

   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   CLKXOR2X2M U1 (.Y(SUM[6]), 
	.B(A[6]), 
	.A(carry[6]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module clk_div_RATIO_WD8_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_CLK_mux__L3_N1, 
	UART_CLK_mux__L8_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_CLK_mux__L3_N1;
   input UART_CLK_mux__L8_N0;

   // Internal wires
   wire FE_PHN9_div_clk__Exclude_0_NET;
   wire FE_PHN8_div_clk__Exclude_0_NET;
   wire div_clk__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N2;
   wire div_clk;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N52;
   wire N53;
   wire N54;
   wire N55;
   wire N56;
   wire N57;
   wire N58;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n59;
   wire [6:0] half;
   wire [6:0] i;

   DLY4X1M FE_PHC9_div_clk__Exclude_0_NET (.Y(FE_PHN9_div_clk__Exclude_0_NET), 
	.A(FE_PHN8_div_clk__Exclude_0_NET));
   DLY4X1M FE_PHC8_div_clk__Exclude_0_NET (.Y(FE_PHN8_div_clk__Exclude_0_NET), 
	.A(div_clk__Exclude_0_NET));
   BUFX8M div_clk__Exclude_0 (.Y(div_clk__Exclude_0_NET), 
	.A(div_clk));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg (.SI(test_si), 
	.SE(n59), 
	.RN(i_rst_n), 
	.Q(div_clk), 
	.D(n46), 
	.CK(UART_CLK_mux__L3_N1));
   SDFFRQX2M tick_1_reg (.SI(i[6]), 
	.SE(n59), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n47), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_6_ (.SI(i[5]), 
	.SE(n59), 
	.RN(i_rst_n), 
	.Q(i[6]), 
	.D(N58), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_0_ (.SI(FE_PHN9_div_clk__Exclude_0_NET), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[0]), 
	.D(N52), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_2_ (.SI(i[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[2]), 
	.D(N54), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_1_ (.SI(i[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[1]), 
	.D(N53), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_5_ (.SI(i[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[5]), 
	.D(N57), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_4_ (.SI(i[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[4]), 
	.D(N56), 
	.CK(i_ref_clk));
   SDFFRQX2M i_reg_3_ (.SI(i[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(i[3]), 
	.D(N55), 
	.CK(i_ref_clk));
   OR2X2M U9 (.Y(n3), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   INVX2M U14 (.Y(n17), 
	.A(i_div_ratio[5]));
   MX2X2M U16 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk), 
	.A(UART_CLK_mux__L8_N0));
   CLKINVX1M U17 (.Y(half[0]), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U18 (.Y(half[1]), 
	.B0(n3), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U19 (.Y(n4), 
	.B(i_div_ratio[3]), 
	.A(n3));
   OAI2BB1X1M U20 (.Y(half[2]), 
	.B0(n4), 
	.A1N(i_div_ratio[3]), 
	.A0N(n3));
   NOR2X1M U21 (.Y(n5), 
	.B(i_div_ratio[4]), 
	.A(n4));
   AO21XLM U22 (.Y(half[3]), 
	.B0(n5), 
	.A1(i_div_ratio[4]), 
	.A0(n4));
   CLKNAND2X2M U23 (.Y(n6), 
	.B(n17), 
	.A(n5));
   OAI21X1M U24 (.Y(half[4]), 
	.B0(n6), 
	.A1(n17), 
	.A0(n5));
   XNOR2X1M U25 (.Y(half[5]), 
	.B(n6), 
	.A(i_div_ratio[6]));
   NOR2X1M U26 (.Y(n7), 
	.B(n6), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U27 (.Y(half[6]), 
	.B(n7), 
	.A(i_div_ratio[7]));
   CLKXOR2X2M U28 (.Y(n46), 
	.B(n18), 
	.A(div_clk__Exclude_0_NET));
   NOR2X1M U29 (.Y(n18), 
	.B(n20), 
	.A(n19));
   MXI2X1M U30 (.Y(n47), 
	.S0(test_so), 
	.B(n22), 
	.A(n21));
   OR2X1M U31 (.Y(n21), 
	.B(n20), 
	.A(n19));
   NOR2BX1M U32 (.Y(N58), 
	.B(n22), 
	.AN(N24));
   NOR2BX1M U33 (.Y(N57), 
	.B(n22), 
	.AN(N23));
   NOR2BX1M U34 (.Y(N56), 
	.B(n22), 
	.AN(N22));
   NOR2BX1M U35 (.Y(N55), 
	.B(n22), 
	.AN(N21));
   NOR2BX1M U36 (.Y(N54), 
	.B(n22), 
	.AN(N20));
   NOR2BX1M U37 (.Y(N53), 
	.B(n22), 
	.AN(N19));
   NOR2BX1M U38 (.Y(N52), 
	.B(n22), 
	.AN(N18));
   CLKNAND2X2M U39 (.Y(n22), 
	.B(N2), 
	.A(n19));
   MXI2X1M U40 (.Y(n19), 
	.S0(n25), 
	.B(n24), 
	.A(n23));
   AND2X1M U41 (.Y(n25), 
	.B(i_div_ratio[0]), 
	.A(test_so));
   NOR4X1M U42 (.Y(n24), 
	.D(n31), 
	.C(n28), 
	.B(n27), 
	.A(n26));
   CLKXOR2X2M U43 (.Y(n31), 
	.B(i[3]), 
	.A(i_div_ratio[4]));
   CLKXOR2X2M U44 (.Y(n28), 
	.B(i[5]), 
	.A(i_div_ratio[6]));
   CLKXOR2X2M U45 (.Y(n27), 
	.B(i[4]), 
	.A(i_div_ratio[5]));
   NAND4X1M U46 (.Y(n26), 
	.D(n35), 
	.C(n34), 
	.B(n33), 
	.A(n32));
   XNOR2X1M U47 (.Y(n35), 
	.B(i_div_ratio[7]), 
	.A(i[6]));
   XNOR2X1M U48 (.Y(n34), 
	.B(i_div_ratio[1]), 
	.A(i[0]));
   XNOR2X1M U49 (.Y(n33), 
	.B(i_div_ratio[2]), 
	.A(i[1]));
   XNOR2X1M U50 (.Y(n32), 
	.B(i_div_ratio[3]), 
	.A(i[2]));
   NOR4X1M U51 (.Y(n23), 
	.D(n39), 
	.C(n38), 
	.B(n37), 
	.A(n36));
   CLKXOR2X2M U52 (.Y(n39), 
	.B(half[3]), 
	.A(i[3]));
   CLKXOR2X2M U53 (.Y(n38), 
	.B(half[5]), 
	.A(i[5]));
   CLKXOR2X2M U54 (.Y(n37), 
	.B(half[4]), 
	.A(i[4]));
   NAND4X1M U55 (.Y(n36), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.A(n40));
   XNOR2X1M U56 (.Y(n43), 
	.B(half[6]), 
	.A(i[6]));
   XNOR2X1M U57 (.Y(n42), 
	.B(half[0]), 
	.A(i[0]));
   XNOR2X1M U58 (.Y(n41), 
	.B(half[1]), 
	.A(i[1]));
   XNOR2X1M U59 (.Y(n40), 
	.B(half[2]), 
	.A(i[2]));
   CLKINVX1M U60 (.Y(N2), 
	.A(n20));
   OAI21X1M U61 (.Y(n20), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n45), 
	.A0(n44));
   OR3X1M U62 (.Y(n45), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U63 (.Y(n44), 
	.D(i_div_ratio[6]), 
	.C(i_div_ratio[5]), 
	.B(i_div_ratio[4]), 
	.A(i_div_ratio[7]));
   DLY1X1M U64 (.Y(n59), 
	.A(test_se));
   clk_div_RATIO_WD8_1_DW01_inc_0 r76 (.A({ i[6],
		i[5],
		i[4],
		i[3],
		i[2],
		i[1],
		i[0] }), 
	.SUM({ N24,
		N23,
		N22,
		N21,
		N20,
		N19,
		N18 }));
endmodule

module FIFO_WR_FIFO_DEPTH8_ADDR_WIDTH4_test_1 (
	W_clk, 
	W_rst, 
	W_inc, 
	WQ2_rptr, 
	W_ptr, 
	W_addr, 
	W_CLKEN, 
	FULL, 
	test_si, 
	test_se);
   input W_clk;
   input W_rst;
   input W_inc;
   input [3:0] WQ2_rptr;
   output [3:0] W_ptr;
   output [3:0] W_addr;
   output W_CLKEN;
   output FULL;
   input test_si;
   input test_se;

   // Internal wires
   wire n24;
   wire n1;
   wire n2;
   wire n3;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n11;
   wire n12;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n21;
   wire n23;
   wire n25;
   wire n27;
   wire n29;
   wire n31;
   wire n33;
   wire n35;
   wire n4;
   wire n14;
   wire n36;
   wire n37;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n20;

   SDFFRQX2M W_addr_reg_3_ (.SI(W_addr[2]), 
	.SE(n42), 
	.RN(W_rst), 
	.Q(W_addr[3]), 
	.D(n27), 
	.CK(W_clk));
   SDFFRQX2M W_ptr_reg_0_ (.SI(W_addr[3]), 
	.SE(n41), 
	.RN(W_rst), 
	.Q(W_ptr[0]), 
	.D(n33), 
	.CK(W_clk));
   SDFFRQX2M W_ptr_reg_1_ (.SI(W_ptr[0]), 
	.SE(n43), 
	.RN(W_rst), 
	.Q(W_ptr[1]), 
	.D(n25), 
	.CK(W_clk));
   SDFFRQX2M W_ptr_reg_2_ (.SI(W_ptr[1]), 
	.SE(n42), 
	.RN(W_rst), 
	.Q(W_ptr[2]), 
	.D(n23), 
	.CK(W_clk));
   SDFFRQX2M W_ptr_reg_3_ (.SI(W_ptr[2]), 
	.SE(n41), 
	.RN(W_rst), 
	.Q(n24), 
	.D(n21), 
	.CK(W_clk));
   SDFFRQX2M W_addr_reg_2_ (.SI(W_addr[1]), 
	.SE(n43), 
	.RN(W_rst), 
	.Q(W_addr[2]), 
	.D(n29), 
	.CK(W_clk));
   SDFFRQX2M W_addr_reg_0_ (.SI(test_si), 
	.SE(n42), 
	.RN(W_rst), 
	.Q(W_addr[0]), 
	.D(n35), 
	.CK(W_clk));
   SDFFRQX2M W_addr_reg_1_ (.SI(W_addr[0]), 
	.SE(n41), 
	.RN(W_rst), 
	.Q(W_addr[1]), 
	.D(n31), 
	.CK(W_clk));
   NAND2X2M U3 (.Y(n2), 
	.B(n15), 
	.A(W_inc));
   NOR2X2M U6 (.Y(n5), 
	.B(n7), 
	.A(n37));
   OAI22X1M U7 (.Y(n29), 
	.B1(n2), 
	.B0(n8), 
	.A1(n37), 
	.A0(W_CLKEN));
   INVX2M U8 (.Y(FULL), 
	.A(n15));
   INVX2M U9 (.Y(n14), 
	.A(n8));
   INVX2M U10 (.Y(W_CLKEN), 
	.A(n2));
   CLKXOR2X2M U11 (.Y(n8), 
	.B(W_addr[2]), 
	.A(n7));
   NAND2X2M U12 (.Y(n7), 
	.B(W_addr[0]), 
	.A(W_addr[1]));
   XNOR2X2M U13 (.Y(n1), 
	.B(n5), 
	.A(W_addr[3]));
   CLKXOR2X2M U14 (.Y(n11), 
	.B(W_addr[0]), 
	.A(n8));
   NAND4X2M U15 (.Y(n15), 
	.D(n19), 
	.C(n18), 
	.B(n17), 
	.A(n16));
   XNOR2X2M U16 (.Y(n16), 
	.B(WQ2_rptr[0]), 
	.A(W_ptr[0]));
   XNOR2X2M U17 (.Y(n17), 
	.B(WQ2_rptr[1]), 
	.A(W_ptr[1]));
   CLKXOR2X2M U18 (.Y(n18), 
	.B(WQ2_rptr[2]), 
	.A(W_ptr[2]));
   CLKXOR2X2M U19 (.Y(n19), 
	.B(WQ2_rptr[3]), 
	.A(W_ptr[3]));
   CLKXOR2X2M U20 (.Y(n35), 
	.B(W_CLKEN), 
	.A(W_addr[0]));
   XNOR2X2M U21 (.Y(n31), 
	.B(n4), 
	.A(W_addr[1]));
   NAND2X2M U22 (.Y(n4), 
	.B(W_CLKEN), 
	.A(W_addr[0]));
   CLKXOR2X2M U23 (.Y(n27), 
	.B(n12), 
	.A(W_addr[3]));
   NOR2BX2M U24 (.Y(n12), 
	.B(n2), 
	.AN(n5));
   OAI2BB2X1M U25 (.Y(n21), 
	.B1(n2), 
	.B0(n1), 
	.A1N(W_ptr[3]), 
	.A0N(n2));
   OAI2BB2X1M U26 (.Y(n23), 
	.B1(n2), 
	.B0(n3), 
	.A1N(W_ptr[2]), 
	.A0N(n2));
   CLKXOR2X2M U27 (.Y(n3), 
	.B(n14), 
	.A(n1));
   OAI2BB2X1M U28 (.Y(n25), 
	.B1(n2), 
	.B0(n6), 
	.A1N(W_ptr[1]), 
	.A0N(n2));
   AOI2BB1X2M U29 (.Y(n6), 
	.B0(n9), 
	.A1N(n8), 
	.A0N(n7));
   OAI32X1M U30 (.Y(n9), 
	.B1(n11), 
	.B0(W_addr[1]), 
	.A2(n36), 
	.A1(W_addr[0]), 
	.A0(n14));
   INVX2M U31 (.Y(n36), 
	.A(W_addr[1]));
   OAI2BB2X1M U40 (.Y(n33), 
	.B1(n2), 
	.B0(W_addr[1]), 
	.A1N(W_ptr[0]), 
	.A0N(n2));
   INVX2M U41 (.Y(n37), 
	.A(W_addr[2]));
   INVXLM U42 (.Y(n40), 
	.A(test_se));
   INVXLM U43 (.Y(n41), 
	.A(n40));
   INVXLM U44 (.Y(n42), 
	.A(n40));
   INVXLM U45 (.Y(n43), 
	.A(n40));
   INVXLM U32 (.Y(n20), 
	.A(n24));
   CLKINVX12M U33 (.Y(W_ptr[3]), 
	.A(n20));
endmodule

module FIFO_RD_FIFO_DEPTH8_ADDR_WIDTH4_test_1 (
	R_clk, 
	R_rst, 
	R_inc, 
	RQ2_wptr, 
	R_ptr, 
	R_addr, 
	EMPTY, 
	test_si, 
	test_se);
   input R_clk;
   input R_rst;
   input R_inc;
   input [3:0] RQ2_wptr;
   output [3:0] R_ptr;
   output [3:0] R_addr;
   output EMPTY;
   input test_si;
   input test_se;

   // Internal wires
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n9;
   wire n10;
   wire n35;
   wire n36;
   wire n37;
   wire n38;

   SDFFRQX2M R_addr_reg_3_ (.SI(R_addr[2]), 
	.SE(n37), 
	.RN(R_rst), 
	.Q(R_addr[3]), 
	.D(n28), 
	.CK(R_clk));
   SDFFRQX2M R_ptr_reg_0_ (.SI(R_addr[3]), 
	.SE(n36), 
	.RN(R_rst), 
	.Q(R_ptr[0]), 
	.D(n31), 
	.CK(R_clk));
   SDFFRQX2M R_ptr_reg_1_ (.SI(R_ptr[0]), 
	.SE(n38), 
	.RN(R_rst), 
	.Q(R_ptr[1]), 
	.D(n25), 
	.CK(R_clk));
   SDFFRQX2M R_ptr_reg_2_ (.SI(R_ptr[1]), 
	.SE(n37), 
	.RN(R_rst), 
	.Q(R_ptr[2]), 
	.D(n26), 
	.CK(R_clk));
   SDFFRQX2M R_ptr_reg_3_ (.SI(R_ptr[2]), 
	.SE(n36), 
	.RN(R_rst), 
	.Q(R_ptr[3]), 
	.D(n27), 
	.CK(R_clk));
   SDFFRQX2M R_addr_reg_0_ (.SI(test_si), 
	.SE(n38), 
	.RN(R_rst), 
	.Q(R_addr[0]), 
	.D(n32), 
	.CK(R_clk));
   SDFFRQX2M R_addr_reg_2_ (.SI(R_addr[1]), 
	.SE(n37), 
	.RN(R_rst), 
	.Q(R_addr[2]), 
	.D(n29), 
	.CK(R_clk));
   SDFFRQX2M R_addr_reg_1_ (.SI(R_addr[0]), 
	.SE(n36), 
	.RN(R_rst), 
	.Q(R_addr[1]), 
	.D(n30), 
	.CK(R_clk));
   INVX2M U11 (.Y(n9), 
	.A(n12));
   OAI22X1M U12 (.Y(n29), 
	.B1(n12), 
	.B0(n13), 
	.A1(n10), 
	.A0(n9));
   CLKNAND2X2M U14 (.Y(n12), 
	.B(EMPTY), 
	.A(R_inc));
   XNOR2X2M U15 (.Y(n16), 
	.B(n17), 
	.A(R_addr[3]));
   NOR2X2M U16 (.Y(n17), 
	.B(n18), 
	.A(n10));
   NAND4X2M U17 (.Y(EMPTY), 
	.D(n24), 
	.C(n23), 
	.B(n22), 
	.A(n21));
   XNOR2X2M U18 (.Y(n21), 
	.B(RQ2_wptr[1]), 
	.A(R_ptr[1]));
   XNOR2X2M U19 (.Y(n22), 
	.B(RQ2_wptr[0]), 
	.A(R_ptr[0]));
   XNOR2X2M U20 (.Y(n23), 
	.B(RQ2_wptr[3]), 
	.A(R_ptr[3]));
   OAI2BB2X1M U21 (.Y(n26), 
	.B1(n12), 
	.B0(n15), 
	.A1N(R_ptr[2]), 
	.A0N(n12));
   XNOR2X2M U22 (.Y(n15), 
	.B(n13), 
	.A(n16));
   NAND2X2M U23 (.Y(n18), 
	.B(R_addr[0]), 
	.A(R_addr[1]));
   XNOR2X2M U24 (.Y(n24), 
	.B(RQ2_wptr[2]), 
	.A(R_ptr[2]));
   CLKXOR2X2M U25 (.Y(n32), 
	.B(n9), 
	.A(R_addr[0]));
   INVX2M U26 (.Y(n10), 
	.A(R_addr[2]));
   AO22X1M U27 (.Y(n30), 
	.B1(n9), 
	.B0(n14), 
	.A1(R_addr[1]), 
	.A0(n12));
   CLKXOR2X2M U28 (.Y(n13), 
	.B(R_addr[2]), 
	.A(n18));
   CLKXOR2X2M U29 (.Y(n14), 
	.B(R_addr[0]), 
	.A(R_addr[1]));
   OAI2BB2X1M U30 (.Y(n31), 
	.B1(n19), 
	.B0(n12), 
	.A1N(R_ptr[0]), 
	.A0N(n12));
   CLKXOR2X2M U31 (.Y(n19), 
	.B(n14), 
	.A(R_addr[0]));
   OAI2BB2X1M U32 (.Y(n28), 
	.B1(n12), 
	.B0(n16), 
	.A1N(R_addr[3]), 
	.A0N(n12));
   OAI2BB2X1M U33 (.Y(n27), 
	.B1(n12), 
	.B0(n16), 
	.A1N(R_ptr[3]), 
	.A0N(n12));
   OAI2BB2X1M U34 (.Y(n25), 
	.B1(n12), 
	.B0(n11), 
	.A1N(R_ptr[1]), 
	.A0N(n12));
   CLKXOR2X2M U35 (.Y(n11), 
	.B(n14), 
	.A(n13));
   INVXLM U36 (.Y(n35), 
	.A(test_se));
   INVXLM U37 (.Y(n36), 
	.A(n35));
   INVXLM U38 (.Y(n37), 
	.A(n35));
   INVXLM U39 (.Y(n38), 
	.A(n35));
endmodule

module DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_1 (
	clk, 
	rst, 
	i_ptr, 
	o_ptr, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input [3:0] i_ptr;
   output [3:0] o_ptr;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire sync_reg_2__1_;
   wire sync_reg_1__1_;
   wire sync_reg_0__1_;
   wire n13;
   wire n14;
   wire n15;
   wire n16;

   SDFFRQX2M sync_reg_reg_1__0_ (.SI(sync_reg_0__1_), 
	.SE(n15), 
	.RN(rst), 
	.Q(o_ptr[1]), 
	.D(sync_reg_1__1_), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_0__0_ (.SI(test_si), 
	.SE(n14), 
	.RN(rst), 
	.Q(o_ptr[0]), 
	.D(sync_reg_0__1_), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_3__0_ (.SI(sync_reg_2__1_), 
	.SE(n16), 
	.RN(rst), 
	.Q(o_ptr[3]), 
	.D(test_so), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_2__0_ (.SI(sync_reg_1__1_), 
	.SE(n15), 
	.RN(rst), 
	.Q(o_ptr[2]), 
	.D(sync_reg_2__1_), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_3__1_ (.SI(o_ptr[3]), 
	.SE(n14), 
	.RN(rst), 
	.Q(test_so), 
	.D(i_ptr[3]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_2__1_ (.SI(o_ptr[2]), 
	.SE(n16), 
	.RN(rst), 
	.Q(sync_reg_2__1_), 
	.D(i_ptr[2]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_1__1_ (.SI(o_ptr[1]), 
	.SE(n15), 
	.RN(rst), 
	.Q(sync_reg_1__1_), 
	.D(i_ptr[1]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_0__1_ (.SI(o_ptr[0]), 
	.SE(n14), 
	.RN(rst), 
	.Q(sync_reg_0__1_), 
	.D(i_ptr[0]), 
	.CK(clk));
   INVXLM U13 (.Y(n13), 
	.A(test_se));
   INVXLM U14 (.Y(n14), 
	.A(n13));
   INVXLM U15 (.Y(n15), 
	.A(n13));
   INVXLM U16 (.Y(n16), 
	.A(n13));
endmodule

module DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_0 (
	clk, 
	rst, 
	i_ptr, 
	o_ptr, 
	test_si, 
	test_so, 
	test_se, 
	TX_CLK_mux__L5_N1);
   input clk;
   input rst;
   input [3:0] i_ptr;
   output [3:0] o_ptr;
   input test_si;
   output test_so;
   input test_se;
   input TX_CLK_mux__L5_N1;

   // Internal wires
   wire sync_reg_2__1_;
   wire sync_reg_1__1_;
   wire sync_reg_0__1_;
   wire n21;
   wire n22;
   wire n23;
   wire n24;

   SDFFRQX2M sync_reg_reg_3__0_ (.SI(sync_reg_2__1_), 
	.SE(n23), 
	.RN(rst), 
	.Q(o_ptr[3]), 
	.D(test_so), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_2__0_ (.SI(sync_reg_1__1_), 
	.SE(n22), 
	.RN(rst), 
	.Q(o_ptr[2]), 
	.D(sync_reg_2__1_), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_1__0_ (.SI(sync_reg_0__1_), 
	.SE(n24), 
	.RN(rst), 
	.Q(o_ptr[1]), 
	.D(sync_reg_1__1_), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_0__0_ (.SI(test_si), 
	.SE(n23), 
	.RN(rst), 
	.Q(o_ptr[0]), 
	.D(sync_reg_0__1_), 
	.CK(TX_CLK_mux__L5_N1));
   SDFFRQX2M sync_reg_reg_3__1_ (.SI(o_ptr[3]), 
	.SE(n22), 
	.RN(rst), 
	.Q(test_so), 
	.D(i_ptr[3]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_2__1_ (.SI(o_ptr[2]), 
	.SE(n24), 
	.RN(rst), 
	.Q(sync_reg_2__1_), 
	.D(i_ptr[2]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_1__1_ (.SI(o_ptr[1]), 
	.SE(n23), 
	.RN(rst), 
	.Q(sync_reg_1__1_), 
	.D(i_ptr[1]), 
	.CK(clk));
   SDFFRQX2M sync_reg_reg_0__1_ (.SI(o_ptr[0]), 
	.SE(n22), 
	.RN(rst), 
	.Q(sync_reg_0__1_), 
	.D(i_ptr[0]), 
	.CK(TX_CLK_mux__L5_N1));
   INVXLM U13 (.Y(n21), 
	.A(test_se));
   INVXLM U14 (.Y(n22), 
	.A(n21));
   INVXLM U15 (.Y(n23), 
	.A(n21));
   INVXLM U16 (.Y(n24), 
	.A(n21));
endmodule

module FIFO_MEM_CNTRL_DATA_WIDTH8_FIFO_DEPTH8_ADDR_WIDTH4_test_1 (
	W_clk, 
	W_rst, 
	W_CLKEN, 
	W_addr, 
	R_addr, 
	WR_data, 
	RD_data, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN1_SYNC_RST_1_mux, 
	REF_CLK_mux__L9_N4, 
	REF_CLK_mux__L9_N5, 
	REF_CLK_mux__L9_N6, 
	REF_CLK_mux__L9_N7);
   input W_clk;
   input W_rst;
   input W_CLKEN;
   input [2:0] W_addr;
   input [2:0] R_addr;
   input [7:0] WR_data;
   output [7:0] RD_data;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN1_SYNC_RST_1_mux;
   input REF_CLK_mux__L9_N4;
   input REF_CLK_mux__L9_N5;
   input REF_CLK_mux__L9_N6;
   input REF_CLK_mux__L9_N7;

   // Internal wires
   wire mem_7__6_;
   wire mem_7__5_;
   wire mem_7__4_;
   wire mem_7__3_;
   wire mem_7__2_;
   wire mem_7__1_;
   wire mem_7__0_;
   wire mem_6__7_;
   wire mem_6__6_;
   wire mem_6__5_;
   wire mem_6__4_;
   wire mem_6__3_;
   wire mem_6__2_;
   wire mem_6__1_;
   wire mem_6__0_;
   wire mem_5__7_;
   wire mem_5__6_;
   wire mem_5__5_;
   wire mem_5__4_;
   wire mem_5__3_;
   wire mem_5__2_;
   wire mem_5__1_;
   wire mem_5__0_;
   wire mem_4__7_;
   wire mem_4__6_;
   wire mem_4__5_;
   wire mem_4__4_;
   wire mem_4__3_;
   wire mem_4__2_;
   wire mem_4__1_;
   wire mem_4__0_;
   wire mem_3__7_;
   wire mem_3__6_;
   wire mem_3__5_;
   wire mem_3__4_;
   wire mem_3__3_;
   wire mem_3__2_;
   wire mem_3__1_;
   wire mem_3__0_;
   wire mem_2__7_;
   wire mem_2__6_;
   wire mem_2__5_;
   wire mem_2__4_;
   wire mem_2__3_;
   wire mem_2__2_;
   wire mem_2__1_;
   wire mem_2__0_;
   wire mem_1__7_;
   wire mem_1__6_;
   wire mem_1__5_;
   wire mem_1__4_;
   wire mem_1__3_;
   wire mem_1__2_;
   wire mem_1__1_;
   wire mem_1__0_;
   wire mem_0__7_;
   wire mem_0__6_;
   wire mem_0__5_;
   wire mem_0__4_;
   wire mem_0__3_;
   wire mem_0__2_;
   wire mem_0__1_;
   wire mem_0__0_;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;

   SDFFRQX2M mem_reg_1__7_ (.SI(mem_1__6_), 
	.SE(n211), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_1__7_), 
	.D(n100), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_1__6_ (.SI(mem_1__5_), 
	.SE(n210), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_1__6_), 
	.D(n99), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_1__5_ (.SI(mem_1__4_), 
	.SE(n212), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_1__5_), 
	.D(n98), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_1__4_ (.SI(mem_1__3_), 
	.SE(n211), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_1__4_), 
	.D(n97), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_1__3_ (.SI(mem_1__2_), 
	.SE(n210), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_1__3_), 
	.D(n96), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_1__2_ (.SI(mem_1__1_), 
	.SE(n212), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_1__2_), 
	.D(n95), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_1__1_ (.SI(mem_1__0_), 
	.SE(n211), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_1__1_), 
	.D(n94), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_1__0_ (.SI(mem_0__7_), 
	.SE(n210), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_1__0_), 
	.D(n93), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_0__7_ (.SI(mem_0__6_), 
	.SE(n215), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_0__7_), 
	.D(n92), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_0__6_ (.SI(mem_0__5_), 
	.SE(n213), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_0__6_), 
	.D(n91), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_0__5_ (.SI(mem_0__4_), 
	.SE(n218), 
	.RN(W_rst), 
	.Q(mem_0__5_), 
	.D(n90), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_0__4_ (.SI(mem_0__3_), 
	.SE(n209), 
	.RN(W_rst), 
	.Q(mem_0__4_), 
	.D(n89), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_0__3_ (.SI(mem_0__2_), 
	.SE(n214), 
	.RN(W_rst), 
	.Q(mem_0__3_), 
	.D(n88), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_0__2_ (.SI(mem_0__1_), 
	.SE(n215), 
	.RN(W_rst), 
	.Q(mem_0__2_), 
	.D(n87), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_0__1_ (.SI(mem_0__0_), 
	.SE(n220), 
	.RN(W_rst), 
	.Q(mem_0__1_), 
	.D(n86), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_0__0_ (.SI(test_si), 
	.SE(n218), 
	.RN(W_rst), 
	.Q(mem_0__0_), 
	.D(n85), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_5__7_ (.SI(mem_5__6_), 
	.SE(n216), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_5__7_), 
	.D(n132), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_5__6_ (.SI(mem_5__5_), 
	.SE(n216), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_5__6_), 
	.D(n131), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_5__5_ (.SI(mem_5__4_), 
	.SE(n218), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_5__5_), 
	.D(n130), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_5__4_ (.SI(mem_5__3_), 
	.SE(n218), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_5__4_), 
	.D(n129), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_5__3_ (.SI(mem_5__2_), 
	.SE(n220), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_5__3_), 
	.D(n128), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_5__2_ (.SI(mem_5__1_), 
	.SE(n216), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_5__2_), 
	.D(n127), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_5__1_ (.SI(mem_5__0_), 
	.SE(n216), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_5__1_), 
	.D(n126), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_5__0_ (.SI(mem_4__7_), 
	.SE(n208), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_5__0_), 
	.D(n125), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_4__7_ (.SI(mem_4__6_), 
	.SE(n220), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_4__7_), 
	.D(n124), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_4__6_ (.SI(mem_4__5_), 
	.SE(n215), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_4__6_), 
	.D(n123), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_4__5_ (.SI(mem_4__4_), 
	.SE(n208), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_4__5_), 
	.D(n122), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_4__4_ (.SI(mem_4__3_), 
	.SE(n220), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_4__4_), 
	.D(n121), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_4__3_ (.SI(mem_4__2_), 
	.SE(n214), 
	.RN(W_rst), 
	.Q(mem_4__3_), 
	.D(n120), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_4__2_ (.SI(mem_4__1_), 
	.SE(n219), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_4__2_), 
	.D(n119), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_4__1_ (.SI(mem_4__0_), 
	.SE(n213), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_4__1_), 
	.D(n118), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_4__0_ (.SI(mem_3__7_), 
	.SE(n213), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_4__0_), 
	.D(n117), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_7__7_ (.SI(mem_7__6_), 
	.SE(n219), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(test_so), 
	.D(n148), 
	.CK(W_clk));
   SDFFRQX2M mem_reg_7__6_ (.SI(mem_7__5_), 
	.SE(n218), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_7__6_), 
	.D(n147), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_7__5_ (.SI(mem_7__4_), 
	.SE(n213), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_7__5_), 
	.D(n146), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_7__4_ (.SI(mem_7__3_), 
	.SE(n219), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_7__4_), 
	.D(n145), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_7__3_ (.SI(mem_7__2_), 
	.SE(n215), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_7__3_), 
	.D(n144), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_7__2_ (.SI(mem_7__1_), 
	.SE(n218), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_7__2_), 
	.D(n143), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_7__1_ (.SI(mem_7__0_), 
	.SE(n219), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_7__1_), 
	.D(n142), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_7__0_ (.SI(mem_6__7_), 
	.SE(n213), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_7__0_), 
	.D(n141), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_6__7_ (.SI(mem_6__6_), 
	.SE(n216), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_6__7_), 
	.D(n140), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_6__6_ (.SI(mem_6__5_), 
	.SE(n215), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_6__6_), 
	.D(n139), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_6__5_ (.SI(mem_6__4_), 
	.SE(n213), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_6__5_), 
	.D(n138), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_6__4_ (.SI(mem_6__3_), 
	.SE(n215), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_6__4_), 
	.D(n137), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_6__3_ (.SI(mem_6__2_), 
	.SE(n207), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_6__3_), 
	.D(n136), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_6__2_ (.SI(mem_6__1_), 
	.SE(n220), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_6__2_), 
	.D(n135), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_6__1_ (.SI(mem_6__0_), 
	.SE(n215), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_6__1_), 
	.D(n134), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_6__0_ (.SI(mem_5__7_), 
	.SE(n219), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_6__0_), 
	.D(n133), 
	.CK(REF_CLK_mux__L9_N7));
   SDFFRQX2M mem_reg_3__7_ (.SI(mem_3__6_), 
	.SE(n209), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_3__7_), 
	.D(n116), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_3__6_ (.SI(mem_3__5_), 
	.SE(n216), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_3__6_), 
	.D(n115), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_3__5_ (.SI(mem_3__4_), 
	.SE(n219), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_3__5_), 
	.D(n114), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_3__4_ (.SI(mem_3__3_), 
	.SE(n216), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_3__4_), 
	.D(n113), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_3__3_ (.SI(mem_3__2_), 
	.SE(n208), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_3__3_), 
	.D(n112), 
	.CK(REF_CLK_mux__L9_N6));
   SDFFRQX2M mem_reg_3__2_ (.SI(mem_3__1_), 
	.SE(n220), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_3__2_), 
	.D(n111), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_3__1_ (.SI(mem_3__0_), 
	.SE(n214), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_3__1_), 
	.D(n110), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_3__0_ (.SI(mem_2__7_), 
	.SE(n214), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_3__0_), 
	.D(n109), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_2__7_ (.SI(mem_2__6_), 
	.SE(n219), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_2__7_), 
	.D(n108), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_2__6_ (.SI(mem_2__5_), 
	.SE(n214), 
	.RN(FE_OFN1_SYNC_RST_1_mux), 
	.Q(mem_2__6_), 
	.D(n107), 
	.CK(REF_CLK_mux__L9_N4));
   SDFFRQX2M mem_reg_2__5_ (.SI(mem_2__4_), 
	.SE(n214), 
	.RN(W_rst), 
	.Q(mem_2__5_), 
	.D(n106), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_2__4_ (.SI(mem_2__3_), 
	.SE(n220), 
	.RN(W_rst), 
	.Q(mem_2__4_), 
	.D(n105), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_2__3_ (.SI(mem_2__2_), 
	.SE(n218), 
	.RN(W_rst), 
	.Q(mem_2__3_), 
	.D(n104), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_2__2_ (.SI(mem_2__1_), 
	.SE(n213), 
	.RN(W_rst), 
	.Q(mem_2__2_), 
	.D(n103), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_2__1_ (.SI(mem_2__0_), 
	.SE(n207), 
	.RN(W_rst), 
	.Q(mem_2__1_), 
	.D(n102), 
	.CK(REF_CLK_mux__L9_N5));
   SDFFRQX2M mem_reg_2__0_ (.SI(mem_1__7_), 
	.SE(n214), 
	.RN(W_rst), 
	.Q(mem_2__0_), 
	.D(n101), 
	.CK(REF_CLK_mux__L9_N4));
   INVX2M U73 (.Y(n204), 
	.A(WR_data[0]));
   INVX2M U74 (.Y(n203), 
	.A(WR_data[1]));
   INVX2M U75 (.Y(n202), 
	.A(WR_data[2]));
   INVX2M U76 (.Y(n201), 
	.A(WR_data[3]));
   INVX2M U77 (.Y(n200), 
	.A(WR_data[4]));
   INVX2M U78 (.Y(n199), 
	.A(WR_data[5]));
   INVX2M U79 (.Y(n198), 
	.A(WR_data[6]));
   INVX2M U80 (.Y(n197), 
	.A(WR_data[7]));
   NOR2X2M U87 (.Y(n171), 
	.B(n176), 
	.A(n175));
   INVX2M U88 (.Y(n177), 
	.A(R_addr[0]));
   NAND3X2M U89 (.Y(n75), 
	.C(n76), 
	.B(n196), 
	.A(n195));
   NAND3X2M U90 (.Y(n80), 
	.C(n81), 
	.B(n196), 
	.A(n195));
   INVX2M U91 (.Y(n176), 
	.A(R_addr[1]));
   INVX2M U92 (.Y(n175), 
	.A(R_addr[2]));
   NOR2X2M U94 (.Y(n169), 
	.B(R_addr[2]), 
	.A(n176));
   NOR2X2M U96 (.Y(n172), 
	.B(R_addr[1]), 
	.A(n175));
   NOR2X2M U98 (.Y(n168), 
	.B(R_addr[2]), 
	.A(R_addr[1]));
   NOR2BX2M U100 (.Y(n76), 
	.B(W_addr[2]), 
	.AN(W_CLKEN));
   INVX2M U101 (.Y(n195), 
	.A(W_addr[0]));
   INVX2M U102 (.Y(n196), 
	.A(W_addr[1]));
   OAI2BB2X1M U103 (.Y(n93), 
	.B1(n77), 
	.B0(n204), 
	.A1N(n77), 
	.A0N(mem_1__0_));
   OAI2BB2X1M U104 (.Y(n94), 
	.B1(n77), 
	.B0(n203), 
	.A1N(n77), 
	.A0N(mem_1__1_));
   OAI2BB2X1M U105 (.Y(n95), 
	.B1(n77), 
	.B0(n202), 
	.A1N(n77), 
	.A0N(mem_1__2_));
   OAI2BB2X1M U106 (.Y(n96), 
	.B1(n77), 
	.B0(n201), 
	.A1N(n77), 
	.A0N(mem_1__3_));
   OAI2BB2X1M U107 (.Y(n97), 
	.B1(n77), 
	.B0(n200), 
	.A1N(n77), 
	.A0N(mem_1__4_));
   OAI2BB2X1M U108 (.Y(n98), 
	.B1(n77), 
	.B0(n199), 
	.A1N(n77), 
	.A0N(mem_1__5_));
   OAI2BB2X1M U109 (.Y(n99), 
	.B1(n77), 
	.B0(n198), 
	.A1N(n77), 
	.A0N(mem_1__6_));
   OAI2BB2X1M U110 (.Y(n100), 
	.B1(n77), 
	.B0(n197), 
	.A1N(n77), 
	.A0N(mem_1__7_));
   OAI2BB2X1M U111 (.Y(n101), 
	.B1(n78), 
	.B0(n204), 
	.A1N(n78), 
	.A0N(mem_2__0_));
   OAI2BB2X1M U112 (.Y(n102), 
	.B1(n78), 
	.B0(n203), 
	.A1N(n78), 
	.A0N(mem_2__1_));
   OAI2BB2X1M U113 (.Y(n103), 
	.B1(n78), 
	.B0(n202), 
	.A1N(n78), 
	.A0N(mem_2__2_));
   OAI2BB2X1M U114 (.Y(n104), 
	.B1(n78), 
	.B0(n201), 
	.A1N(n78), 
	.A0N(mem_2__3_));
   OAI2BB2X1M U115 (.Y(n105), 
	.B1(n78), 
	.B0(n200), 
	.A1N(n78), 
	.A0N(mem_2__4_));
   OAI2BB2X1M U116 (.Y(n106), 
	.B1(n78), 
	.B0(n199), 
	.A1N(n78), 
	.A0N(mem_2__5_));
   OAI2BB2X1M U117 (.Y(n107), 
	.B1(n78), 
	.B0(n198), 
	.A1N(n78), 
	.A0N(mem_2__6_));
   OAI2BB2X1M U118 (.Y(n108), 
	.B1(n78), 
	.B0(n197), 
	.A1N(n78), 
	.A0N(mem_2__7_));
   OAI2BB2X1M U119 (.Y(n109), 
	.B1(n79), 
	.B0(n204), 
	.A1N(n79), 
	.A0N(mem_3__0_));
   OAI2BB2X1M U120 (.Y(n110), 
	.B1(n79), 
	.B0(n203), 
	.A1N(n79), 
	.A0N(mem_3__1_));
   OAI2BB2X1M U121 (.Y(n111), 
	.B1(n79), 
	.B0(n202), 
	.A1N(n79), 
	.A0N(mem_3__2_));
   OAI2BB2X1M U122 (.Y(n112), 
	.B1(n79), 
	.B0(n201), 
	.A1N(n79), 
	.A0N(mem_3__3_));
   OAI2BB2X1M U123 (.Y(n113), 
	.B1(n79), 
	.B0(n200), 
	.A1N(n79), 
	.A0N(mem_3__4_));
   OAI2BB2X1M U124 (.Y(n114), 
	.B1(n79), 
	.B0(n199), 
	.A1N(n79), 
	.A0N(mem_3__5_));
   OAI2BB2X1M U125 (.Y(n115), 
	.B1(n79), 
	.B0(n198), 
	.A1N(n79), 
	.A0N(mem_3__6_));
   OAI2BB2X1M U126 (.Y(n116), 
	.B1(n79), 
	.B0(n197), 
	.A1N(n79), 
	.A0N(mem_3__7_));
   OAI2BB2X1M U127 (.Y(n117), 
	.B1(n80), 
	.B0(n204), 
	.A1N(n80), 
	.A0N(mem_4__0_));
   OAI2BB2X1M U128 (.Y(n118), 
	.B1(n80), 
	.B0(n203), 
	.A1N(n80), 
	.A0N(mem_4__1_));
   OAI2BB2X1M U129 (.Y(n119), 
	.B1(n80), 
	.B0(n202), 
	.A1N(n80), 
	.A0N(mem_4__2_));
   OAI2BB2X1M U130 (.Y(n120), 
	.B1(n80), 
	.B0(n201), 
	.A1N(n80), 
	.A0N(mem_4__3_));
   OAI2BB2X1M U131 (.Y(n121), 
	.B1(n80), 
	.B0(n200), 
	.A1N(n80), 
	.A0N(mem_4__4_));
   OAI2BB2X1M U132 (.Y(n122), 
	.B1(n80), 
	.B0(n199), 
	.A1N(n80), 
	.A0N(mem_4__5_));
   OAI2BB2X1M U133 (.Y(n123), 
	.B1(n80), 
	.B0(n198), 
	.A1N(n80), 
	.A0N(mem_4__6_));
   OAI2BB2X1M U134 (.Y(n124), 
	.B1(n80), 
	.B0(n197), 
	.A1N(n80), 
	.A0N(mem_4__7_));
   OAI2BB2X1M U135 (.Y(n125), 
	.B1(n82), 
	.B0(n204), 
	.A1N(n82), 
	.A0N(mem_5__0_));
   OAI2BB2X1M U136 (.Y(n126), 
	.B1(n82), 
	.B0(n203), 
	.A1N(n82), 
	.A0N(mem_5__1_));
   OAI2BB2X1M U137 (.Y(n127), 
	.B1(n82), 
	.B0(n202), 
	.A1N(n82), 
	.A0N(mem_5__2_));
   OAI2BB2X1M U138 (.Y(n128), 
	.B1(n82), 
	.B0(n201), 
	.A1N(n82), 
	.A0N(mem_5__3_));
   OAI2BB2X1M U139 (.Y(n129), 
	.B1(n82), 
	.B0(n200), 
	.A1N(n82), 
	.A0N(mem_5__4_));
   OAI2BB2X1M U140 (.Y(n130), 
	.B1(n82), 
	.B0(n199), 
	.A1N(n82), 
	.A0N(mem_5__5_));
   OAI2BB2X1M U141 (.Y(n131), 
	.B1(n82), 
	.B0(n198), 
	.A1N(n82), 
	.A0N(mem_5__6_));
   OAI2BB2X1M U142 (.Y(n132), 
	.B1(n82), 
	.B0(n197), 
	.A1N(n82), 
	.A0N(mem_5__7_));
   OAI2BB2X1M U143 (.Y(n133), 
	.B1(n83), 
	.B0(n204), 
	.A1N(n83), 
	.A0N(mem_6__0_));
   OAI2BB2X1M U144 (.Y(n134), 
	.B1(n83), 
	.B0(n203), 
	.A1N(n83), 
	.A0N(mem_6__1_));
   OAI2BB2X1M U145 (.Y(n135), 
	.B1(n83), 
	.B0(n202), 
	.A1N(n83), 
	.A0N(mem_6__2_));
   OAI2BB2X1M U146 (.Y(n136), 
	.B1(n83), 
	.B0(n201), 
	.A1N(n83), 
	.A0N(mem_6__3_));
   OAI2BB2X1M U147 (.Y(n137), 
	.B1(n83), 
	.B0(n200), 
	.A1N(n83), 
	.A0N(mem_6__4_));
   OAI2BB2X1M U148 (.Y(n138), 
	.B1(n83), 
	.B0(n199), 
	.A1N(n83), 
	.A0N(mem_6__5_));
   OAI2BB2X1M U149 (.Y(n139), 
	.B1(n83), 
	.B0(n198), 
	.A1N(n83), 
	.A0N(mem_6__6_));
   OAI2BB2X1M U150 (.Y(n140), 
	.B1(n83), 
	.B0(n197), 
	.A1N(n83), 
	.A0N(mem_6__7_));
   OAI2BB2X1M U151 (.Y(n141), 
	.B1(n84), 
	.B0(n204), 
	.A1N(n84), 
	.A0N(mem_7__0_));
   OAI2BB2X1M U152 (.Y(n142), 
	.B1(n84), 
	.B0(n203), 
	.A1N(n84), 
	.A0N(mem_7__1_));
   OAI2BB2X1M U153 (.Y(n143), 
	.B1(n84), 
	.B0(n202), 
	.A1N(n84), 
	.A0N(mem_7__2_));
   OAI2BB2X1M U154 (.Y(n144), 
	.B1(n84), 
	.B0(n201), 
	.A1N(n84), 
	.A0N(mem_7__3_));
   OAI2BB2X1M U155 (.Y(n145), 
	.B1(n84), 
	.B0(n200), 
	.A1N(n84), 
	.A0N(mem_7__4_));
   OAI2BB2X1M U156 (.Y(n146), 
	.B1(n84), 
	.B0(n199), 
	.A1N(n84), 
	.A0N(mem_7__5_));
   OAI2BB2X1M U157 (.Y(n147), 
	.B1(n84), 
	.B0(n198), 
	.A1N(n84), 
	.A0N(mem_7__6_));
   OAI2BB2X1M U158 (.Y(n148), 
	.B1(n84), 
	.B0(n197), 
	.A1N(n84), 
	.A0N(test_so));
   NAND3X2M U159 (.Y(n77), 
	.C(W_addr[0]), 
	.B(n196), 
	.A(n76));
   NAND3X2M U160 (.Y(n78), 
	.C(W_addr[1]), 
	.B(n195), 
	.A(n76));
   NAND3X2M U161 (.Y(n79), 
	.C(W_addr[1]), 
	.B(n76), 
	.A(W_addr[0]));
   NAND3X2M U162 (.Y(n84), 
	.C(n81), 
	.B(W_addr[0]), 
	.A(W_addr[1]));
   NAND3X2M U163 (.Y(n82), 
	.C(n81), 
	.B(n196), 
	.A(W_addr[0]));
   NAND3X2M U164 (.Y(n83), 
	.C(n81), 
	.B(n195), 
	.A(W_addr[1]));
   OAI2BB2X1M U165 (.Y(n85), 
	.B1(n204), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(mem_0__0_));
   OAI2BB2X1M U166 (.Y(n86), 
	.B1(n203), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(mem_0__1_));
   OAI2BB2X1M U167 (.Y(n87), 
	.B1(n202), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(mem_0__2_));
   OAI2BB2X1M U168 (.Y(n88), 
	.B1(n201), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(mem_0__3_));
   OAI2BB2X1M U169 (.Y(n89), 
	.B1(n200), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(mem_0__4_));
   OAI2BB2X1M U170 (.Y(n90), 
	.B1(n199), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(mem_0__5_));
   OAI2BB2X1M U171 (.Y(n91), 
	.B1(n198), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(mem_0__6_));
   OAI2BB2X1M U172 (.Y(n92), 
	.B1(n197), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(mem_0__7_));
   AND2X2M U173 (.Y(n81), 
	.B(W_CLKEN), 
	.A(W_addr[2]));
   AO22X1M U174 (.Y(n65), 
	.B1(n168), 
	.B0(mem_1__0_), 
	.A1(n169), 
	.A0(mem_3__0_));
   AOI221XLM U175 (.Y(n68), 
	.C0(n65), 
	.B1(n171), 
	.B0(mem_7__0_), 
	.A1(n172), 
	.A0(mem_5__0_));
   AO22X1M U176 (.Y(n66), 
	.B1(n168), 
	.B0(mem_0__0_), 
	.A1(n169), 
	.A0(mem_2__0_));
   AOI221XLM U177 (.Y(n67), 
	.C0(n66), 
	.B1(n171), 
	.B0(mem_6__0_), 
	.A1(n172), 
	.A0(mem_4__0_));
   OAI22X1M U178 (.Y(RD_data[0]), 
	.B1(n67), 
	.B0(R_addr[0]), 
	.A1(n68), 
	.A0(n177));
   AO22X1M U179 (.Y(n69), 
	.B1(n168), 
	.B0(mem_1__1_), 
	.A1(n169), 
	.A0(mem_3__1_));
   AOI221XLM U180 (.Y(n72), 
	.C0(n69), 
	.B1(n171), 
	.B0(mem_7__1_), 
	.A1(n172), 
	.A0(mem_5__1_));
   AO22X1M U181 (.Y(n70), 
	.B1(n168), 
	.B0(mem_0__1_), 
	.A1(n169), 
	.A0(mem_2__1_));
   AOI221XLM U182 (.Y(n71), 
	.C0(n70), 
	.B1(n171), 
	.B0(mem_6__1_), 
	.A1(n172), 
	.A0(mem_4__1_));
   OAI22X1M U183 (.Y(RD_data[1]), 
	.B1(n71), 
	.B0(R_addr[0]), 
	.A1(n72), 
	.A0(n177));
   AO22X1M U184 (.Y(n73), 
	.B1(n168), 
	.B0(mem_1__2_), 
	.A1(n169), 
	.A0(mem_3__2_));
   AOI221XLM U185 (.Y(n150), 
	.C0(n73), 
	.B1(n171), 
	.B0(mem_7__2_), 
	.A1(n172), 
	.A0(mem_5__2_));
   AO22X1M U186 (.Y(n74), 
	.B1(n168), 
	.B0(mem_0__2_), 
	.A1(n169), 
	.A0(mem_2__2_));
   AOI221XLM U187 (.Y(n149), 
	.C0(n74), 
	.B1(n171), 
	.B0(mem_6__2_), 
	.A1(n172), 
	.A0(mem_4__2_));
   OAI22X1M U188 (.Y(RD_data[2]), 
	.B1(n149), 
	.B0(R_addr[0]), 
	.A1(n150), 
	.A0(n177));
   AO22X1M U189 (.Y(n151), 
	.B1(n168), 
	.B0(mem_1__3_), 
	.A1(n169), 
	.A0(mem_3__3_));
   AOI221XLM U190 (.Y(n154), 
	.C0(n151), 
	.B1(n171), 
	.B0(mem_7__3_), 
	.A1(n172), 
	.A0(mem_5__3_));
   AO22X1M U191 (.Y(n152), 
	.B1(n168), 
	.B0(mem_0__3_), 
	.A1(n169), 
	.A0(mem_2__3_));
   AOI221XLM U192 (.Y(n153), 
	.C0(n152), 
	.B1(n171), 
	.B0(mem_6__3_), 
	.A1(n172), 
	.A0(mem_4__3_));
   OAI22X1M U193 (.Y(RD_data[3]), 
	.B1(n153), 
	.B0(R_addr[0]), 
	.A1(n154), 
	.A0(n177));
   AO22X1M U194 (.Y(n155), 
	.B1(n168), 
	.B0(mem_1__4_), 
	.A1(n169), 
	.A0(mem_3__4_));
   AOI221XLM U195 (.Y(n158), 
	.C0(n155), 
	.B1(n171), 
	.B0(mem_7__4_), 
	.A1(n172), 
	.A0(mem_5__4_));
   AO22X1M U196 (.Y(n156), 
	.B1(n168), 
	.B0(mem_0__4_), 
	.A1(n169), 
	.A0(mem_2__4_));
   AOI221XLM U197 (.Y(n157), 
	.C0(n156), 
	.B1(n171), 
	.B0(mem_6__4_), 
	.A1(n172), 
	.A0(mem_4__4_));
   OAI22X1M U198 (.Y(RD_data[4]), 
	.B1(n157), 
	.B0(R_addr[0]), 
	.A1(n158), 
	.A0(n177));
   AO22X1M U199 (.Y(n159), 
	.B1(n168), 
	.B0(mem_1__5_), 
	.A1(n169), 
	.A0(mem_3__5_));
   AOI221XLM U200 (.Y(n162), 
	.C0(n159), 
	.B1(n171), 
	.B0(mem_7__5_), 
	.A1(n172), 
	.A0(mem_5__5_));
   AO22X1M U201 (.Y(n160), 
	.B1(n168), 
	.B0(mem_0__5_), 
	.A1(n169), 
	.A0(mem_2__5_));
   AOI221XLM U202 (.Y(n161), 
	.C0(n160), 
	.B1(n171), 
	.B0(mem_6__5_), 
	.A1(n172), 
	.A0(mem_4__5_));
   OAI22X1M U203 (.Y(RD_data[5]), 
	.B1(n161), 
	.B0(R_addr[0]), 
	.A1(n162), 
	.A0(n177));
   AO22X1M U204 (.Y(n163), 
	.B1(n168), 
	.B0(mem_1__6_), 
	.A1(n169), 
	.A0(mem_3__6_));
   AOI221XLM U205 (.Y(n166), 
	.C0(n163), 
	.B1(n171), 
	.B0(mem_7__6_), 
	.A1(n172), 
	.A0(mem_5__6_));
   AO22X1M U206 (.Y(n164), 
	.B1(n168), 
	.B0(mem_0__6_), 
	.A1(n169), 
	.A0(mem_2__6_));
   AOI221XLM U207 (.Y(n165), 
	.C0(n164), 
	.B1(n171), 
	.B0(mem_6__6_), 
	.A1(n172), 
	.A0(mem_4__6_));
   OAI22X1M U208 (.Y(RD_data[6]), 
	.B1(n165), 
	.B0(R_addr[0]), 
	.A1(n166), 
	.A0(n177));
   AO22X1M U209 (.Y(n167), 
	.B1(n168), 
	.B0(mem_1__7_), 
	.A1(n169), 
	.A0(mem_3__7_));
   AOI221XLM U210 (.Y(n174), 
	.C0(n167), 
	.B1(n171), 
	.B0(test_so), 
	.A1(n172), 
	.A0(mem_5__7_));
   AO22X1M U211 (.Y(n170), 
	.B1(n168), 
	.B0(mem_0__7_), 
	.A1(n169), 
	.A0(mem_2__7_));
   AOI221XLM U212 (.Y(n173), 
	.C0(n170), 
	.B1(n171), 
	.B0(mem_6__7_), 
	.A1(n172), 
	.A0(mem_4__7_));
   OAI22X1M U213 (.Y(RD_data[7]), 
	.B1(n173), 
	.B0(R_addr[0]), 
	.A1(n177), 
	.A0(n174));
   INVXLM U214 (.Y(n217), 
	.A(test_se));
   INVXLM U215 (.Y(n207), 
	.A(n217));
   INVXLM U216 (.Y(n208), 
	.A(n217));
   INVXLM U217 (.Y(n209), 
	.A(n217));
   INVXLM U218 (.Y(n221), 
	.A(n207));
   INVXLM U219 (.Y(n210), 
	.A(n221));
   INVXLM U220 (.Y(n211), 
	.A(n221));
   INVXLM U221 (.Y(n212), 
	.A(n221));
   DLY1X1M U222 (.Y(n213), 
	.A(test_se));
   DLY1X1M U223 (.Y(n214), 
	.A(test_se));
   DLY1X1M U224 (.Y(n215), 
	.A(test_se));
   DLY1X1M U225 (.Y(n216), 
	.A(test_se));
   DLY1X1M U226 (.Y(n218), 
	.A(n209));
   DLY1X1M U227 (.Y(n219), 
	.A(test_se));
   DLY1X1M U228 (.Y(n220), 
	.A(test_se));
endmodule

module ASYNC_FIFO_DATA_WIDTH8_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_1 (
	W_clk, 
	W_rst, 
	W_inc, 
	R_clk, 
	R_rst, 
	R_inc, 
	WR_data, 
	FULL, 
	EMPTY, 
	RD_data, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	TX_CLK_mux__L5_N1, 
	REF_CLK_mux__L9_N4, 
	REF_CLK_mux__L9_N5, 
	REF_CLK_mux__L9_N6, 
	REF_CLK_mux__L9_N7);
   input W_clk;
   input W_rst;
   input W_inc;
   input R_clk;
   input R_rst;
   input R_inc;
   input [7:0] WR_data;
   output FULL;
   output EMPTY;
   output [7:0] RD_data;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input TX_CLK_mux__L5_N1;
   input REF_CLK_mux__L9_N4;
   input REF_CLK_mux__L9_N5;
   input REF_CLK_mux__L9_N6;
   input REF_CLK_mux__L9_N7;

   // Internal wires
   wire FE_OFN1_SYNC_RST_1_mux;
   wire w_ptr_2_;
   wire w_ptr_1_;
   wire w_ptr_0_;
   wire W_CLKEN;
   wire n7;
   wire n8;
   wire n11;
   wire n12;
   wire SYNOPSYS_UNCONNECTED_1;
   wire SYNOPSYS_UNCONNECTED_2;
   wire [3:0] WQ2_rptr;
   wire [2:0] w_addr;
   wire [3:0] RQ2_wptr;
   wire [3:0] r_ptr;
   wire [2:0] r_addr;

   CLKBUFX8M FE_OFC1_SYNC_RST_1_mux (.Y(FE_OFN1_SYNC_RST_1_mux), 
	.A(W_rst));
   DLY1X1M U5 (.Y(n11), 
	.A(test_se));
   DLY1X1M U6 (.Y(n12), 
	.A(test_se));
   FIFO_WR_FIFO_DEPTH8_ADDR_WIDTH4_test_1 FIFO_WR_u (.W_clk(W_clk), 
	.W_rst(FE_OFN1_SYNC_RST_1_mux), 
	.W_inc(W_inc), 
	.WQ2_rptr({ WQ2_rptr[3],
		WQ2_rptr[2],
		WQ2_rptr[1],
		WQ2_rptr[0] }), 
	.W_ptr({ test_so1,
		w_ptr_2_,
		w_ptr_1_,
		w_ptr_0_ }), 
	.W_addr({ SYNOPSYS_UNCONNECTED_1,
		w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.W_CLKEN(W_CLKEN), 
	.FULL(FULL), 
	.test_si(r_ptr[3]), 
	.test_se(n12));
   FIFO_RD_FIFO_DEPTH8_ADDR_WIDTH4_test_1 FIFO_RD_u (.R_clk(TX_CLK_mux__L5_N1), 
	.R_rst(R_rst), 
	.R_inc(R_inc), 
	.RQ2_wptr({ RQ2_wptr[3],
		RQ2_wptr[2],
		RQ2_wptr[1],
		RQ2_wptr[0] }), 
	.R_ptr({ r_ptr[3],
		r_ptr[2],
		r_ptr[1],
		r_ptr[0] }), 
	.R_addr({ SYNOPSYS_UNCONNECTED_2,
		r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.EMPTY(EMPTY), 
	.test_si(n8), 
	.test_se(n12));
   DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_1 SYNC_R2W_u (.clk(W_clk), 
	.rst(FE_OFN1_SYNC_RST_1_mux), 
	.i_ptr({ r_ptr[3],
		r_ptr[2],
		r_ptr[1],
		r_ptr[0] }), 
	.o_ptr({ WQ2_rptr[3],
		WQ2_rptr[2],
		WQ2_rptr[1],
		WQ2_rptr[0] }), 
	.test_si(test_si2), 
	.test_so(n7), 
	.test_se(n12));
   DF_SYNC_FIFO_DEPTH8_NUM_STAGES2_ADDR_WIDTH4_test_0 SYNC_W2R_u (.clk(R_clk), 
	.rst(R_rst), 
	.i_ptr({ test_so1,
		w_ptr_2_,
		w_ptr_1_,
		w_ptr_0_ }), 
	.o_ptr({ RQ2_wptr[3],
		RQ2_wptr[2],
		RQ2_wptr[1],
		RQ2_wptr[0] }), 
	.test_si(n7), 
	.test_so(test_so2), 
	.test_se(n12), 
	.TX_CLK_mux__L5_N1(TX_CLK_mux__L5_N1));
   FIFO_MEM_CNTRL_DATA_WIDTH8_FIFO_DEPTH8_ADDR_WIDTH4_test_1 FIFO_MEM_u (.W_clk(W_clk), 
	.W_rst(W_rst), 
	.W_CLKEN(W_CLKEN), 
	.W_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.R_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.WR_data({ WR_data[7],
		WR_data[6],
		WR_data[5],
		WR_data[4],
		WR_data[3],
		WR_data[2],
		WR_data[1],
		WR_data[0] }), 
	.RD_data({ RD_data[7],
		RD_data[6],
		RD_data[5],
		RD_data[4],
		RD_data[3],
		RD_data[2],
		RD_data[1],
		RD_data[0] }), 
	.test_si(test_si1), 
	.test_so(n8), 
	.test_se(n11), 
	.FE_OFN1_SYNC_RST_1_mux(FE_OFN1_SYNC_RST_1_mux), 
	.REF_CLK_mux__L9_N4(REF_CLK_mux__L9_N4), 
	.REF_CLK_mux__L9_N5(REF_CLK_mux__L9_N5), 
	.REF_CLK_mux__L9_N6(REF_CLK_mux__L9_N6), 
	.REF_CLK_mux__L9_N7(REF_CLK_mux__L9_N7));
endmodule

module Pulse_gen_test_1 (
	CLK, 
	RST, 
	LVL_SIG, 
	PULSE_SIG, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input LVL_SIG;
   output PULSE_SIG;
   input test_si;
   output test_so;
   input test_se;

   SDFFRQX2M lvl_q_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(test_so), 
	.D(LVL_SIG), 
	.CK(CLK));
   NOR2BX2M U4 (.Y(PULSE_SIG), 
	.B(LVL_SIG), 
	.AN(test_so));
endmodule

module UART_TX_FSM_test_1 (
	clk, 
	rst, 
	data_valid, 
	par_en, 
	ser_done, 
	ser_en, 
	busy, 
	mux_sel, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input data_valid;
   input par_en;
   input ser_done;
   output ser_en;
   output busy;
   output [1:0] mux_sel;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire current_state_1_;
   wire current_state_0_;
   wire busy_comb;
   wire n9;
   wire n10;
   wire n11;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n14;
   wire [2:0] next_state;

   SDFFRQX2M busy_reg (.SI(test_si), 
	.SE(n14), 
	.RN(rst), 
	.Q(busy), 
	.D(busy_comb), 
	.CK(clk));
   SDFFSQX2M current_state_reg_0_ (.SN(rst), 
	.SI(busy), 
	.SE(n14), 
	.Q(current_state_0_), 
	.D(next_state[0]), 
	.CK(clk));
   SDFFRQX2M current_state_reg_2_ (.SI(current_state_1_), 
	.SE(n14), 
	.RN(rst), 
	.Q(test_so), 
	.D(next_state[2]), 
	.CK(clk));
   SDFFRQX2M current_state_reg_1_ (.SI(current_state_0_), 
	.SE(n14), 
	.RN(rst), 
	.Q(current_state_1_), 
	.D(next_state[1]), 
	.CK(clk));
   INVX2M U7 (.Y(n7), 
	.A(mux_sel[1]));
   NOR2BX2M U8 (.Y(mux_sel[1]), 
	.B(test_so), 
	.AN(current_state_1_));
   OAI32X1M U9 (.Y(mux_sel[0]), 
	.B1(n5), 
	.B0(n7), 
	.A2(current_state_1_), 
	.A1(test_so), 
	.A0(current_state_0_));
   NOR2X2M U10 (.Y(ser_en), 
	.B(test_so), 
	.A(current_state_0_));
   OAI31X1M U11 (.Y(next_state[0]), 
	.B0(n10), 
	.A2(current_state_1_), 
	.A1(data_valid), 
	.A0(n5));
   AOI31X2M U12 (.Y(n10), 
	.B0(test_so), 
	.A2(n11), 
	.A1(n5), 
	.A0(current_state_1_));
   NOR2BX2M U13 (.Y(n11), 
	.B(n8), 
	.AN(ser_done));
   INVX2M U14 (.Y(n8), 
	.A(par_en));
   INVX2M U15 (.Y(n5), 
	.A(current_state_0_));
   NOR2X2M U16 (.Y(next_state[2]), 
	.B(n7), 
	.A(n9));
   AOI21X2M U17 (.Y(n9), 
	.B0(current_state_0_), 
	.A1(n8), 
	.A0(ser_done));
   AOI31X2M U18 (.Y(next_state[1]), 
	.B0(n6), 
	.A2(ser_done), 
	.A1(n8), 
	.A0(current_state_1_));
   INVX2M U19 (.Y(n6), 
	.A(ser_en));
   OR3X2M U20 (.Y(busy_comb), 
	.C(n5), 
	.B(current_state_1_), 
	.A(test_so));
   DLY1X1M U21 (.Y(n14), 
	.A(test_se));
endmodule

module serializer_test_1 (
	clk, 
	rst, 
	ser_en, 
	P_data, 
	ser_data, 
	ser_done, 
	test_si, 
	test_se, 
	TX_CLK_mux__L5_N1);
   input clk;
   input rst;
   input ser_en;
   input [7:0] P_data;
   output ser_data;
   output ser_done;
   input test_si;
   input test_se;
   input TX_CLK_mux__L5_N1;

   // Internal wires
   wire N3;
   wire N4;
   wire N5;
   wire N10;
   wire N18;
   wire N19;
   wire N20;
   wire N22;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n6;
   wire n7;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n22;
   wire n23;
   wire n24;

   SDFFSQX2M ser_data_reg (.SN(rst), 
	.SI(N5), 
	.SE(n23), 
	.Q(ser_data), 
	.D(N18), 
	.CK(clk));
   SDFFRQX2M ser_done_reg (.SI(ser_data), 
	.SE(n24), 
	.RN(rst), 
	.Q(ser_done), 
	.D(N22), 
	.CK(clk));
   SDFFRQX2M cntr_reg_2_ (.SI(N4), 
	.SE(n23), 
	.RN(rst), 
	.Q(N5), 
	.D(n18), 
	.CK(TX_CLK_mux__L5_N1));
   SDFFRQX2M cntr_reg_0_ (.SI(test_si), 
	.SE(n24), 
	.RN(rst), 
	.Q(N3), 
	.D(N19), 
	.CK(TX_CLK_mux__L5_N1));
   SDFFRQX2M cntr_reg_1_ (.SI(N3), 
	.SE(n23), 
	.RN(rst), 
	.Q(N4), 
	.D(N20), 
	.CK(TX_CLK_mux__L5_N1));
   NAND2X2M U8 (.Y(n10), 
	.B(n8), 
	.A(ser_en));
   INVX2M U9 (.Y(n17), 
	.A(N3));
   NOR2BX2M U10 (.Y(N22), 
	.B(n8), 
	.AN(ser_en));
   NOR2X2M U11 (.Y(N19), 
	.B(n10), 
	.A(N3));
   NAND2BX2M U12 (.Y(N18), 
	.B(ser_en), 
	.AN(N10));
   NAND3X2M U13 (.Y(n8), 
	.C(N5), 
	.B(N3), 
	.A(N4));
   INVX2M U14 (.Y(n16), 
	.A(N4));
   INVX2M U15 (.Y(n18), 
	.A(n9));
   AOI32X1M U16 (.Y(n9), 
	.B1(n19), 
	.B0(N5), 
	.A2(N4), 
	.A1(N3), 
	.A0(n19));
   INVX2M U17 (.Y(n19), 
	.A(n10));
   NOR2X2M U18 (.Y(N20), 
	.B(n10), 
	.A(n11));
   XNOR2X2M U19 (.Y(n11), 
	.B(N4), 
	.A(N3));
   AOI22X1M U20 (.Y(n7), 
	.B1(N3), 
	.B0(P_data[3]), 
	.A1(n17), 
	.A0(P_data[2]));
   AOI22X1M U21 (.Y(n6), 
	.B1(N3), 
	.B0(P_data[1]), 
	.A1(n17), 
	.A0(P_data[0]));
   OA22X1M U22 (.Y(n15), 
	.B1(n6), 
	.B0(N4), 
	.A1(n7), 
	.A0(n16));
   AOI22X1M U23 (.Y(n13), 
	.B1(N3), 
	.B0(P_data[7]), 
	.A1(n17), 
	.A0(P_data[6]));
   AOI22X1M U24 (.Y(n12), 
	.B1(N3), 
	.B0(P_data[5]), 
	.A1(n17), 
	.A0(P_data[4]));
   OAI22X1M U25 (.Y(n14), 
	.B1(n12), 
	.B0(N4), 
	.A1(n16), 
	.A0(n13));
   OAI2BB2X1M U26 (.Y(N10), 
	.B1(N5), 
	.B0(n15), 
	.A1N(n14), 
	.A0N(N5));
   INVXLM U27 (.Y(n22), 
	.A(test_se));
   INVXLM U28 (.Y(n23), 
	.A(n22));
   INVXLM U29 (.Y(n24), 
	.A(n22));
endmodule

module parity_calc_test_1 (
	clk, 
	rst, 
	par_typ, 
	P_data, 
	data_valid, 
	par_bit, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input par_typ;
   input [7:0] P_data;
   input data_valid;
   output par_bit;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n2;

   SDFFRQX2M par_bit_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(par_bit), 
	.D(n8), 
	.CK(clk));
   XOR3XLM U2 (.Y(n3), 
	.C(n6), 
	.B(P_data[4]), 
	.A(P_data[5]));
   CLKXOR2X2M U3 (.Y(n6), 
	.B(P_data[6]), 
	.A(P_data[7]));
   XNOR2X2M U4 (.Y(n5), 
	.B(P_data[2]), 
	.A(P_data[3]));
   OAI2BB2X1M U5 (.Y(n8), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(par_bit));
   INVX2M U6 (.Y(n2), 
	.A(data_valid));
   XOR3XLM U7 (.Y(n1), 
	.C(n4), 
	.B(par_typ), 
	.A(n3));
   XOR3XLM U8 (.Y(n4), 
	.C(n5), 
	.B(P_data[0]), 
	.A(P_data[1]));
endmodule

module MUX_test_1 (
	clk, 
	rst, 
	ser_data, 
	par_bit, 
	mux_sel, 
	tx_out, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input ser_data;
   input par_bit;
   input [1:0] mux_sel;
   output tx_out;
   input test_si;
   input test_se;

   // Internal wires
   wire FE_OFN8_SO_0_;
   wire tx_out_comb;
   wire n2;
   wire n3;

   CLKBUFX12M FE_OFC8_SO_0_ (.Y(tx_out), 
	.A(FE_OFN8_SO_0_));
   OAI21X2M U5 (.Y(tx_out_comb), 
	.B0(n3), 
	.A1(n2), 
	.A0(mux_sel[0]));
   NOR2BX2M U6 (.Y(n2), 
	.B(ser_data), 
	.AN(mux_sel[1]));
   NAND3X2M U7 (.Y(n3), 
	.C(par_bit), 
	.B(mux_sel[0]), 
	.A(mux_sel[1]));
   SDFFSQX2M tx_out_reg (.SN(rst), 
	.SI(test_si), 
	.SE(test_se), 
	.Q(FE_OFN8_SO_0_), 
	.D(tx_out_comb), 
	.CK(clk));
endmodule

module TX_TOP_test_1 (
	CLK, 
	RST, 
	P_DATA, 
	data_valid, 
	parity_enable, 
	parity_type, 
	TX_OUT, 
	busy, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	TX_CLK_mux__L5_N1);
   input CLK;
   input RST;
   input [7:0] P_DATA;
   input data_valid;
   input parity_enable;
   input parity_type;
   output TX_OUT;
   output busy;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input TX_CLK_mux__L5_N1;

   // Internal wires
   wire ser_done;
   wire ser_en;
   wire ser_data;
   wire n4;
   wire [1:0] mux_sel;

   UART_TX_FSM_test_1 u0 (.clk(CLK), 
	.rst(RST), 
	.data_valid(data_valid), 
	.par_en(parity_enable), 
	.ser_done(ser_done), 
	.ser_en(ser_en), 
	.busy(busy), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.test_si(test_si1), 
	.test_so(n4), 
	.test_se(test_se));
   serializer_test_1 u1 (.clk(CLK), 
	.rst(RST), 
	.ser_en(ser_en), 
	.P_data({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_data(ser_data), 
	.ser_done(ser_done), 
	.test_si(n4), 
	.test_se(test_se), 
	.TX_CLK_mux__L5_N1(TX_CLK_mux__L5_N1));
   parity_calc_test_1 u2 (.clk(CLK), 
	.rst(RST), 
	.par_typ(parity_type), 
	.P_data({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.data_valid(data_valid), 
	.par_bit(test_so1), 
	.test_si(ser_done), 
	.test_se(test_se));
   MUX_test_1 u3 (.clk(CLK), 
	.rst(RST), 
	.ser_data(ser_data), 
	.par_bit(test_so1), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.tx_out(TX_OUT), 
	.test_si(test_si2), 
	.test_se(test_se));
endmodule

module UART_RX_FSM_test_1 (
	clk, 
	rst, 
	rx_in, 
	par_en, 
	Prescale, 
	bit_cnt, 
	edg_cnt, 
	limit_edg, 
	par_err, 
	stp_err, 
	strt_glitch, 
	dat_samp_en, 
	enable, 
	data_valid, 
	deser_en, 
	stp_chk_en, 
	strt_chk_en, 
	par_chk_en, 
	test_si, 
	test_so, 
	test_se, 
	RX_CLK_mux__L4_N1);
   input clk;
   input rst;
   input rx_in;
   input par_en;
   input [5:0] Prescale;
   input [3:0] bit_cnt;
   input [5:0] edg_cnt;
   input [5:0] limit_edg;
   input par_err;
   input stp_err;
   input strt_glitch;
   output dat_samp_en;
   output enable;
   output data_valid;
   output deser_en;
   output stp_chk_en;
   output strt_chk_en;
   output par_chk_en;
   input test_si;
   output test_so;
   input test_se;
   input RX_CLK_mux__L4_N1;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N61;
   wire N77;
   wire N78;
   wire N79;
   wire N80;
   wire N81;
   wire N82;
   wire N83;
   wire N84;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n46;
   wire n47;
   wire n48;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n45;
   wire n49;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire [5:0] count;
   wire [2:0] current_state;
   wire [2:0] next_state;
   wire [5:2] add_54_carry;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFSQX2M current_state_reg_0_ (.SN(rst), 
	.SI(count[5]), 
	.SE(n97), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M data_valid_reg (.SI(current_state[2]), 
	.SE(n98), 
	.RN(rst), 
	.Q(data_valid), 
	.D(N31), 
	.CK(clk));
   SDFFRQX2M current_state_reg_1_ (.SI(current_state[0]), 
	.SE(n97), 
	.RN(rst), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M stretch_reg_0_ (.SI(data_valid), 
	.SE(n96), 
	.RN(rst), 
	.Q(test_so), 
	.D(n56), 
	.CK(clk));
   SDFFRQX2M count_reg_5_ (.SI(count[4]), 
	.SE(n95), 
	.RN(rst), 
	.Q(count[5]), 
	.D(n55), 
	.CK(clk));
   SDFFRQX1M count_reg_4_ (.SI(count[3]), 
	.SE(n96), 
	.RN(rst), 
	.Q(count[4]), 
	.D(n53), 
	.CK(clk));
   SDFFRQX1M count_reg_3_ (.SI(count[2]), 
	.SE(n95), 
	.RN(rst), 
	.Q(count[3]), 
	.D(n52), 
	.CK(clk));
   SDFFRQX1M count_reg_2_ (.SI(count[1]), 
	.SE(n98), 
	.RN(rst), 
	.Q(count[2]), 
	.D(n51), 
	.CK(clk));
   SDFFRQX1M count_reg_1_ (.SI(count[0]), 
	.SE(n97), 
	.RN(rst), 
	.Q(count[1]), 
	.D(n50), 
	.CK(clk));
   SDFFRQX1M count_reg_0_ (.SI(test_si), 
	.SE(n96), 
	.RN(rst), 
	.Q(count[0]), 
	.D(n54), 
	.CK(clk));
   SDFFRQX1M current_state_reg_2_ (.SI(current_state[1]), 
	.SE(n95), 
	.RN(rst), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(RX_CLK_mux__L4_N1));
   NOR4X1M U27 (.Y(N61), 
	.D(n59), 
	.C(n60), 
	.B(n61), 
	.A(n62));
   XOR2XLM U28 (.Y(n60), 
	.B(edg_cnt[2]), 
	.A(limit_edg[2]));
   XOR2XLM U29 (.Y(n59), 
	.B(edg_cnt[3]), 
	.A(limit_edg[3]));
   OAI2BB1XLM U30 (.Y(N81), 
	.B0(n33), 
	.A1N(limit_edg[4]), 
	.A0N(n32));
   OAI2BB1XLM U31 (.Y(N79), 
	.B0(n31), 
	.A1N(limit_edg[2]), 
	.A0N(n30));
   OAI2BB1XLM U32 (.Y(N80), 
	.B0(n32), 
	.A1N(limit_edg[3]), 
	.A0N(n31));
   NOR3X2M U33 (.Y(stp_chk_en), 
	.C(n89), 
	.B(current_state[1]), 
	.A(current_state[0]));
   INVXLM U35 (.Y(n83), 
	.A(N61));
   NOR2X2M U36 (.Y(deser_en), 
	.B(n39), 
	.A(n83));
   OR2X2M U37 (.Y(n30), 
	.B(limit_edg[0]), 
	.A(limit_edg[1]));
   OAI211X2M U38 (.Y(next_state[2]), 
	.C0(n87), 
	.B0(n35), 
	.A1(n85), 
	.A0(n83));
   INVX2M U39 (.Y(n85), 
	.A(par_chk_en));
   NAND3X2M U40 (.Y(n35), 
	.C(deser_en), 
	.B(n91), 
	.A(n84));
   NOR2X2M U41 (.Y(n46), 
	.B(N21), 
	.A(n90));
   NAND2BX2M U42 (.Y(N31), 
	.B(n48), 
	.AN(n46));
   NAND4BX1M U43 (.Y(enable), 
	.D(n47), 
	.C(n87), 
	.B(n36), 
	.AN(strt_chk_en));
   NOR2BX2M U44 (.Y(n36), 
	.B(par_chk_en), 
	.AN(n39));
   INVX2M U45 (.Y(n87), 
	.A(stp_chk_en));
   OAI211X2M U46 (.Y(next_state[0]), 
	.C0(n41), 
	.B0(n40), 
	.A1(n88), 
	.A0(n89));
   AOI22X1M U47 (.Y(n40), 
	.B1(n83), 
	.B0(par_chk_en), 
	.A1(stp_chk_en), 
	.A0(N84));
   AOI31X2M U48 (.Y(n41), 
	.B0(n82), 
	.A2(rx_in), 
	.A1(n88), 
	.A0(current_state[0]));
   INVX2M U49 (.Y(n82), 
	.A(n42));
   AOI33XLM U50 (.Y(n42), 
	.B2(deser_en), 
	.B1(n84), 
	.B0(par_en), 
	.A2(strt_chk_en), 
	.A1(N61), 
	.A0(strt_glitch));
   OAI21XLM U51 (.Y(next_state[1]), 
	.B0(n37), 
	.A1(n36), 
	.A0(N61));
   AOI31XLM U52 (.Y(n37), 
	.B0(n38), 
	.A2(strt_chk_en), 
	.A1(n81), 
	.A0(N61));
   INVX2M U53 (.Y(n81), 
	.A(strt_glitch));
   AOI21X2M U54 (.Y(n38), 
	.B0(n39), 
	.A1(n91), 
	.A0(n84));
   OR2X2M U55 (.Y(n26), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   AO2B2X2M U56 (.Y(n56), 
	.B1(n90), 
	.B0(N30), 
	.A1N(N30), 
	.A0(test_so));
   OAI2BB1XLM U57 (.Y(N30), 
	.B0(n48), 
	.A1N(N21), 
	.A0N(test_so));
   AO22X1M U58 (.Y(n53), 
	.B1(n46), 
	.B0(N28), 
	.A1(n90), 
	.A0(count[4]));
   AO22X1M U59 (.Y(n52), 
	.B1(n46), 
	.B0(N27), 
	.A1(n90), 
	.A0(count[3]));
   AO22X1M U60 (.Y(n51), 
	.B1(n46), 
	.B0(N26), 
	.A1(n90), 
	.A0(count[2]));
   AO22X1M U61 (.Y(n50), 
	.B1(n46), 
	.B0(N25), 
	.A1(n90), 
	.A0(count[1]));
   AO22X1M U62 (.Y(n54), 
	.B1(n46), 
	.B0(N24), 
	.A1(n90), 
	.A0(count[0]));
   AO22X1M U63 (.Y(n55), 
	.B1(n46), 
	.B0(N29), 
	.A1(n90), 
	.A0(count[5]));
   NOR3X2M U64 (.Y(par_chk_en), 
	.C(n88), 
	.B(current_state[2]), 
	.A(n86));
   NAND3X2M U65 (.Y(n39), 
	.C(current_state[1]), 
	.B(n89), 
	.A(n86));
   INVX2M U66 (.Y(n88), 
	.A(current_state[1]));
   OR4X1M U67 (.Y(n48), 
	.D(par_err), 
	.C(stp_err), 
	.B(n47), 
	.A(test_so));
   INVX2M U68 (.Y(n89), 
	.A(current_state[2]));
   INVX2M U69 (.Y(n86), 
	.A(current_state[0]));
   NOR3X2M U70 (.Y(strt_chk_en), 
	.C(current_state[0]), 
	.B(current_state[2]), 
	.A(current_state[1]));
   NAND3X2M U71 (.Y(n47), 
	.C(current_state[0]), 
	.B(n88), 
	.A(current_state[2]));
   INVX2M U72 (.Y(n84), 
	.A(n43));
   NAND3BX2M U73 (.Y(n43), 
	.C(n44), 
	.B(bit_cnt[3]), 
	.AN(bit_cnt[0]));
   NOR2X2M U74 (.Y(n44), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[2]));
   ADDHX1M U75 (.S(N25), 
	.CO(add_54_carry[2]), 
	.B(count[0]), 
	.A(count[1]));
   ADDHX1M U76 (.S(N26), 
	.CO(add_54_carry[3]), 
	.B(add_54_carry[2]), 
	.A(count[2]));
   ADDHX1M U77 (.S(N27), 
	.CO(add_54_carry[4]), 
	.B(add_54_carry[3]), 
	.A(count[3]));
   ADDHX1M U78 (.S(N28), 
	.CO(add_54_carry[5]), 
	.B(add_54_carry[4]), 
	.A(count[4]));
   INVX2M U79 (.Y(n90), 
	.A(test_so));
   INVX2M U80 (.Y(n91), 
	.A(par_en));
   OAI2BB1X1M U82 (.Y(N15), 
	.B0(n26), 
	.A1N(Prescale[1]), 
	.A0N(Prescale[0]));
   OR2X1M U83 (.Y(n27), 
	.B(Prescale[2]), 
	.A(n26));
   OAI2BB1X1M U84 (.Y(N16), 
	.B0(n27), 
	.A1N(Prescale[2]), 
	.A0N(n26));
   OR2X1M U85 (.Y(n28), 
	.B(Prescale[3]), 
	.A(n27));
   OAI2BB1X1M U86 (.Y(N17), 
	.B0(n28), 
	.A1N(Prescale[3]), 
	.A0N(n27));
   OR2X1M U87 (.Y(n29), 
	.B(Prescale[4]), 
	.A(n28));
   OAI2BB1X1M U88 (.Y(N18), 
	.B0(n29), 
	.A1N(Prescale[4]), 
	.A0N(n28));
   NOR2X1M U89 (.Y(N20), 
	.B(Prescale[5]), 
	.A(n29));
   AO21XLM U90 (.Y(N19), 
	.B0(N20), 
	.A1(Prescale[5]), 
	.A0(n29));
   CLKINVX1M U91 (.Y(N24), 
	.A(count[0]));
   CLKXOR2X2M U92 (.Y(N29), 
	.B(count[5]), 
	.A(add_54_carry[5]));
   CLKINVX1M U93 (.Y(N77), 
	.A(limit_edg[0]));
   OAI2BB1X1M U94 (.Y(N78), 
	.B0(n30), 
	.A1N(limit_edg[1]), 
	.A0N(limit_edg[0]));
   OR2X1M U95 (.Y(n31), 
	.B(limit_edg[2]), 
	.A(n30));
   OR2X1M U96 (.Y(n32), 
	.B(limit_edg[3]), 
	.A(n31));
   OR2X1M U97 (.Y(n33), 
	.B(limit_edg[4]), 
	.A(n32));
   NOR2X1M U98 (.Y(N83), 
	.B(limit_edg[5]), 
	.A(n33));
   AO21XLM U99 (.Y(N82), 
	.B0(N83), 
	.A1(limit_edg[5]), 
	.A0(n33));
   NOR2BX1M U100 (.Y(n34), 
	.B(limit_edg[0]), 
	.AN(edg_cnt[0]));
   OAI2B2X1M U101 (.Y(n58), 
	.B1(n34), 
	.B0(edg_cnt[1]), 
	.A1N(limit_edg[1]), 
	.A0(n34));
   NOR2BX1M U102 (.Y(n45), 
	.B(edg_cnt[0]), 
	.AN(limit_edg[0]));
   OAI2B2X1M U103 (.Y(n57), 
	.B1(n45), 
	.B0(limit_edg[1]), 
	.A1N(edg_cnt[1]), 
	.A0(n45));
   XNOR2X1M U104 (.Y(n49), 
	.B(edg_cnt[5]), 
	.A(limit_edg[5]));
   NAND3X1M U105 (.Y(n62), 
	.C(n49), 
	.B(n57), 
	.A(n58));
   CLKXOR2X2M U106 (.Y(n61), 
	.B(edg_cnt[4]), 
	.A(limit_edg[4]));
   NOR2BX1M U107 (.Y(n63), 
	.B(count[0]), 
	.AN(limit_edg[0]));
   OAI2B2X1M U108 (.Y(n67), 
	.B1(n63), 
	.B0(N15), 
	.A1N(count[1]), 
	.A0(n63));
   XNOR2X1M U109 (.Y(n66), 
	.B(count[5]), 
	.A(N19));
   NOR2BX1M U110 (.Y(n64), 
	.B(limit_edg[0]), 
	.AN(count[0]));
   OAI2B2X1M U111 (.Y(n65), 
	.B1(n64), 
	.B0(count[1]), 
	.A1N(N15), 
	.A0(n64));
   NAND4BX1M U112 (.Y(n71), 
	.D(n65), 
	.C(n66), 
	.B(n67), 
	.AN(N20));
   CLKXOR2X2M U113 (.Y(n70), 
	.B(count[4]), 
	.A(N18));
   CLKXOR2X2M U114 (.Y(n69), 
	.B(count[2]), 
	.A(N16));
   CLKXOR2X2M U115 (.Y(n68), 
	.B(count[3]), 
	.A(N17));
   NOR4X1M U116 (.Y(N21), 
	.D(n68), 
	.C(n69), 
	.B(n70), 
	.A(n71));
   NOR2BX1M U117 (.Y(n72), 
	.B(edg_cnt[0]), 
	.AN(N77));
   OAI2B2X1M U118 (.Y(n76), 
	.B1(n72), 
	.B0(N78), 
	.A1N(edg_cnt[1]), 
	.A0(n72));
   XNOR2X1M U119 (.Y(n75), 
	.B(edg_cnt[5]), 
	.A(N82));
   NOR2BX1M U120 (.Y(n73), 
	.B(N77), 
	.AN(edg_cnt[0]));
   OAI2B2X1M U121 (.Y(n74), 
	.B1(n73), 
	.B0(edg_cnt[1]), 
	.A1N(N78), 
	.A0(n73));
   NAND4BX1M U122 (.Y(n80), 
	.D(n74), 
	.C(n75), 
	.B(n76), 
	.AN(N83));
   CLKXOR2X2M U123 (.Y(n79), 
	.B(edg_cnt[4]), 
	.A(N81));
   CLKXOR2X2M U124 (.Y(n78), 
	.B(edg_cnt[2]), 
	.A(N79));
   CLKXOR2X2M U125 (.Y(n77), 
	.B(edg_cnt[3]), 
	.A(N80));
   NOR4X1M U126 (.Y(N84), 
	.D(n77), 
	.C(n78), 
	.B(n79), 
	.A(n80));
   INVXLM U127 (.Y(n94), 
	.A(test_se));
   INVXLM U128 (.Y(n95), 
	.A(n94));
   INVXLM U129 (.Y(n96), 
	.A(n94));
   INVXLM U130 (.Y(n97), 
	.A(n94));
   INVXLM U131 (.Y(n98), 
	.A(n94));
   INVX2M U3 (.Y(dat_samp_en), 
	.A(LTIE_LTIELO_NET));
endmodule

module edge_bit_cntr_test_1 (
	clk, 
	rst, 
	enable, 
	par_en, 
	prescale, 
	bit_cnt, 
	edg_cnt, 
	limit_edg, 
	test_si, 
	test_se, 
	RX_CLK_mux__L4_N1);
   input clk;
   input rst;
   input enable;
   input par_en;
   input [5:0] prescale;
   output [3:0] bit_cnt;
   output [5:0] edg_cnt;
   output [5:0] limit_edg;
   input test_si;
   input test_se;
   input RX_CLK_mux__L4_N1;

   // Internal wires
   wire N9;
   wire N23;
   wire N24;
   wire N25;
   wire N26;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire N44;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n17;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire [5:2] add_32_carry;

   SDFFRQX2M edg_cnt_reg_4_ (.SI(edg_cnt[3]), 
	.SE(n62), 
	.RN(rst), 
	.Q(edg_cnt[4]), 
	.D(N43), 
	.CK(clk));
   SDFFRQX2M edg_cnt_reg_0_ (.SI(bit_cnt[3]), 
	.SE(n61), 
	.RN(rst), 
	.Q(edg_cnt[0]), 
	.D(N39), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M edg_cnt_reg_1_ (.SI(edg_cnt[0]), 
	.SE(n60), 
	.RN(rst), 
	.Q(edg_cnt[1]), 
	.D(N40), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M bit_cnt_reg_2_ (.SI(bit_cnt[1]), 
	.SE(n59), 
	.RN(rst), 
	.Q(bit_cnt[2]), 
	.D(n33), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M bit_cnt_reg_3_ (.SI(bit_cnt[2]), 
	.SE(n62), 
	.RN(rst), 
	.Q(bit_cnt[3]), 
	.D(n32), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M edg_cnt_reg_5_ (.SI(edg_cnt[4]), 
	.SE(n61), 
	.RN(rst), 
	.Q(edg_cnt[5]), 
	.D(N44), 
	.CK(clk));
   SDFFRQX2M bit_cnt_reg_0_ (.SI(test_si), 
	.SE(n60), 
	.RN(rst), 
	.Q(bit_cnt[0]), 
	.D(n35), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M bit_cnt_reg_1_ (.SI(bit_cnt[0]), 
	.SE(n59), 
	.RN(rst), 
	.Q(bit_cnt[1]), 
	.D(n34), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX1M edg_cnt_reg_3_ (.SI(edg_cnt[2]), 
	.SE(n60), 
	.RN(rst), 
	.Q(edg_cnt[3]), 
	.D(N42), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX1M edg_cnt_reg_2_ (.SI(edg_cnt[1]), 
	.SE(n59), 
	.RN(rst), 
	.Q(edg_cnt[2]), 
	.D(N41), 
	.CK(RX_CLK_mux__L4_N1));
   AO21XLM U8 (.Y(limit_edg[2]), 
	.B0(n37), 
	.A1(prescale[2]), 
	.A0(n36));
   OR2X1M U14 (.Y(n36), 
	.B(prescale[0]), 
	.A(prescale[1]));
   NOR2X2M U15 (.Y(n37), 
	.B(prescale[2]), 
	.A(n36));
   OAI21X2M U21 (.Y(limit_edg[3]), 
	.B0(n38), 
	.A1(n40), 
	.A0(n37));
   XNOR2X2M U22 (.Y(limit_edg[4]), 
	.B(n38), 
	.A(prescale[4]));
   XOR2XLM U23 (.Y(n47), 
	.B(edg_cnt[2]), 
	.A(limit_edg[2]));
   XOR2XLM U24 (.Y(n46), 
	.B(edg_cnt[3]), 
	.A(limit_edg[3]));
   XOR2XLM U25 (.Y(n48), 
	.B(edg_cnt[4]), 
	.A(limit_edg[4]));
   INVX2M U28 (.Y(n50), 
	.A(n24));
   INVX2M U29 (.Y(n54), 
	.A(enable));
   NOR2X2M U30 (.Y(n24), 
	.B(N9), 
	.A(n54));
   NOR2BX2M U31 (.Y(N40), 
	.B(n50), 
	.AN(N23));
   NOR2BX2M U32 (.Y(N41), 
	.B(n50), 
	.AN(N24));
   NOR2BX2M U33 (.Y(N42), 
	.B(n50), 
	.AN(N25));
   NOR2BX2M U34 (.Y(N43), 
	.B(n50), 
	.AN(N26));
   INVX2M U35 (.Y(n52), 
	.A(n23));
   INVX2M U36 (.Y(n40), 
	.A(prescale[3]));
   OAI32X1M U37 (.Y(n35), 
	.B1(n50), 
	.B0(n51), 
	.A2(n24), 
	.A1(bit_cnt[0]), 
	.A0(n23));
   OAI21X2M U38 (.Y(n34), 
	.B0(n28), 
	.A1(n53), 
	.A0(n27));
   AOI21X2M U39 (.Y(n27), 
	.B0(n24), 
	.A1(n51), 
	.A0(n52));
   NAND4X2M U40 (.Y(n28), 
	.D(n53), 
	.C(n50), 
	.B(bit_cnt[0]), 
	.A(n52));
   OAI2B1X2M U41 (.Y(n32), 
	.B0(n21), 
	.A1N(bit_cnt[3]), 
	.A0(n20));
   AOI21X2M U42 (.Y(n20), 
	.B0(n24), 
	.A1(n22), 
	.A0(n52));
   OR4X1M U43 (.Y(n21), 
	.D(bit_cnt[3]), 
	.C(n24), 
	.B(n23), 
	.A(n22));
   NAND3X2M U44 (.Y(n22), 
	.C(bit_cnt[2]), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[0]));
   NOR2X2M U45 (.Y(N44), 
	.B(n50), 
	.A(n17));
   XNOR2X2M U46 (.Y(n17), 
	.B(edg_cnt[5]), 
	.A(add_32_carry[5]));
   NOR2X2M U47 (.Y(N39), 
	.B(n50), 
	.A(edg_cnt[0]));
   NOR2X2M U48 (.Y(n33), 
	.B(n54), 
	.A(n25));
   CLKXOR2X2M U49 (.Y(n25), 
	.B(bit_cnt[2]), 
	.A(n26));
   NAND3XLM U50 (.Y(n26), 
	.C(N9), 
	.B(bit_cnt[1]), 
	.A(bit_cnt[0]));
   NAND2X2M U51 (.Y(n23), 
	.B(n29), 
	.A(enable));
   NAND4BX1M U52 (.Y(n29), 
	.D(n31), 
	.C(bit_cnt[3]), 
	.B(n30), 
	.AN(bit_cnt[2]));
   CLKXOR2X2M U53 (.Y(n31), 
	.B(bit_cnt[0]), 
	.A(bit_cnt[1]));
   CLKXOR2X2M U54 (.Y(n30), 
	.B(par_en), 
	.A(n53));
   INVX2M U55 (.Y(n53), 
	.A(bit_cnt[1]));
   ADDHX1M U56 (.S(N23), 
	.CO(add_32_carry[2]), 
	.B(edg_cnt[0]), 
	.A(edg_cnt[1]));
   ADDHX1M U57 (.S(N24), 
	.CO(add_32_carry[3]), 
	.B(add_32_carry[2]), 
	.A(edg_cnt[2]));
   ADDHX1M U58 (.S(N25), 
	.CO(add_32_carry[4]), 
	.B(add_32_carry[3]), 
	.A(edg_cnt[3]));
   ADDHX1M U59 (.S(N26), 
	.CO(add_32_carry[5]), 
	.B(add_32_carry[4]), 
	.A(edg_cnt[4]));
   INVX2M U60 (.Y(n51), 
	.A(bit_cnt[0]));
   CLKINVX1M U61 (.Y(limit_edg[0]), 
	.A(prescale[0]));
   OAI2BB1X1M U62 (.Y(limit_edg[1]), 
	.B0(n36), 
	.A1N(prescale[1]), 
	.A0N(prescale[0]));
   CLKNAND2X2M U64 (.Y(n38), 
	.B(n40), 
	.A(n37));
   NOR2X1M U65 (.Y(n39), 
	.B(n38), 
	.A(prescale[4]));
   CLKXOR2X2M U66 (.Y(limit_edg[5]), 
	.B(n39), 
	.A(prescale[5]));
   NOR2BX1M U67 (.Y(n41), 
	.B(limit_edg[0]), 
	.AN(edg_cnt[0]));
   OAI2B2X1M U68 (.Y(n45), 
	.B1(n41), 
	.B0(edg_cnt[1]), 
	.A1N(limit_edg[1]), 
	.A0(n41));
   NOR2BX1M U69 (.Y(n42), 
	.B(edg_cnt[0]), 
	.AN(limit_edg[0]));
   OAI2B2X1M U70 (.Y(n44), 
	.B1(n42), 
	.B0(limit_edg[1]), 
	.A1N(edg_cnt[1]), 
	.A0(n42));
   XNOR2X1M U71 (.Y(n43), 
	.B(edg_cnt[5]), 
	.A(limit_edg[5]));
   NAND3X1M U72 (.Y(n49), 
	.C(n43), 
	.B(n44), 
	.A(n45));
   NOR4X1M U73 (.Y(N9), 
	.D(n46), 
	.C(n47), 
	.B(n48), 
	.A(n49));
   INVXLM U74 (.Y(n58), 
	.A(test_se));
   INVXLM U75 (.Y(n59), 
	.A(n58));
   INVXLM U76 (.Y(n60), 
	.A(n58));
   INVXLM U77 (.Y(n61), 
	.A(n58));
   INVXLM U78 (.Y(n62), 
	.A(n58));
endmodule

module data_sampling_test_1 (
	clk, 
	rst, 
	dat_samp_en, 
	edg_cnt, 
	rx_in, 
	prescale, 
	sampled_bit, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se);
   input clk;
   input rst;
   input dat_samp_en;
   input [5:0] edg_cnt;
   input rx_in;
   input [5:0] prescale;
   output sampled_bit;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n3;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire N23;
   wire N24;
   wire N25;
   wire N33;
   wire n21;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n72;
   wire n1;
   wire [4:0] targ_edg;
   wire [1:0] i;
   wire [1:0] sampled_data;
   wire [4:2] r78_carry;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRX1M sampled_data_reg_2_ (.SI(sampled_data[1]), 
	.SE(n72), 
	.RN(rst), 
	.QN(n21), 
	.Q(test_so1), 
	.D(n39), 
	.CK(clk));
   SDFFSQX2M sampled_bit_reg (.SN(rst), 
	.SI(i[1]), 
	.SE(n72), 
	.Q(n3), 
	.D(n38), 
	.CK(clk));
   SDFFRQX2M sampled_data_reg_1_ (.SI(sampled_data[0]), 
	.SE(n72), 
	.RN(rst), 
	.Q(sampled_data[1]), 
	.D(n40), 
	.CK(clk));
   SDFFRQX2M i_reg_0_ (.SI(test_si1), 
	.SE(n72), 
	.RN(rst), 
	.Q(i[0]), 
	.D(n43), 
	.CK(clk));
   SDFFRQX2M i_reg_1_ (.SI(i[0]), 
	.SE(n72), 
	.RN(rst), 
	.Q(i[1]), 
	.D(n42), 
	.CK(clk));
   SDFFRQX2M sampled_data_reg_0_ (.SI(test_si2), 
	.SE(n72), 
	.RN(rst), 
	.Q(sampled_data[0]), 
	.D(n41), 
	.CK(clk));
   XNOR2X2M U9 (.Y(targ_edg[3]), 
	.B(n8), 
	.A(prescale[4]));
   INVX2M U10 (.Y(n56), 
	.A(N14));
   INVX2M U17 (.Y(n57), 
	.A(N15));
   NAND2BX2M U18 (.Y(n37), 
	.B(n28), 
	.AN(N33));
   ADDHX1M U19 (.S(N21), 
	.CO(r78_carry[3]), 
	.B(r78_carry[2]), 
	.A(targ_edg[2]));
   INVX2M U20 (.Y(n45), 
	.A(N20));
   INVX2M U21 (.Y(n48), 
	.A(N23));
   OR2X2M U22 (.Y(n11), 
	.B(targ_edg[0]), 
	.A(targ_edg[1]));
   NAND2X2M U23 (.Y(n32), 
	.B(n62), 
	.A(n64));
   NOR2X2M U24 (.Y(n28), 
	.B(n64), 
	.A(n65));
   OAI22X1M U25 (.Y(n43), 
	.B1(n32), 
	.B0(n65), 
	.A1(n37), 
	.A0(n62));
   INVX2M U26 (.Y(n64), 
	.A(n35));
   ADDHX1M U27 (.S(N22), 
	.CO(r78_carry[4]), 
	.B(r78_carry[3]), 
	.A(targ_edg[3]));
   ADDHX1M U28 (.S(N20), 
	.CO(r78_carry[2]), 
	.B(targ_edg[0]), 
	.A(targ_edg[1]));
   ADDHX1M U29 (.S(N23), 
	.CO(N24), 
	.B(r78_carry[4]), 
	.A(targ_edg[4]));
   INVX2M U30 (.Y(n61), 
	.A(edg_cnt[4]));
   INVX2M U31 (.Y(n60), 
	.A(edg_cnt[2]));
   OAI32X1M U32 (.Y(n42), 
	.B1(n37), 
	.B0(n63), 
	.A2(n65), 
	.A1(n36), 
	.A0(n35));
   XNOR2X2M U33 (.Y(n36), 
	.B(i[1]), 
	.A(i[0]));
   NAND2X2M U34 (.Y(n35), 
	.B(N18), 
	.A(N25));
   INVX2M U35 (.Y(n58), 
	.A(N16));
   OAI2B2X1M U36 (.Y(n39), 
	.B1(n30), 
	.B0(n21), 
	.A1N(n30), 
	.A0(n31));
   OAI21X2M U37 (.Y(n30), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n63), 
	.A0(n32));
   INVX2M U38 (.Y(n10), 
	.A(prescale[3]));
   OAI2BB2X1M U39 (.Y(n40), 
	.B1(n31), 
	.B0(n33), 
	.A1N(n33), 
	.A0N(sampled_data[1]));
   AOI31X2M U40 (.Y(n33), 
	.B0(n65), 
	.A2(n64), 
	.A1(n63), 
	.A0(i[0]));
   OAI2BB2X1M U41 (.Y(n41), 
	.B1(n31), 
	.B0(n34), 
	.A1N(n34), 
	.A0N(sampled_data[0]));
   AOI2BB1X2M U42 (.Y(n34), 
	.B0(n65), 
	.A1N(i[1]), 
	.A0N(n32));
   OAI2BB2X1M U43 (.Y(n38), 
	.B1(n27), 
	.B0(n26), 
	.A1N(n27), 
	.A0N(sampled_bit));
   AOI21X2M U44 (.Y(n26), 
	.B0(n29), 
	.A1(sampled_data[0]), 
	.A0(sampled_data[1]));
   NAND2X2M U45 (.Y(n27), 
	.B(n28), 
	.A(N33));
   AOI2BB1X2M U46 (.Y(n29), 
	.B0(n21), 
	.A1N(sampled_data[0]), 
	.A0N(sampled_data[1]));
   INVX2M U47 (.Y(n47), 
	.A(N22));
   INVX2M U48 (.Y(n50), 
	.A(edg_cnt[3]));
   INVX2M U49 (.Y(n46), 
	.A(N21));
   INVX2M U50 (.Y(n49), 
	.A(N24));
   INVX2M U51 (.Y(n59), 
	.A(edg_cnt[1]));
   INVX2M U52 (.Y(n63), 
	.A(i[1]));
   INVX2M U53 (.Y(n62), 
	.A(i[0]));
   NAND2X2M U54 (.Y(n31), 
	.B(HTIE_LTIEHI_NET), 
	.A(rx_in));
   INVX2M U55 (.Y(n65), 
	.A(HTIE_LTIEHI_NET));
   CLKINVX1M U56 (.Y(targ_edg[0]), 
	.A(prescale[1]));
   NOR2X1M U57 (.Y(n7), 
	.B(prescale[1]), 
	.A(prescale[2]));
   AO21XLM U58 (.Y(targ_edg[1]), 
	.B0(n7), 
	.A1(prescale[2]), 
	.A0(prescale[1]));
   CLKNAND2X2M U59 (.Y(n8), 
	.B(n10), 
	.A(n7));
   OAI21X1M U60 (.Y(targ_edg[2]), 
	.B0(n8), 
	.A1(n10), 
	.A0(n7));
   NOR2X1M U61 (.Y(n9), 
	.B(n8), 
	.A(prescale[4]));
   CLKXOR2X2M U62 (.Y(targ_edg[4]), 
	.B(n9), 
	.A(prescale[5]));
   CLKINVX1M U63 (.Y(N19), 
	.A(targ_edg[0]));
   OAI2BB1X1M U64 (.Y(N13), 
	.B0(n11), 
	.A1N(targ_edg[1]), 
	.A0N(targ_edg[0]));
   OR2X1M U65 (.Y(n12), 
	.B(targ_edg[2]), 
	.A(n11));
   OAI2BB1X1M U66 (.Y(N14), 
	.B0(n12), 
	.A1N(targ_edg[2]), 
	.A0N(n11));
   XNOR2X1M U67 (.Y(N15), 
	.B(n12), 
	.A(targ_edg[3]));
   NOR3X1M U68 (.Y(N17), 
	.C(n12), 
	.B(targ_edg[4]), 
	.A(targ_edg[3]));
   OAI21X1M U69 (.Y(n13), 
	.B0(targ_edg[4]), 
	.A1(n12), 
	.A0(targ_edg[3]));
   NAND2BX1M U70 (.Y(N16), 
	.B(n13), 
	.AN(N17));
   NOR2X1M U71 (.Y(n25), 
	.B(n48), 
	.A(edg_cnt[4]));
   AOI2BB1X1M U72 (.Y(n14), 
	.B0(N19), 
	.A1N(n45), 
	.A0N(edg_cnt[1]));
   AOI222X1M U73 (.Y(n22), 
	.C1(n45), 
	.C0(edg_cnt[1]), 
	.B1(edg_cnt[0]), 
	.B0(n14), 
	.A1(n46), 
	.A0(edg_cnt[2]));
   AOI221XLM U74 (.Y(n23), 
	.C0(n22), 
	.B1(n60), 
	.B0(N21), 
	.A1(n50), 
	.A0(N22));
   AOI221XLM U75 (.Y(n24), 
	.C0(n23), 
	.B1(n47), 
	.B0(edg_cnt[3]), 
	.A1(n48), 
	.A0(edg_cnt[4]));
   OAI2BB2X1M U76 (.Y(n44), 
	.B1(n24), 
	.B0(n25), 
	.A1N(edg_cnt[5]), 
	.A0N(n49));
   OAI21X1M U77 (.Y(N25), 
	.B0(n44), 
	.A1(n49), 
	.A0(edg_cnt[5]));
   CLKINVX1M U78 (.Y(N33), 
	.A(N25));
   AOI2BB1X1M U79 (.Y(n51), 
	.B0(edg_cnt[0]), 
	.A1N(n59), 
	.A0N(N13));
   AOI222X1M U80 (.Y(n52), 
	.C1(n59), 
	.C0(N13), 
	.B1(N19), 
	.B0(n51), 
	.A1(n60), 
	.A0(N14));
   AOI221XLM U81 (.Y(n53), 
	.C0(n52), 
	.B1(n56), 
	.B0(edg_cnt[2]), 
	.A1(n57), 
	.A0(edg_cnt[3]));
   AOI221XLM U82 (.Y(n54), 
	.C0(n53), 
	.B1(n50), 
	.B0(N15), 
	.A1(n61), 
	.A0(N16));
   AOI211X1M U83 (.Y(n55), 
	.C0(n54), 
	.B0(edg_cnt[5]), 
	.A1(n58), 
	.A0(edg_cnt[4]));
   NOR2X1M U84 (.Y(N18), 
	.B(n55), 
	.A(N17));
   DLY1X1M U87 (.Y(n72), 
	.A(test_se));
   INVXLM U3 (.Y(n1), 
	.A(n3));
   CLKINVX12M U4 (.Y(sampled_bit), 
	.A(n1));
endmodule

module par_chck_test_1 (
	clk, 
	rst, 
	P_data, 
	par_typ, 
	par_chk_en, 
	sampled_bit, 
	par_err, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input [7:0] P_data;
   input par_typ;
   input par_chk_en;
   input sampled_bit;
   output par_err;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n9;
   wire n2;
   wire n12;

   SDFFRQX1M par_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(test_so), 
	.D(n9), 
	.CK(clk));
   INVXLM U2 (.Y(n2), 
	.A(test_so));
   CLKINVX12M U3 (.Y(par_err), 
	.A(n2));
   OAI2BB2XLM U5 (.Y(n9), 
	.B1(n12), 
	.B0(n1), 
	.A1N(n12), 
	.A0N(par_err));
   XOR3XLM U6 (.Y(n1), 
	.C(n5), 
	.B(n4), 
	.A(n3));
   INVX2M U7 (.Y(n12), 
	.A(par_chk_en));
   XNOR2X2M U8 (.Y(n5), 
	.B(par_typ), 
	.A(sampled_bit));
   XOR3XLM U9 (.Y(n3), 
	.C(n7), 
	.B(P_data[0]), 
	.A(P_data[1]));
   XNOR2X2M U11 (.Y(n7), 
	.B(P_data[2]), 
	.A(P_data[3]));
   XOR3XLM U12 (.Y(n4), 
	.C(n6), 
	.B(P_data[4]), 
	.A(P_data[5]));
   XNOR2X2M U13 (.Y(n6), 
	.B(P_data[6]), 
	.A(P_data[7]));
endmodule

module strt_checker_test_1 (
	clk, 
	rst, 
	strt_chk_en, 
	sampled_bit, 
	strt_glitch, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input strt_chk_en;
   input sampled_bit;
   output strt_glitch;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n3;

   SDFFSX1M strt_glitch_reg (.SN(rst), 
	.SI(test_si), 
	.SE(test_se), 
	.QN(test_so), 
	.Q(strt_glitch), 
	.D(n3), 
	.CK(clk));
   AOI2B1X1M U3 (.Y(n3), 
	.B0(test_so), 
	.A1N(sampled_bit), 
	.A0(strt_chk_en));
endmodule

module stp_checker_test_1 (
	clk, 
	rst, 
	stp_chk_en, 
	sampled_bit, 
	stp_err, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input stp_chk_en;
   input sampled_bit;
   output stp_err;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n3;
   wire n1;
   wire n6;

   SDFFRQX1M stp_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(test_so), 
	.D(n3), 
	.CK(clk));
   INVXLM U2 (.Y(n1), 
	.A(test_so));
   CLKINVX12M U3 (.Y(stp_err), 
	.A(n1));
   OAI2BB2XLM U6 (.Y(n3), 
	.B1(n6), 
	.B0(sampled_bit), 
	.A1N(n6), 
	.A0N(stp_err));
   INVX2M U7 (.Y(n6), 
	.A(stp_chk_en));
endmodule

module deserializer_test_1 (
	clk, 
	rst, 
	deser_en, 
	sampled_bit, 
	P_data, 
	test_si, 
	test_so, 
	test_se, 
	RX_CLK_mux__L4_N1);
   input clk;
   input rst;
   input deser_en;
   input sampled_bit;
   output [7:0] P_data;
   input test_si;
   output test_so;
   input test_se;
   input RX_CLK_mux__L4_N1;

   // Internal wires
   wire i_1_;
   wire i_0_;
   wire n1;
   wire n2;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n29;
   wire n32;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n58;
   wire n59;

   SDFFRQX2M i_reg_0_ (.SI(P_data[7]), 
	.SE(n58), 
	.RN(rst), 
	.Q(i_0_), 
	.D(n34), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M i_reg_1_ (.SI(i_0_), 
	.SE(n59), 
	.RN(rst), 
	.Q(i_1_), 
	.D(n32), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M i_reg_2_ (.SI(i_1_), 
	.SE(n58), 
	.RN(rst), 
	.Q(test_so), 
	.D(n29), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M P_data_reg_6_ (.SI(P_data[5]), 
	.SE(n59), 
	.RN(rst), 
	.Q(P_data[6]), 
	.D(n36), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M P_data_reg_2_ (.SI(P_data[1]), 
	.SE(n58), 
	.RN(rst), 
	.Q(P_data[2]), 
	.D(n40), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M P_data_reg_0_ (.SI(test_si), 
	.SE(n59), 
	.RN(rst), 
	.Q(P_data[0]), 
	.D(n42), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M P_data_reg_4_ (.SI(P_data[3]), 
	.SE(n58), 
	.RN(rst), 
	.Q(P_data[4]), 
	.D(n38), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M P_data_reg_7_ (.SI(P_data[6]), 
	.SE(n59), 
	.RN(rst), 
	.Q(P_data[7]), 
	.D(n35), 
	.CK(clk));
   SDFFRQX2M P_data_reg_3_ (.SI(P_data[2]), 
	.SE(n58), 
	.RN(rst), 
	.Q(P_data[3]), 
	.D(n39), 
	.CK(RX_CLK_mux__L4_N1));
   SDFFRQX2M P_data_reg_1_ (.SI(P_data[0]), 
	.SE(n59), 
	.RN(rst), 
	.Q(P_data[1]), 
	.D(n41), 
	.CK(clk));
   SDFFRQX2M P_data_reg_5_ (.SI(P_data[4]), 
	.SE(n58), 
	.RN(rst), 
	.Q(P_data[5]), 
	.D(n37), 
	.CK(RX_CLK_mux__L4_N1));
   NAND2X2M U16 (.Y(n7), 
	.B(n52), 
	.A(deser_en));
   OAI221X1M U17 (.Y(n29), 
	.C0(n5), 
	.B1(n55), 
	.B0(n53), 
	.A1(n2), 
	.A0(n1));
   INVX2M U18 (.Y(n53), 
	.A(n2));
   OAI21X2M U19 (.Y(n34), 
	.B0(n7), 
	.A1(n52), 
	.A0(deser_en));
   NAND2X2M U20 (.Y(n18), 
	.B(n54), 
	.A(n55));
   NAND2X2M U21 (.Y(n2), 
	.B(deser_en), 
	.A(i_0_));
   NAND2X2M U22 (.Y(n9), 
	.B(n53), 
	.A(sampled_bit));
   XNOR2X2M U23 (.Y(n32), 
	.B(n2), 
	.A(i_1_));
   NAND2BX2M U24 (.Y(n11), 
	.B(sampled_bit), 
	.AN(n7));
   OAI21X2M U25 (.Y(n40), 
	.B0(n17), 
	.A1(n11), 
	.A0(n1));
   OAI21X2M U26 (.Y(n17), 
	.B0(P_data[2]), 
	.A1(n7), 
	.A0(n1));
   OAI21X2M U27 (.Y(n39), 
	.B0(n16), 
	.A1(n9), 
	.A0(n1));
   OAI21X2M U28 (.Y(n16), 
	.B0(P_data[3]), 
	.A1(n2), 
	.A0(n1));
   OAI21X2M U29 (.Y(n38), 
	.B0(n14), 
	.A1(n5), 
	.A0(n11));
   OAI21X2M U30 (.Y(n14), 
	.B0(P_data[4]), 
	.A1(n5), 
	.A0(n7));
   OAI21X2M U31 (.Y(n37), 
	.B0(n13), 
	.A1(n5), 
	.A0(n9));
   OAI21X2M U32 (.Y(n13), 
	.B0(P_data[5]), 
	.A1(n5), 
	.A0(n2));
   OAI21X2M U33 (.Y(n36), 
	.B0(n12), 
	.A1(n11), 
	.A0(n8));
   OAI21X2M U45 (.Y(n12), 
	.B0(P_data[6]), 
	.A1(n7), 
	.A0(n8));
   OAI21X2M U46 (.Y(n35), 
	.B0(n10), 
	.A1(n9), 
	.A0(n8));
   OAI21X2M U47 (.Y(n10), 
	.B0(P_data[7]), 
	.A1(n8), 
	.A0(n2));
   OAI21X2M U48 (.Y(n41), 
	.B0(n19), 
	.A1(n18), 
	.A0(n9));
   OAI21X2M U49 (.Y(n19), 
	.B0(P_data[1]), 
	.A1(n18), 
	.A0(n2));
   OAI21X2M U50 (.Y(n42), 
	.B0(n20), 
	.A1(n18), 
	.A0(n11));
   OAI21X2M U51 (.Y(n20), 
	.B0(P_data[0]), 
	.A1(n18), 
	.A0(n7));
   NAND2X2M U52 (.Y(n5), 
	.B(n54), 
	.A(test_so));
   NAND2X2M U53 (.Y(n1), 
	.B(n55), 
	.A(i_1_));
   NAND2X2M U54 (.Y(n8), 
	.B(test_so), 
	.A(i_1_));
   INVX2M U55 (.Y(n55), 
	.A(test_so));
   INVX2M U56 (.Y(n54), 
	.A(i_1_));
   INVX2M U57 (.Y(n52), 
	.A(i_0_));
   DLY1X1M U58 (.Y(n58), 
	.A(test_se));
   DLY1X1M U59 (.Y(n59), 
	.A(test_se));
endmodule

module RX_TOP_test_1 (
	CLK, 
	RST, 
	parity_enable, 
	RX_IN, 
	Prescale, 
	parity_type, 
	framing_error, 
	parity_error, 
	data_valid, 
	P_DATA, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	RX_CLK_mux__L4_N1);
   input CLK;
   input RST;
   input parity_enable;
   input RX_IN;
   input [5:0] Prescale;
   input parity_type;
   output framing_error;
   output parity_error;
   output data_valid;
   output [7:0] P_DATA;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input RX_CLK_mux__L4_N1;

   // Internal wires
   wire enable;
   wire par_chk_en;
   wire strt_chk_en;
   wire strt_glitch;
   wire stp_chk_en;
   wire deser_en;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n13;
   wire n14;
   wire [5:0] limit_edg;
   wire [3:0] bit_cnt;
   wire [5:0] edg_cnt;

   DLY1X1M U5 (.Y(n13), 
	.A(test_se));
   DLY1X1M U6 (.Y(n14), 
	.A(test_se));
   UART_RX_FSM_test_1 FSM_u (.clk(CLK), 
	.rst(RST), 
	.rx_in(RX_IN), 
	.par_en(parity_enable), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edg_cnt({ edg_cnt[5],
		edg_cnt[4],
		edg_cnt[3],
		edg_cnt[2],
		edg_cnt[1],
		edg_cnt[0] }), 
	.limit_edg({ limit_edg[5],
		limit_edg[4],
		limit_edg[3],
		limit_edg[2],
		limit_edg[1],
		limit_edg[0] }), 
	.par_err(parity_error), 
	.stp_err(framing_error), 
	.strt_glitch(strt_glitch), 
	.enable(enable), 
	.data_valid(data_valid), 
	.deser_en(deser_en), 
	.stp_chk_en(stp_chk_en), 
	.strt_chk_en(strt_chk_en), 
	.par_chk_en(par_chk_en), 
	.test_si(test_si1), 
	.test_so(n9), 
	.test_se(n13), 
	.RX_CLK_mux__L4_N1(RX_CLK_mux__L4_N1));
   edge_bit_cntr_test_1 edg_cnt_u (.clk(CLK), 
	.rst(RST), 
	.enable(enable), 
	.par_en(parity_enable), 
	.prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.bit_cnt({ bit_cnt[3],
		bit_cnt[2],
		bit_cnt[1],
		bit_cnt[0] }), 
	.edg_cnt({ edg_cnt[5],
		edg_cnt[4],
		edg_cnt[3],
		edg_cnt[2],
		edg_cnt[1],
		edg_cnt[0] }), 
	.limit_edg({ limit_edg[5],
		limit_edg[4],
		limit_edg[3],
		limit_edg[2],
		limit_edg[1],
		limit_edg[0] }), 
	.test_si(n8), 
	.test_se(n14), 
	.RX_CLK_mux__L4_N1(RX_CLK_mux__L4_N1));
   data_sampling_test_1 sampler_u (.clk(CLK), 
	.rst(RST), 
	.dat_samp_en(1'b1), 
	.edg_cnt({ edg_cnt[5],
		edg_cnt[4],
		edg_cnt[3],
		edg_cnt[2],
		edg_cnt[1],
		edg_cnt[0] }), 
	.rx_in(RX_IN), 
	.prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.sampled_bit(test_so1), 
	.test_si2(test_si2), 
	.test_si1(n7), 
	.test_so1(n6), 
	.test_se(n14));
   par_chck_test_1 parity_u (.clk(CLK), 
	.rst(RST), 
	.P_data({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.par_typ(parity_type), 
	.par_chk_en(par_chk_en), 
	.sampled_bit(test_so1), 
	.par_err(parity_error), 
	.test_si(edg_cnt[5]), 
	.test_so(n7), 
	.test_se(n13));
   strt_checker_test_1 strt_checker_u (.clk(CLK), 
	.rst(RST), 
	.strt_chk_en(strt_chk_en), 
	.sampled_bit(test_so1), 
	.strt_glitch(strt_glitch), 
	.test_si(n5), 
	.test_so(test_so2), 
	.test_se(n13));
   stp_checker_test_1 stp_checker_u (.clk(CLK), 
	.rst(RST), 
	.stp_chk_en(stp_chk_en), 
	.sampled_bit(test_so1), 
	.stp_err(framing_error), 
	.test_si(n6), 
	.test_so(n5), 
	.test_se(n14));
   deserializer_test_1 deserializer_u (.clk(CLK), 
	.rst(RST), 
	.deser_en(deser_en), 
	.sampled_bit(test_so1), 
	.P_data({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(n9), 
	.test_so(n8), 
	.test_se(n13), 
	.RX_CLK_mux__L4_N1(RX_CLK_mux__L4_N1));
endmodule

module UART_DATA_WIDTH8_test_1 (
	RST, 
	TX_CLK, 
	RX_CLK, 
	RX_IN, 
	TX_IN_P_DATA, 
	TX_IN_data_valid, 
	Prescale, 
	parity_enable, 
	parity_type, 
	RX_OUT_data_valid, 
	RX_OUT_P_DATA, 
	busy, 
	parity_error, 
	TX_OUT, 
	framing_error, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	TX_CLK_mux__L5_N1, 
	RX_CLK_mux__L4_N1);
   input RST;
   input TX_CLK;
   input RX_CLK;
   input RX_IN;
   input [7:0] TX_IN_P_DATA;
   input TX_IN_data_valid;
   input [5:0] Prescale;
   input parity_enable;
   input parity_type;
   output RX_OUT_data_valid;
   output [7:0] RX_OUT_P_DATA;
   output busy;
   output parity_error;
   output TX_OUT;
   output framing_error;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input TX_CLK_mux__L5_N1;
   input RX_CLK_mux__L4_N1;

   // Internal wires
   wire n5;

   TX_TOP_test_1 UART_TX_u (.CLK(TX_CLK), 
	.RST(RST), 
	.P_DATA({ TX_IN_P_DATA[7],
		TX_IN_P_DATA[6],
		TX_IN_P_DATA[5],
		TX_IN_P_DATA[4],
		TX_IN_P_DATA[3],
		TX_IN_P_DATA[2],
		TX_IN_P_DATA[1],
		TX_IN_P_DATA[0] }), 
	.data_valid(TX_IN_data_valid), 
	.parity_enable(parity_enable), 
	.parity_type(parity_type), 
	.TX_OUT(TX_OUT), 
	.busy(busy), 
	.test_si2(test_si3), 
	.test_si1(n5), 
	.test_so1(test_so2), 
	.test_se(test_se), 
	.TX_CLK_mux__L5_N1(TX_CLK_mux__L5_N1));
   RX_TOP_test_1 UART_RX_u (.CLK(RX_CLK), 
	.RST(RST), 
	.parity_enable(parity_enable), 
	.RX_IN(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.parity_type(parity_type), 
	.framing_error(framing_error), 
	.parity_error(parity_error), 
	.data_valid(RX_OUT_data_valid), 
	.P_DATA({ RX_OUT_P_DATA[7],
		RX_OUT_P_DATA[6],
		RX_OUT_P_DATA[5],
		RX_OUT_P_DATA[4],
		RX_OUT_P_DATA[3],
		RX_OUT_P_DATA[2],
		RX_OUT_P_DATA[1],
		RX_OUT_P_DATA[0] }), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so2(n5), 
	.test_so1(test_so1), 
	.test_se(test_se), 
	.RX_CLK_mux__L4_N1(RX_CLK_mux__L4_N1));
endmodule

module Data_syn_NUM_STAGES2_BUS_WIDTH8_test_1 (
	CLK, 
	RST, 
	bus_enable, 
	unsync_bus, 
	enable_pulse, 
	sync_bus, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN2_SYNC_RST_1_mux, 
	REF_CLK_mux__L9_N3);
   input CLK;
   input RST;
   input bus_enable;
   input [7:0] unsync_bus;
   output enable_pulse;
   output [7:0] sync_bus;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN2_SYNC_RST_1_mux;
   input REF_CLK_mux__L9_N3;

   // Internal wires
   wire sync_reg_1_;
   wire sync_reg_0_;
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n9;
   wire n11;
   wire n13;
   wire n15;
   wire n17;
   wire n24;
   wire n27;

   SDFFRQX2M sync_reg_reg_2_ (.SI(sync_reg_1_), 
	.SE(n27), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(test_so), 
	.D(sync_reg_1_), 
	.CK(CLK));
   SDFFRQX2M sync_reg_reg_1_ (.SI(sync_reg_0_), 
	.SE(n27), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(sync_reg_1_), 
	.D(sync_reg_0_), 
	.CK(CLK));
   SDFFRQX2M sync_bus_reg_7_ (.SI(sync_bus[6]), 
	.SE(n27), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(sync_bus[7]), 
	.D(n17), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_reg (.SI(test_si), 
	.SE(n27), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(n24), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M sync_bus_reg_3_ (.SI(sync_bus[2]), 
	.SE(n27), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(sync_bus[3]), 
	.D(n9), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M sync_bus_reg_6_ (.SI(sync_bus[5]), 
	.SE(n27), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(sync_bus[6]), 
	.D(n15), 
	.CK(CLK));
   SDFFRQX2M sync_bus_reg_2_ (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n7), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M sync_bus_reg_5_ (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n13), 
	.CK(CLK));
   SDFFRQX2M sync_bus_reg_1_ (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n5), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M sync_bus_reg_4_ (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(sync_bus[4]), 
	.D(n11), 
	.CK(CLK));
   SDFFRQX2M sync_bus_reg_0_ (.SI(enable_pulse), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n3), 
	.CK(REF_CLK_mux__L9_N3));
   SDFFRQX2M sync_reg_reg_0_ (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(FE_OFN2_SYNC_RST_1_mux), 
	.Q(sync_reg_0_), 
	.D(bus_enable), 
	.CK(CLK));
   NAND2BX2M U3 (.Y(n1), 
	.B(sync_reg_1_), 
	.AN(test_so));
   INVX2M U4 (.Y(n24), 
	.A(n1));
   AO22X1M U7 (.Y(n3), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n24), 
	.A0(unsync_bus[0]));
   AO22X1M U8 (.Y(n11), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n24), 
	.A0(unsync_bus[4]));
   AO22X1M U9 (.Y(n5), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n24), 
	.A0(unsync_bus[1]));
   AO22X1M U10 (.Y(n13), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n24), 
	.A0(unsync_bus[5]));
   AO22X1M U11 (.Y(n7), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n24), 
	.A0(unsync_bus[2]));
   AO22X1M U12 (.Y(n9), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n24), 
	.A0(unsync_bus[3]));
   AO22X1M U25 (.Y(n15), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n24), 
	.A0(unsync_bus[6]));
   AO22X1M U26 (.Y(n17), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n24), 
	.A0(unsync_bus[7]));
   DLY1X1M U27 (.Y(n27), 
	.A(test_se));
endmodule

