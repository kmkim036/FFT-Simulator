// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Feb 24 19:29:51 2022
// Host        : DESKTOP-UD0KH1J running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Xilinx/Projects/FFT_HW_Vivado/FFT/FFT.sim/sim_1/synth/timing/xsim/tb_FFT_TOP_BE_time_synth.v
// Design      : FFT_Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module BF
   (CO,
    A,
    D,
    Q,
    S,
    \oDATA_reg[7] ,
    \oDATA_reg[11] ,
    DI,
    \oDATA_reg[14] ,
    comp_re_2,
    comp_re_2_0,
    comp_re_2_1,
    doutb,
    comp_re_2_2,
    O,
    \oDATA_reg[0] ,
    \oDATA_reg[0]_0 ,
    \oDATA_reg[0]_1 ,
    iCLR_IBUF,
    \oDATA_reg[14]_0 ,
    \oDATA_reg[0]_2 ,
    \oDATA_reg[0]_3 ,
    \oDATA_reg[0]_4 ,
    \oDATA_reg[3] ,
    \oDATA_reg[1] ,
    \oDATA_reg[7]_0 ,
    \oDATA_reg[11]_0 );
  output [0:0]CO;
  output [16:0]A;
  output [14:0]D;
  input [14:0]Q;
  input [3:0]S;
  input [3:0]\oDATA_reg[7] ;
  input [3:0]\oDATA_reg[11] ;
  input [0:0]DI;
  input [3:0]\oDATA_reg[14] ;
  input [3:0]comp_re_2;
  input [3:0]comp_re_2_0;
  input [3:0]comp_re_2_1;
  input [0:0]doutb;
  input [3:0]comp_re_2_2;
  input [1:0]O;
  input \oDATA_reg[0] ;
  input [3:0]\oDATA_reg[0]_0 ;
  input [0:0]\oDATA_reg[0]_1 ;
  input iCLR_IBUF;
  input [0:0]\oDATA_reg[14]_0 ;
  input \oDATA_reg[0]_2 ;
  input [0:0]\oDATA_reg[0]_3 ;
  input \oDATA_reg[0]_4 ;
  input [2:0]\oDATA_reg[3] ;
  input \oDATA_reg[1] ;
  input [3:0]\oDATA_reg[7]_0 ;
  input [3:0]\oDATA_reg[11]_0 ;

  wire [16:0]A;
  wire [0:0]CO;
  wire [14:0]D;
  wire [0:0]DI;
  wire [1:0]O;
  wire [14:0]Q;
  wire [3:0]S;
  wire [3:0]comp_re_2;
  wire [3:0]comp_re_2_0;
  wire [3:0]comp_re_2_1;
  wire [3:0]comp_re_2_2;
  wire [0:0]doutb;
  wire iCLR_IBUF;
  wire \oDATA[0]_i_10_n_0 ;
  wire \oDATA[0]_i_3_n_0 ;
  wire \oDATA[0]_i_4_n_0 ;
  wire \oDATA[0]_i_8_n_0 ;
  wire \oDATA[0]_i_9_n_0 ;
  wire \oDATA[14]_i_2_n_0 ;
  wire \oDATA[14]_i_3_n_0 ;
  wire \oDATA[14]_i_6_n_0 ;
  wire [15:15]oDATA_IM_HIGH;
  wire oDATA_add_carry__0_n_0;
  wire oDATA_add_carry__0_n_1;
  wire oDATA_add_carry__0_n_2;
  wire oDATA_add_carry__0_n_3;
  wire oDATA_add_carry__0_n_4;
  wire oDATA_add_carry__0_n_5;
  wire oDATA_add_carry__0_n_6;
  wire oDATA_add_carry__0_n_7;
  wire oDATA_add_carry__1_n_0;
  wire oDATA_add_carry__1_n_1;
  wire oDATA_add_carry__1_n_2;
  wire oDATA_add_carry__1_n_3;
  wire oDATA_add_carry__1_n_4;
  wire oDATA_add_carry__1_n_5;
  wire oDATA_add_carry__1_n_6;
  wire oDATA_add_carry__1_n_7;
  wire oDATA_add_carry__2_n_1;
  wire oDATA_add_carry__2_n_2;
  wire oDATA_add_carry__2_n_3;
  wire oDATA_add_carry__2_n_5;
  wire oDATA_add_carry__2_n_6;
  wire oDATA_add_carry__2_n_7;
  wire oDATA_add_carry_n_0;
  wire oDATA_add_carry_n_1;
  wire oDATA_add_carry_n_2;
  wire oDATA_add_carry_n_3;
  wire oDATA_add_carry_n_4;
  wire oDATA_add_carry_n_5;
  wire oDATA_add_carry_n_6;
  wire oDATA_add_carry_n_7;
  wire \oDATA_reg[0] ;
  wire [3:0]\oDATA_reg[0]_0 ;
  wire [0:0]\oDATA_reg[0]_1 ;
  wire \oDATA_reg[0]_2 ;
  wire [0:0]\oDATA_reg[0]_3 ;
  wire \oDATA_reg[0]_4 ;
  wire [3:0]\oDATA_reg[11] ;
  wire [3:0]\oDATA_reg[11]_0 ;
  wire [3:0]\oDATA_reg[14] ;
  wire [0:0]\oDATA_reg[14]_0 ;
  wire \oDATA_reg[1] ;
  wire [2:0]\oDATA_reg[3] ;
  wire [3:0]\oDATA_reg[7] ;
  wire [3:0]\oDATA_reg[7]_0 ;
  wire oDATA_sub_carry__0_n_0;
  wire oDATA_sub_carry__0_n_1;
  wire oDATA_sub_carry__0_n_2;
  wire oDATA_sub_carry__0_n_3;
  wire oDATA_sub_carry__1_n_0;
  wire oDATA_sub_carry__1_n_1;
  wire oDATA_sub_carry__1_n_2;
  wire oDATA_sub_carry__1_n_3;
  wire oDATA_sub_carry__2_n_0;
  wire oDATA_sub_carry__2_n_1;
  wire oDATA_sub_carry__2_n_2;
  wire oDATA_sub_carry__2_n_3;
  wire oDATA_sub_carry_n_0;
  wire oDATA_sub_carry_n_1;
  wire oDATA_sub_carry_n_2;
  wire oDATA_sub_carry_n_3;
  wire [3:0]NLW_oDATA_sub_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_oDATA_sub_carry__3_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \oDATA[0]_i_10 
       (.I0(oDATA_add_carry__0_n_4),
        .I1(oDATA_add_carry__2_n_6),
        .I2(oDATA_add_carry__0_n_5),
        .I3(oDATA_add_carry__1_n_7),
        .O(\oDATA[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD000)) 
    \oDATA[0]_i_1__5 
       (.I0(O[0]),
        .I1(\oDATA_reg[0] ),
        .I2(\oDATA_reg[0]_0 [3]),
        .I3(\oDATA_reg[0]_1 ),
        .I4(\oDATA[0]_i_3_n_0 ),
        .I5(\oDATA[0]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA02)) 
    \oDATA[0]_i_3 
       (.I0(\oDATA_reg[0]_2 ),
        .I1(\oDATA_reg[0]_3 ),
        .I2(oDATA_IM_HIGH),
        .I3(oDATA_add_carry_n_7),
        .I4(\oDATA[14]_i_6_n_0 ),
        .I5(\oDATA_reg[0]_4 ),
        .O(\oDATA[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \oDATA[0]_i_4 
       (.I0(\oDATA[0]_i_8_n_0 ),
        .I1(\oDATA[0]_i_9_n_0 ),
        .I2(\oDATA[0]_i_10_n_0 ),
        .I3(oDATA_add_carry_n_5),
        .I4(oDATA_add_carry__0_n_6),
        .I5(oDATA_add_carry__1_n_4),
        .O(\oDATA[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \oDATA[0]_i_8 
       (.I0(iCLR_IBUF),
        .I1(\oDATA_reg[14]_0 ),
        .I2(oDATA_add_carry__2_n_7),
        .I3(oDATA_IM_HIGH),
        .I4(oDATA_add_carry__1_n_5),
        .I5(oDATA_add_carry_n_6),
        .O(\oDATA[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oDATA[0]_i_9 
       (.I0(oDATA_add_carry__0_n_7),
        .I1(oDATA_add_carry__2_n_5),
        .I2(oDATA_add_carry_n_4),
        .I3(oDATA_add_carry__1_n_6),
        .O(\oDATA[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[10]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__1_n_5),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[11]_0 [2]),
        .I4(\oDATA_reg[1] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[11]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__1_n_4),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[11]_0 [3]),
        .I4(\oDATA_reg[1] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[12]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__2_n_7),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[0]_0 [0]),
        .I4(\oDATA_reg[1] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[13]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__2_n_6),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[0]_0 [1]),
        .I4(\oDATA_reg[1] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[14]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__2_n_5),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[0]_0 [2]),
        .I4(\oDATA_reg[1] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \oDATA[14]_i_2 
       (.I0(\oDATA[14]_i_6_n_0 ),
        .I1(O[1]),
        .I2(O[0]),
        .I3(iCLR_IBUF),
        .I4(\oDATA_reg[14]_0 ),
        .O(\oDATA[14]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF1FF)) 
    \oDATA[14]_i_3 
       (.I0(oDATA_IM_HIGH),
        .I1(\oDATA_reg[0]_3 ),
        .I2(iCLR_IBUF),
        .I3(\oDATA_reg[14]_0 ),
        .O(\oDATA[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0004444)) 
    \oDATA[14]_i_6 
       (.I0(O[1]),
        .I1(\oDATA_reg[0]_0 [3]),
        .I2(\oDATA_reg[0]_3 ),
        .I3(oDATA_IM_HIGH),
        .I4(\oDATA_reg[14]_0 ),
        .I5(iCLR_IBUF),
        .O(\oDATA[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[1]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry_n_6),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[3] [0]),
        .I4(\oDATA_reg[1] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[2]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry_n_5),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[3] [1]),
        .I4(\oDATA_reg[1] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[3]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry_n_4),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[3] [2]),
        .I4(\oDATA_reg[1] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[4]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__0_n_7),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[7]_0 [0]),
        .I4(\oDATA_reg[1] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[5]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__0_n_6),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[7]_0 [1]),
        .I4(\oDATA_reg[1] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[6]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__0_n_5),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[7]_0 [2]),
        .I4(\oDATA_reg[1] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[7]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__0_n_4),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[7]_0 [3]),
        .I4(\oDATA_reg[1] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[8]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__1_n_7),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[11]_0 [0]),
        .I4(\oDATA_reg[1] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[9]_i_1 
       (.I0(\oDATA[14]_i_2_n_0 ),
        .I1(oDATA_add_carry__1_n_6),
        .I2(\oDATA[14]_i_3_n_0 ),
        .I3(\oDATA_reg[11]_0 [1]),
        .I4(\oDATA_reg[1] ),
        .O(D[9]));
  CARRY4 oDATA_add_carry
       (.CI(1'b0),
        .CO({oDATA_add_carry_n_0,oDATA_add_carry_n_1,oDATA_add_carry_n_2,oDATA_add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({oDATA_add_carry_n_4,oDATA_add_carry_n_5,oDATA_add_carry_n_6,oDATA_add_carry_n_7}),
        .S(S));
  CARRY4 oDATA_add_carry__0
       (.CI(oDATA_add_carry_n_0),
        .CO({oDATA_add_carry__0_n_0,oDATA_add_carry__0_n_1,oDATA_add_carry__0_n_2,oDATA_add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({oDATA_add_carry__0_n_4,oDATA_add_carry__0_n_5,oDATA_add_carry__0_n_6,oDATA_add_carry__0_n_7}),
        .S(\oDATA_reg[7] ));
  CARRY4 oDATA_add_carry__1
       (.CI(oDATA_add_carry__0_n_0),
        .CO({oDATA_add_carry__1_n_0,oDATA_add_carry__1_n_1,oDATA_add_carry__1_n_2,oDATA_add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({oDATA_add_carry__1_n_4,oDATA_add_carry__1_n_5,oDATA_add_carry__1_n_6,oDATA_add_carry__1_n_7}),
        .S(\oDATA_reg[11] ));
  CARRY4 oDATA_add_carry__2
       (.CI(oDATA_add_carry__1_n_0),
        .CO({CO,oDATA_add_carry__2_n_1,oDATA_add_carry__2_n_2,oDATA_add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({DI,Q[14:12]}),
        .O({oDATA_IM_HIGH,oDATA_add_carry__2_n_5,oDATA_add_carry__2_n_6,oDATA_add_carry__2_n_7}),
        .S(\oDATA_reg[14] ));
  CARRY4 oDATA_sub_carry
       (.CI(1'b0),
        .CO({oDATA_sub_carry_n_0,oDATA_sub_carry_n_1,oDATA_sub_carry_n_2,oDATA_sub_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(A[3:0]),
        .S(comp_re_2));
  CARRY4 oDATA_sub_carry__0
       (.CI(oDATA_sub_carry_n_0),
        .CO({oDATA_sub_carry__0_n_0,oDATA_sub_carry__0_n_1,oDATA_sub_carry__0_n_2,oDATA_sub_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(A[7:4]),
        .S(comp_re_2_0));
  CARRY4 oDATA_sub_carry__1
       (.CI(oDATA_sub_carry__0_n_0),
        .CO({oDATA_sub_carry__1_n_0,oDATA_sub_carry__1_n_1,oDATA_sub_carry__1_n_2,oDATA_sub_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(A[11:8]),
        .S(comp_re_2_1));
  CARRY4 oDATA_sub_carry__2
       (.CI(oDATA_sub_carry__1_n_0),
        .CO({oDATA_sub_carry__2_n_0,oDATA_sub_carry__2_n_1,oDATA_sub_carry__2_n_2,oDATA_sub_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({doutb,Q[14:12]}),
        .O(A[15:12]),
        .S(comp_re_2_2));
  CARRY4 oDATA_sub_carry__3
       (.CI(oDATA_sub_carry__2_n_0),
        .CO(NLW_oDATA_sub_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_oDATA_sub_carry__3_O_UNCONNECTED[3:1],A[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "BF" *) 
module BF_4
   (CO,
    A,
    D,
    Q,
    S,
    \oDATA_reg[23] ,
    \oDATA_reg[27] ,
    DI,
    \oDATA_reg[30] ,
    comp_re_1,
    comp_re_1_0,
    comp_re_1_1,
    doutb,
    comp_re_1_2,
    O,
    \oDATA_reg[16] ,
    \oDATA_reg[16]_0 ,
    \oDATA_reg[16]_1 ,
    iCLR_IBUF,
    \oDATA_reg[30]_0 ,
    \oDATA_reg[16]_2 ,
    \oDATA_reg[16]_3 ,
    \oDATA_reg[16]_4 ,
    \oDATA_reg[19] ,
    \oDATA_reg[17] ,
    \oDATA_reg[23]_0 ,
    \oDATA_reg[27]_0 );
  output [0:0]CO;
  output [16:0]A;
  output [14:0]D;
  input [14:0]Q;
  input [3:0]S;
  input [3:0]\oDATA_reg[23] ;
  input [3:0]\oDATA_reg[27] ;
  input [0:0]DI;
  input [3:0]\oDATA_reg[30] ;
  input [3:0]comp_re_1;
  input [3:0]comp_re_1_0;
  input [3:0]comp_re_1_1;
  input [0:0]doutb;
  input [3:0]comp_re_1_2;
  input [1:0]O;
  input \oDATA_reg[16] ;
  input [3:0]\oDATA_reg[16]_0 ;
  input [0:0]\oDATA_reg[16]_1 ;
  input iCLR_IBUF;
  input [0:0]\oDATA_reg[30]_0 ;
  input \oDATA_reg[16]_2 ;
  input [0:0]\oDATA_reg[16]_3 ;
  input \oDATA_reg[16]_4 ;
  input [2:0]\oDATA_reg[19] ;
  input \oDATA_reg[17] ;
  input [3:0]\oDATA_reg[23]_0 ;
  input [3:0]\oDATA_reg[27]_0 ;

  wire [16:0]A;
  wire [0:0]CO;
  wire [14:0]D;
  wire [0:0]DI;
  wire [1:0]O;
  wire [14:0]Q;
  wire [3:0]S;
  wire [3:0]comp_re_1;
  wire [3:0]comp_re_1_0;
  wire [3:0]comp_re_1_1;
  wire [3:0]comp_re_1_2;
  wire [0:0]doutb;
  wire iCLR_IBUF;
  wire \oDATA[16]_i_10_n_0 ;
  wire \oDATA[16]_i_11_n_0 ;
  wire \oDATA[16]_i_3_n_0 ;
  wire \oDATA[16]_i_4_n_0 ;
  wire \oDATA[16]_i_9_n_0 ;
  wire \oDATA[30]_i_2_n_0 ;
  wire \oDATA[30]_i_3_n_0 ;
  wire \oDATA[30]_i_6_n_0 ;
  wire [15:15]oDATA_RE_HIGH;
  wire oDATA_add_carry__0_n_0;
  wire oDATA_add_carry__0_n_1;
  wire oDATA_add_carry__0_n_2;
  wire oDATA_add_carry__0_n_3;
  wire oDATA_add_carry__0_n_4;
  wire oDATA_add_carry__0_n_5;
  wire oDATA_add_carry__0_n_6;
  wire oDATA_add_carry__0_n_7;
  wire oDATA_add_carry__1_n_0;
  wire oDATA_add_carry__1_n_1;
  wire oDATA_add_carry__1_n_2;
  wire oDATA_add_carry__1_n_3;
  wire oDATA_add_carry__1_n_4;
  wire oDATA_add_carry__1_n_5;
  wire oDATA_add_carry__1_n_6;
  wire oDATA_add_carry__1_n_7;
  wire oDATA_add_carry__2_n_1;
  wire oDATA_add_carry__2_n_2;
  wire oDATA_add_carry__2_n_3;
  wire oDATA_add_carry__2_n_5;
  wire oDATA_add_carry__2_n_6;
  wire oDATA_add_carry__2_n_7;
  wire oDATA_add_carry_n_0;
  wire oDATA_add_carry_n_1;
  wire oDATA_add_carry_n_2;
  wire oDATA_add_carry_n_3;
  wire oDATA_add_carry_n_4;
  wire oDATA_add_carry_n_5;
  wire oDATA_add_carry_n_6;
  wire oDATA_add_carry_n_7;
  wire \oDATA_reg[16] ;
  wire [3:0]\oDATA_reg[16]_0 ;
  wire [0:0]\oDATA_reg[16]_1 ;
  wire \oDATA_reg[16]_2 ;
  wire [0:0]\oDATA_reg[16]_3 ;
  wire \oDATA_reg[16]_4 ;
  wire \oDATA_reg[17] ;
  wire [2:0]\oDATA_reg[19] ;
  wire [3:0]\oDATA_reg[23] ;
  wire [3:0]\oDATA_reg[23]_0 ;
  wire [3:0]\oDATA_reg[27] ;
  wire [3:0]\oDATA_reg[27]_0 ;
  wire [3:0]\oDATA_reg[30] ;
  wire [0:0]\oDATA_reg[30]_0 ;
  wire oDATA_sub_carry__0_n_0;
  wire oDATA_sub_carry__0_n_1;
  wire oDATA_sub_carry__0_n_2;
  wire oDATA_sub_carry__0_n_3;
  wire oDATA_sub_carry__1_n_0;
  wire oDATA_sub_carry__1_n_1;
  wire oDATA_sub_carry__1_n_2;
  wire oDATA_sub_carry__1_n_3;
  wire oDATA_sub_carry__2_n_0;
  wire oDATA_sub_carry__2_n_1;
  wire oDATA_sub_carry__2_n_2;
  wire oDATA_sub_carry__2_n_3;
  wire oDATA_sub_carry_n_0;
  wire oDATA_sub_carry_n_1;
  wire oDATA_sub_carry_n_2;
  wire oDATA_sub_carry_n_3;
  wire [3:0]NLW_oDATA_sub_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_oDATA_sub_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFD000)) 
    \oDATA[16]_i_1 
       (.I0(O[0]),
        .I1(\oDATA_reg[16] ),
        .I2(\oDATA_reg[16]_0 [3]),
        .I3(\oDATA_reg[16]_1 ),
        .I4(\oDATA[16]_i_3_n_0 ),
        .I5(\oDATA[16]_i_4_n_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oDATA[16]_i_10 
       (.I0(oDATA_add_carry_n_5),
        .I1(oDATA_add_carry__1_n_5),
        .I2(oDATA_add_carry__0_n_6),
        .I3(oDATA_add_carry__0_n_5),
        .O(\oDATA[16]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oDATA[16]_i_11 
       (.I0(oDATA_add_carry__0_n_7),
        .I1(oDATA_add_carry__2_n_7),
        .I2(oDATA_add_carry_n_6),
        .I3(oDATA_add_carry__1_n_4),
        .O(\oDATA[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAA02)) 
    \oDATA[16]_i_3 
       (.I0(\oDATA_reg[16]_2 ),
        .I1(\oDATA_reg[16]_3 ),
        .I2(oDATA_RE_HIGH),
        .I3(oDATA_add_carry_n_7),
        .I4(\oDATA[30]_i_6_n_0 ),
        .I5(\oDATA_reg[16]_4 ),
        .O(\oDATA[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \oDATA[16]_i_4 
       (.I0(\oDATA[16]_i_9_n_0 ),
        .I1(\oDATA[16]_i_10_n_0 ),
        .I2(\oDATA[16]_i_11_n_0 ),
        .I3(oDATA_add_carry__0_n_4),
        .I4(oDATA_add_carry_n_4),
        .I5(oDATA_add_carry__1_n_7),
        .O(\oDATA[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \oDATA[16]_i_9 
       (.I0(iCLR_IBUF),
        .I1(\oDATA_reg[30]_0 ),
        .I2(oDATA_add_carry__2_n_6),
        .I3(oDATA_add_carry__1_n_6),
        .I4(oDATA_add_carry__2_n_5),
        .I5(oDATA_RE_HIGH),
        .O(\oDATA[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[17]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry_n_6),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[19] [0]),
        .I4(\oDATA_reg[17] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[18]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry_n_5),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[19] [1]),
        .I4(\oDATA_reg[17] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[19]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry_n_4),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[19] [2]),
        .I4(\oDATA_reg[17] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[20]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__0_n_7),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[23]_0 [0]),
        .I4(\oDATA_reg[17] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[21]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__0_n_6),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[23]_0 [1]),
        .I4(\oDATA_reg[17] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[22]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__0_n_5),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[23]_0 [2]),
        .I4(\oDATA_reg[17] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[23]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__0_n_4),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[23]_0 [3]),
        .I4(\oDATA_reg[17] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[24]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__1_n_7),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[27]_0 [0]),
        .I4(\oDATA_reg[17] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[25]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__1_n_6),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[27]_0 [1]),
        .I4(\oDATA_reg[17] ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[26]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__1_n_5),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[27]_0 [2]),
        .I4(\oDATA_reg[17] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[27]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__1_n_4),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[27]_0 [3]),
        .I4(\oDATA_reg[17] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[28]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__2_n_7),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[16]_0 [0]),
        .I4(\oDATA_reg[17] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[29]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__2_n_6),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[16]_0 [1]),
        .I4(\oDATA_reg[17] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAEAEFFAE)) 
    \oDATA[30]_i_1 
       (.I0(\oDATA[30]_i_2_n_0 ),
        .I1(oDATA_add_carry__2_n_5),
        .I2(\oDATA[30]_i_3_n_0 ),
        .I3(\oDATA_reg[16]_0 [2]),
        .I4(\oDATA_reg[17] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \oDATA[30]_i_2 
       (.I0(\oDATA[30]_i_6_n_0 ),
        .I1(O[1]),
        .I2(O[0]),
        .I3(iCLR_IBUF),
        .I4(\oDATA_reg[30]_0 ),
        .O(\oDATA[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF1FF)) 
    \oDATA[30]_i_3 
       (.I0(oDATA_RE_HIGH),
        .I1(\oDATA_reg[16]_3 ),
        .I2(iCLR_IBUF),
        .I3(\oDATA_reg[30]_0 ),
        .O(\oDATA[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0004444)) 
    \oDATA[30]_i_6 
       (.I0(O[1]),
        .I1(\oDATA_reg[16]_0 [3]),
        .I2(\oDATA_reg[16]_3 ),
        .I3(oDATA_RE_HIGH),
        .I4(\oDATA_reg[30]_0 ),
        .I5(iCLR_IBUF),
        .O(\oDATA[30]_i_6_n_0 ));
  CARRY4 oDATA_add_carry
       (.CI(1'b0),
        .CO({oDATA_add_carry_n_0,oDATA_add_carry_n_1,oDATA_add_carry_n_2,oDATA_add_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({oDATA_add_carry_n_4,oDATA_add_carry_n_5,oDATA_add_carry_n_6,oDATA_add_carry_n_7}),
        .S(S));
  CARRY4 oDATA_add_carry__0
       (.CI(oDATA_add_carry_n_0),
        .CO({oDATA_add_carry__0_n_0,oDATA_add_carry__0_n_1,oDATA_add_carry__0_n_2,oDATA_add_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({oDATA_add_carry__0_n_4,oDATA_add_carry__0_n_5,oDATA_add_carry__0_n_6,oDATA_add_carry__0_n_7}),
        .S(\oDATA_reg[23] ));
  CARRY4 oDATA_add_carry__1
       (.CI(oDATA_add_carry__0_n_0),
        .CO({oDATA_add_carry__1_n_0,oDATA_add_carry__1_n_1,oDATA_add_carry__1_n_2,oDATA_add_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O({oDATA_add_carry__1_n_4,oDATA_add_carry__1_n_5,oDATA_add_carry__1_n_6,oDATA_add_carry__1_n_7}),
        .S(\oDATA_reg[27] ));
  CARRY4 oDATA_add_carry__2
       (.CI(oDATA_add_carry__1_n_0),
        .CO({CO,oDATA_add_carry__2_n_1,oDATA_add_carry__2_n_2,oDATA_add_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({DI,Q[14:12]}),
        .O({oDATA_RE_HIGH,oDATA_add_carry__2_n_5,oDATA_add_carry__2_n_6,oDATA_add_carry__2_n_7}),
        .S(\oDATA_reg[30] ));
  CARRY4 oDATA_sub_carry
       (.CI(1'b0),
        .CO({oDATA_sub_carry_n_0,oDATA_sub_carry_n_1,oDATA_sub_carry_n_2,oDATA_sub_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O(A[3:0]),
        .S(comp_re_1));
  CARRY4 oDATA_sub_carry__0
       (.CI(oDATA_sub_carry_n_0),
        .CO({oDATA_sub_carry__0_n_0,oDATA_sub_carry__0_n_1,oDATA_sub_carry__0_n_2,oDATA_sub_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(A[7:4]),
        .S(comp_re_1_0));
  CARRY4 oDATA_sub_carry__1
       (.CI(oDATA_sub_carry__0_n_0),
        .CO({oDATA_sub_carry__1_n_0,oDATA_sub_carry__1_n_1,oDATA_sub_carry__1_n_2,oDATA_sub_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(A[11:8]),
        .S(comp_re_1_1));
  CARRY4 oDATA_sub_carry__2
       (.CI(oDATA_sub_carry__1_n_0),
        .CO({oDATA_sub_carry__2_n_0,oDATA_sub_carry__2_n_1,oDATA_sub_carry__2_n_2,oDATA_sub_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({doutb,Q[14:12]}),
        .O(A[15:12]),
        .S(comp_re_1_2));
  CARRY4 oDATA_sub_carry__3
       (.CI(oDATA_sub_carry__2_n_0),
        .CO(NLW_oDATA_sub_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_oDATA_sub_carry__3_O_UNCONNECTED[3:1],A[16]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

module COUNTER_VER3
   (wea,
    addra,
    D,
    Q,
    iCLR_IBUF,
    iStart_W,
    CLK,
    \oCNT_reg[4]_0 );
  output [0:0]wea;
  output [3:0]addra;
  output [2:0]D;
  input [2:0]Q;
  input iCLR_IBUF;
  input iStart_W;
  input CLK;
  input \oCNT_reg[4]_0 ;

  wire CLK;
  wire [2:0]D;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire [2:0]Q;
  wire U_MEMORY_i_16_n_0;
  wire [3:0]addra;
  wire iCLR_IBUF;
  wire iStart_W;
  wire [4:0]oCNT;
  wire \oCNT[0]_i_1__1_n_0 ;
  wire \oCNT[1]_i_1__1_n_0 ;
  wire \oCNT[2]_i_1__1_n_0 ;
  wire \oCNT[3]_i_1__1_n_0 ;
  wire \oCNT[4]_i_1__0_n_0 ;
  wire \oCNT[4]_i_2__0_n_0 ;
  wire \oCNT_reg[4]_0 ;
  wire [0:0]wea;

  LUT6 #(
    .INIT(64'h0000303200000302)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(iStart_W),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(iCLR_IBUF),
        .I5(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h000000B4)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(iCLR_IBUF),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00100200)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I1(iCLR_IBUF),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(oCNT[3]),
        .I1(oCNT[4]),
        .I2(oCNT[0]),
        .I3(oCNT[1]),
        .I4(oCNT[2]),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h001E)) 
    U_MEMORY_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(oCNT[4]),
        .O(wea));
  LUT5 #(
    .INIT(32'h00B00080)) 
    U_MEMORY_i_16
       (.I0(oCNT[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(oCNT[3]),
        .O(U_MEMORY_i_16_n_0));
  LUT6 #(
    .INIT(64'h0F0A0CA0000A0CA0)) 
    U_MEMORY_i_5
       (.I0(oCNT[3]),
        .I1(oCNT[0]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(oCNT[2]),
        .O(addra[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00380008)) 
    U_MEMORY_i_6
       (.I0(oCNT[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(oCNT[0]),
        .I5(U_MEMORY_i_16_n_0),
        .O(addra[2]));
  LUT6 #(
    .INIT(64'h00CA0FA000CA00A0)) 
    U_MEMORY_i_7
       (.I0(oCNT[2]),
        .I1(oCNT[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(oCNT[1]),
        .O(addra[1]));
  LUT6 #(
    .INIT(64'h0F0A0AC0000A0AC0)) 
    U_MEMORY_i_8
       (.I0(oCNT[1]),
        .I1(oCNT[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(oCNT[3]),
        .O(addra[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \oCNT[0]_i_1__1 
       (.I0(iCLR_IBUF),
        .I1(oCNT[0]),
        .O(\oCNT[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \oCNT[1]_i_1__1 
       (.I0(iCLR_IBUF),
        .I1(oCNT[1]),
        .I2(oCNT[0]),
        .O(\oCNT[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0045550055005500)) 
    \oCNT[2]_i_1__1 
       (.I0(iCLR_IBUF),
        .I1(oCNT[3]),
        .I2(oCNT[4]),
        .I3(oCNT[2]),
        .I4(oCNT[1]),
        .I5(oCNT[0]),
        .O(\oCNT[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \oCNT[3]_i_1__1 
       (.I0(oCNT[1]),
        .I1(oCNT[0]),
        .I2(oCNT[2]),
        .I3(iCLR_IBUF),
        .I4(oCNT[3]),
        .O(\oCNT[3]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oCNT[4]_i_1__0 
       (.I0(iCLR_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\oCNT[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h070F0F0708000000)) 
    \oCNT[4]_i_2__0 
       (.I0(oCNT[0]),
        .I1(oCNT[1]),
        .I2(iCLR_IBUF),
        .I3(oCNT[2]),
        .I4(oCNT[3]),
        .I5(oCNT[4]),
        .O(\oCNT[4]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[0] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1__0_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[0]_i_1__1_n_0 ),
        .Q(oCNT[0]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[1] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1__0_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[1]_i_1__1_n_0 ),
        .Q(oCNT[1]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[2] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1__0_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[2]_i_1__1_n_0 ),
        .Q(oCNT[2]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[3] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1__0_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[3]_i_1__1_n_0 ),
        .Q(oCNT[3]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[4] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1__0_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[4]_i_2__0_n_0 ),
        .Q(oCNT[4]));
endmodule

(* ORIG_REF_NAME = "COUNTER_VER3" *) 
module COUNTER_VER3_3
   (addrb,
    \FSM_onehot_current_state_reg[4] ,
    E,
    enb,
    D,
    \FSM_onehot_current_state_reg[5] ,
    iCLR_IBUF,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \oDATA_reg[0] ,
    \oDATA_reg[0]_0 ,
    \oDATA_reg[0]_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ,
    iStart_INT_IBUF,
    \FSM_onehot_current_state_reg[0] ,
    \FSM_onehot_current_state_reg[4]_0 ,
    CLK,
    \oCNT_reg[4]_0 );
  output [3:0]addrb;
  output \FSM_onehot_current_state_reg[4] ;
  output [0:0]E;
  output enb;
  output [5:0]D;
  output \FSM_onehot_current_state_reg[5] ;
  input iCLR_IBUF;
  input [5:0]Q;
  input [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input \oDATA_reg[0] ;
  input \oDATA_reg[0]_0 ;
  input \oDATA_reg[0]_1 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ;
  input iStart_INT_IBUF;
  input \FSM_onehot_current_state_reg[0] ;
  input \FSM_onehot_current_state_reg[4]_0 ;
  input CLK;
  input \oCNT_reg[4]_0 ;

  wire CLK;
  wire [5:0]D;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ;
  wire [0:0]E;
  wire \FSM_onehot_current_state[5]_i_3_n_0 ;
  wire \FSM_onehot_current_state_reg[0] ;
  wire \FSM_onehot_current_state_reg[4] ;
  wire \FSM_onehot_current_state_reg[4]_0 ;
  wire \FSM_onehot_current_state_reg[5] ;
  wire [5:0]Q;
  wire U_MEMORY_i_19_n_0;
  wire [3:0]addrb;
  wire enb;
  wire iCLR_IBUF;
  wire iStart_INT_IBUF;
  wire [4:0]oCNT;
  wire \oCNT[0]_i_1__0_n_0 ;
  wire \oCNT[1]_i_1_n_0 ;
  wire \oCNT[2]_i_1_n_0 ;
  wire \oCNT[3]_i_1__0_n_0 ;
  wire \oCNT[4]_i_1_n_0 ;
  wire \oCNT[4]_i_2_n_0 ;
  wire \oCNT_reg[4]_0 ;
  wire \oDATA_reg[0] ;
  wire \oDATA_reg[0]_0 ;
  wire \oDATA_reg[0]_1 ;

  LUT6 #(
    .INIT(64'hFFFFFFFF5555003F)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(iStart_INT_IBUF),
        .I1(\FSM_onehot_current_state[5]_i_3_n_0 ),
        .I2(Q[5]),
        .I3(\FSM_onehot_current_state_reg[0] ),
        .I4(Q[0]),
        .I5(iCLR_IBUF),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00F80008)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state[5]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(iCLR_IBUF),
        .I4(iStart_INT_IBUF),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00000038)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_onehot_current_state[5]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(iCLR_IBUF),
        .I4(Q[0]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000000000308)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_onehot_current_state[5]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(iCLR_IBUF),
        .I5(Q[0]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0003000800000000)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(Q[4]),
        .I1(\FSM_onehot_current_state[5]_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\FSM_onehot_current_state_reg[4]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h0000000000030008)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(Q[5]),
        .I1(\FSM_onehot_current_state[5]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(iCLR_IBUF),
        .I4(Q[4]),
        .I5(\oDATA_reg[0]_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \FSM_onehot_current_state[5]_i_3 
       (.I0(oCNT[3]),
        .I1(oCNT[4]),
        .I2(oCNT[0]),
        .I3(oCNT[1]),
        .I4(oCNT[2]),
        .O(\FSM_onehot_current_state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_MEMORY_i_12
       (.I0(oCNT[3]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .I2(Q[1]),
        .I3(oCNT[0]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .I5(oCNT[2]),
        .O(addrb[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF11100000)) 
    U_MEMORY_i_13
       (.I0(\oDATA_reg[0] ),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(oCNT[2]),
        .I5(U_MEMORY_i_19_n_0),
        .O(addrb[2]));
  LUT6 #(
    .INIT(64'hF4FF44FFF4444444)) 
    U_MEMORY_i_14
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ),
        .I1(oCNT[1]),
        .I2(oCNT[0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ),
        .I4(Q[3]),
        .I5(oCNT[2]),
        .O(addrb[1]));
  LUT6 #(
    .INIT(64'hFFF444F444F444F4)) 
    U_MEMORY_i_15
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ),
        .I1(oCNT[0]),
        .I2(oCNT[1]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ),
        .I4(Q[3]),
        .I5(oCNT[3]),
        .O(addrb[0]));
  LUT6 #(
    .INIT(64'hFFF0FF8800F00088)) 
    U_MEMORY_i_19
       (.I0(Q[3]),
        .I1(oCNT[1]),
        .I2(oCNT[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(oCNT[3]),
        .O(U_MEMORY_i_19_n_0));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    U_MEMORY_i_9
       (.I0(oCNT[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(enb));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \oCNT[0]_i_1__0 
       (.I0(iCLR_IBUF),
        .I1(oCNT[0]),
        .O(\oCNT[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \oCNT[1]_i_1 
       (.I0(iCLR_IBUF),
        .I1(oCNT[1]),
        .I2(oCNT[0]),
        .O(\oCNT[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000B0F000F000F00)) 
    \oCNT[2]_i_1 
       (.I0(oCNT[3]),
        .I1(oCNT[4]),
        .I2(iCLR_IBUF),
        .I3(oCNT[2]),
        .I4(oCNT[0]),
        .I5(oCNT[1]),
        .O(\oCNT[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \oCNT[3]_i_1__0 
       (.I0(oCNT[1]),
        .I1(oCNT[0]),
        .I2(oCNT[2]),
        .I3(iCLR_IBUF),
        .I4(oCNT[3]),
        .O(\oCNT[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \oCNT[4]_i_1 
       (.I0(iCLR_IBUF),
        .I1(Q[0]),
        .O(\oCNT[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h070F0F0708000000)) 
    \oCNT[4]_i_2 
       (.I0(oCNT[0]),
        .I1(oCNT[1]),
        .I2(iCLR_IBUF),
        .I3(oCNT[2]),
        .I4(oCNT[3]),
        .I5(oCNT[4]),
        .O(\oCNT[4]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[0] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[0]_i_1__0_n_0 ),
        .Q(oCNT[0]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[1] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[1]_i_1_n_0 ),
        .Q(oCNT[1]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[2] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[2]_i_1_n_0 ),
        .Q(oCNT[2]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[3] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[3]_i_1__0_n_0 ),
        .Q(oCNT[3]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[4] 
       (.C(CLK),
        .CE(\oCNT[4]_i_1_n_0 ),
        .CLR(\oCNT_reg[4]_0 ),
        .D(\oCNT[4]_i_2_n_0 ),
        .Q(oCNT[4]));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \oDATA[0]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\oDATA_reg[0] ),
        .I3(Q[2]),
        .I4(oCNT[4]),
        .I5(iCLR_IBUF),
        .O(\FSM_onehot_current_state_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \oDATA[0]_i_1__9 
       (.I0(iCLR_IBUF),
        .I1(Q[5]),
        .I2(oCNT[4]),
        .O(\FSM_onehot_current_state_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00FE)) 
    \oDATA[15]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\oDATA_reg[0]_0 ),
        .I3(oCNT[4]),
        .I4(\oDATA_reg[0]_1 ),
        .I5(iCLR_IBUF),
        .O(E));
endmodule

(* ORIG_REF_NAME = "COUNTER_VER3" *) 
module COUNTER_VER3__parameterized0
   (\oCNT_reg[3]_0 ,
    Q,
    B,
    \oCNT_reg[2]_0 ,
    \oCNT_reg[2]_1 ,
    D,
    \oCNT_reg[0]_0 ,
    \oCNT_reg[0]_1 ,
    \oCNT_reg[0]_2 ,
    \oCNT_reg[0]_3 ,
    \oCNT_reg[2]_2 ,
    \oCNT_reg[0]_4 ,
    \oCNT_reg[0]_5 ,
    comp_re_2,
    comp_re_2_0,
    iCLR_IBUF,
    \oDATA_reg[15] ,
    \oDATA_reg[15]_0 ,
    \oDATA_reg[31] ,
    \oDATA_reg[31]_0 ,
    O,
    \oDATA_reg[17] ,
    \oDATA[0]_i_3 ,
    \oDATA_reg[1] ,
    E,
    CLK,
    \oCNT_reg[0]_6 );
  output [0:0]\oCNT_reg[3]_0 ;
  output [3:0]Q;
  output [2:0]B;
  output \oCNT_reg[2]_0 ;
  output \oCNT_reg[2]_1 ;
  output [1:0]D;
  output \oCNT_reg[0]_0 ;
  output \oCNT_reg[0]_1 ;
  output \oCNT_reg[0]_2 ;
  output [0:0]\oCNT_reg[0]_3 ;
  output \oCNT_reg[2]_2 ;
  output \oCNT_reg[0]_4 ;
  output \oCNT_reg[0]_5 ;
  input comp_re_2;
  input comp_re_2_0;
  input iCLR_IBUF;
  input [0:0]\oDATA_reg[15] ;
  input [1:0]\oDATA_reg[15]_0 ;
  input [0:0]\oDATA_reg[31] ;
  input [1:0]\oDATA_reg[31]_0 ;
  input [0:0]O;
  input [0:0]\oDATA_reg[17] ;
  input [0:0]\oDATA[0]_i_3 ;
  input [0:0]\oDATA_reg[1] ;
  input [0:0]E;
  input CLK;
  input \oCNT_reg[0]_6 ;

  wire [2:0]B;
  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]O;
  wire [3:0]Q;
  wire comp_re_2;
  wire comp_re_2_0;
  wire iCLR_IBUF;
  wire \oCNT[1]_i_1__0_n_0 ;
  wire \oCNT[2]_i_1__0_n_0 ;
  wire \oCNT[3]_i_2_n_0 ;
  wire \oCNT_reg[0]_0 ;
  wire \oCNT_reg[0]_1 ;
  wire \oCNT_reg[0]_2 ;
  wire [0:0]\oCNT_reg[0]_3 ;
  wire \oCNT_reg[0]_4 ;
  wire \oCNT_reg[0]_5 ;
  wire \oCNT_reg[0]_6 ;
  wire \oCNT_reg[2]_0 ;
  wire \oCNT_reg[2]_1 ;
  wire \oCNT_reg[2]_2 ;
  wire [0:0]\oCNT_reg[3]_0 ;
  wire [0:0]\oDATA[0]_i_3 ;
  wire [0:0]\oDATA_reg[15] ;
  wire [1:0]\oDATA_reg[15]_0 ;
  wire [0:0]\oDATA_reg[17] ;
  wire [0:0]\oDATA_reg[1] ;
  wire [0:0]\oDATA_reg[31] ;
  wire [1:0]\oDATA_reg[31]_0 ;

  LUT5 #(
    .INIT(32'h2F222200)) 
    comp_re_1_i_1
       (.I0(Q[3]),
        .I1(comp_re_2),
        .I2(comp_re_2_0),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\oCNT_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    comp_re_1_i_12
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\oCNT_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    comp_re_1_i_17
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\oCNT_reg[2]_2 ));
  LUT2 #(
    .INIT(4'h1)) 
    comp_re_2_i_10
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\oCNT_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h4100)) 
    comp_re_2_i_2
       (.I0(comp_re_2),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(B[2]));
  LUT5 #(
    .INIT(32'h75305730)) 
    comp_re_2_i_5
       (.I0(comp_re_2_0),
        .I1(comp_re_2),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(B[1]));
  LUT5 #(
    .INIT(32'h12FF2222)) 
    comp_re_2_i_7
       (.I0(Q[2]),
        .I1(comp_re_2),
        .I2(Q[3]),
        .I3(comp_re_2_0),
        .I4(Q[1]),
        .O(B[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \oCNT[0]_i_1 
       (.I0(iCLR_IBUF),
        .I1(Q[0]),
        .O(\oCNT_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \oCNT[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(iCLR_IBUF),
        .O(\oCNT[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \oCNT[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(iCLR_IBUF),
        .O(\oCNT[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h14444444)) 
    \oCNT[3]_i_2 
       (.I0(iCLR_IBUF),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\oCNT[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\oCNT_reg[0]_6 ),
        .D(\oCNT_reg[0]_3 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\oCNT_reg[0]_6 ),
        .D(\oCNT[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\oCNT_reg[0]_6 ),
        .D(\oCNT[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \oCNT_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\oCNT_reg[0]_6 ),
        .D(\oCNT[3]_i_2_n_0 ),
        .Q(Q[3]));
  LUT6 #(
    .INIT(64'h1011101110111010)) 
    \oDATA[0]_i_7 
       (.I0(Q[0]),
        .I1(iCLR_IBUF),
        .I2(\oDATA[0]_i_3 ),
        .I3(\oDATA_reg[1] ),
        .I4(\oDATA_reg[15]_0 [0]),
        .I5(\oDATA_reg[15]_0 [1]),
        .O(\oCNT_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFFFF70)) 
    \oDATA[14]_i_5 
       (.I0(\oDATA_reg[15]_0 [0]),
        .I1(\oDATA_reg[1] ),
        .I2(\oDATA_reg[15]_0 [1]),
        .I3(Q[0]),
        .I4(iCLR_IBUF),
        .O(\oCNT_reg[0]_5 ));
  LUT4 #(
    .INIT(16'h1310)) 
    \oDATA[15]_i_1__0 
       (.I0(\oDATA_reg[15] ),
        .I1(iCLR_IBUF),
        .I2(Q[0]),
        .I3(\oDATA_reg[15]_0 [1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[16]_i_7 
       (.I0(Q[0]),
        .I1(iCLR_IBUF),
        .O(\oCNT_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h1011101110111010)) 
    \oDATA[16]_i_8 
       (.I0(Q[0]),
        .I1(iCLR_IBUF),
        .I2(O),
        .I3(\oDATA_reg[17] ),
        .I4(\oDATA_reg[31]_0 [0]),
        .I5(\oDATA_reg[31]_0 [1]),
        .O(\oCNT_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFFFFF70)) 
    \oDATA[30]_i_5 
       (.I0(\oDATA_reg[31]_0 [0]),
        .I1(\oDATA_reg[17] ),
        .I2(\oDATA_reg[31]_0 [1]),
        .I3(Q[0]),
        .I4(iCLR_IBUF),
        .O(\oCNT_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1310)) 
    \oDATA[31]_i_1 
       (.I0(\oDATA_reg[31] ),
        .I1(iCLR_IBUF),
        .I2(Q[0]),
        .I3(\oDATA_reg[31]_0 [1]),
        .O(D[1]));
endmodule

module CPX_MULT
   (O,
    \oDATA_reg[16] ,
    \oDATA_reg[20] ,
    \oDATA_reg[24] ,
    \oDATA_reg[26] ,
    \oDATA_reg[9] ,
    \oDATA_reg[16]_0 ,
    \oDATA_reg[20]_0 ,
    \oDATA_reg[24]_0 ,
    \oDATA_reg[26]_0 ,
    iRSTn,
    B,
    A,
    comp_re_1_0,
    comp_re_1_1,
    iCLR_IBUF,
    iRSTn_IBUF,
    E,
    CLK);
  output [3:0]O;
  output [3:0]\oDATA_reg[16] ;
  output [3:0]\oDATA_reg[20] ;
  output [3:0]\oDATA_reg[24] ;
  output [1:0]\oDATA_reg[26] ;
  output [3:0]\oDATA_reg[9] ;
  output [3:0]\oDATA_reg[16]_0 ;
  output [3:0]\oDATA_reg[20]_0 ;
  output [3:0]\oDATA_reg[24]_0 ;
  output [1:0]\oDATA_reg[26]_0 ;
  output iRSTn;
  input [7:0]B;
  input [16:0]A;
  input [8:0]comp_re_1_0;
  input [16:0]comp_re_1_1;
  input iCLR_IBUF;
  input iRSTn_IBUF;
  input [0:0]E;
  input CLK;

  wire [16:0]A;
  wire [7:0]B;
  wire CLK;
  wire [0:0]E;
  wire [3:0]O;
  wire comp_im_1_n_100;
  wire comp_im_1_n_101;
  wire comp_im_1_n_102;
  wire comp_im_1_n_103;
  wire comp_im_1_n_104;
  wire comp_im_1_n_105;
  wire comp_im_1_n_79;
  wire comp_im_1_n_80;
  wire comp_im_1_n_81;
  wire comp_im_1_n_82;
  wire comp_im_1_n_83;
  wire comp_im_1_n_84;
  wire comp_im_1_n_85;
  wire comp_im_1_n_86;
  wire comp_im_1_n_87;
  wire comp_im_1_n_88;
  wire comp_im_1_n_89;
  wire comp_im_1_n_90;
  wire comp_im_1_n_91;
  wire comp_im_1_n_92;
  wire comp_im_1_n_93;
  wire comp_im_1_n_94;
  wire comp_im_1_n_95;
  wire comp_im_1_n_96;
  wire comp_im_1_n_97;
  wire comp_im_1_n_98;
  wire comp_im_1_n_99;
  wire comp_im_2_n_100;
  wire comp_im_2_n_101;
  wire comp_im_2_n_102;
  wire comp_im_2_n_103;
  wire comp_im_2_n_104;
  wire comp_im_2_n_105;
  wire comp_im_2_n_79;
  wire comp_im_2_n_80;
  wire comp_im_2_n_81;
  wire comp_im_2_n_82;
  wire comp_im_2_n_83;
  wire comp_im_2_n_84;
  wire comp_im_2_n_85;
  wire comp_im_2_n_86;
  wire comp_im_2_n_87;
  wire comp_im_2_n_88;
  wire comp_im_2_n_89;
  wire comp_im_2_n_90;
  wire comp_im_2_n_91;
  wire comp_im_2_n_92;
  wire comp_im_2_n_93;
  wire comp_im_2_n_94;
  wire comp_im_2_n_95;
  wire comp_im_2_n_96;
  wire comp_im_2_n_97;
  wire comp_im_2_n_98;
  wire comp_im_2_n_99;
  wire [8:0]comp_re_1_0;
  wire [16:0]comp_re_1_1;
  wire comp_re_1_n_100;
  wire comp_re_1_n_101;
  wire comp_re_1_n_102;
  wire comp_re_1_n_103;
  wire comp_re_1_n_104;
  wire comp_re_1_n_105;
  wire comp_re_1_n_79;
  wire comp_re_1_n_80;
  wire comp_re_1_n_81;
  wire comp_re_1_n_82;
  wire comp_re_1_n_83;
  wire comp_re_1_n_84;
  wire comp_re_1_n_85;
  wire comp_re_1_n_86;
  wire comp_re_1_n_87;
  wire comp_re_1_n_88;
  wire comp_re_1_n_89;
  wire comp_re_1_n_90;
  wire comp_re_1_n_91;
  wire comp_re_1_n_92;
  wire comp_re_1_n_93;
  wire comp_re_1_n_94;
  wire comp_re_1_n_95;
  wire comp_re_1_n_96;
  wire comp_re_1_n_97;
  wire comp_re_1_n_98;
  wire comp_re_1_n_99;
  wire comp_re_2_n_100;
  wire comp_re_2_n_101;
  wire comp_re_2_n_102;
  wire comp_re_2_n_103;
  wire comp_re_2_n_104;
  wire comp_re_2_n_105;
  wire comp_re_2_n_79;
  wire comp_re_2_n_80;
  wire comp_re_2_n_81;
  wire comp_re_2_n_82;
  wire comp_re_2_n_83;
  wire comp_re_2_n_84;
  wire comp_re_2_n_85;
  wire comp_re_2_n_86;
  wire comp_re_2_n_87;
  wire comp_re_2_n_88;
  wire comp_re_2_n_89;
  wire comp_re_2_n_90;
  wire comp_re_2_n_91;
  wire comp_re_2_n_92;
  wire comp_re_2_n_93;
  wire comp_re_2_n_94;
  wire comp_re_2_n_95;
  wire comp_re_2_n_96;
  wire comp_re_2_n_97;
  wire comp_re_2_n_98;
  wire comp_re_2_n_99;
  wire iCLR_IBUF;
  wire iRSTn;
  wire iRSTn_IBUF;
  wire [25:0]oDATA_re_tmp0_out;
  wire oDATA_re_tmp_carry__0_i_1_n_0;
  wire oDATA_re_tmp_carry__0_i_2_n_0;
  wire oDATA_re_tmp_carry__0_i_3_n_0;
  wire oDATA_re_tmp_carry__0_i_4_n_0;
  wire oDATA_re_tmp_carry__0_n_0;
  wire oDATA_re_tmp_carry__0_n_1;
  wire oDATA_re_tmp_carry__0_n_2;
  wire oDATA_re_tmp_carry__0_n_3;
  wire oDATA_re_tmp_carry__1_i_1_n_0;
  wire oDATA_re_tmp_carry__1_i_2_n_0;
  wire oDATA_re_tmp_carry__1_i_3_n_0;
  wire oDATA_re_tmp_carry__1_i_4_n_0;
  wire oDATA_re_tmp_carry__1_n_0;
  wire oDATA_re_tmp_carry__1_n_1;
  wire oDATA_re_tmp_carry__1_n_2;
  wire oDATA_re_tmp_carry__1_n_3;
  wire oDATA_re_tmp_carry__2_i_1_n_0;
  wire oDATA_re_tmp_carry__2_i_2_n_0;
  wire oDATA_re_tmp_carry__2_i_3_n_0;
  wire oDATA_re_tmp_carry__2_i_4_n_0;
  wire oDATA_re_tmp_carry__2_n_0;
  wire oDATA_re_tmp_carry__2_n_1;
  wire oDATA_re_tmp_carry__2_n_2;
  wire oDATA_re_tmp_carry__2_n_3;
  wire oDATA_re_tmp_carry__3_i_1_n_0;
  wire oDATA_re_tmp_carry__3_i_2_n_0;
  wire oDATA_re_tmp_carry__3_i_3_n_0;
  wire oDATA_re_tmp_carry__3_i_4_n_0;
  wire oDATA_re_tmp_carry__3_n_0;
  wire oDATA_re_tmp_carry__3_n_1;
  wire oDATA_re_tmp_carry__3_n_2;
  wire oDATA_re_tmp_carry__3_n_3;
  wire oDATA_re_tmp_carry__4_i_1_n_0;
  wire oDATA_re_tmp_carry__4_i_2_n_0;
  wire oDATA_re_tmp_carry__4_i_3_n_0;
  wire oDATA_re_tmp_carry__4_i_4_n_0;
  wire oDATA_re_tmp_carry__4_n_0;
  wire oDATA_re_tmp_carry__4_n_1;
  wire oDATA_re_tmp_carry__4_n_2;
  wire oDATA_re_tmp_carry__4_n_3;
  wire oDATA_re_tmp_carry__5_i_1_n_0;
  wire oDATA_re_tmp_carry__5_i_2_n_0;
  wire oDATA_re_tmp_carry__5_n_1;
  wire oDATA_re_tmp_carry__5_n_3;
  wire oDATA_re_tmp_carry_i_1_n_0;
  wire oDATA_re_tmp_carry_i_2_n_0;
  wire oDATA_re_tmp_carry_i_3_n_0;
  wire oDATA_re_tmp_carry_i_4_n_0;
  wire oDATA_re_tmp_carry_n_0;
  wire oDATA_re_tmp_carry_n_1;
  wire oDATA_re_tmp_carry_n_2;
  wire oDATA_re_tmp_carry_n_3;
  wire [3:0]\oDATA_reg[16] ;
  wire [3:0]\oDATA_reg[16]_0 ;
  wire [3:0]\oDATA_reg[20] ;
  wire [3:0]\oDATA_reg[20]_0 ;
  wire [3:0]\oDATA_reg[24] ;
  wire [3:0]\oDATA_reg[24]_0 ;
  wire [1:0]\oDATA_reg[26] ;
  wire [1:0]\oDATA_reg[26]_0 ;
  wire [3:0]\oDATA_reg[9] ;
  wire NLW_comp_im_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_comp_im_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_comp_im_1_OVERFLOW_UNCONNECTED;
  wire NLW_comp_im_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_comp_im_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_comp_im_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_comp_im_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_comp_im_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_comp_im_1_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_comp_im_1_P_UNCONNECTED;
  wire [47:0]NLW_comp_im_1_PCOUT_UNCONNECTED;
  wire NLW_comp_im_2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_comp_im_2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_comp_im_2_OVERFLOW_UNCONNECTED;
  wire NLW_comp_im_2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_comp_im_2_PATTERNDETECT_UNCONNECTED;
  wire NLW_comp_im_2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_comp_im_2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_comp_im_2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_comp_im_2_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_comp_im_2_P_UNCONNECTED;
  wire [47:0]NLW_comp_im_2_PCOUT_UNCONNECTED;
  wire NLW_comp_re_1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_comp_re_1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_comp_re_1_OVERFLOW_UNCONNECTED;
  wire NLW_comp_re_1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_comp_re_1_PATTERNDETECT_UNCONNECTED;
  wire NLW_comp_re_1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_comp_re_1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_comp_re_1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_comp_re_1_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_comp_re_1_P_UNCONNECTED;
  wire [47:0]NLW_comp_re_1_PCOUT_UNCONNECTED;
  wire NLW_comp_re_2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_comp_re_2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_comp_re_2_OVERFLOW_UNCONNECTED;
  wire NLW_comp_re_2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_comp_re_2_PATTERNDETECT_UNCONNECTED;
  wire NLW_comp_re_2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_comp_re_2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_comp_re_2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_comp_re_2_CARRYOUT_UNCONNECTED;
  wire [47:27]NLW_comp_re_2_P_UNCONNECTED;
  wire [47:0]NLW_comp_re_2_PCOUT_UNCONNECTED;
  wire [3:1]NLW_oDATA_re_tmp_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_oDATA_re_tmp_carry__5_O_UNCONNECTED;

  D_REG__parameterized2 D_FF_oDATA_IM
       (.CLK(CLK),
        .E(E),
        .P({comp_im_2_n_80,comp_im_2_n_81,comp_im_2_n_82,comp_im_2_n_83,comp_im_2_n_84,comp_im_2_n_85,comp_im_2_n_86,comp_im_2_n_87,comp_im_2_n_88,comp_im_2_n_89,comp_im_2_n_90,comp_im_2_n_91,comp_im_2_n_92,comp_im_2_n_93,comp_im_2_n_94,comp_im_2_n_95,comp_im_2_n_96,comp_im_2_n_97,comp_im_2_n_98,comp_im_2_n_99,comp_im_2_n_100,comp_im_2_n_101,comp_im_2_n_102,comp_im_2_n_103,comp_im_2_n_104,comp_im_2_n_105}),
        .iCLR_IBUF(iCLR_IBUF),
        .iRSTn(iRSTn),
        .iRSTn_IBUF(iRSTn_IBUF),
        .\oDATA_reg[16]_0 (\oDATA_reg[16]_0 ),
        .\oDATA_reg[20]_0 (\oDATA_reg[20]_0 ),
        .\oDATA_reg[24]_0 (\oDATA_reg[24]_0 ),
        .\oDATA_reg[26]_0 (\oDATA_reg[26]_0 ),
        .\oDATA_reg[26]_1 ({comp_im_1_n_80,comp_im_1_n_81,comp_im_1_n_82,comp_im_1_n_83,comp_im_1_n_84,comp_im_1_n_85,comp_im_1_n_86,comp_im_1_n_87,comp_im_1_n_88,comp_im_1_n_89,comp_im_1_n_90,comp_im_1_n_91,comp_im_1_n_92,comp_im_1_n_93,comp_im_1_n_94,comp_im_1_n_95,comp_im_1_n_96,comp_im_1_n_97,comp_im_1_n_98,comp_im_1_n_99,comp_im_1_n_100,comp_im_1_n_101,comp_im_1_n_102,comp_im_1_n_103,comp_im_1_n_104,comp_im_1_n_105}),
        .\oDATA_reg[9]_0 (\oDATA_reg[9] ));
  D_REG__parameterized2_8 D_FF_oDATA_RE
       (.CLK(CLK),
        .CO(oDATA_re_tmp_carry__5_n_1),
        .E(E),
        .O(O),
        .iCLR_IBUF(iCLR_IBUF),
        .oDATA_re_tmp0_out(oDATA_re_tmp0_out),
        .\oDATA_reg[0]_0 (iRSTn),
        .\oDATA_reg[16]_0 (\oDATA_reg[16] ),
        .\oDATA_reg[20]_0 (\oDATA_reg[20] ),
        .\oDATA_reg[24]_0 (\oDATA_reg[24] ),
        .\oDATA_reg[26]_0 (\oDATA_reg[26] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    comp_im_1
       (.A({comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_comp_im_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[7],B[7],B[7],B[7],B[7],B[7],B[7],B[7],B[7:5],1'b0,B[4:3],B[6],B[2:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_comp_im_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_comp_im_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_comp_im_1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_comp_im_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_comp_im_1_OVERFLOW_UNCONNECTED),
        .P({NLW_comp_im_1_P_UNCONNECTED[47:27],comp_im_1_n_79,comp_im_1_n_80,comp_im_1_n_81,comp_im_1_n_82,comp_im_1_n_83,comp_im_1_n_84,comp_im_1_n_85,comp_im_1_n_86,comp_im_1_n_87,comp_im_1_n_88,comp_im_1_n_89,comp_im_1_n_90,comp_im_1_n_91,comp_im_1_n_92,comp_im_1_n_93,comp_im_1_n_94,comp_im_1_n_95,comp_im_1_n_96,comp_im_1_n_97,comp_im_1_n_98,comp_im_1_n_99,comp_im_1_n_100,comp_im_1_n_101,comp_im_1_n_102,comp_im_1_n_103,comp_im_1_n_104,comp_im_1_n_105}),
        .PATTERNBDETECT(NLW_comp_im_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_comp_im_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_comp_im_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_comp_im_1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    comp_im_2
       (.A({A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_comp_im_2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8:3],comp_re_1_0[7],comp_re_1_0[2:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_comp_im_2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_comp_im_2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_comp_im_2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_comp_im_2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_comp_im_2_OVERFLOW_UNCONNECTED),
        .P({NLW_comp_im_2_P_UNCONNECTED[47:27],comp_im_2_n_79,comp_im_2_n_80,comp_im_2_n_81,comp_im_2_n_82,comp_im_2_n_83,comp_im_2_n_84,comp_im_2_n_85,comp_im_2_n_86,comp_im_2_n_87,comp_im_2_n_88,comp_im_2_n_89,comp_im_2_n_90,comp_im_2_n_91,comp_im_2_n_92,comp_im_2_n_93,comp_im_2_n_94,comp_im_2_n_95,comp_im_2_n_96,comp_im_2_n_97,comp_im_2_n_98,comp_im_2_n_99,comp_im_2_n_100,comp_im_2_n_101,comp_im_2_n_102,comp_im_2_n_103,comp_im_2_n_104,comp_im_2_n_105}),
        .PATTERNBDETECT(NLW_comp_im_2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_comp_im_2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_comp_im_2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_comp_im_2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    comp_re_1
       (.A({comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1[16],comp_re_1_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_comp_re_1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8],comp_re_1_0[8:3],comp_re_1_0[7],comp_re_1_0[2:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_comp_re_1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_comp_re_1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_comp_re_1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_comp_re_1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_comp_re_1_OVERFLOW_UNCONNECTED),
        .P({NLW_comp_re_1_P_UNCONNECTED[47:27],comp_re_1_n_79,comp_re_1_n_80,comp_re_1_n_81,comp_re_1_n_82,comp_re_1_n_83,comp_re_1_n_84,comp_re_1_n_85,comp_re_1_n_86,comp_re_1_n_87,comp_re_1_n_88,comp_re_1_n_89,comp_re_1_n_90,comp_re_1_n_91,comp_re_1_n_92,comp_re_1_n_93,comp_re_1_n_94,comp_re_1_n_95,comp_re_1_n_96,comp_re_1_n_97,comp_re_1_n_98,comp_re_1_n_99,comp_re_1_n_100,comp_re_1_n_101,comp_re_1_n_102,comp_re_1_n_103,comp_re_1_n_104,comp_re_1_n_105}),
        .PATTERNBDETECT(NLW_comp_re_1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_comp_re_1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_comp_re_1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_comp_re_1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    comp_re_2
       (.A({A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_comp_re_2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[7],B[7],B[7],B[7],B[7],B[7],B[7],B[7],B[7:5],1'b0,B[4:3],B[6],B[2:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_comp_re_2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_comp_re_2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_comp_re_2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_comp_re_2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_comp_re_2_OVERFLOW_UNCONNECTED),
        .P({NLW_comp_re_2_P_UNCONNECTED[47:27],comp_re_2_n_79,comp_re_2_n_80,comp_re_2_n_81,comp_re_2_n_82,comp_re_2_n_83,comp_re_2_n_84,comp_re_2_n_85,comp_re_2_n_86,comp_re_2_n_87,comp_re_2_n_88,comp_re_2_n_89,comp_re_2_n_90,comp_re_2_n_91,comp_re_2_n_92,comp_re_2_n_93,comp_re_2_n_94,comp_re_2_n_95,comp_re_2_n_96,comp_re_2_n_97,comp_re_2_n_98,comp_re_2_n_99,comp_re_2_n_100,comp_re_2_n_101,comp_re_2_n_102,comp_re_2_n_103,comp_re_2_n_104,comp_re_2_n_105}),
        .PATTERNBDETECT(NLW_comp_re_2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_comp_re_2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_comp_re_2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_comp_re_2_UNDERFLOW_UNCONNECTED));
  CARRY4 oDATA_re_tmp_carry
       (.CI(1'b0),
        .CO({oDATA_re_tmp_carry_n_0,oDATA_re_tmp_carry_n_1,oDATA_re_tmp_carry_n_2,oDATA_re_tmp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({comp_re_1_n_102,comp_re_1_n_103,comp_re_1_n_104,comp_re_1_n_105}),
        .O(oDATA_re_tmp0_out[3:0]),
        .S({oDATA_re_tmp_carry_i_1_n_0,oDATA_re_tmp_carry_i_2_n_0,oDATA_re_tmp_carry_i_3_n_0,oDATA_re_tmp_carry_i_4_n_0}));
  CARRY4 oDATA_re_tmp_carry__0
       (.CI(oDATA_re_tmp_carry_n_0),
        .CO({oDATA_re_tmp_carry__0_n_0,oDATA_re_tmp_carry__0_n_1,oDATA_re_tmp_carry__0_n_2,oDATA_re_tmp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({comp_re_1_n_98,comp_re_1_n_99,comp_re_1_n_100,comp_re_1_n_101}),
        .O(oDATA_re_tmp0_out[7:4]),
        .S({oDATA_re_tmp_carry__0_i_1_n_0,oDATA_re_tmp_carry__0_i_2_n_0,oDATA_re_tmp_carry__0_i_3_n_0,oDATA_re_tmp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__0_i_1
       (.I0(comp_re_1_n_98),
        .I1(comp_re_2_n_98),
        .O(oDATA_re_tmp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__0_i_2
       (.I0(comp_re_1_n_99),
        .I1(comp_re_2_n_99),
        .O(oDATA_re_tmp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__0_i_3
       (.I0(comp_re_1_n_100),
        .I1(comp_re_2_n_100),
        .O(oDATA_re_tmp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__0_i_4
       (.I0(comp_re_1_n_101),
        .I1(comp_re_2_n_101),
        .O(oDATA_re_tmp_carry__0_i_4_n_0));
  CARRY4 oDATA_re_tmp_carry__1
       (.CI(oDATA_re_tmp_carry__0_n_0),
        .CO({oDATA_re_tmp_carry__1_n_0,oDATA_re_tmp_carry__1_n_1,oDATA_re_tmp_carry__1_n_2,oDATA_re_tmp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({comp_re_1_n_94,comp_re_1_n_95,comp_re_1_n_96,comp_re_1_n_97}),
        .O(oDATA_re_tmp0_out[11:8]),
        .S({oDATA_re_tmp_carry__1_i_1_n_0,oDATA_re_tmp_carry__1_i_2_n_0,oDATA_re_tmp_carry__1_i_3_n_0,oDATA_re_tmp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__1_i_1
       (.I0(comp_re_1_n_94),
        .I1(comp_re_2_n_94),
        .O(oDATA_re_tmp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__1_i_2
       (.I0(comp_re_1_n_95),
        .I1(comp_re_2_n_95),
        .O(oDATA_re_tmp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__1_i_3
       (.I0(comp_re_1_n_96),
        .I1(comp_re_2_n_96),
        .O(oDATA_re_tmp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__1_i_4
       (.I0(comp_re_1_n_97),
        .I1(comp_re_2_n_97),
        .O(oDATA_re_tmp_carry__1_i_4_n_0));
  CARRY4 oDATA_re_tmp_carry__2
       (.CI(oDATA_re_tmp_carry__1_n_0),
        .CO({oDATA_re_tmp_carry__2_n_0,oDATA_re_tmp_carry__2_n_1,oDATA_re_tmp_carry__2_n_2,oDATA_re_tmp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({comp_re_1_n_90,comp_re_1_n_91,comp_re_1_n_92,comp_re_1_n_93}),
        .O(oDATA_re_tmp0_out[15:12]),
        .S({oDATA_re_tmp_carry__2_i_1_n_0,oDATA_re_tmp_carry__2_i_2_n_0,oDATA_re_tmp_carry__2_i_3_n_0,oDATA_re_tmp_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__2_i_1
       (.I0(comp_re_1_n_90),
        .I1(comp_re_2_n_90),
        .O(oDATA_re_tmp_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__2_i_2
       (.I0(comp_re_1_n_91),
        .I1(comp_re_2_n_91),
        .O(oDATA_re_tmp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__2_i_3
       (.I0(comp_re_1_n_92),
        .I1(comp_re_2_n_92),
        .O(oDATA_re_tmp_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__2_i_4
       (.I0(comp_re_1_n_93),
        .I1(comp_re_2_n_93),
        .O(oDATA_re_tmp_carry__2_i_4_n_0));
  CARRY4 oDATA_re_tmp_carry__3
       (.CI(oDATA_re_tmp_carry__2_n_0),
        .CO({oDATA_re_tmp_carry__3_n_0,oDATA_re_tmp_carry__3_n_1,oDATA_re_tmp_carry__3_n_2,oDATA_re_tmp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({comp_re_1_n_86,comp_re_1_n_87,comp_re_1_n_88,comp_re_1_n_89}),
        .O(oDATA_re_tmp0_out[19:16]),
        .S({oDATA_re_tmp_carry__3_i_1_n_0,oDATA_re_tmp_carry__3_i_2_n_0,oDATA_re_tmp_carry__3_i_3_n_0,oDATA_re_tmp_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__3_i_1
       (.I0(comp_re_1_n_86),
        .I1(comp_re_2_n_86),
        .O(oDATA_re_tmp_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__3_i_2
       (.I0(comp_re_1_n_87),
        .I1(comp_re_2_n_87),
        .O(oDATA_re_tmp_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__3_i_3
       (.I0(comp_re_1_n_88),
        .I1(comp_re_2_n_88),
        .O(oDATA_re_tmp_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__3_i_4
       (.I0(comp_re_1_n_89),
        .I1(comp_re_2_n_89),
        .O(oDATA_re_tmp_carry__3_i_4_n_0));
  CARRY4 oDATA_re_tmp_carry__4
       (.CI(oDATA_re_tmp_carry__3_n_0),
        .CO({oDATA_re_tmp_carry__4_n_0,oDATA_re_tmp_carry__4_n_1,oDATA_re_tmp_carry__4_n_2,oDATA_re_tmp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({comp_re_1_n_82,comp_re_1_n_83,comp_re_1_n_84,comp_re_1_n_85}),
        .O(oDATA_re_tmp0_out[23:20]),
        .S({oDATA_re_tmp_carry__4_i_1_n_0,oDATA_re_tmp_carry__4_i_2_n_0,oDATA_re_tmp_carry__4_i_3_n_0,oDATA_re_tmp_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__4_i_1
       (.I0(comp_re_1_n_82),
        .I1(comp_re_2_n_82),
        .O(oDATA_re_tmp_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__4_i_2
       (.I0(comp_re_1_n_83),
        .I1(comp_re_2_n_83),
        .O(oDATA_re_tmp_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__4_i_3
       (.I0(comp_re_1_n_84),
        .I1(comp_re_2_n_84),
        .O(oDATA_re_tmp_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__4_i_4
       (.I0(comp_re_1_n_85),
        .I1(comp_re_2_n_85),
        .O(oDATA_re_tmp_carry__4_i_4_n_0));
  CARRY4 oDATA_re_tmp_carry__5
       (.CI(oDATA_re_tmp_carry__4_n_0),
        .CO({NLW_oDATA_re_tmp_carry__5_CO_UNCONNECTED[3],oDATA_re_tmp_carry__5_n_1,NLW_oDATA_re_tmp_carry__5_CO_UNCONNECTED[1],oDATA_re_tmp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,comp_re_2_n_80,comp_re_1_n_81}),
        .O({NLW_oDATA_re_tmp_carry__5_O_UNCONNECTED[3:2],oDATA_re_tmp0_out[25:24]}),
        .S({1'b0,1'b1,oDATA_re_tmp_carry__5_i_1_n_0,oDATA_re_tmp_carry__5_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__5_i_1
       (.I0(comp_re_1_n_80),
        .I1(comp_re_2_n_80),
        .O(oDATA_re_tmp_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry__5_i_2
       (.I0(comp_re_1_n_81),
        .I1(comp_re_2_n_81),
        .O(oDATA_re_tmp_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry_i_1
       (.I0(comp_re_1_n_102),
        .I1(comp_re_2_n_102),
        .O(oDATA_re_tmp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry_i_2
       (.I0(comp_re_1_n_103),
        .I1(comp_re_2_n_103),
        .O(oDATA_re_tmp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry_i_3
       (.I0(comp_re_1_n_104),
        .I1(comp_re_2_n_104),
        .O(oDATA_re_tmp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_re_tmp_carry_i_4
       (.I0(comp_re_1_n_105),
        .I1(comp_re_2_n_105),
        .O(oDATA_re_tmp_carry_i_4_n_0));
endmodule

module D_REG
   (\oDATA_reg[0]_0 ,
    CLK,
    \oDATA_reg[0]_1 ,
    iStart_INT_IBUF,
    iCLR_IBUF);
  output \oDATA_reg[0]_0 ;
  input CLK;
  input \oDATA_reg[0]_1 ;
  input iStart_INT_IBUF;
  input iCLR_IBUF;

  wire CLK;
  wire iCLR_IBUF;
  wire iDATA_RE_1D;
  wire iStart_INT_IBUF;
  wire \oDATA[0]_i_1__2_n_0 ;
  wire \oDATA_reg[0]_0 ;
  wire \oDATA_reg[0]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[0]_i_1__2 
       (.I0(iStart_INT_IBUF),
        .I1(iCLR_IBUF),
        .O(\oDATA[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[0]_i_1__3 
       (.I0(iDATA_RE_1D),
        .I1(iCLR_IBUF),
        .O(\oDATA_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oDATA_reg[0]_1 ),
        .D(\oDATA[0]_i_1__2_n_0 ),
        .Q(iDATA_RE_1D));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG_0
   (\oDATA_reg[0]_0 ,
    \oDATA_reg[0]_1 ,
    CLK,
    \oDATA_reg[0]_2 ,
    iCLR_IBUF);
  output \oDATA_reg[0]_0 ;
  input \oDATA_reg[0]_1 ;
  input CLK;
  input \oDATA_reg[0]_2 ;
  input iCLR_IBUF;

  wire CLK;
  wire iCLR_IBUF;
  wire iDATA_RE_2D;
  wire \oDATA_reg[0]_0 ;
  wire \oDATA_reg[0]_1 ;
  wire \oDATA_reg[0]_2 ;

  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[0]_i_1__4 
       (.I0(iDATA_RE_2D),
        .I1(iCLR_IBUF),
        .O(\oDATA_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oDATA_reg[0]_2 ),
        .D(\oDATA_reg[0]_1 ),
        .Q(iDATA_RE_2D));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG_1
   (iStart_W,
    \oDATA_reg[0]_0 ,
    CLK,
    \oDATA_reg[0]_1 );
  output iStart_W;
  input \oDATA_reg[0]_0 ;
  input CLK;
  input \oDATA_reg[0]_1 ;

  wire CLK;
  wire iStart_W;
  wire \oDATA_reg[0]_0 ;
  wire \oDATA_reg[0]_1 ;

  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oDATA_reg[0]_1 ),
        .D(\oDATA_reg[0]_0 ),
        .Q(iStart_W));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG_2
   (oEN_OBUF,
    \oDATA_reg[0]_0 ,
    CLK,
    \oDATA_reg[0]_1 );
  output oEN_OBUF;
  input \oDATA_reg[0]_0 ;
  input CLK;
  input \oDATA_reg[0]_1 ;

  wire CLK;
  wire \oDATA_reg[0]_0 ;
  wire \oDATA_reg[0]_1 ;
  wire oEN_OBUF;

  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oDATA_reg[0]_1 ),
        .D(\oDATA_reg[0]_0 ),
        .Q(oEN_OBUF));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG_6
   (\oDATA_reg[0]_0 ,
    \oDATA_reg[0]_1 ,
    CLK,
    \oDATA_reg[0]_2 ,
    iCLR_IBUF);
  output \oDATA_reg[0]_0 ;
  input \oDATA_reg[0]_1 ;
  input CLK;
  input \oDATA_reg[0]_2 ;
  input iCLR_IBUF;

  wire CLK;
  wire iCLR_IBUF;
  wire iEN_2D;
  wire \oDATA_reg[0]_0 ;
  wire \oDATA_reg[0]_1 ;
  wire \oDATA_reg[0]_2 ;

  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[0]_i_1__1 
       (.I0(iEN_2D),
        .I1(iCLR_IBUF),
        .O(\oDATA_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oDATA_reg[0]_2 ),
        .D(\oDATA_reg[0]_1 ),
        .Q(iEN_2D));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG_7
   (\oDATA_reg[0]_0 ,
    \oDATA_reg[0]_1 ,
    CLK,
    \oDATA_reg[0]_2 );
  output \oDATA_reg[0]_0 ;
  input \oDATA_reg[0]_1 ;
  input CLK;
  input \oDATA_reg[0]_2 ;

  wire CLK;
  wire \oDATA_reg[0]_0 ;
  wire \oDATA_reg[0]_1 ;
  wire \oDATA_reg[0]_2 ;

  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oDATA_reg[0]_2 ),
        .D(\oDATA_reg[0]_1 ),
        .Q(\oDATA_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG__parameterized0
   (\oDATA_reg[14]_0 ,
    DI,
    S,
    Q,
    \oDATA_reg[7]_0 ,
    \oDATA_reg[11]_0 ,
    \oDATA_reg[15]_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ,
    CO,
    doutb,
    iCLR_IBUF,
    E,
    CLK,
    \oDATA_reg[15]_1 );
  output [0:0]\oDATA_reg[14]_0 ;
  output [0:0]DI;
  output [3:0]S;
  output [14:0]Q;
  output [3:0]\oDATA_reg[7]_0 ;
  output [3:0]\oDATA_reg[11]_0 ;
  output [3:0]\oDATA_reg[15]_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ;
  input [0:0]CO;
  input [15:0]doutb;
  input iCLR_IBUF;
  input [0:0]E;
  input CLK;
  input \oDATA_reg[15]_1 ;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ;
  wire [0:0]DI;
  wire [0:0]E;
  wire [14:0]Q;
  wire [3:0]S;
  wire [15:0]doutb;
  wire iCLR_IBUF;
  wire \oDATA[0]_i_1__6_n_0 ;
  wire \oDATA[10]_i_1__0_n_0 ;
  wire \oDATA[11]_i_1__0_n_0 ;
  wire \oDATA[12]_i_1__0_n_0 ;
  wire \oDATA[13]_i_1__0_n_0 ;
  wire \oDATA[14]_i_1__0_n_0 ;
  wire \oDATA[15]_i_2_n_0 ;
  wire \oDATA[1]_i_1__0_n_0 ;
  wire \oDATA[2]_i_1__0_n_0 ;
  wire \oDATA[3]_i_1__0_n_0 ;
  wire \oDATA[4]_i_1__0_n_0 ;
  wire \oDATA[5]_i_1__0_n_0 ;
  wire \oDATA[6]_i_1__0_n_0 ;
  wire \oDATA[7]_i_1__0_n_0 ;
  wire \oDATA[8]_i_1__0_n_0 ;
  wire \oDATA[9]_i_1__0_n_0 ;
  wire [3:0]\oDATA_reg[11]_0 ;
  wire [0:0]\oDATA_reg[14]_0 ;
  wire [3:0]\oDATA_reg[15]_0 ;
  wire \oDATA_reg[15]_1 ;
  wire [3:0]\oDATA_reg[7]_0 ;
  wire \oDATA_reg_n_0_[15] ;
  wire [3:1]\NLW_oDATA_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_oDATA_reg[31]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[0]_i_1__6 
       (.I0(doutb[0]),
        .I1(iCLR_IBUF),
        .O(\oDATA[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[10]_i_1__0 
       (.I0(doutb[10]),
        .I1(iCLR_IBUF),
        .O(\oDATA[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[11]_i_1__0 
       (.I0(doutb[11]),
        .I1(iCLR_IBUF),
        .O(\oDATA[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[12]_i_1__0 
       (.I0(doutb[12]),
        .I1(iCLR_IBUF),
        .O(\oDATA[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[13]_i_1__0 
       (.I0(doutb[13]),
        .I1(iCLR_IBUF),
        .O(\oDATA[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[14]_i_1__0 
       (.I0(doutb[14]),
        .I1(iCLR_IBUF),
        .O(\oDATA[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[15]_i_2 
       (.I0(doutb[15]),
        .I1(iCLR_IBUF),
        .O(\oDATA[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[1]_i_1__0 
       (.I0(doutb[1]),
        .I1(iCLR_IBUF),
        .O(\oDATA[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[2]_i_1__0 
       (.I0(doutb[2]),
        .I1(iCLR_IBUF),
        .O(\oDATA[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[3]_i_1__0 
       (.I0(doutb[3]),
        .I1(iCLR_IBUF),
        .O(\oDATA[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[4]_i_1__0 
       (.I0(doutb[4]),
        .I1(iCLR_IBUF),
        .O(\oDATA[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[5]_i_1__0 
       (.I0(doutb[5]),
        .I1(iCLR_IBUF),
        .O(\oDATA[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[6]_i_1__0 
       (.I0(doutb[6]),
        .I1(iCLR_IBUF),
        .O(\oDATA[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[7]_i_1__0 
       (.I0(doutb[7]),
        .I1(iCLR_IBUF),
        .O(\oDATA[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[8]_i_1__0 
       (.I0(doutb[8]),
        .I1(iCLR_IBUF),
        .O(\oDATA[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[9]_i_1__0 
       (.I0(doutb[9]),
        .I1(iCLR_IBUF),
        .O(\oDATA[9]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__0_i_1
       (.I0(Q[7]),
        .I1(doutb[7]),
        .O(\oDATA_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__0_i_2
       (.I0(Q[6]),
        .I1(doutb[6]),
        .O(\oDATA_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__0_i_3
       (.I0(Q[5]),
        .I1(doutb[5]),
        .O(\oDATA_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__0_i_4
       (.I0(Q[4]),
        .I1(doutb[4]),
        .O(\oDATA_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__1_i_1
       (.I0(Q[11]),
        .I1(doutb[11]),
        .O(\oDATA_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__1_i_2
       (.I0(Q[10]),
        .I1(doutb[10]),
        .O(\oDATA_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__1_i_3
       (.I0(Q[9]),
        .I1(doutb[9]),
        .O(\oDATA_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__1_i_4
       (.I0(Q[8]),
        .I1(doutb[8]),
        .O(\oDATA_reg[11]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    oDATA_add_carry__2_i_1
       (.I0(\oDATA_reg_n_0_[15] ),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__2_i_2
       (.I0(\oDATA_reg_n_0_[15] ),
        .I1(doutb[15]),
        .O(\oDATA_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__2_i_3
       (.I0(Q[14]),
        .I1(doutb[14]),
        .O(\oDATA_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__2_i_4
       (.I0(Q[13]),
        .I1(doutb[13]),
        .O(\oDATA_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__2_i_5
       (.I0(Q[12]),
        .I1(doutb[12]),
        .O(\oDATA_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry_i_1
       (.I0(Q[3]),
        .I1(doutb[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry_i_2
       (.I0(Q[2]),
        .I1(doutb[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry_i_3
       (.I0(Q[1]),
        .I1(doutb[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry_i_4
       (.I0(Q[0]),
        .I1(doutb[0]),
        .O(S[0]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[0]_i_1__6_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[10]_i_1__0_n_0 ),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[11]_i_1__0_n_0 ),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[12]_i_1__0_n_0 ),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[13]_i_1__0_n_0 ),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[14]_i_1__0_n_0 ),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[15]_i_2_n_0 ),
        .Q(\oDATA_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  CARRY4 \oDATA_reg[31]_i_2 
       (.CI(CO),
        .CO({\NLW_oDATA_reg[31]_i_2_CO_UNCONNECTED [3:1],\oDATA_reg[14]_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_oDATA_reg[31]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[3]_i_1__0_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[4]_i_1__0_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[5]_i_1__0_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[6]_i_1__0_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[7]_i_1__0_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[8]_i_1__0_n_0 ),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[15]_1 ),
        .D(\oDATA[9]_i_1__0_n_0 ),
        .Q(Q[9]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__0_i_1
       (.I0(doutb[7]),
        .I1(Q[7]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__0_i_2
       (.I0(doutb[6]),
        .I1(Q[6]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__0_i_3
       (.I0(doutb[5]),
        .I1(Q[5]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__0_i_4
       (.I0(doutb[4]),
        .I1(Q[4]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__1_i_1
       (.I0(doutb[11]),
        .I1(Q[11]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__1_i_2
       (.I0(doutb[10]),
        .I1(Q[10]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__1_i_3
       (.I0(doutb[9]),
        .I1(Q[9]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__1_i_4
       (.I0(doutb[8]),
        .I1(Q[8]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__2_i_1
       (.I0(doutb[15]),
        .I1(\oDATA_reg_n_0_[15] ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__2_i_2
       (.I0(doutb[14]),
        .I1(Q[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__2_i_3
       (.I0(doutb[13]),
        .I1(Q[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__2_i_4
       (.I0(doutb[12]),
        .I1(Q[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry_i_1
       (.I0(doutb[3]),
        .I1(Q[3]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [3]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry_i_2
       (.I0(doutb[2]),
        .I1(Q[2]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [2]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry_i_3
       (.I0(doutb[1]),
        .I1(Q[1]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry_i_4
       (.I0(doutb[0]),
        .I1(Q[0]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG__parameterized0_5
   (\oDATA_reg[14]_0 ,
    DI,
    S,
    Q,
    \oDATA_reg[7]_0 ,
    \oDATA_reg[11]_0 ,
    \oDATA_reg[15]_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ,
    CO,
    doutb,
    iCLR_IBUF,
    E,
    CLK,
    \oDATA_reg[0]_0 );
  output [0:0]\oDATA_reg[14]_0 ;
  output [0:0]DI;
  output [3:0]S;
  output [14:0]Q;
  output [3:0]\oDATA_reg[7]_0 ;
  output [3:0]\oDATA_reg[11]_0 ;
  output [3:0]\oDATA_reg[15]_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  output [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ;
  input [0:0]CO;
  input [15:0]doutb;
  input iCLR_IBUF;
  input [0:0]E;
  input CLK;
  input \oDATA_reg[0]_0 ;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire [3:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ;
  wire [0:0]DI;
  wire [0:0]E;
  wire [14:0]Q;
  wire [3:0]S;
  wire [15:0]doutb;
  wire iCLR_IBUF;
  wire \oDATA[0]_i_1__7_n_0 ;
  wire \oDATA[10]_i_1__1_n_0 ;
  wire \oDATA[11]_i_1__1_n_0 ;
  wire \oDATA[12]_i_1__1_n_0 ;
  wire \oDATA[13]_i_1__1_n_0 ;
  wire \oDATA[14]_i_1__1_n_0 ;
  wire \oDATA[15]_i_1__1_n_0 ;
  wire \oDATA[1]_i_1__1_n_0 ;
  wire \oDATA[2]_i_1__1_n_0 ;
  wire \oDATA[3]_i_1__1_n_0 ;
  wire \oDATA[4]_i_1__1_n_0 ;
  wire \oDATA[5]_i_1__1_n_0 ;
  wire \oDATA[6]_i_1__1_n_0 ;
  wire \oDATA[7]_i_1__1_n_0 ;
  wire \oDATA[8]_i_1__1_n_0 ;
  wire \oDATA[9]_i_1__1_n_0 ;
  wire \oDATA_reg[0]_0 ;
  wire [3:0]\oDATA_reg[11]_0 ;
  wire [0:0]\oDATA_reg[14]_0 ;
  wire [3:0]\oDATA_reg[15]_0 ;
  wire [3:0]\oDATA_reg[7]_0 ;
  wire \oDATA_reg_n_0_[15] ;
  wire [3:1]\NLW_oDATA_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_oDATA_reg[15]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[0]_i_1__7 
       (.I0(doutb[0]),
        .I1(iCLR_IBUF),
        .O(\oDATA[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[10]_i_1__1 
       (.I0(doutb[10]),
        .I1(iCLR_IBUF),
        .O(\oDATA[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[11]_i_1__1 
       (.I0(doutb[11]),
        .I1(iCLR_IBUF),
        .O(\oDATA[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[12]_i_1__1 
       (.I0(doutb[12]),
        .I1(iCLR_IBUF),
        .O(\oDATA[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[13]_i_1__1 
       (.I0(doutb[13]),
        .I1(iCLR_IBUF),
        .O(\oDATA[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[14]_i_1__1 
       (.I0(doutb[14]),
        .I1(iCLR_IBUF),
        .O(\oDATA[14]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[15]_i_1__1 
       (.I0(doutb[15]),
        .I1(iCLR_IBUF),
        .O(\oDATA[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[1]_i_1__1 
       (.I0(doutb[1]),
        .I1(iCLR_IBUF),
        .O(\oDATA[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[2]_i_1__1 
       (.I0(doutb[2]),
        .I1(iCLR_IBUF),
        .O(\oDATA[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[3]_i_1__1 
       (.I0(doutb[3]),
        .I1(iCLR_IBUF),
        .O(\oDATA[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[4]_i_1__1 
       (.I0(doutb[4]),
        .I1(iCLR_IBUF),
        .O(\oDATA[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[5]_i_1__1 
       (.I0(doutb[5]),
        .I1(iCLR_IBUF),
        .O(\oDATA[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[6]_i_1__1 
       (.I0(doutb[6]),
        .I1(iCLR_IBUF),
        .O(\oDATA[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[7]_i_1__1 
       (.I0(doutb[7]),
        .I1(iCLR_IBUF),
        .O(\oDATA[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[8]_i_1__1 
       (.I0(doutb[8]),
        .I1(iCLR_IBUF),
        .O(\oDATA[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[9]_i_1__1 
       (.I0(doutb[9]),
        .I1(iCLR_IBUF),
        .O(\oDATA[9]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__0_i_1__0
       (.I0(Q[7]),
        .I1(doutb[7]),
        .O(\oDATA_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__0_i_2__0
       (.I0(Q[6]),
        .I1(doutb[6]),
        .O(\oDATA_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__0_i_3__0
       (.I0(Q[5]),
        .I1(doutb[5]),
        .O(\oDATA_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__0_i_4__0
       (.I0(Q[4]),
        .I1(doutb[4]),
        .O(\oDATA_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__1_i_1__0
       (.I0(Q[11]),
        .I1(doutb[11]),
        .O(\oDATA_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__1_i_2__0
       (.I0(Q[10]),
        .I1(doutb[10]),
        .O(\oDATA_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__1_i_3__0
       (.I0(Q[9]),
        .I1(doutb[9]),
        .O(\oDATA_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__1_i_4__0
       (.I0(Q[8]),
        .I1(doutb[8]),
        .O(\oDATA_reg[11]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    oDATA_add_carry__2_i_1__0
       (.I0(\oDATA_reg_n_0_[15] ),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__2_i_2__0
       (.I0(\oDATA_reg_n_0_[15] ),
        .I1(doutb[15]),
        .O(\oDATA_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__2_i_3__0
       (.I0(Q[14]),
        .I1(doutb[14]),
        .O(\oDATA_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__2_i_4__0
       (.I0(Q[13]),
        .I1(doutb[13]),
        .O(\oDATA_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry__2_i_5__0
       (.I0(Q[12]),
        .I1(doutb[12]),
        .O(\oDATA_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry_i_1__0
       (.I0(Q[3]),
        .I1(doutb[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry_i_2__0
       (.I0(Q[2]),
        .I1(doutb[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry_i_3__0
       (.I0(Q[1]),
        .I1(doutb[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    oDATA_add_carry_i_4__0
       (.I0(Q[0]),
        .I1(doutb[0]),
        .O(S[0]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[0]_i_1__7_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[10]_i_1__1_n_0 ),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[11]_i_1__1_n_0 ),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[12]_i_1__1_n_0 ),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[13]_i_1__1_n_0 ),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[14]_i_1__1_n_0 ),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[15]_i_1__1_n_0 ),
        .Q(\oDATA_reg_n_0_[15] ));
  CARRY4 \oDATA_reg[15]_i_2 
       (.CI(CO),
        .CO({\NLW_oDATA_reg[15]_i_2_CO_UNCONNECTED [3:1],\oDATA_reg[14]_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_oDATA_reg[15]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[2]_i_1__1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[3]_i_1__1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[4]_i_1__1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[5]_i_1__1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[6]_i_1__1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[7]_i_1__1_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[8]_i_1__1_n_0 ),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[9]_i_1__1_n_0 ),
        .Q(Q[9]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__0_i_1__0
       (.I0(doutb[7]),
        .I1(Q[7]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__0_i_2__0
       (.I0(doutb[6]),
        .I1(Q[6]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__0_i_3__0
       (.I0(doutb[5]),
        .I1(Q[5]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__0_i_4__0
       (.I0(doutb[4]),
        .I1(Q[4]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__1_i_1__0
       (.I0(doutb[11]),
        .I1(Q[11]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__1_i_2__0
       (.I0(doutb[10]),
        .I1(Q[10]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__1_i_3__0
       (.I0(doutb[9]),
        .I1(Q[9]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__1_i_4__0
       (.I0(doutb[8]),
        .I1(Q[8]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__2_i_1__0
       (.I0(doutb[15]),
        .I1(\oDATA_reg_n_0_[15] ),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__2_i_2__0
       (.I0(doutb[14]),
        .I1(Q[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__2_i_3__0
       (.I0(doutb[13]),
        .I1(Q[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry__2_i_4__0
       (.I0(doutb[12]),
        .I1(Q[12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry_i_1__0
       (.I0(doutb[3]),
        .I1(Q[3]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [3]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry_i_2__0
       (.I0(doutb[2]),
        .I1(Q[2]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [2]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry_i_3__0
       (.I0(doutb[1]),
        .I1(Q[1]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]));
  LUT2 #(
    .INIT(4'h9)) 
    oDATA_sub_carry_i_4__0
       (.I0(doutb[0]),
        .I1(Q[0]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG__parameterized1
   (E,
    \oDATA_reg[0]_0 ,
    \oDATA_reg[0]_1 ,
    CLK,
    \oDATA_reg[0]_2 ,
    iCLR_IBUF);
  output [0:0]E;
  output \oDATA_reg[0]_0 ;
  input \oDATA_reg[0]_1 ;
  input CLK;
  input \oDATA_reg[0]_2 ;
  input iCLR_IBUF;

  wire CLK;
  wire Cnt_EN;
  wire [0:0]E;
  wire iCLR_IBUF;
  wire \oDATA_reg[0]_0 ;
  wire \oDATA_reg[0]_1 ;
  wire \oDATA_reg[0]_2 ;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \oCNT[3]_i_1 
       (.I0(iCLR_IBUF),
        .I1(Cnt_EN),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[0]_i_1__0 
       (.I0(Cnt_EN),
        .I1(iCLR_IBUF),
        .O(\oDATA_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oDATA_reg[0]_2 ),
        .D(\oDATA_reg[0]_1 ),
        .Q(Cnt_EN));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG__parameterized2
   (\oDATA_reg[9]_0 ,
    \oDATA_reg[16]_0 ,
    \oDATA_reg[20]_0 ,
    \oDATA_reg[24]_0 ,
    \oDATA_reg[26]_0 ,
    iRSTn,
    iRSTn_IBUF,
    P,
    iCLR_IBUF,
    E,
    CLK,
    \oDATA_reg[26]_1 );
  output [3:0]\oDATA_reg[9]_0 ;
  output [3:0]\oDATA_reg[16]_0 ;
  output [3:0]\oDATA_reg[20]_0 ;
  output [3:0]\oDATA_reg[24]_0 ;
  output [1:0]\oDATA_reg[26]_0 ;
  output iRSTn;
  input iRSTn_IBUF;
  input [25:0]P;
  input iCLR_IBUF;
  input [0:0]E;
  input CLK;
  input [25:0]\oDATA_reg[26]_1 ;

  wire CLK;
  wire [0:0]E;
  wire [25:0]P;
  wire iCLR_IBUF;
  wire iRSTn;
  wire iRSTn_IBUF;
  wire \oDATA[11]_i_2_n_0 ;
  wire \oDATA[11]_i_3_n_0 ;
  wire \oDATA[11]_i_4_n_0 ;
  wire \oDATA[11]_i_5_n_0 ;
  wire \oDATA[11]_i_6_n_0 ;
  wire \oDATA[11]_i_7_n_0 ;
  wire \oDATA[11]_i_8_n_0 ;
  wire \oDATA[11]_i_9_n_0 ;
  wire \oDATA[15]_i_2__0_n_0 ;
  wire \oDATA[15]_i_3_n_0 ;
  wire \oDATA[15]_i_4_n_0 ;
  wire \oDATA[15]_i_5_n_0 ;
  wire \oDATA[15]_i_6_n_0 ;
  wire \oDATA[15]_i_7_n_0 ;
  wire \oDATA[15]_i_8_n_0 ;
  wire \oDATA[15]_i_9_n_0 ;
  wire \oDATA[19]_i_2_n_0 ;
  wire \oDATA[19]_i_3__0_n_0 ;
  wire \oDATA[19]_i_4__0_n_0 ;
  wire \oDATA[19]_i_5__0_n_0 ;
  wire \oDATA[19]_i_6_n_0 ;
  wire \oDATA[19]_i_7_n_0 ;
  wire \oDATA[19]_i_8_n_0 ;
  wire \oDATA[19]_i_9_n_0 ;
  wire \oDATA[23]_i_2_n_0 ;
  wire \oDATA[23]_i_3_n_0 ;
  wire \oDATA[23]_i_4_n_0 ;
  wire \oDATA[23]_i_5_n_0 ;
  wire \oDATA[23]_i_6_n_0 ;
  wire \oDATA[23]_i_7_n_0 ;
  wire \oDATA[23]_i_8_n_0 ;
  wire \oDATA[23]_i_9_n_0 ;
  wire \oDATA[26]_i_2_n_0 ;
  wire \oDATA[26]_i_3_n_0 ;
  wire \oDATA[26]_i_4_n_0 ;
  wire \oDATA[26]_i_5_n_0 ;
  wire \oDATA[26]_i_6_n_0 ;
  wire \oDATA[3]_i_2_n_0 ;
  wire \oDATA[3]_i_3__0_n_0 ;
  wire \oDATA[3]_i_3_n_0 ;
  wire \oDATA[3]_i_4__0_n_0 ;
  wire \oDATA[3]_i_4_n_0 ;
  wire \oDATA[3]_i_5__0_n_0 ;
  wire \oDATA[3]_i_5_n_0 ;
  wire \oDATA[3]_i_6__0_n_0 ;
  wire \oDATA[3]_i_6_n_0 ;
  wire \oDATA[3]_i_7__0_n_0 ;
  wire \oDATA[3]_i_7_n_0 ;
  wire \oDATA[3]_i_8__0_n_0 ;
  wire \oDATA[3]_i_8_n_0 ;
  wire \oDATA[3]_i_9__0_n_0 ;
  wire \oDATA[3]_i_9_n_0 ;
  wire \oDATA[7]_i_2_n_0 ;
  wire \oDATA[7]_i_3_n_0 ;
  wire \oDATA[7]_i_4_n_0 ;
  wire \oDATA[7]_i_5_n_0 ;
  wire \oDATA[7]_i_6_n_0 ;
  wire \oDATA[7]_i_7_n_0 ;
  wire \oDATA[7]_i_8_n_0 ;
  wire \oDATA[7]_i_9_n_0 ;
  wire [8:7]oDATA_IM_LOW_TW;
  wire \oDATA_reg[11]_i_1_n_0 ;
  wire \oDATA_reg[11]_i_1_n_1 ;
  wire \oDATA_reg[11]_i_1_n_2 ;
  wire \oDATA_reg[11]_i_1_n_3 ;
  wire \oDATA_reg[11]_i_1_n_4 ;
  wire \oDATA_reg[11]_i_1_n_5 ;
  wire \oDATA_reg[11]_i_1_n_6 ;
  wire \oDATA_reg[11]_i_1_n_7 ;
  wire \oDATA_reg[11]_i_2_n_0 ;
  wire \oDATA_reg[11]_i_2_n_1 ;
  wire \oDATA_reg[11]_i_2_n_2 ;
  wire \oDATA_reg[11]_i_2_n_3 ;
  wire \oDATA_reg[14]_i_4_n_0 ;
  wire \oDATA_reg[14]_i_4_n_1 ;
  wire \oDATA_reg[14]_i_4_n_2 ;
  wire \oDATA_reg[14]_i_4_n_3 ;
  wire \oDATA_reg[15]_i_1_n_0 ;
  wire \oDATA_reg[15]_i_1_n_1 ;
  wire \oDATA_reg[15]_i_1_n_2 ;
  wire \oDATA_reg[15]_i_1_n_3 ;
  wire \oDATA_reg[15]_i_1_n_4 ;
  wire \oDATA_reg[15]_i_1_n_5 ;
  wire \oDATA_reg[15]_i_1_n_6 ;
  wire \oDATA_reg[15]_i_1_n_7 ;
  wire \oDATA_reg[15]_i_3_n_3 ;
  wire [3:0]\oDATA_reg[16]_0 ;
  wire \oDATA_reg[19]_i_1_n_0 ;
  wire \oDATA_reg[19]_i_1_n_1 ;
  wire \oDATA_reg[19]_i_1_n_2 ;
  wire \oDATA_reg[19]_i_1_n_3 ;
  wire \oDATA_reg[19]_i_1_n_4 ;
  wire \oDATA_reg[19]_i_1_n_5 ;
  wire \oDATA_reg[19]_i_1_n_6 ;
  wire \oDATA_reg[19]_i_1_n_7 ;
  wire [3:0]\oDATA_reg[20]_0 ;
  wire \oDATA_reg[23]_i_1_n_0 ;
  wire \oDATA_reg[23]_i_1_n_1 ;
  wire \oDATA_reg[23]_i_1_n_2 ;
  wire \oDATA_reg[23]_i_1_n_3 ;
  wire \oDATA_reg[23]_i_1_n_4 ;
  wire \oDATA_reg[23]_i_1_n_5 ;
  wire \oDATA_reg[23]_i_1_n_6 ;
  wire \oDATA_reg[23]_i_1_n_7 ;
  wire [3:0]\oDATA_reg[24]_0 ;
  wire [1:0]\oDATA_reg[26]_0 ;
  wire [25:0]\oDATA_reg[26]_1 ;
  wire \oDATA_reg[26]_i_1_n_2 ;
  wire \oDATA_reg[26]_i_1_n_3 ;
  wire \oDATA_reg[26]_i_1_n_5 ;
  wire \oDATA_reg[26]_i_1_n_6 ;
  wire \oDATA_reg[26]_i_1_n_7 ;
  wire \oDATA_reg[3]_i_1_n_0 ;
  wire \oDATA_reg[3]_i_1_n_1 ;
  wire \oDATA_reg[3]_i_1_n_2 ;
  wire \oDATA_reg[3]_i_1_n_3 ;
  wire \oDATA_reg[3]_i_1_n_4 ;
  wire \oDATA_reg[3]_i_1_n_5 ;
  wire \oDATA_reg[3]_i_1_n_6 ;
  wire \oDATA_reg[3]_i_1_n_7 ;
  wire \oDATA_reg[3]_i_2_n_0 ;
  wire \oDATA_reg[3]_i_2_n_1 ;
  wire \oDATA_reg[3]_i_2_n_2 ;
  wire \oDATA_reg[3]_i_2_n_3 ;
  wire \oDATA_reg[7]_i_1_n_0 ;
  wire \oDATA_reg[7]_i_1_n_1 ;
  wire \oDATA_reg[7]_i_1_n_2 ;
  wire \oDATA_reg[7]_i_1_n_3 ;
  wire \oDATA_reg[7]_i_1_n_4 ;
  wire \oDATA_reg[7]_i_1_n_5 ;
  wire \oDATA_reg[7]_i_1_n_6 ;
  wire \oDATA_reg[7]_i_1_n_7 ;
  wire \oDATA_reg[7]_i_2_n_0 ;
  wire \oDATA_reg[7]_i_2_n_1 ;
  wire \oDATA_reg[7]_i_2_n_2 ;
  wire \oDATA_reg[7]_i_2_n_3 ;
  wire [3:0]\oDATA_reg[9]_0 ;
  wire \oDATA_reg_n_0_[0] ;
  wire \oDATA_reg_n_0_[10] ;
  wire \oDATA_reg_n_0_[11] ;
  wire \oDATA_reg_n_0_[12] ;
  wire \oDATA_reg_n_0_[13] ;
  wire \oDATA_reg_n_0_[14] ;
  wire \oDATA_reg_n_0_[15] ;
  wire \oDATA_reg_n_0_[16] ;
  wire \oDATA_reg_n_0_[17] ;
  wire \oDATA_reg_n_0_[18] ;
  wire \oDATA_reg_n_0_[19] ;
  wire \oDATA_reg_n_0_[1] ;
  wire \oDATA_reg_n_0_[20] ;
  wire \oDATA_reg_n_0_[21] ;
  wire \oDATA_reg_n_0_[22] ;
  wire \oDATA_reg_n_0_[23] ;
  wire \oDATA_reg_n_0_[24] ;
  wire \oDATA_reg_n_0_[25] ;
  wire \oDATA_reg_n_0_[26] ;
  wire \oDATA_reg_n_0_[2] ;
  wire \oDATA_reg_n_0_[3] ;
  wire \oDATA_reg_n_0_[4] ;
  wire \oDATA_reg_n_0_[5] ;
  wire \oDATA_reg_n_0_[6] ;
  wire \oDATA_reg_n_0_[9] ;
  wire [3:1]\NLW_oDATA_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_oDATA_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_oDATA_reg[26]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_oDATA_reg[26]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[5]_i_2 
       (.I0(iRSTn_IBUF),
        .O(iRSTn));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[11]_i_2 
       (.I0(P[11]),
        .I1(iCLR_IBUF),
        .O(\oDATA[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[11]_i_3 
       (.I0(P[10]),
        .I1(iCLR_IBUF),
        .O(\oDATA[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[11]_i_4 
       (.I0(P[9]),
        .I1(iCLR_IBUF),
        .O(\oDATA[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[11]_i_5 
       (.I0(P[8]),
        .I1(iCLR_IBUF),
        .O(\oDATA[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[11]_i_6 
       (.I0(P[11]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [11]),
        .O(\oDATA[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[11]_i_7 
       (.I0(P[10]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [10]),
        .O(\oDATA[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[11]_i_8 
       (.I0(P[9]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [9]),
        .O(\oDATA[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[11]_i_9 
       (.I0(P[8]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [8]),
        .O(\oDATA[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[15]_i_2__0 
       (.I0(P[15]),
        .I1(iCLR_IBUF),
        .O(\oDATA[15]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[15]_i_3 
       (.I0(P[14]),
        .I1(iCLR_IBUF),
        .O(\oDATA[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[15]_i_4 
       (.I0(P[13]),
        .I1(iCLR_IBUF),
        .O(\oDATA[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[15]_i_5 
       (.I0(P[12]),
        .I1(iCLR_IBUF),
        .O(\oDATA[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[15]_i_6 
       (.I0(P[15]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [15]),
        .O(\oDATA[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[15]_i_7 
       (.I0(P[14]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [14]),
        .O(\oDATA[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[15]_i_8 
       (.I0(P[13]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [13]),
        .O(\oDATA[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[15]_i_9 
       (.I0(P[12]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [12]),
        .O(\oDATA[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[19]_i_2 
       (.I0(P[19]),
        .I1(iCLR_IBUF),
        .O(\oDATA[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[19]_i_3__0 
       (.I0(P[18]),
        .I1(iCLR_IBUF),
        .O(\oDATA[19]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[19]_i_4__0 
       (.I0(P[17]),
        .I1(iCLR_IBUF),
        .O(\oDATA[19]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[19]_i_5__0 
       (.I0(P[16]),
        .I1(iCLR_IBUF),
        .O(\oDATA[19]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[19]_i_6 
       (.I0(P[19]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [19]),
        .O(\oDATA[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[19]_i_7 
       (.I0(P[18]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [18]),
        .O(\oDATA[19]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[19]_i_8 
       (.I0(P[17]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [17]),
        .O(\oDATA[19]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[19]_i_9 
       (.I0(P[16]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [16]),
        .O(\oDATA[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[23]_i_2 
       (.I0(P[23]),
        .I1(iCLR_IBUF),
        .O(\oDATA[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[23]_i_3 
       (.I0(P[22]),
        .I1(iCLR_IBUF),
        .O(\oDATA[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[23]_i_4 
       (.I0(P[21]),
        .I1(iCLR_IBUF),
        .O(\oDATA[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[23]_i_5 
       (.I0(P[20]),
        .I1(iCLR_IBUF),
        .O(\oDATA[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[23]_i_6 
       (.I0(P[23]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [23]),
        .O(\oDATA[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[23]_i_7 
       (.I0(P[22]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [22]),
        .O(\oDATA[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[23]_i_8 
       (.I0(P[21]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [21]),
        .O(\oDATA[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[23]_i_9 
       (.I0(P[20]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [20]),
        .O(\oDATA[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[26]_i_2 
       (.I0(P[25]),
        .I1(iCLR_IBUF),
        .O(\oDATA[26]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[26]_i_3 
       (.I0(P[24]),
        .I1(iCLR_IBUF),
        .O(\oDATA[26]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[26]_i_4 
       (.I0(P[25]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [25]),
        .O(\oDATA[26]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[26]_i_5 
       (.I0(P[25]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [25]),
        .O(\oDATA[26]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[26]_i_6 
       (.I0(P[24]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [24]),
        .O(\oDATA[26]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[3]_i_2 
       (.I0(P[3]),
        .I1(iCLR_IBUF),
        .O(\oDATA[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \oDATA[3]_i_3 
       (.I0(\oDATA[3]_i_4_n_0 ),
        .I1(\oDATA[3]_i_5_n_0 ),
        .I2(\oDATA[3]_i_6__0_n_0 ),
        .I3(\oDATA_reg_n_0_[9] ),
        .O(\oDATA[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[3]_i_3__0 
       (.I0(P[2]),
        .I1(iCLR_IBUF),
        .O(\oDATA[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \oDATA[3]_i_4 
       (.I0(\oDATA_reg_n_0_[26] ),
        .I1(\oDATA_reg_n_0_[14] ),
        .I2(\oDATA_reg_n_0_[11] ),
        .I3(\oDATA_reg_n_0_[24] ),
        .I4(\oDATA_reg_n_0_[9] ),
        .I5(\oDATA_reg_n_0_[21] ),
        .O(\oDATA[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[3]_i_4__0 
       (.I0(P[1]),
        .I1(iCLR_IBUF),
        .O(\oDATA[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \oDATA[3]_i_5 
       (.I0(\oDATA_reg_n_0_[15] ),
        .I1(\oDATA_reg_n_0_[19] ),
        .I2(\oDATA_reg_n_0_[12] ),
        .I3(\oDATA_reg_n_0_[16] ),
        .I4(\oDATA[3]_i_7__0_n_0 ),
        .I5(\oDATA[3]_i_8__0_n_0 ),
        .O(\oDATA[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[3]_i_5__0 
       (.I0(P[0]),
        .I1(iCLR_IBUF),
        .O(\oDATA[3]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[3]_i_6 
       (.I0(P[3]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [3]),
        .O(\oDATA[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \oDATA[3]_i_6__0 
       (.I0(oDATA_IM_LOW_TW[8]),
        .I1(\oDATA[3]_i_9__0_n_0 ),
        .I2(\oDATA_reg_n_0_[0] ),
        .I3(oDATA_IM_LOW_TW[7]),
        .I4(\oDATA_reg_n_0_[6] ),
        .O(\oDATA[3]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[3]_i_7 
       (.I0(P[2]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [2]),
        .O(\oDATA[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \oDATA[3]_i_7__0 
       (.I0(\oDATA_reg_n_0_[23] ),
        .I1(\oDATA_reg_n_0_[13] ),
        .I2(\oDATA_reg_n_0_[17] ),
        .I3(\oDATA_reg_n_0_[10] ),
        .O(\oDATA[3]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[3]_i_8 
       (.I0(P[1]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [1]),
        .O(\oDATA[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \oDATA[3]_i_8__0 
       (.I0(\oDATA_reg_n_0_[20] ),
        .I1(\oDATA_reg_n_0_[22] ),
        .I2(\oDATA_reg_n_0_[18] ),
        .I3(\oDATA_reg_n_0_[25] ),
        .O(\oDATA[3]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[3]_i_9 
       (.I0(P[0]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [0]),
        .O(\oDATA[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \oDATA[3]_i_9__0 
       (.I0(\oDATA_reg_n_0_[5] ),
        .I1(\oDATA_reg_n_0_[3] ),
        .I2(\oDATA_reg_n_0_[4] ),
        .I3(\oDATA_reg_n_0_[26] ),
        .I4(\oDATA_reg_n_0_[2] ),
        .I5(\oDATA_reg_n_0_[1] ),
        .O(\oDATA[3]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[7]_i_2 
       (.I0(P[7]),
        .I1(iCLR_IBUF),
        .O(\oDATA[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[7]_i_3 
       (.I0(P[6]),
        .I1(iCLR_IBUF),
        .O(\oDATA[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[7]_i_4 
       (.I0(P[5]),
        .I1(iCLR_IBUF),
        .O(\oDATA[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[7]_i_5 
       (.I0(P[4]),
        .I1(iCLR_IBUF),
        .O(\oDATA[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[7]_i_6 
       (.I0(P[7]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [7]),
        .O(\oDATA[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[7]_i_7 
       (.I0(P[6]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [6]),
        .O(\oDATA[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[7]_i_8 
       (.I0(P[5]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [5]),
        .O(\oDATA[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \oDATA[7]_i_9 
       (.I0(P[4]),
        .I1(iCLR_IBUF),
        .I2(\oDATA_reg[26]_1 [4]),
        .O(\oDATA[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[3]_i_1_n_7 ),
        .Q(\oDATA_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[11]_i_1_n_5 ),
        .Q(\oDATA_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[11]_i_1_n_4 ),
        .Q(\oDATA_reg_n_0_[11] ));
  CARRY4 \oDATA_reg[11]_i_1 
       (.CI(\oDATA_reg[7]_i_1_n_0 ),
        .CO({\oDATA_reg[11]_i_1_n_0 ,\oDATA_reg[11]_i_1_n_1 ,\oDATA_reg[11]_i_1_n_2 ,\oDATA_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\oDATA[11]_i_2_n_0 ,\oDATA[11]_i_3_n_0 ,\oDATA[11]_i_4_n_0 ,\oDATA[11]_i_5_n_0 }),
        .O({\oDATA_reg[11]_i_1_n_4 ,\oDATA_reg[11]_i_1_n_5 ,\oDATA_reg[11]_i_1_n_6 ,\oDATA_reg[11]_i_1_n_7 }),
        .S({\oDATA[11]_i_6_n_0 ,\oDATA[11]_i_7_n_0 ,\oDATA[11]_i_8_n_0 ,\oDATA[11]_i_9_n_0 }));
  CARRY4 \oDATA_reg[11]_i_2 
       (.CI(\oDATA_reg[7]_i_2_n_0 ),
        .CO({\oDATA_reg[11]_i_2_n_0 ,\oDATA_reg[11]_i_2_n_1 ,\oDATA_reg[11]_i_2_n_2 ,\oDATA_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\oDATA_reg[20]_0 ),
        .S({\oDATA_reg_n_0_[20] ,\oDATA_reg_n_0_[19] ,\oDATA_reg_n_0_[18] ,\oDATA_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[15]_i_1_n_7 ),
        .Q(\oDATA_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[15]_i_1_n_6 ),
        .Q(\oDATA_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[15]_i_1_n_5 ),
        .Q(\oDATA_reg_n_0_[14] ));
  CARRY4 \oDATA_reg[14]_i_4 
       (.CI(\oDATA_reg[11]_i_2_n_0 ),
        .CO({\oDATA_reg[14]_i_4_n_0 ,\oDATA_reg[14]_i_4_n_1 ,\oDATA_reg[14]_i_4_n_2 ,\oDATA_reg[14]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\oDATA_reg[24]_0 ),
        .S({\oDATA_reg_n_0_[24] ,\oDATA_reg_n_0_[23] ,\oDATA_reg_n_0_[22] ,\oDATA_reg_n_0_[21] }));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[15]_i_1_n_4 ),
        .Q(\oDATA_reg_n_0_[15] ));
  CARRY4 \oDATA_reg[15]_i_1 
       (.CI(\oDATA_reg[11]_i_1_n_0 ),
        .CO({\oDATA_reg[15]_i_1_n_0 ,\oDATA_reg[15]_i_1_n_1 ,\oDATA_reg[15]_i_1_n_2 ,\oDATA_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\oDATA[15]_i_2__0_n_0 ,\oDATA[15]_i_3_n_0 ,\oDATA[15]_i_4_n_0 ,\oDATA[15]_i_5_n_0 }),
        .O({\oDATA_reg[15]_i_1_n_4 ,\oDATA_reg[15]_i_1_n_5 ,\oDATA_reg[15]_i_1_n_6 ,\oDATA_reg[15]_i_1_n_7 }),
        .S({\oDATA[15]_i_6_n_0 ,\oDATA[15]_i_7_n_0 ,\oDATA[15]_i_8_n_0 ,\oDATA[15]_i_9_n_0 }));
  CARRY4 \oDATA_reg[15]_i_3 
       (.CI(\oDATA_reg[14]_i_4_n_0 ),
        .CO({\NLW_oDATA_reg[15]_i_3_CO_UNCONNECTED [3:1],\oDATA_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_oDATA_reg[15]_i_3_O_UNCONNECTED [3:2],\oDATA_reg[26]_0 }),
        .S({1'b0,1'b0,\oDATA_reg_n_0_[26] ,\oDATA_reg_n_0_[25] }));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[19]_i_1_n_7 ),
        .Q(\oDATA_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[19]_i_1_n_6 ),
        .Q(\oDATA_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[19]_i_1_n_5 ),
        .Q(\oDATA_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[19]_i_1_n_4 ),
        .Q(\oDATA_reg_n_0_[19] ));
  CARRY4 \oDATA_reg[19]_i_1 
       (.CI(\oDATA_reg[15]_i_1_n_0 ),
        .CO({\oDATA_reg[19]_i_1_n_0 ,\oDATA_reg[19]_i_1_n_1 ,\oDATA_reg[19]_i_1_n_2 ,\oDATA_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\oDATA[19]_i_2_n_0 ,\oDATA[19]_i_3__0_n_0 ,\oDATA[19]_i_4__0_n_0 ,\oDATA[19]_i_5__0_n_0 }),
        .O({\oDATA_reg[19]_i_1_n_4 ,\oDATA_reg[19]_i_1_n_5 ,\oDATA_reg[19]_i_1_n_6 ,\oDATA_reg[19]_i_1_n_7 }),
        .S({\oDATA[19]_i_6_n_0 ,\oDATA[19]_i_7_n_0 ,\oDATA[19]_i_8_n_0 ,\oDATA[19]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[3]_i_1_n_6 ),
        .Q(\oDATA_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[23]_i_1_n_7 ),
        .Q(\oDATA_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[23]_i_1_n_6 ),
        .Q(\oDATA_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[23]_i_1_n_5 ),
        .Q(\oDATA_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[23]_i_1_n_4 ),
        .Q(\oDATA_reg_n_0_[23] ));
  CARRY4 \oDATA_reg[23]_i_1 
       (.CI(\oDATA_reg[19]_i_1_n_0 ),
        .CO({\oDATA_reg[23]_i_1_n_0 ,\oDATA_reg[23]_i_1_n_1 ,\oDATA_reg[23]_i_1_n_2 ,\oDATA_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\oDATA[23]_i_2_n_0 ,\oDATA[23]_i_3_n_0 ,\oDATA[23]_i_4_n_0 ,\oDATA[23]_i_5_n_0 }),
        .O({\oDATA_reg[23]_i_1_n_4 ,\oDATA_reg[23]_i_1_n_5 ,\oDATA_reg[23]_i_1_n_6 ,\oDATA_reg[23]_i_1_n_7 }),
        .S({\oDATA[23]_i_6_n_0 ,\oDATA[23]_i_7_n_0 ,\oDATA[23]_i_8_n_0 ,\oDATA[23]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[26]_i_1_n_7 ),
        .Q(\oDATA_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[26]_i_1_n_6 ),
        .Q(\oDATA_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[26]_i_1_n_5 ),
        .Q(\oDATA_reg_n_0_[26] ));
  CARRY4 \oDATA_reg[26]_i_1 
       (.CI(\oDATA_reg[23]_i_1_n_0 ),
        .CO({\NLW_oDATA_reg[26]_i_1_CO_UNCONNECTED [3:2],\oDATA_reg[26]_i_1_n_2 ,\oDATA_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\oDATA[26]_i_2_n_0 ,\oDATA[26]_i_3_n_0 }),
        .O({\NLW_oDATA_reg[26]_i_1_O_UNCONNECTED [3],\oDATA_reg[26]_i_1_n_5 ,\oDATA_reg[26]_i_1_n_6 ,\oDATA_reg[26]_i_1_n_7 }),
        .S({1'b0,\oDATA[26]_i_4_n_0 ,\oDATA[26]_i_5_n_0 ,\oDATA[26]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[3]_i_1_n_5 ),
        .Q(\oDATA_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[3]_i_1_n_4 ),
        .Q(\oDATA_reg_n_0_[3] ));
  CARRY4 \oDATA_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\oDATA_reg[3]_i_1_n_0 ,\oDATA_reg[3]_i_1_n_1 ,\oDATA_reg[3]_i_1_n_2 ,\oDATA_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\oDATA[3]_i_2_n_0 ,\oDATA[3]_i_3__0_n_0 ,\oDATA[3]_i_4__0_n_0 ,\oDATA[3]_i_5__0_n_0 }),
        .O({\oDATA_reg[3]_i_1_n_4 ,\oDATA_reg[3]_i_1_n_5 ,\oDATA_reg[3]_i_1_n_6 ,\oDATA_reg[3]_i_1_n_7 }),
        .S({\oDATA[3]_i_6_n_0 ,\oDATA[3]_i_7_n_0 ,\oDATA[3]_i_8_n_0 ,\oDATA[3]_i_9_n_0 }));
  CARRY4 \oDATA_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\oDATA_reg[3]_i_2_n_0 ,\oDATA_reg[3]_i_2_n_1 ,\oDATA_reg[3]_i_2_n_2 ,\oDATA_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\oDATA_reg_n_0_[9] }),
        .O(\oDATA_reg[9]_0 ),
        .S({\oDATA_reg_n_0_[12] ,\oDATA_reg_n_0_[11] ,\oDATA_reg_n_0_[10] ,\oDATA[3]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[7]_i_1_n_7 ),
        .Q(\oDATA_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[7]_i_1_n_6 ),
        .Q(\oDATA_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[7]_i_1_n_5 ),
        .Q(\oDATA_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[7]_i_1_n_4 ),
        .Q(oDATA_IM_LOW_TW[7]));
  CARRY4 \oDATA_reg[7]_i_1 
       (.CI(\oDATA_reg[3]_i_1_n_0 ),
        .CO({\oDATA_reg[7]_i_1_n_0 ,\oDATA_reg[7]_i_1_n_1 ,\oDATA_reg[7]_i_1_n_2 ,\oDATA_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\oDATA[7]_i_2_n_0 ,\oDATA[7]_i_3_n_0 ,\oDATA[7]_i_4_n_0 ,\oDATA[7]_i_5_n_0 }),
        .O({\oDATA_reg[7]_i_1_n_4 ,\oDATA_reg[7]_i_1_n_5 ,\oDATA_reg[7]_i_1_n_6 ,\oDATA_reg[7]_i_1_n_7 }),
        .S({\oDATA[7]_i_6_n_0 ,\oDATA[7]_i_7_n_0 ,\oDATA[7]_i_8_n_0 ,\oDATA[7]_i_9_n_0 }));
  CARRY4 \oDATA_reg[7]_i_2 
       (.CI(\oDATA_reg[3]_i_2_n_0 ),
        .CO({\oDATA_reg[7]_i_2_n_0 ,\oDATA_reg[7]_i_2_n_1 ,\oDATA_reg[7]_i_2_n_2 ,\oDATA_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\oDATA_reg[16]_0 ),
        .S({\oDATA_reg_n_0_[16] ,\oDATA_reg_n_0_[15] ,\oDATA_reg_n_0_[14] ,\oDATA_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[11]_i_1_n_7 ),
        .Q(oDATA_IM_LOW_TW[8]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(iRSTn),
        .D(\oDATA_reg[11]_i_1_n_6 ),
        .Q(\oDATA_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG__parameterized2_8
   (O,
    \oDATA_reg[16]_0 ,
    \oDATA_reg[20]_0 ,
    \oDATA_reg[24]_0 ,
    \oDATA_reg[26]_0 ,
    iCLR_IBUF,
    CO,
    oDATA_re_tmp0_out,
    E,
    CLK,
    \oDATA_reg[0]_0 );
  output [3:0]O;
  output [3:0]\oDATA_reg[16]_0 ;
  output [3:0]\oDATA_reg[20]_0 ;
  output [3:0]\oDATA_reg[24]_0 ;
  output [1:0]\oDATA_reg[26]_0 ;
  input iCLR_IBUF;
  input [0:0]CO;
  input [25:0]oDATA_re_tmp0_out;
  input [0:0]E;
  input CLK;
  input \oDATA_reg[0]_0 ;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]E;
  wire [3:0]O;
  wire iCLR_IBUF;
  wire \oDATA[0]_i_1__8_n_0 ;
  wire \oDATA[10]_i_1__2_n_0 ;
  wire \oDATA[11]_i_1__2_n_0 ;
  wire \oDATA[12]_i_1__2_n_0 ;
  wire \oDATA[13]_i_1__2_n_0 ;
  wire \oDATA[14]_i_1__2_n_0 ;
  wire \oDATA[15]_i_1__2_n_0 ;
  wire \oDATA[16]_i_1__0_n_0 ;
  wire \oDATA[17]_i_1__0_n_0 ;
  wire \oDATA[18]_i_1__0_n_0 ;
  wire \oDATA[19]_i_1__0_n_0 ;
  wire \oDATA[19]_i_3_n_0 ;
  wire \oDATA[19]_i_4_n_0 ;
  wire \oDATA[19]_i_5_n_0 ;
  wire \oDATA[19]_i_6__0_n_0 ;
  wire \oDATA[19]_i_7__0_n_0 ;
  wire \oDATA[19]_i_8__0_n_0 ;
  wire \oDATA[19]_i_9__0_n_0 ;
  wire \oDATA[1]_i_1__2_n_0 ;
  wire \oDATA[20]_i_1__0_n_0 ;
  wire \oDATA[21]_i_1__0_n_0 ;
  wire \oDATA[22]_i_1__0_n_0 ;
  wire \oDATA[23]_i_1__0_n_0 ;
  wire \oDATA[24]_i_1__0_n_0 ;
  wire \oDATA[25]_i_1__0_n_0 ;
  wire \oDATA[26]_i_1__0_n_0 ;
  wire \oDATA[2]_i_1__2_n_0 ;
  wire \oDATA[3]_i_1__2_n_0 ;
  wire \oDATA[4]_i_1__2_n_0 ;
  wire \oDATA[5]_i_1__2_n_0 ;
  wire \oDATA[6]_i_1__2_n_0 ;
  wire \oDATA[7]_i_1__2_n_0 ;
  wire \oDATA[8]_i_1__2_n_0 ;
  wire \oDATA[9]_i_1__2_n_0 ;
  wire [8:7]oDATA_RE_LOW_TW;
  wire [25:0]oDATA_re_tmp0_out;
  wire \oDATA_reg[0]_0 ;
  wire [3:0]\oDATA_reg[16]_0 ;
  wire \oDATA_reg[19]_i_2_n_0 ;
  wire \oDATA_reg[19]_i_2_n_1 ;
  wire \oDATA_reg[19]_i_2_n_2 ;
  wire \oDATA_reg[19]_i_2_n_3 ;
  wire [3:0]\oDATA_reg[20]_0 ;
  wire \oDATA_reg[23]_i_2_n_0 ;
  wire \oDATA_reg[23]_i_2_n_1 ;
  wire \oDATA_reg[23]_i_2_n_2 ;
  wire \oDATA_reg[23]_i_2_n_3 ;
  wire [3:0]\oDATA_reg[24]_0 ;
  wire [1:0]\oDATA_reg[26]_0 ;
  wire \oDATA_reg[27]_i_2_n_0 ;
  wire \oDATA_reg[27]_i_2_n_1 ;
  wire \oDATA_reg[27]_i_2_n_2 ;
  wire \oDATA_reg[27]_i_2_n_3 ;
  wire \oDATA_reg[30]_i_4_n_0 ;
  wire \oDATA_reg[30]_i_4_n_1 ;
  wire \oDATA_reg[30]_i_4_n_2 ;
  wire \oDATA_reg[30]_i_4_n_3 ;
  wire \oDATA_reg[31]_i_3_n_3 ;
  wire \oDATA_reg_n_0_[0] ;
  wire \oDATA_reg_n_0_[1] ;
  wire \oDATA_reg_n_0_[2] ;
  wire \oDATA_reg_n_0_[3] ;
  wire \oDATA_reg_n_0_[4] ;
  wire \oDATA_reg_n_0_[5] ;
  wire \oDATA_reg_n_0_[6] ;
  wire [17:0]p_0_in;
  wire [3:1]\NLW_oDATA_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_oDATA_reg[31]_i_3_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[0]_i_1__8 
       (.I0(oDATA_re_tmp0_out[0]),
        .I1(iCLR_IBUF),
        .O(\oDATA[0]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[10]_i_1__2 
       (.I0(oDATA_re_tmp0_out[10]),
        .I1(iCLR_IBUF),
        .O(\oDATA[10]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[11]_i_1__2 
       (.I0(oDATA_re_tmp0_out[11]),
        .I1(iCLR_IBUF),
        .O(\oDATA[11]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[12]_i_1__2 
       (.I0(oDATA_re_tmp0_out[12]),
        .I1(iCLR_IBUF),
        .O(\oDATA[12]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[13]_i_1__2 
       (.I0(oDATA_re_tmp0_out[13]),
        .I1(iCLR_IBUF),
        .O(\oDATA[13]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[14]_i_1__2 
       (.I0(oDATA_re_tmp0_out[14]),
        .I1(iCLR_IBUF),
        .O(\oDATA[14]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[15]_i_1__2 
       (.I0(oDATA_re_tmp0_out[15]),
        .I1(iCLR_IBUF),
        .O(\oDATA[15]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[16]_i_1__0 
       (.I0(oDATA_re_tmp0_out[16]),
        .I1(iCLR_IBUF),
        .O(\oDATA[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[17]_i_1__0 
       (.I0(oDATA_re_tmp0_out[17]),
        .I1(iCLR_IBUF),
        .O(\oDATA[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[18]_i_1__0 
       (.I0(oDATA_re_tmp0_out[18]),
        .I1(iCLR_IBUF),
        .O(\oDATA[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[19]_i_1__0 
       (.I0(oDATA_re_tmp0_out[19]),
        .I1(iCLR_IBUF),
        .O(\oDATA[19]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \oDATA[19]_i_3 
       (.I0(\oDATA[19]_i_4_n_0 ),
        .I1(\oDATA[19]_i_5_n_0 ),
        .I2(\oDATA[19]_i_6__0_n_0 ),
        .I3(p_0_in[0]),
        .O(\oDATA[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \oDATA[19]_i_4 
       (.I0(p_0_in[17]),
        .I1(p_0_in[5]),
        .I2(p_0_in[2]),
        .I3(p_0_in[15]),
        .I4(p_0_in[0]),
        .I5(p_0_in[12]),
        .O(\oDATA[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \oDATA[19]_i_5 
       (.I0(p_0_in[6]),
        .I1(p_0_in[10]),
        .I2(p_0_in[3]),
        .I3(p_0_in[7]),
        .I4(\oDATA[19]_i_7__0_n_0 ),
        .I5(\oDATA[19]_i_8__0_n_0 ),
        .O(\oDATA[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \oDATA[19]_i_6__0 
       (.I0(oDATA_RE_LOW_TW[8]),
        .I1(\oDATA[19]_i_9__0_n_0 ),
        .I2(\oDATA_reg_n_0_[0] ),
        .I3(oDATA_RE_LOW_TW[7]),
        .I4(\oDATA_reg_n_0_[6] ),
        .O(\oDATA[19]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \oDATA[19]_i_7__0 
       (.I0(p_0_in[14]),
        .I1(p_0_in[4]),
        .I2(p_0_in[8]),
        .I3(p_0_in[1]),
        .O(\oDATA[19]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \oDATA[19]_i_8__0 
       (.I0(p_0_in[11]),
        .I1(p_0_in[13]),
        .I2(p_0_in[9]),
        .I3(p_0_in[16]),
        .O(\oDATA[19]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \oDATA[19]_i_9__0 
       (.I0(\oDATA_reg_n_0_[5] ),
        .I1(\oDATA_reg_n_0_[3] ),
        .I2(\oDATA_reg_n_0_[4] ),
        .I3(p_0_in[17]),
        .I4(\oDATA_reg_n_0_[2] ),
        .I5(\oDATA_reg_n_0_[1] ),
        .O(\oDATA[19]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[1]_i_1__2 
       (.I0(oDATA_re_tmp0_out[1]),
        .I1(iCLR_IBUF),
        .O(\oDATA[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[20]_i_1__0 
       (.I0(oDATA_re_tmp0_out[20]),
        .I1(iCLR_IBUF),
        .O(\oDATA[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[21]_i_1__0 
       (.I0(oDATA_re_tmp0_out[21]),
        .I1(iCLR_IBUF),
        .O(\oDATA[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[22]_i_1__0 
       (.I0(oDATA_re_tmp0_out[22]),
        .I1(iCLR_IBUF),
        .O(\oDATA[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[23]_i_1__0 
       (.I0(oDATA_re_tmp0_out[23]),
        .I1(iCLR_IBUF),
        .O(\oDATA[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[24]_i_1__0 
       (.I0(oDATA_re_tmp0_out[24]),
        .I1(iCLR_IBUF),
        .O(\oDATA[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[25]_i_1__0 
       (.I0(oDATA_re_tmp0_out[25]),
        .I1(iCLR_IBUF),
        .O(\oDATA[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \oDATA[26]_i_1__0 
       (.I0(iCLR_IBUF),
        .I1(CO),
        .O(\oDATA[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[2]_i_1__2 
       (.I0(oDATA_re_tmp0_out[2]),
        .I1(iCLR_IBUF),
        .O(\oDATA[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[3]_i_1__2 
       (.I0(oDATA_re_tmp0_out[3]),
        .I1(iCLR_IBUF),
        .O(\oDATA[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[4]_i_1__2 
       (.I0(oDATA_re_tmp0_out[4]),
        .I1(iCLR_IBUF),
        .O(\oDATA[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[5]_i_1__2 
       (.I0(oDATA_re_tmp0_out[5]),
        .I1(iCLR_IBUF),
        .O(\oDATA[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[6]_i_1__2 
       (.I0(oDATA_re_tmp0_out[6]),
        .I1(iCLR_IBUF),
        .O(\oDATA[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[7]_i_1__2 
       (.I0(oDATA_re_tmp0_out[7]),
        .I1(iCLR_IBUF),
        .O(\oDATA[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[8]_i_1__2 
       (.I0(oDATA_re_tmp0_out[8]),
        .I1(iCLR_IBUF),
        .O(\oDATA[8]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \oDATA[9]_i_1__2 
       (.I0(oDATA_re_tmp0_out[9]),
        .I1(iCLR_IBUF),
        .O(\oDATA[9]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[0]_i_1__8_n_0 ),
        .Q(\oDATA_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[10]_i_1__2_n_0 ),
        .Q(p_0_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[11]_i_1__2_n_0 ),
        .Q(p_0_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[12]_i_1__2_n_0 ),
        .Q(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[13]_i_1__2_n_0 ),
        .Q(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[14]_i_1__2_n_0 ),
        .Q(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[15]_i_1__2_n_0 ),
        .Q(p_0_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[16]_i_1__0_n_0 ),
        .Q(p_0_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[17]_i_1__0_n_0 ),
        .Q(p_0_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[18]_i_1__0_n_0 ),
        .Q(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[19]_i_1__0_n_0 ),
        .Q(p_0_in[10]));
  CARRY4 \oDATA_reg[19]_i_2 
       (.CI(1'b0),
        .CO({\oDATA_reg[19]_i_2_n_0 ,\oDATA_reg[19]_i_2_n_1 ,\oDATA_reg[19]_i_2_n_2 ,\oDATA_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[0]}),
        .O(O),
        .S({p_0_in[3:1],\oDATA[19]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[1]_i_1__2_n_0 ),
        .Q(\oDATA_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[20]_i_1__0_n_0 ),
        .Q(p_0_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[21]_i_1__0_n_0 ),
        .Q(p_0_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[22]_i_1__0_n_0 ),
        .Q(p_0_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[23]_i_1__0_n_0 ),
        .Q(p_0_in[14]));
  CARRY4 \oDATA_reg[23]_i_2 
       (.CI(\oDATA_reg[19]_i_2_n_0 ),
        .CO({\oDATA_reg[23]_i_2_n_0 ,\oDATA_reg[23]_i_2_n_1 ,\oDATA_reg[23]_i_2_n_2 ,\oDATA_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\oDATA_reg[16]_0 ),
        .S(p_0_in[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[24]_i_1__0_n_0 ),
        .Q(p_0_in[15]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[25]_i_1__0_n_0 ),
        .Q(p_0_in[16]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[26]_i_1__0_n_0 ),
        .Q(p_0_in[17]));
  CARRY4 \oDATA_reg[27]_i_2 
       (.CI(\oDATA_reg[23]_i_2_n_0 ),
        .CO({\oDATA_reg[27]_i_2_n_0 ,\oDATA_reg[27]_i_2_n_1 ,\oDATA_reg[27]_i_2_n_2 ,\oDATA_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\oDATA_reg[20]_0 ),
        .S(p_0_in[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[2]_i_1__2_n_0 ),
        .Q(\oDATA_reg_n_0_[2] ));
  CARRY4 \oDATA_reg[30]_i_4 
       (.CI(\oDATA_reg[27]_i_2_n_0 ),
        .CO({\oDATA_reg[30]_i_4_n_0 ,\oDATA_reg[30]_i_4_n_1 ,\oDATA_reg[30]_i_4_n_2 ,\oDATA_reg[30]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\oDATA_reg[24]_0 ),
        .S(p_0_in[15:12]));
  CARRY4 \oDATA_reg[31]_i_3 
       (.CI(\oDATA_reg[30]_i_4_n_0 ),
        .CO({\NLW_oDATA_reg[31]_i_3_CO_UNCONNECTED [3:1],\oDATA_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_oDATA_reg[31]_i_3_O_UNCONNECTED [3:2],\oDATA_reg[26]_0 }),
        .S({1'b0,1'b0,p_0_in[17:16]}));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[3]_i_1__2_n_0 ),
        .Q(\oDATA_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[4]_i_1__2_n_0 ),
        .Q(\oDATA_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[5]_i_1__2_n_0 ),
        .Q(\oDATA_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[6]_i_1__2_n_0 ),
        .Q(\oDATA_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[7]_i_1__2_n_0 ),
        .Q(oDATA_RE_LOW_TW[7]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[8]_i_1__2_n_0 ),
        .Q(oDATA_RE_LOW_TW[8]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_0 ),
        .D(\oDATA[9]_i_1__2_n_0 ),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "D_REG" *) 
module D_REG__parameterized3
   (\oDATA_reg[16]_0 ,
    \oDATA_reg[16]_1 ,
    \oDATA_reg[31]_0 ,
    \oDATA_reg[16]_2 ,
    \oDATA_reg[16]_3 ,
    O,
    \oDATA[16]_i_2_0 ,
    \oDATA[0]_i_2_0 ,
    \oDATA_reg[0]_0 ,
    \oDATA_reg[0]_1 ,
    \oDATA[0]_i_2_1 ,
    E,
    D,
    CLK,
    \oDATA_reg[0]_2 );
  output \oDATA_reg[16]_0 ;
  output \oDATA_reg[16]_1 ;
  output [31:0]\oDATA_reg[31]_0 ;
  input [3:0]\oDATA_reg[16]_2 ;
  input [3:0]\oDATA_reg[16]_3 ;
  input [2:0]O;
  input [2:0]\oDATA[16]_i_2_0 ;
  input [3:0]\oDATA[0]_i_2_0 ;
  input [3:0]\oDATA_reg[0]_0 ;
  input [2:0]\oDATA_reg[0]_1 ;
  input [2:0]\oDATA[0]_i_2_1 ;
  input [0:0]E;
  input [31:0]D;
  input CLK;
  input \oDATA_reg[0]_2 ;

  wire CLK;
  wire [31:0]D;
  wire [0:0]E;
  wire [2:0]O;
  wire [3:0]\oDATA[0]_i_2_0 ;
  wire [2:0]\oDATA[0]_i_2_1 ;
  wire \oDATA[0]_i_5_n_0 ;
  wire \oDATA[0]_i_6_n_0 ;
  wire [2:0]\oDATA[16]_i_2_0 ;
  wire \oDATA[16]_i_5_n_0 ;
  wire \oDATA[16]_i_6_n_0 ;
  wire [3:0]\oDATA_reg[0]_0 ;
  wire [2:0]\oDATA_reg[0]_1 ;
  wire \oDATA_reg[0]_2 ;
  wire \oDATA_reg[16]_0 ;
  wire \oDATA_reg[16]_1 ;
  wire [3:0]\oDATA_reg[16]_2 ;
  wire [3:0]\oDATA_reg[16]_3 ;
  wire [31:0]\oDATA_reg[31]_0 ;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \oDATA[0]_i_2 
       (.I0(\oDATA[0]_i_5_n_0 ),
        .I1(\oDATA[0]_i_6_n_0 ),
        .I2(\oDATA[0]_i_2_0 [1]),
        .I3(\oDATA[0]_i_2_0 [2]),
        .I4(\oDATA_reg[0]_0 [3]),
        .I5(\oDATA_reg[0]_1 [2]),
        .O(\oDATA_reg[16]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \oDATA[0]_i_5 
       (.I0(\oDATA[0]_i_2_0 [3]),
        .I1(\oDATA_reg[0]_0 [0]),
        .I2(\oDATA_reg[0]_1 [0]),
        .I3(\oDATA_reg[0]_0 [1]),
        .I4(\oDATA[0]_i_2_1 [2]),
        .I5(\oDATA[0]_i_2_1 [1]),
        .O(\oDATA[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oDATA[0]_i_6 
       (.I0(\oDATA_reg[0]_0 [2]),
        .I1(\oDATA_reg[0]_1 [1]),
        .I2(\oDATA[0]_i_2_1 [0]),
        .I3(\oDATA[0]_i_2_0 [0]),
        .O(\oDATA[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \oDATA[16]_i_2 
       (.I0(\oDATA[16]_i_5_n_0 ),
        .I1(\oDATA[16]_i_6_n_0 ),
        .I2(\oDATA_reg[16]_2 [3]),
        .I3(\oDATA_reg[16]_3 [3]),
        .I4(O[2]),
        .I5(\oDATA_reg[16]_2 [2]),
        .O(\oDATA_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \oDATA[16]_i_5 
       (.I0(\oDATA_reg[16]_3 [0]),
        .I1(\oDATA[16]_i_2_0 [2]),
        .I2(\oDATA[16]_i_2_0 [1]),
        .I3(O[1]),
        .I4(\oDATA_reg[16]_3 [2]),
        .I5(\oDATA_reg[16]_3 [1]),
        .O(\oDATA[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \oDATA[16]_i_6 
       (.I0(\oDATA_reg[16]_2 [0]),
        .I1(\oDATA_reg[16]_2 [1]),
        .I2(O[0]),
        .I3(\oDATA[16]_i_2_0 [0]),
        .O(\oDATA[16]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[0]),
        .Q(\oDATA_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[10]),
        .Q(\oDATA_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[11]),
        .Q(\oDATA_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[12]),
        .Q(\oDATA_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[13]),
        .Q(\oDATA_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[14]),
        .Q(\oDATA_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[15]),
        .Q(\oDATA_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[16]),
        .Q(\oDATA_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[17]),
        .Q(\oDATA_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[18]),
        .Q(\oDATA_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[19]),
        .Q(\oDATA_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[1]),
        .Q(\oDATA_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[20]),
        .Q(\oDATA_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[21]),
        .Q(\oDATA_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[22]),
        .Q(\oDATA_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[23]),
        .Q(\oDATA_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[24]),
        .Q(\oDATA_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[25]),
        .Q(\oDATA_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[26]),
        .Q(\oDATA_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[27] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[27]),
        .Q(\oDATA_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[28] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[28]),
        .Q(\oDATA_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[29] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[29]),
        .Q(\oDATA_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[2]),
        .Q(\oDATA_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[30] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[30]),
        .Q(\oDATA_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[31] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[31]),
        .Q(\oDATA_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[3]),
        .Q(\oDATA_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[4]),
        .Q(\oDATA_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[5]),
        .Q(\oDATA_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[6]),
        .Q(\oDATA_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[7]),
        .Q(\oDATA_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[8]),
        .Q(\oDATA_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \oDATA_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(\oDATA_reg[0]_2 ),
        .D(D[9]),
        .Q(\oDATA_reg[31]_0 [9]));
endmodule

(* WL = "16" *) 
(* NotValidForBitStream *)
module FFT_Top
   (iRSTn,
    iCLK,
    iStart_INT,
    iCLR,
    oEN,
    oDATA_re,
    oDATA_im);
  input iRSTn;
  input iCLK;
  input iStart_INT;
  input iCLR;
  output oEN;
  output [15:0]oDATA_re;
  output [15:0]oDATA_im;

  wire [9:0]B;
  wire D_REG_Write_Start_1D_n_0;
  wire D_REG_Write_Start_2D_n_0;
  wire [5:0]RADDR;
  wire U_SINGLE_BF_n_0;
  wire U_SINGLE_BF_n_1;
  wire U_SINGLE_BF_n_2;
  wire U_SINGLE_BF_n_3;
  wire U_SINGLE_BF_n_4;
  wire U_SINGLE_BF_n_5;
  wire U_SINGLE_BF_n_6;
  wire U_SINGLE_BF_n_7;
  wire [6:0]WADDR;
  wire iCLK;
  wire iCLK_IBUF;
  wire iCLK_IBUF_BUFG;
  wire iCLR;
  wire iCLR_IBUF;
  wire iRSTn;
  wire iRSTn_IBUF;
  wire iStart_INT;
  wire iStart_INT_IBUF;
  wire iStart_W;
  wire [31:0]oDATA_FFT;
  wire [15:0]oDATA_im;
  wire [15:0]oDATA_im_OBUF;
  wire [15:0]oDATA_re;
  wire [15:0]oDATA_re_OBUF;
  wire oEN;
  wire oEN_OBUF;
  wire oEN_RC;
  wire oEN_WC;
  wire uMEM_R_CTRL_n_1;
  wire uMEM_R_CTRL_n_17;
  wire uMEM_R_CTRL_n_2;
  wire uMEM_R_CTRL_n_20;
  wire uMEM_R_CTRL_n_21;
  wire uMEM_R_CTRL_n_22;
  wire uMEM_R_CTRL_n_24;
  wire uMEM_R_CTRL_n_3;
  wire uMEM_R_CTRL_n_4;
  wire uMEM_R_CTRL_n_5;
  wire uMEM_R_CTRL_n_6;
  wire uMEM_R_CTRL_n_7;
  wire uMEM_R_CTRL_n_8;

initial begin
 $sdf_annotate("tb_FFT_TOP_BE_time_synth.sdf",,,,"tool_control");
end
  D_REG D_REG_Write_Start_1D
       (.CLK(iCLK_IBUF_BUFG),
        .iCLR_IBUF(iCLR_IBUF),
        .iStart_INT_IBUF(iStart_INT_IBUF),
        .\oDATA_reg[0]_0 (D_REG_Write_Start_1D_n_0),
        .\oDATA_reg[0]_1 (U_SINGLE_BF_n_0));
  D_REG_0 D_REG_Write_Start_2D
       (.CLK(iCLK_IBUF_BUFG),
        .iCLR_IBUF(iCLR_IBUF),
        .\oDATA_reg[0]_0 (D_REG_Write_Start_2D_n_0),
        .\oDATA_reg[0]_1 (D_REG_Write_Start_1D_n_0),
        .\oDATA_reg[0]_2 (U_SINGLE_BF_n_0));
  D_REG_1 D_REG_Write_Start_3D
       (.CLK(iCLK_IBUF_BUFG),
        .iStart_W(iStart_W),
        .\oDATA_reg[0]_0 (D_REG_Write_Start_2D_n_0),
        .\oDATA_reg[0]_1 (U_SINGLE_BF_n_0));
  (* CHECK_LICENSE_TYPE = "MEMORY,blk_mem_gen_v8_4_2,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
  MEMORY U_MEMORY
       (.addra(WADDR),
        .addrb({1'b0,RADDR}),
        .clka(iCLK_IBUF_BUFG),
        .clkb(iCLK_IBUF_BUFG),
        .dina(oDATA_FFT),
        .doutb({oDATA_re_OBUF,oDATA_im_OBUF}),
        .ena(oEN_WC),
        .enb(oEN_RC),
        .wea(oEN_WC));
  SINGLE_BF U_SINGLE_BF
       (.CLK(iCLK_IBUF_BUFG),
        .E(uMEM_R_CTRL_n_22),
        .Q({U_SINGLE_BF_n_2,U_SINGLE_BF_n_3,U_SINGLE_BF_n_4}),
        .comp_im_1({B[9],B[7],uMEM_R_CTRL_n_17,B[2],B[0]}),
        .comp_im_2({uMEM_R_CTRL_n_1,uMEM_R_CTRL_n_2,uMEM_R_CTRL_n_3,uMEM_R_CTRL_n_4,uMEM_R_CTRL_n_5,uMEM_R_CTRL_n_6,uMEM_R_CTRL_n_7,uMEM_R_CTRL_n_8}),
        .comp_re_2(uMEM_R_CTRL_n_24),
        .comp_re_2_0(uMEM_R_CTRL_n_20),
        .doutb({oDATA_re_OBUF,oDATA_im_OBUF}),
        .iCLR_IBUF(iCLR_IBUF),
        .iRSTn(U_SINGLE_BF_n_0),
        .iRSTn_IBUF(iRSTn_IBUF),
        .\oCNT_reg[2] (U_SINGLE_BF_n_5),
        .\oCNT_reg[2]_0 (U_SINGLE_BF_n_6),
        .\oCNT_reg[2]_1 (U_SINGLE_BF_n_7),
        .\oDATA_reg[0] (U_SINGLE_BF_n_1),
        .\oDATA_reg[0]_0 (uMEM_R_CTRL_n_21),
        .\oDATA_reg[31] (oDATA_FFT));
  BUFG iCLK_IBUF_BUFG_inst
       (.I(iCLK_IBUF),
        .O(iCLK_IBUF_BUFG));
  IBUF iCLK_IBUF_inst
       (.I(iCLK),
        .O(iCLK_IBUF));
  IBUF iCLR_IBUF_inst
       (.I(iCLR),
        .O(iCLR_IBUF));
  IBUF iRSTn_IBUF_inst
       (.I(iRSTn),
        .O(iRSTn_IBUF));
  IBUF iStart_INT_IBUF_inst
       (.I(iStart_INT),
        .O(iStart_INT_IBUF));
  OBUF \oDATA_im_OBUF[0]_inst 
       (.I(oDATA_im_OBUF[0]),
        .O(oDATA_im[0]));
  OBUF \oDATA_im_OBUF[10]_inst 
       (.I(oDATA_im_OBUF[10]),
        .O(oDATA_im[10]));
  OBUF \oDATA_im_OBUF[11]_inst 
       (.I(oDATA_im_OBUF[11]),
        .O(oDATA_im[11]));
  OBUF \oDATA_im_OBUF[12]_inst 
       (.I(oDATA_im_OBUF[12]),
        .O(oDATA_im[12]));
  OBUF \oDATA_im_OBUF[13]_inst 
       (.I(oDATA_im_OBUF[13]),
        .O(oDATA_im[13]));
  OBUF \oDATA_im_OBUF[14]_inst 
       (.I(oDATA_im_OBUF[14]),
        .O(oDATA_im[14]));
  OBUF \oDATA_im_OBUF[15]_inst 
       (.I(oDATA_im_OBUF[15]),
        .O(oDATA_im[15]));
  OBUF \oDATA_im_OBUF[1]_inst 
       (.I(oDATA_im_OBUF[1]),
        .O(oDATA_im[1]));
  OBUF \oDATA_im_OBUF[2]_inst 
       (.I(oDATA_im_OBUF[2]),
        .O(oDATA_im[2]));
  OBUF \oDATA_im_OBUF[3]_inst 
       (.I(oDATA_im_OBUF[3]),
        .O(oDATA_im[3]));
  OBUF \oDATA_im_OBUF[4]_inst 
       (.I(oDATA_im_OBUF[4]),
        .O(oDATA_im[4]));
  OBUF \oDATA_im_OBUF[5]_inst 
       (.I(oDATA_im_OBUF[5]),
        .O(oDATA_im[5]));
  OBUF \oDATA_im_OBUF[6]_inst 
       (.I(oDATA_im_OBUF[6]),
        .O(oDATA_im[6]));
  OBUF \oDATA_im_OBUF[7]_inst 
       (.I(oDATA_im_OBUF[7]),
        .O(oDATA_im[7]));
  OBUF \oDATA_im_OBUF[8]_inst 
       (.I(oDATA_im_OBUF[8]),
        .O(oDATA_im[8]));
  OBUF \oDATA_im_OBUF[9]_inst 
       (.I(oDATA_im_OBUF[9]),
        .O(oDATA_im[9]));
  OBUF \oDATA_re_OBUF[0]_inst 
       (.I(oDATA_re_OBUF[0]),
        .O(oDATA_re[0]));
  OBUF \oDATA_re_OBUF[10]_inst 
       (.I(oDATA_re_OBUF[10]),
        .O(oDATA_re[10]));
  OBUF \oDATA_re_OBUF[11]_inst 
       (.I(oDATA_re_OBUF[11]),
        .O(oDATA_re[11]));
  OBUF \oDATA_re_OBUF[12]_inst 
       (.I(oDATA_re_OBUF[12]),
        .O(oDATA_re[12]));
  OBUF \oDATA_re_OBUF[13]_inst 
       (.I(oDATA_re_OBUF[13]),
        .O(oDATA_re[13]));
  OBUF \oDATA_re_OBUF[14]_inst 
       (.I(oDATA_re_OBUF[14]),
        .O(oDATA_re[14]));
  OBUF \oDATA_re_OBUF[15]_inst 
       (.I(oDATA_re_OBUF[15]),
        .O(oDATA_re[15]));
  OBUF \oDATA_re_OBUF[1]_inst 
       (.I(oDATA_re_OBUF[1]),
        .O(oDATA_re[1]));
  OBUF \oDATA_re_OBUF[2]_inst 
       (.I(oDATA_re_OBUF[2]),
        .O(oDATA_re[2]));
  OBUF \oDATA_re_OBUF[3]_inst 
       (.I(oDATA_re_OBUF[3]),
        .O(oDATA_re[3]));
  OBUF \oDATA_re_OBUF[4]_inst 
       (.I(oDATA_re_OBUF[4]),
        .O(oDATA_re[4]));
  OBUF \oDATA_re_OBUF[5]_inst 
       (.I(oDATA_re_OBUF[5]),
        .O(oDATA_re[5]));
  OBUF \oDATA_re_OBUF[6]_inst 
       (.I(oDATA_re_OBUF[6]),
        .O(oDATA_re[6]));
  OBUF \oDATA_re_OBUF[7]_inst 
       (.I(oDATA_re_OBUF[7]),
        .O(oDATA_re[7]));
  OBUF \oDATA_re_OBUF[8]_inst 
       (.I(oDATA_re_OBUF[8]),
        .O(oDATA_re[8]));
  OBUF \oDATA_re_OBUF[9]_inst 
       (.I(oDATA_re_OBUF[9]),
        .O(oDATA_re[9]));
  OBUF oEN_OBUF_inst
       (.I(oEN_OBUF),
        .O(oEN));
  MEM_R_CTRL uMEM_R_CTRL
       (.CLK(iCLK_IBUF_BUFG),
        .E(uMEM_R_CTRL_n_22),
        .\FSM_onehot_current_state_reg[1]_0 ({B[9],B[7],uMEM_R_CTRL_n_17,B[2],B[0]}),
        .\FSM_onehot_current_state_reg[3]_0 (uMEM_R_CTRL_n_20),
        .\FSM_onehot_current_state_reg[3]_1 (uMEM_R_CTRL_n_24),
        .\FSM_onehot_current_state_reg[4]_0 (uMEM_R_CTRL_n_21),
        .Q({U_SINGLE_BF_n_2,U_SINGLE_BF_n_3,U_SINGLE_BF_n_4}),
        .addrb(RADDR),
        .comp_im_1(U_SINGLE_BF_n_5),
        .comp_im_2(U_SINGLE_BF_n_7),
        .comp_im_2_0(U_SINGLE_BF_n_6),
        .enb(oEN_RC),
        .iCLR_IBUF(iCLR_IBUF),
        .iStart_INT_IBUF(iStart_INT_IBUF),
        .\oCNT_reg[1] ({uMEM_R_CTRL_n_1,uMEM_R_CTRL_n_2,uMEM_R_CTRL_n_3,uMEM_R_CTRL_n_4,uMEM_R_CTRL_n_5,uMEM_R_CTRL_n_6,uMEM_R_CTRL_n_7,uMEM_R_CTRL_n_8}),
        .\oCNT_reg[4] (U_SINGLE_BF_n_0),
        .\oDATA_reg[0] (U_SINGLE_BF_n_1),
        .oEN_OBUF(oEN_OBUF));
  MEM_W_CTRL uMEM_W_CTRL
       (.CLK(iCLK_IBUF_BUFG),
        .addra(WADDR),
        .iCLR_IBUF(iCLR_IBUF),
        .iStart_W(iStart_W),
        .\oCNT_reg[4] (U_SINGLE_BF_n_0),
        .wea(oEN_WC));
endmodule

(* CHECK_LICENSE_TYPE = "MEMORY,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
module MEMORY
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "MEMORY.mem" *) 
  (* C_INIT_FILE_NAME = "MEMORY.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "80" *) 
  (* C_READ_DEPTH_B = "80" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "80" *) 
  (* C_WRITE_DEPTH_B = "80" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

module MEM_R_CTRL
   (oEN_OBUF,
    \oCNT_reg[1] ,
    addrb,
    \FSM_onehot_current_state_reg[1]_0 ,
    \FSM_onehot_current_state_reg[3]_0 ,
    \FSM_onehot_current_state_reg[4]_0 ,
    E,
    enb,
    \FSM_onehot_current_state_reg[3]_1 ,
    CLK,
    \oCNT_reg[4] ,
    iCLR_IBUF,
    Q,
    comp_im_2,
    comp_im_2_0,
    comp_im_1,
    \oDATA_reg[0] ,
    iStart_INT_IBUF);
  output oEN_OBUF;
  output [7:0]\oCNT_reg[1] ;
  output [5:0]addrb;
  output [4:0]\FSM_onehot_current_state_reg[1]_0 ;
  output \FSM_onehot_current_state_reg[3]_0 ;
  output \FSM_onehot_current_state_reg[4]_0 ;
  output [0:0]E;
  output enb;
  output \FSM_onehot_current_state_reg[3]_1 ;
  input CLK;
  input \oCNT_reg[4] ;
  input iCLR_IBUF;
  input [2:0]Q;
  input comp_im_2;
  input comp_im_2_0;
  input comp_im_1;
  input \oDATA_reg[0] ;
  input iStart_INT_IBUF;

  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_current_state[0]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_2_n_0 ;
  wire \FSM_onehot_current_state[5]_i_4_n_0 ;
  wire [4:0]\FSM_onehot_current_state_reg[1]_0 ;
  wire \FSM_onehot_current_state_reg[3]_0 ;
  wire \FSM_onehot_current_state_reg[3]_1 ;
  wire \FSM_onehot_current_state_reg[4]_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire \FSM_onehot_current_state_reg_n_0_[4] ;
  wire \FSM_onehot_current_state_reg_n_0_[5] ;
  wire [2:0]Q;
  wire U_COUNTER_V3_WC_n_10;
  wire U_COUNTER_V3_WC_n_11;
  wire U_COUNTER_V3_WC_n_12;
  wire U_COUNTER_V3_WC_n_13;
  wire U_COUNTER_V3_WC_n_7;
  wire U_COUNTER_V3_WC_n_8;
  wire U_COUNTER_V3_WC_n_9;
  wire U_MEMORY_i_17_n_0;
  wire U_MEMORY_i_18_n_0;
  wire U_MEMORY_i_20_n_0;
  wire U_MEMORY_i_21_n_0;
  wire [5:0]addrb;
  wire comp_im_1;
  wire comp_im_2;
  wire comp_im_2_0;
  wire comp_re_1_i_10_n_0;
  wire comp_re_1_i_11_n_0;
  wire comp_re_1_i_13_n_0;
  wire comp_re_1_i_14_n_0;
  wire comp_re_1_i_15_n_0;
  wire comp_re_1_i_16_n_0;
  wire comp_re_2_i_13_n_0;
  wire comp_re_2_i_9_n_0;
  wire enb;
  wire iCLR_IBUF;
  wire iStart_INT_IBUF;
  wire [7:0]\oCNT_reg[1] ;
  wire \oCNT_reg[4] ;
  wire \oDATA_reg[0] ;
  wire oEN_OBUF;

  D_REG_2 D_REG_oEN
       (.CLK(CLK),
        .\oDATA_reg[0]_0 (U_COUNTER_V3_WC_n_13),
        .\oDATA_reg[0]_1 (\oCNT_reg[4] ),
        .oEN_OBUF(oEN_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[0]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(iCLR_IBUF),
        .O(\FSM_onehot_current_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_current_state[5]_i_4 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[5]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000010,iSTATE0:000100,iSTATE1:001000,iSTATE2:010000,iSTATE3:100000,iSTATE4:000001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(U_COUNTER_V3_WC_n_12),
        .PRE(\oCNT_reg[4] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:000010,iSTATE0:000100,iSTATE1:001000,iSTATE2:010000,iSTATE3:100000,iSTATE4:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oCNT_reg[4] ),
        .D(U_COUNTER_V3_WC_n_11),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "iSTATE:000010,iSTATE0:000100,iSTATE1:001000,iSTATE2:010000,iSTATE3:100000,iSTATE4:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oCNT_reg[4] ),
        .D(U_COUNTER_V3_WC_n_10),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "iSTATE:000010,iSTATE0:000100,iSTATE1:001000,iSTATE2:010000,iSTATE3:100000,iSTATE4:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oCNT_reg[4] ),
        .D(U_COUNTER_V3_WC_n_9),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "iSTATE:000010,iSTATE0:000100,iSTATE1:001000,iSTATE2:010000,iSTATE3:100000,iSTATE4:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oCNT_reg[4] ),
        .D(U_COUNTER_V3_WC_n_8),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "iSTATE:000010,iSTATE0:000100,iSTATE1:001000,iSTATE2:010000,iSTATE3:100000,iSTATE4:000001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oCNT_reg[4] ),
        .D(U_COUNTER_V3_WC_n_7),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ));
  COUNTER_VER3_3 U_COUNTER_V3_WC
       (.CLK(CLK),
        .D({U_COUNTER_V3_WC_n_7,U_COUNTER_V3_WC_n_8,U_COUNTER_V3_WC_n_9,U_COUNTER_V3_WC_n_10,U_COUNTER_V3_WC_n_11,U_COUNTER_V3_WC_n_12}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (addrb[4]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (U_MEMORY_i_17_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (U_MEMORY_i_20_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 (U_MEMORY_i_21_n_0),
        .E(E),
        .\FSM_onehot_current_state_reg[0] (\FSM_onehot_current_state[0]_i_2_n_0 ),
        .\FSM_onehot_current_state_reg[4] (\FSM_onehot_current_state_reg[4]_0 ),
        .\FSM_onehot_current_state_reg[4]_0 (\FSM_onehot_current_state[4]_i_2_n_0 ),
        .\FSM_onehot_current_state_reg[5] (U_COUNTER_V3_WC_n_13),
        .Q({\FSM_onehot_current_state_reg_n_0_[5] ,\FSM_onehot_current_state_reg_n_0_[4] ,\FSM_onehot_current_state_reg_n_0_[3] ,\FSM_onehot_current_state_reg_n_0_[2] ,\FSM_onehot_current_state_reg_n_0_[1] ,\FSM_onehot_current_state_reg_n_0_[0] }),
        .addrb(addrb[3:0]),
        .enb(enb),
        .iCLR_IBUF(iCLR_IBUF),
        .iStart_INT_IBUF(iStart_INT_IBUF),
        .\oCNT_reg[4]_0 (\oCNT_reg[4] ),
        .\oDATA_reg[0] (U_MEMORY_i_18_n_0),
        .\oDATA_reg[0]_0 (\FSM_onehot_current_state[5]_i_4_n_0 ),
        .\oDATA_reg[0]_1 (\oDATA_reg[0] ));
  LUT5 #(
    .INIT(32'h03030302)) 
    U_MEMORY_i_10
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(addrb[5]));
  LUT5 #(
    .INIT(32'h0B0B0B0A)) 
    U_MEMORY_i_11
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(addrb[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h02)) 
    U_MEMORY_i_17
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(U_MEMORY_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    U_MEMORY_i_18
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(U_MEMORY_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFEFEFEFF)) 
    U_MEMORY_i_20
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(U_MEMORY_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h1)) 
    U_MEMORY_i_21
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(U_MEMORY_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFF00FCFFFF00DD)) 
    comp_re_1_i_10
       (.I0(Q[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(Q[2]),
        .I4(comp_re_2_i_9_n_0),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(comp_re_1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hAAAAAAEB)) 
    comp_re_1_i_11
       (.I0(comp_re_1_i_16_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(comp_re_1_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAAAABFFAAFFABFF)) 
    comp_re_1_i_13
       (.I0(comp_re_1_i_16_n_0),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(U_MEMORY_i_18_n_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(comp_re_1_i_13_n_0));
  LUT6 #(
    .INIT(64'hF0FFF1FBF0FAF1FF)) 
    comp_re_1_i_14
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(comp_im_2),
        .I2(comp_re_2_i_9_n_0),
        .I3(Q[2]),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(comp_re_1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    comp_re_1_i_15
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(Q[2]),
        .O(comp_re_1_i_15_n_0));
  LUT6 #(
    .INIT(64'hFCFFFCFFFCFEFCFC)) 
    comp_re_1_i_16
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I3(Q[2]),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(comp_re_1_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000023F)) 
    comp_re_1_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(comp_re_1_i_10_n_0),
        .O(\oCNT_reg[1] [7]));
  LUT6 #(
    .INIT(64'hAABBAAABAAABAAFF)) 
    comp_re_1_i_3
       (.I0(comp_re_1_i_11_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(Q[2]),
        .I5(comp_im_2_0),
        .O(\oCNT_reg[1] [6]));
  LUT6 #(
    .INIT(64'hEFEEEFFFEFFFEFFF)) 
    comp_re_1_i_4
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(Q[2]),
        .I3(U_MEMORY_i_18_n_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(\oCNT_reg[1] [5]));
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    comp_re_1_i_5
       (.I0(comp_re_1_i_13_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\oCNT_reg[1] [4]));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAEAAFF)) 
    comp_re_1_i_6
       (.I0(comp_re_1_i_14_n_0),
        .I1(Q[0]),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\oCNT_reg[1] [3]));
  LUT6 #(
    .INIT(64'hAAEBAAEBAAEBFEEB)) 
    comp_re_1_i_7
       (.I0(comp_re_1_i_14_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\oCNT_reg[1] [2]));
  LUT6 #(
    .INIT(64'hABAAABABFFFFABAB)) 
    comp_re_1_i_8
       (.I0(comp_re_1_i_10_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(comp_re_1_i_15_n_0),
        .O(\oCNT_reg[1] [1]));
  LUT6 #(
    .INIT(64'hAABBABBBAABBABFF)) 
    comp_re_1_i_9
       (.I0(comp_re_1_i_16_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(Q[2]),
        .I3(U_MEMORY_i_18_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\oCNT_reg[1] [0]));
  LUT6 #(
    .INIT(64'h00E000F100E000E2)) 
    comp_re_2_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(comp_re_2_i_9_n_0),
        .I4(comp_im_1),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state_reg[1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    comp_re_2_i_11
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    comp_re_2_i_12
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h000000E0)) 
    comp_re_2_i_13
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(comp_re_2_i_13_n_0));
  LUT6 #(
    .INIT(64'h0004000401000000)) 
    comp_re_2_i_3
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(comp_re_2_i_9_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\FSM_onehot_current_state_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    comp_re_2_i_4
       (.I0(Q[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'h0003003000000020)) 
    comp_re_2_i_6
       (.I0(Q[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(comp_re_2_i_9_n_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(Q[0]),
        .O(\FSM_onehot_current_state_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'hFCFDFCFF00550000)) 
    comp_re_2_i_8
       (.I0(\FSM_onehot_current_state_reg[3]_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(comp_re_2_i_13_n_0),
        .O(\FSM_onehot_current_state_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    comp_re_2_i_9
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(comp_re_2_i_9_n_0));
endmodule

module MEM_W_CTRL
   (wea,
    addra,
    iCLR_IBUF,
    iStart_W,
    CLK,
    \oCNT_reg[4] );
  output [0:0]wea;
  output [6:0]addra;
  input iCLR_IBUF;
  input iStart_W;
  input CLK;
  input \oCNT_reg[4] ;

  wire CLK;
  wire U_COUNTER_V3_WC_n_5;
  wire U_COUNTER_V3_WC_n_6;
  wire U_COUNTER_V3_WC_n_7;
  wire [6:0]addra;
  wire [2:0]current_state;
  wire iCLR_IBUF;
  wire iStart_W;
  wire \oCNT_reg[4] ;
  wire [0:0]wea;

  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oCNT_reg[4] ),
        .D(U_COUNTER_V3_WC_n_7),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oCNT_reg[4] ),
        .D(U_COUNTER_V3_WC_n_6),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:011,iSTATE2:100,iSTATE3:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\oCNT_reg[4] ),
        .D(U_COUNTER_V3_WC_n_5),
        .Q(current_state[2]));
  COUNTER_VER3 U_COUNTER_V3_WC
       (.CLK(CLK),
        .D({U_COUNTER_V3_WC_n_5,U_COUNTER_V3_WC_n_6,U_COUNTER_V3_WC_n_7}),
        .Q(current_state),
        .addra(addra[3:0]),
        .iCLR_IBUF(iCLR_IBUF),
        .iStart_W(iStart_W),
        .\oCNT_reg[4]_0 (\oCNT_reg[4] ),
        .wea(wea));
  LUT3 #(
    .INIT(8'h02)) 
    U_MEMORY_i_2
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(addra[6]));
  LUT2 #(
    .INIT(4'h2)) 
    U_MEMORY_i_3
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(addra[5]));
  LUT2 #(
    .INIT(4'h2)) 
    U_MEMORY_i_4
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .O(addra[4]));
endmodule

module SINGLE_BF
   (iRSTn,
    \oDATA_reg[0] ,
    Q,
    \oCNT_reg[2] ,
    \oCNT_reg[2]_0 ,
    \oCNT_reg[2]_1 ,
    \oDATA_reg[31] ,
    comp_im_1,
    comp_im_2,
    doutb,
    \oDATA_reg[0]_0 ,
    CLK,
    comp_re_2,
    comp_re_2_0,
    iCLR_IBUF,
    iRSTn_IBUF,
    E);
  output iRSTn;
  output \oDATA_reg[0] ;
  output [2:0]Q;
  output \oCNT_reg[2] ;
  output \oCNT_reg[2]_0 ;
  output \oCNT_reg[2]_1 ;
  output [31:0]\oDATA_reg[31] ;
  input [4:0]comp_im_1;
  input [7:0]comp_im_2;
  input [31:0]doutb;
  input \oDATA_reg[0]_0 ;
  input CLK;
  input comp_re_2;
  input comp_re_2_0;
  input iCLR_IBUF;
  input iRSTn_IBUF;
  input [0:0]E;

  wire [16:0]A;
  wire [8:1]B;
  wire BF_IM_n_0;
  wire BF_IM_n_1;
  wire BF_IM_n_10;
  wire BF_IM_n_11;
  wire BF_IM_n_12;
  wire BF_IM_n_13;
  wire BF_IM_n_14;
  wire BF_IM_n_15;
  wire BF_IM_n_16;
  wire BF_IM_n_17;
  wire BF_IM_n_18;
  wire BF_IM_n_19;
  wire BF_IM_n_2;
  wire BF_IM_n_20;
  wire BF_IM_n_21;
  wire BF_IM_n_22;
  wire BF_IM_n_23;
  wire BF_IM_n_24;
  wire BF_IM_n_25;
  wire BF_IM_n_26;
  wire BF_IM_n_27;
  wire BF_IM_n_28;
  wire BF_IM_n_29;
  wire BF_IM_n_3;
  wire BF_IM_n_30;
  wire BF_IM_n_31;
  wire BF_IM_n_32;
  wire BF_IM_n_4;
  wire BF_IM_n_5;
  wire BF_IM_n_6;
  wire BF_IM_n_7;
  wire BF_IM_n_8;
  wire BF_IM_n_9;
  wire BF_RE_n_0;
  wire BF_RE_n_18;
  wire BF_RE_n_19;
  wire BF_RE_n_20;
  wire BF_RE_n_21;
  wire BF_RE_n_22;
  wire BF_RE_n_23;
  wire BF_RE_n_24;
  wire BF_RE_n_25;
  wire BF_RE_n_26;
  wire BF_RE_n_27;
  wire BF_RE_n_28;
  wire BF_RE_n_29;
  wire BF_RE_n_30;
  wire BF_RE_n_31;
  wire BF_RE_n_32;
  wire CLK;
  wire CPX_MULT_LOW_n_0;
  wire CPX_MULT_LOW_n_1;
  wire CPX_MULT_LOW_n_10;
  wire CPX_MULT_LOW_n_11;
  wire CPX_MULT_LOW_n_12;
  wire CPX_MULT_LOW_n_13;
  wire CPX_MULT_LOW_n_14;
  wire CPX_MULT_LOW_n_15;
  wire CPX_MULT_LOW_n_16;
  wire CPX_MULT_LOW_n_17;
  wire CPX_MULT_LOW_n_18;
  wire CPX_MULT_LOW_n_19;
  wire CPX_MULT_LOW_n_2;
  wire CPX_MULT_LOW_n_20;
  wire CPX_MULT_LOW_n_21;
  wire CPX_MULT_LOW_n_22;
  wire CPX_MULT_LOW_n_23;
  wire CPX_MULT_LOW_n_24;
  wire CPX_MULT_LOW_n_25;
  wire CPX_MULT_LOW_n_26;
  wire CPX_MULT_LOW_n_27;
  wire CPX_MULT_LOW_n_28;
  wire CPX_MULT_LOW_n_29;
  wire CPX_MULT_LOW_n_3;
  wire CPX_MULT_LOW_n_30;
  wire CPX_MULT_LOW_n_31;
  wire CPX_MULT_LOW_n_32;
  wire CPX_MULT_LOW_n_33;
  wire CPX_MULT_LOW_n_34;
  wire CPX_MULT_LOW_n_35;
  wire CPX_MULT_LOW_n_4;
  wire CPX_MULT_LOW_n_5;
  wire CPX_MULT_LOW_n_6;
  wire CPX_MULT_LOW_n_7;
  wire CPX_MULT_LOW_n_8;
  wire CPX_MULT_LOW_n_9;
  wire D_REG_BF1_RE_n_0;
  wire D_REG_BF1_RE_n_1;
  wire D_REG_BF1_RE_n_10;
  wire D_REG_BF1_RE_n_11;
  wire D_REG_BF1_RE_n_12;
  wire D_REG_BF1_RE_n_13;
  wire D_REG_BF1_RE_n_14;
  wire D_REG_BF1_RE_n_15;
  wire D_REG_BF1_RE_n_16;
  wire D_REG_BF1_RE_n_17;
  wire D_REG_BF1_RE_n_18;
  wire D_REG_BF1_RE_n_19;
  wire D_REG_BF1_RE_n_2;
  wire D_REG_BF1_RE_n_20;
  wire D_REG_BF1_RE_n_21;
  wire D_REG_BF1_RE_n_22;
  wire D_REG_BF1_RE_n_23;
  wire D_REG_BF1_RE_n_24;
  wire D_REG_BF1_RE_n_25;
  wire D_REG_BF1_RE_n_26;
  wire D_REG_BF1_RE_n_27;
  wire D_REG_BF1_RE_n_28;
  wire D_REG_BF1_RE_n_29;
  wire D_REG_BF1_RE_n_3;
  wire D_REG_BF1_RE_n_30;
  wire D_REG_BF1_RE_n_31;
  wire D_REG_BF1_RE_n_32;
  wire D_REG_BF1_RE_n_33;
  wire D_REG_BF1_RE_n_34;
  wire D_REG_BF1_RE_n_35;
  wire D_REG_BF1_RE_n_36;
  wire D_REG_BF1_RE_n_37;
  wire D_REG_BF1_RE_n_38;
  wire D_REG_BF1_RE_n_39;
  wire D_REG_BF1_RE_n_4;
  wire D_REG_BF1_RE_n_40;
  wire D_REG_BF1_RE_n_41;
  wire D_REG_BF1_RE_n_42;
  wire D_REG_BF1_RE_n_43;
  wire D_REG_BF1_RE_n_44;
  wire D_REG_BF1_RE_n_45;
  wire D_REG_BF1_RE_n_46;
  wire D_REG_BF1_RE_n_47;
  wire D_REG_BF1_RE_n_48;
  wire D_REG_BF1_RE_n_5;
  wire D_REG_BF1_RE_n_6;
  wire D_REG_BF1_RE_n_7;
  wire D_REG_BF1_RE_n_8;
  wire D_REG_BF1_RE_n_9;
  wire D_REG_BF2_IM_n_0;
  wire D_REG_BF2_IM_n_1;
  wire D_REG_BF2_IM_n_10;
  wire D_REG_BF2_IM_n_11;
  wire D_REG_BF2_IM_n_12;
  wire D_REG_BF2_IM_n_13;
  wire D_REG_BF2_IM_n_14;
  wire D_REG_BF2_IM_n_15;
  wire D_REG_BF2_IM_n_16;
  wire D_REG_BF2_IM_n_17;
  wire D_REG_BF2_IM_n_18;
  wire D_REG_BF2_IM_n_19;
  wire D_REG_BF2_IM_n_2;
  wire D_REG_BF2_IM_n_20;
  wire D_REG_BF2_IM_n_21;
  wire D_REG_BF2_IM_n_22;
  wire D_REG_BF2_IM_n_23;
  wire D_REG_BF2_IM_n_24;
  wire D_REG_BF2_IM_n_25;
  wire D_REG_BF2_IM_n_26;
  wire D_REG_BF2_IM_n_27;
  wire D_REG_BF2_IM_n_28;
  wire D_REG_BF2_IM_n_29;
  wire D_REG_BF2_IM_n_3;
  wire D_REG_BF2_IM_n_30;
  wire D_REG_BF2_IM_n_31;
  wire D_REG_BF2_IM_n_32;
  wire D_REG_BF2_IM_n_33;
  wire D_REG_BF2_IM_n_34;
  wire D_REG_BF2_IM_n_35;
  wire D_REG_BF2_IM_n_36;
  wire D_REG_BF2_IM_n_37;
  wire D_REG_BF2_IM_n_38;
  wire D_REG_BF2_IM_n_39;
  wire D_REG_BF2_IM_n_4;
  wire D_REG_BF2_IM_n_40;
  wire D_REG_BF2_IM_n_41;
  wire D_REG_BF2_IM_n_42;
  wire D_REG_BF2_IM_n_43;
  wire D_REG_BF2_IM_n_44;
  wire D_REG_BF2_IM_n_45;
  wire D_REG_BF2_IM_n_46;
  wire D_REG_BF2_IM_n_47;
  wire D_REG_BF2_IM_n_48;
  wire D_REG_BF2_IM_n_5;
  wire D_REG_BF2_IM_n_6;
  wire D_REG_BF2_IM_n_7;
  wire D_REG_BF2_IM_n_8;
  wire D_REG_BF2_IM_n_9;
  wire D_REG_BF_OUT_n_0;
  wire D_REG_BF_OUT_n_1;
  wire D_REG_iEN_2D_n_0;
  wire [0:0]E;
  wire [2:0]Q;
  wire U_COUNTER_V3_WC_n_0;
  wire U_COUNTER_V3_WC_n_10;
  wire U_COUNTER_V3_WC_n_11;
  wire U_COUNTER_V3_WC_n_12;
  wire U_COUNTER_V3_WC_n_13;
  wire U_COUNTER_V3_WC_n_14;
  wire U_COUNTER_V3_WC_n_15;
  wire U_COUNTER_V3_WC_n_17;
  wire U_COUNTER_V3_WC_n_18;
  wire U_COUNTER_V3_WC_n_4;
  wire U_D_REG_EN_DELAY_n_0;
  wire U_D_REG_EN_DELAY_n_1;
  wire [4:0]comp_im_1;
  wire [7:0]comp_im_2;
  wire comp_re_2;
  wire comp_re_2_0;
  wire [31:0]doutb;
  wire iCLR_IBUF;
  wire iRSTn;
  wire iRSTn_IBUF;
  wire \oCNT_reg[2] ;
  wire \oCNT_reg[2]_0 ;
  wire \oCNT_reg[2]_1 ;
  wire \oDATA_reg[0] ;
  wire \oDATA_reg[0]_0 ;
  wire [31:0]\oDATA_reg[31] ;

  BF BF_IM
       (.A({BF_IM_n_1,BF_IM_n_2,BF_IM_n_3,BF_IM_n_4,BF_IM_n_5,BF_IM_n_6,BF_IM_n_7,BF_IM_n_8,BF_IM_n_9,BF_IM_n_10,BF_IM_n_11,BF_IM_n_12,BF_IM_n_13,BF_IM_n_14,BF_IM_n_15,BF_IM_n_16,BF_IM_n_17}),
        .CO(BF_IM_n_0),
        .D({BF_IM_n_18,BF_IM_n_19,BF_IM_n_20,BF_IM_n_21,BF_IM_n_22,BF_IM_n_23,BF_IM_n_24,BF_IM_n_25,BF_IM_n_26,BF_IM_n_27,BF_IM_n_28,BF_IM_n_29,BF_IM_n_30,BF_IM_n_31,BF_IM_n_32}),
        .DI(D_REG_BF2_IM_n_1),
        .O({CPX_MULT_LOW_n_34,CPX_MULT_LOW_n_35}),
        .Q({D_REG_BF2_IM_n_6,D_REG_BF2_IM_n_7,D_REG_BF2_IM_n_8,D_REG_BF2_IM_n_9,D_REG_BF2_IM_n_10,D_REG_BF2_IM_n_11,D_REG_BF2_IM_n_12,D_REG_BF2_IM_n_13,D_REG_BF2_IM_n_14,D_REG_BF2_IM_n_15,D_REG_BF2_IM_n_16,D_REG_BF2_IM_n_17,D_REG_BF2_IM_n_18,D_REG_BF2_IM_n_19,D_REG_BF2_IM_n_20}),
        .S({D_REG_BF2_IM_n_2,D_REG_BF2_IM_n_3,D_REG_BF2_IM_n_4,D_REG_BF2_IM_n_5}),
        .comp_re_2({D_REG_BF2_IM_n_33,D_REG_BF2_IM_n_34,D_REG_BF2_IM_n_35,D_REG_BF2_IM_n_36}),
        .comp_re_2_0({D_REG_BF2_IM_n_37,D_REG_BF2_IM_n_38,D_REG_BF2_IM_n_39,D_REG_BF2_IM_n_40}),
        .comp_re_2_1({D_REG_BF2_IM_n_41,D_REG_BF2_IM_n_42,D_REG_BF2_IM_n_43,D_REG_BF2_IM_n_44}),
        .comp_re_2_2({D_REG_BF2_IM_n_45,D_REG_BF2_IM_n_46,D_REG_BF2_IM_n_47,D_REG_BF2_IM_n_48}),
        .doutb(doutb[15]),
        .iCLR_IBUF(iCLR_IBUF),
        .\oDATA_reg[0] (D_REG_BF_OUT_n_1),
        .\oDATA_reg[0]_0 ({CPX_MULT_LOW_n_30,CPX_MULT_LOW_n_31,CPX_MULT_LOW_n_32,CPX_MULT_LOW_n_33}),
        .\oDATA_reg[0]_1 (U_COUNTER_V3_WC_n_15),
        .\oDATA_reg[0]_2 (U_COUNTER_V3_WC_n_12),
        .\oDATA_reg[0]_3 (D_REG_BF2_IM_n_0),
        .\oDATA_reg[0]_4 (U_COUNTER_V3_WC_n_14),
        .\oDATA_reg[11] ({D_REG_BF2_IM_n_25,D_REG_BF2_IM_n_26,D_REG_BF2_IM_n_27,D_REG_BF2_IM_n_28}),
        .\oDATA_reg[11]_0 ({CPX_MULT_LOW_n_26,CPX_MULT_LOW_n_27,CPX_MULT_LOW_n_28,CPX_MULT_LOW_n_29}),
        .\oDATA_reg[14] ({D_REG_BF2_IM_n_29,D_REG_BF2_IM_n_30,D_REG_BF2_IM_n_31,D_REG_BF2_IM_n_32}),
        .\oDATA_reg[14]_0 (U_COUNTER_V3_WC_n_4),
        .\oDATA_reg[1] (U_COUNTER_V3_WC_n_18),
        .\oDATA_reg[3] ({CPX_MULT_LOW_n_18,CPX_MULT_LOW_n_19,CPX_MULT_LOW_n_20}),
        .\oDATA_reg[7] ({D_REG_BF2_IM_n_21,D_REG_BF2_IM_n_22,D_REG_BF2_IM_n_23,D_REG_BF2_IM_n_24}),
        .\oDATA_reg[7]_0 ({CPX_MULT_LOW_n_22,CPX_MULT_LOW_n_23,CPX_MULT_LOW_n_24,CPX_MULT_LOW_n_25}));
  BF_4 BF_RE
       (.A(A),
        .CO(BF_RE_n_0),
        .D({BF_RE_n_18,BF_RE_n_19,BF_RE_n_20,BF_RE_n_21,BF_RE_n_22,BF_RE_n_23,BF_RE_n_24,BF_RE_n_25,BF_RE_n_26,BF_RE_n_27,BF_RE_n_28,BF_RE_n_29,BF_RE_n_30,BF_RE_n_31,BF_RE_n_32}),
        .DI(D_REG_BF1_RE_n_1),
        .O({CPX_MULT_LOW_n_16,CPX_MULT_LOW_n_17}),
        .Q({D_REG_BF1_RE_n_6,D_REG_BF1_RE_n_7,D_REG_BF1_RE_n_8,D_REG_BF1_RE_n_9,D_REG_BF1_RE_n_10,D_REG_BF1_RE_n_11,D_REG_BF1_RE_n_12,D_REG_BF1_RE_n_13,D_REG_BF1_RE_n_14,D_REG_BF1_RE_n_15,D_REG_BF1_RE_n_16,D_REG_BF1_RE_n_17,D_REG_BF1_RE_n_18,D_REG_BF1_RE_n_19,D_REG_BF1_RE_n_20}),
        .S({D_REG_BF1_RE_n_2,D_REG_BF1_RE_n_3,D_REG_BF1_RE_n_4,D_REG_BF1_RE_n_5}),
        .comp_re_1({D_REG_BF1_RE_n_33,D_REG_BF1_RE_n_34,D_REG_BF1_RE_n_35,D_REG_BF1_RE_n_36}),
        .comp_re_1_0({D_REG_BF1_RE_n_37,D_REG_BF1_RE_n_38,D_REG_BF1_RE_n_39,D_REG_BF1_RE_n_40}),
        .comp_re_1_1({D_REG_BF1_RE_n_41,D_REG_BF1_RE_n_42,D_REG_BF1_RE_n_43,D_REG_BF1_RE_n_44}),
        .comp_re_1_2({D_REG_BF1_RE_n_45,D_REG_BF1_RE_n_46,D_REG_BF1_RE_n_47,D_REG_BF1_RE_n_48}),
        .doutb(doutb[31]),
        .iCLR_IBUF(iCLR_IBUF),
        .\oDATA_reg[16] (D_REG_BF_OUT_n_0),
        .\oDATA_reg[16]_0 ({CPX_MULT_LOW_n_12,CPX_MULT_LOW_n_13,CPX_MULT_LOW_n_14,CPX_MULT_LOW_n_15}),
        .\oDATA_reg[16]_1 (U_COUNTER_V3_WC_n_15),
        .\oDATA_reg[16]_2 (U_COUNTER_V3_WC_n_12),
        .\oDATA_reg[16]_3 (D_REG_BF1_RE_n_0),
        .\oDATA_reg[16]_4 (U_COUNTER_V3_WC_n_13),
        .\oDATA_reg[17] (U_COUNTER_V3_WC_n_17),
        .\oDATA_reg[19] ({CPX_MULT_LOW_n_0,CPX_MULT_LOW_n_1,CPX_MULT_LOW_n_2}),
        .\oDATA_reg[23] ({D_REG_BF1_RE_n_21,D_REG_BF1_RE_n_22,D_REG_BF1_RE_n_23,D_REG_BF1_RE_n_24}),
        .\oDATA_reg[23]_0 ({CPX_MULT_LOW_n_4,CPX_MULT_LOW_n_5,CPX_MULT_LOW_n_6,CPX_MULT_LOW_n_7}),
        .\oDATA_reg[27] ({D_REG_BF1_RE_n_25,D_REG_BF1_RE_n_26,D_REG_BF1_RE_n_27,D_REG_BF1_RE_n_28}),
        .\oDATA_reg[27]_0 ({CPX_MULT_LOW_n_8,CPX_MULT_LOW_n_9,CPX_MULT_LOW_n_10,CPX_MULT_LOW_n_11}),
        .\oDATA_reg[30] ({D_REG_BF1_RE_n_29,D_REG_BF1_RE_n_30,D_REG_BF1_RE_n_31,D_REG_BF1_RE_n_32}),
        .\oDATA_reg[30]_0 (U_COUNTER_V3_WC_n_4));
  CPX_MULT CPX_MULT_LOW
       (.A({BF_IM_n_1,BF_IM_n_2,BF_IM_n_3,BF_IM_n_4,BF_IM_n_5,BF_IM_n_6,BF_IM_n_7,BF_IM_n_8,BF_IM_n_9,BF_IM_n_10,BF_IM_n_11,BF_IM_n_12,BF_IM_n_13,BF_IM_n_14,BF_IM_n_15,BF_IM_n_16,BF_IM_n_17}),
        .B({comp_im_1[4],B[8],comp_im_1[3:2],B[4],comp_im_1[1],B[1],comp_im_1[0]}),
        .CLK(CLK),
        .E(E),
        .O({CPX_MULT_LOW_n_0,CPX_MULT_LOW_n_1,CPX_MULT_LOW_n_2,CPX_MULT_LOW_n_3}),
        .comp_re_1_0({U_COUNTER_V3_WC_n_0,comp_im_2}),
        .comp_re_1_1(A),
        .iCLR_IBUF(iCLR_IBUF),
        .iRSTn(iRSTn),
        .iRSTn_IBUF(iRSTn_IBUF),
        .\oDATA_reg[16] ({CPX_MULT_LOW_n_4,CPX_MULT_LOW_n_5,CPX_MULT_LOW_n_6,CPX_MULT_LOW_n_7}),
        .\oDATA_reg[16]_0 ({CPX_MULT_LOW_n_22,CPX_MULT_LOW_n_23,CPX_MULT_LOW_n_24,CPX_MULT_LOW_n_25}),
        .\oDATA_reg[20] ({CPX_MULT_LOW_n_8,CPX_MULT_LOW_n_9,CPX_MULT_LOW_n_10,CPX_MULT_LOW_n_11}),
        .\oDATA_reg[20]_0 ({CPX_MULT_LOW_n_26,CPX_MULT_LOW_n_27,CPX_MULT_LOW_n_28,CPX_MULT_LOW_n_29}),
        .\oDATA_reg[24] ({CPX_MULT_LOW_n_12,CPX_MULT_LOW_n_13,CPX_MULT_LOW_n_14,CPX_MULT_LOW_n_15}),
        .\oDATA_reg[24]_0 ({CPX_MULT_LOW_n_30,CPX_MULT_LOW_n_31,CPX_MULT_LOW_n_32,CPX_MULT_LOW_n_33}),
        .\oDATA_reg[26] ({CPX_MULT_LOW_n_16,CPX_MULT_LOW_n_17}),
        .\oDATA_reg[26]_0 ({CPX_MULT_LOW_n_34,CPX_MULT_LOW_n_35}),
        .\oDATA_reg[9] ({CPX_MULT_LOW_n_18,CPX_MULT_LOW_n_19,CPX_MULT_LOW_n_20,CPX_MULT_LOW_n_21}));
  D_REG__parameterized0 D_REG_BF1_RE
       (.CLK(CLK),
        .CO(BF_RE_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ({D_REG_BF1_RE_n_33,D_REG_BF1_RE_n_34,D_REG_BF1_RE_n_35,D_REG_BF1_RE_n_36}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ({D_REG_BF1_RE_n_37,D_REG_BF1_RE_n_38,D_REG_BF1_RE_n_39,D_REG_BF1_RE_n_40}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ({D_REG_BF1_RE_n_41,D_REG_BF1_RE_n_42,D_REG_BF1_RE_n_43,D_REG_BF1_RE_n_44}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ({D_REG_BF1_RE_n_45,D_REG_BF1_RE_n_46,D_REG_BF1_RE_n_47,D_REG_BF1_RE_n_48}),
        .DI(D_REG_BF1_RE_n_1),
        .E(E),
        .Q({D_REG_BF1_RE_n_6,D_REG_BF1_RE_n_7,D_REG_BF1_RE_n_8,D_REG_BF1_RE_n_9,D_REG_BF1_RE_n_10,D_REG_BF1_RE_n_11,D_REG_BF1_RE_n_12,D_REG_BF1_RE_n_13,D_REG_BF1_RE_n_14,D_REG_BF1_RE_n_15,D_REG_BF1_RE_n_16,D_REG_BF1_RE_n_17,D_REG_BF1_RE_n_18,D_REG_BF1_RE_n_19,D_REG_BF1_RE_n_20}),
        .S({D_REG_BF1_RE_n_2,D_REG_BF1_RE_n_3,D_REG_BF1_RE_n_4,D_REG_BF1_RE_n_5}),
        .doutb(doutb[31:16]),
        .iCLR_IBUF(iCLR_IBUF),
        .\oDATA_reg[11]_0 ({D_REG_BF1_RE_n_25,D_REG_BF1_RE_n_26,D_REG_BF1_RE_n_27,D_REG_BF1_RE_n_28}),
        .\oDATA_reg[14]_0 (D_REG_BF1_RE_n_0),
        .\oDATA_reg[15]_0 ({D_REG_BF1_RE_n_29,D_REG_BF1_RE_n_30,D_REG_BF1_RE_n_31,D_REG_BF1_RE_n_32}),
        .\oDATA_reg[15]_1 (iRSTn),
        .\oDATA_reg[7]_0 ({D_REG_BF1_RE_n_21,D_REG_BF1_RE_n_22,D_REG_BF1_RE_n_23,D_REG_BF1_RE_n_24}));
  D_REG__parameterized0_5 D_REG_BF2_IM
       (.CLK(CLK),
        .CO(BF_IM_n_0),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ({D_REG_BF2_IM_n_33,D_REG_BF2_IM_n_34,D_REG_BF2_IM_n_35,D_REG_BF2_IM_n_36}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ({D_REG_BF2_IM_n_37,D_REG_BF2_IM_n_38,D_REG_BF2_IM_n_39,D_REG_BF2_IM_n_40}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ({D_REG_BF2_IM_n_41,D_REG_BF2_IM_n_42,D_REG_BF2_IM_n_43,D_REG_BF2_IM_n_44}),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_2 ({D_REG_BF2_IM_n_45,D_REG_BF2_IM_n_46,D_REG_BF2_IM_n_47,D_REG_BF2_IM_n_48}),
        .DI(D_REG_BF2_IM_n_1),
        .E(E),
        .Q({D_REG_BF2_IM_n_6,D_REG_BF2_IM_n_7,D_REG_BF2_IM_n_8,D_REG_BF2_IM_n_9,D_REG_BF2_IM_n_10,D_REG_BF2_IM_n_11,D_REG_BF2_IM_n_12,D_REG_BF2_IM_n_13,D_REG_BF2_IM_n_14,D_REG_BF2_IM_n_15,D_REG_BF2_IM_n_16,D_REG_BF2_IM_n_17,D_REG_BF2_IM_n_18,D_REG_BF2_IM_n_19,D_REG_BF2_IM_n_20}),
        .S({D_REG_BF2_IM_n_2,D_REG_BF2_IM_n_3,D_REG_BF2_IM_n_4,D_REG_BF2_IM_n_5}),
        .doutb(doutb[15:0]),
        .iCLR_IBUF(iCLR_IBUF),
        .\oDATA_reg[0]_0 (iRSTn),
        .\oDATA_reg[11]_0 ({D_REG_BF2_IM_n_25,D_REG_BF2_IM_n_26,D_REG_BF2_IM_n_27,D_REG_BF2_IM_n_28}),
        .\oDATA_reg[14]_0 (D_REG_BF2_IM_n_0),
        .\oDATA_reg[15]_0 ({D_REG_BF2_IM_n_29,D_REG_BF2_IM_n_30,D_REG_BF2_IM_n_31,D_REG_BF2_IM_n_32}),
        .\oDATA_reg[7]_0 ({D_REG_BF2_IM_n_21,D_REG_BF2_IM_n_22,D_REG_BF2_IM_n_23,D_REG_BF2_IM_n_24}));
  D_REG__parameterized3 D_REG_BF_OUT
       (.CLK(CLK),
        .D({U_COUNTER_V3_WC_n_10,BF_RE_n_18,BF_RE_n_19,BF_RE_n_20,BF_RE_n_21,BF_RE_n_22,BF_RE_n_23,BF_RE_n_24,BF_RE_n_25,BF_RE_n_26,BF_RE_n_27,BF_RE_n_28,BF_RE_n_29,BF_RE_n_30,BF_RE_n_31,BF_RE_n_32,U_COUNTER_V3_WC_n_11,BF_IM_n_18,BF_IM_n_19,BF_IM_n_20,BF_IM_n_21,BF_IM_n_22,BF_IM_n_23,BF_IM_n_24,BF_IM_n_25,BF_IM_n_26,BF_IM_n_27,BF_IM_n_28,BF_IM_n_29,BF_IM_n_30,BF_IM_n_31,BF_IM_n_32}),
        .E(E),
        .O({CPX_MULT_LOW_n_0,CPX_MULT_LOW_n_1,CPX_MULT_LOW_n_2}),
        .\oDATA[0]_i_2_0 ({CPX_MULT_LOW_n_22,CPX_MULT_LOW_n_23,CPX_MULT_LOW_n_24,CPX_MULT_LOW_n_25}),
        .\oDATA[0]_i_2_1 ({CPX_MULT_LOW_n_18,CPX_MULT_LOW_n_19,CPX_MULT_LOW_n_20}),
        .\oDATA[16]_i_2_0 ({CPX_MULT_LOW_n_13,CPX_MULT_LOW_n_14,CPX_MULT_LOW_n_15}),
        .\oDATA_reg[0]_0 ({CPX_MULT_LOW_n_26,CPX_MULT_LOW_n_27,CPX_MULT_LOW_n_28,CPX_MULT_LOW_n_29}),
        .\oDATA_reg[0]_1 ({CPX_MULT_LOW_n_31,CPX_MULT_LOW_n_32,CPX_MULT_LOW_n_33}),
        .\oDATA_reg[0]_2 (iRSTn),
        .\oDATA_reg[16]_0 (D_REG_BF_OUT_n_0),
        .\oDATA_reg[16]_1 (D_REG_BF_OUT_n_1),
        .\oDATA_reg[16]_2 ({CPX_MULT_LOW_n_4,CPX_MULT_LOW_n_5,CPX_MULT_LOW_n_6,CPX_MULT_LOW_n_7}),
        .\oDATA_reg[16]_3 ({CPX_MULT_LOW_n_8,CPX_MULT_LOW_n_9,CPX_MULT_LOW_n_10,CPX_MULT_LOW_n_11}),
        .\oDATA_reg[31]_0 (\oDATA_reg[31] ));
  D_REG_6 D_REG_iEN_2D
       (.CLK(CLK),
        .iCLR_IBUF(iCLR_IBUF),
        .\oDATA_reg[0]_0 (D_REG_iEN_2D_n_0),
        .\oDATA_reg[0]_1 (U_D_REG_EN_DELAY_n_1),
        .\oDATA_reg[0]_2 (iRSTn));
  D_REG_7 D_REG_iEN_3D
       (.CLK(CLK),
        .\oDATA_reg[0]_0 (\oDATA_reg[0] ),
        .\oDATA_reg[0]_1 (D_REG_iEN_2D_n_0),
        .\oDATA_reg[0]_2 (iRSTn));
  COUNTER_VER3__parameterized0 U_COUNTER_V3_WC
       (.B({B[8],B[4],B[1]}),
        .CLK(CLK),
        .D({U_COUNTER_V3_WC_n_10,U_COUNTER_V3_WC_n_11}),
        .E(U_D_REG_EN_DELAY_n_0),
        .O(CPX_MULT_LOW_n_3),
        .Q({Q,U_COUNTER_V3_WC_n_4}),
        .comp_re_2(comp_re_2),
        .comp_re_2_0(comp_re_2_0),
        .iCLR_IBUF(iCLR_IBUF),
        .\oCNT_reg[0]_0 (U_COUNTER_V3_WC_n_12),
        .\oCNT_reg[0]_1 (U_COUNTER_V3_WC_n_13),
        .\oCNT_reg[0]_2 (U_COUNTER_V3_WC_n_14),
        .\oCNT_reg[0]_3 (U_COUNTER_V3_WC_n_15),
        .\oCNT_reg[0]_4 (U_COUNTER_V3_WC_n_17),
        .\oCNT_reg[0]_5 (U_COUNTER_V3_WC_n_18),
        .\oCNT_reg[0]_6 (iRSTn),
        .\oCNT_reg[2]_0 (\oCNT_reg[2] ),
        .\oCNT_reg[2]_1 (\oCNT_reg[2]_0 ),
        .\oCNT_reg[2]_2 (\oCNT_reg[2]_1 ),
        .\oCNT_reg[3]_0 (U_COUNTER_V3_WC_n_0),
        .\oDATA[0]_i_3 (CPX_MULT_LOW_n_21),
        .\oDATA_reg[15] (D_REG_BF2_IM_n_0),
        .\oDATA_reg[15]_0 ({CPX_MULT_LOW_n_34,CPX_MULT_LOW_n_35}),
        .\oDATA_reg[17] (CPX_MULT_LOW_n_12),
        .\oDATA_reg[1] (CPX_MULT_LOW_n_30),
        .\oDATA_reg[31] (D_REG_BF1_RE_n_0),
        .\oDATA_reg[31]_0 ({CPX_MULT_LOW_n_16,CPX_MULT_LOW_n_17}));
  D_REG__parameterized1 U_D_REG_EN_DELAY
       (.CLK(CLK),
        .E(U_D_REG_EN_DELAY_n_0),
        .iCLR_IBUF(iCLR_IBUF),
        .\oDATA_reg[0]_0 (U_D_REG_EN_DELAY_n_1),
        .\oDATA_reg[0]_1 (\oDATA_reg[0]_0 ),
        .\oDATA_reg[0]_2 (iRSTn));
endmodule

module blk_mem_gen_generic_cstr
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [31:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [6:0]addrb;
  input [6:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

module blk_mem_gen_prim_width
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [31:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [6:0]addrb;
  input [6:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

module blk_mem_gen_prim_wrapper_init
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [31:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [6:0]addrb;
  input [6:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 ;
  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0003001CFFF20016FFE6FFE20008000A001A001DFFE80013001A001B0014FFFB),
    .INIT_01(256'hFFE9FFE20013000DFFFFFFEB001D000A001EFFF9FFEA0010001E0010001D000B),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,1'b0,addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clkb),
        .CLKBWRCLK(clka),
        .DIADI(dina[15:0]),
        .DIBDI(dina[31:16]),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(doutb[15:0]),
        .DOBDO(doutb[31:16]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(enb),
        .ENBWREN(ena),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea}));
endmodule

module blk_mem_gen_top
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [31:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [6:0]addrb;
  input [6:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "7" *) (* C_ADDRB_WIDTH = "7" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "MEMORY.mem" *) 
(* C_INIT_FILE_NAME = "MEMORY.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "80" *) (* C_READ_DEPTH_B = "80" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "80" *) 
(* C_WRITE_DEPTH_B = "80" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [6:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [6:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [6:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [6:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule

module blk_mem_gen_v8_4_2_synth
   (doutb,
    clkb,
    clka,
    enb,
    ena,
    addrb,
    addra,
    dina,
    wea);
  output [31:0]doutb;
  input clkb;
  input clka;
  input enb;
  input ena;
  input [6:0]addrb;
  input [6:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;

  blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
