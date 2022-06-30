//********************************************************************************************************
//
//  Title             : FFT TOP
//  File Name         : FFT_TOP.v
//  Author            : Yong chul Jung (Email: ycjung@kau.kr)
//  Related document  : TM-2009-01-10.hwp/doc/ppt/vsd
//  Organization      : SoC Design Lab.
//                      School of Electrics, Telecommunications and Computer Engineering (ETCE)
//                      Korea Aerospace University (KAU)
//
//  Simulator         : ModelSim SE 6.5b
//  Synthesizer       : Synopsys 2004 SP2
//
//  Created date      : 2010-11-09
//  Last updated date : 2010-11-20
//  Update notice     : {date} - {comments}
//  Version           : Ver0.0
//
//********************************************************************************************************/
// Updated by Kim Kyeong-min
// From 8-point to 16-point
//********************************************************************************************************/

`timescale 1 ns / 100 ps

module FFT_Top(iRSTn,
               iCLK,
               iStart_INT,
               iCLR,
               oEN,
               oDATA_re,
               oDATA_im);
    
    parameter WL = 16;
    
    //	Input Signals
    input 					iRSTn;
    input 					iCLK;
    input 					iStart_INT;
    input 					iCLR;
    
    //	Output Signals
    output 					oEN;
    output	[WL-1:0]		oDATA_re;
    output	[WL-1:0]		oDATA_im;
    
    //	Internal Signals
    wire					oEN_RC;
    wire	[6:0]			RADDR;
    wire	[2:0]			STATE;
    
    wire	[2*WL-1:0]		MEM_OUT;
    wire					oEN_FFT;
    wire	[2*WL-1:0]		oDATA_FFT;
    
    wire					iStart_W;
    wire					oEN_WC;
    wire	[6:0]			WADDR;
    wire                   iDATA_RE_1D;
    wire                   iDATA_RE_2D;
    
    // FFT Mem Read Ctrl
    MEM_R_CTRL uMEM_R_CTRL(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iStart_INT(iStart_INT),
    .iCLR(iCLR),
    .oEN_RC(oEN_RC),
    .oEN(oEN),
    .RADDR(RADDR),
    .STATE(STATE)
    );
    
    // FFT Block
    SINGLE_BF U_SINGLE_BF(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iCLR(iCLR),
    .iEN(oEN_RC),
    .STATE(STATE),
    .iDATA(MEM_OUT),
    .oEN(oEN_FFT),
    .oDATA(oDATA_FFT)
    );
    
    // MEMORY Block : SIMPLE DUAL-PORT RAM
    MEMORY U_MEMORY(
    .clka(iCLK),
    .ena(oEN_WC),
    .wea(oEN_WC),
    .addra(WADDR),
    .dina(oDATA_FFT),
    .clkb(iCLK),
    .enb(oEN_RC),
    .addrb(RADDR),
    .doutb(MEM_OUT)
    );
    
    // FFT Mem Write Ctrl
    MEM_W_CTRL uMEM_W_CTRL(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iStart_W(iStart_W),
    .iCLR(iCLR),
    .oEN_WC(oEN_WC),
    .WADDR(WADDR)
    );
    
    // FINAL OUTPUT
    assign		oDATA_re = MEM_OUT[2*WL-1:WL];
    assign		oDATA_im = MEM_OUT[WL-1:0];
    
    // 3clk delay iSTART using Register
    D_REG#(
    .WL(1)
    )D_REG_Write_Start_1D(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(1'b1),
    .iCLR(iCLR),
    .iDATA(iStart_INT),
    .oDATA(iDATA_RE_1D)
    );
    
    D_REG#(
    .WL(1)
    )D_REG_Write_Start_2D(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(1'b1),
    .iCLR(iCLR),
    .iDATA(iDATA_RE_1D),
    .oDATA(iDATA_RE_2D)
    );
    
    D_REG#(
    .WL(1)
    )D_REG_Write_Start_3D(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(1'b1),
    .iCLR(iCLR),
    .iDATA(iDATA_RE_2D),
    .oDATA(iStart_W)
    );
    
endmodule
