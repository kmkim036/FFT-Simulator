//********************************************************************************************************
//
//  Title             : SINGLE_BF
//  File Name         : SINGLE_BF.v
//  Author            : Yongchul Jung	(Email: ycjung@kau.kr)
//  Related document  : TM-2009-01-10.hwp/doc/ppt/vsd
//  Organization      : SoC Design Lab.
//                      School of Electrics, Telecommunications and Computer Engineering (ETCE)
//                      Korea Aerospace University (KAU)
//
//  Simulator         : ModelSim SE 6.5b
//  Synthesizer       : Synopsys 2004 SP2
//
//  Created date      : 2012-11-28
//  Last updated date : 2012-11-28
//  Update notice     : {date} - {comments}
//  Version           : Ver0.0
//
//********************************************************************************************************/
// Updated by Kim Kyeong-min
// From 8-point to 16-point
//********************************************************************************************************/

`timescale 1 ns / 100 ps

module SINGLE_BF(iRSTn,
                 iCLK,
                 iCLR,
                 iEN,
                 STATE,
                 iDATA,
                 oEN,
                 oDATA);
    
    //	Parameter
    parameter	STATE0	 = 3'b000;
    parameter	STATE1	 = 3'b001;
    parameter	STATE2	 = 3'b010;
    parameter	STATE3	 = 3'b011;
    parameter	STATE4	 = 3'b100;
    
    parameter	CNT	 = 	16;
    parameter	IL 	 = 	16;
    parameter	OL 	 = 	16;
    parameter	TW	  = 	10;
    
    //	Input Signals
    input 					iRSTn;
    input 					iCLK;
    input 					iCLR;
    input					iEN;
    input	[2:0]			STATE;
    input	[2*IL-1:0]		iDATA;
    
    //	Output Signals
    output 					oEN;
    output	[2*OL-1:0]		oDATA;
    
    //	Internal Signals
    // divide Real, Imag
    wire	[IL-1:0]		iDATA_RE = iDATA[2*IL-1:IL];
    wire	[IL-1:0]		iDATA_IM = iDATA[IL-1:0];
    // Delay_iDATA
    wire	[IL-1:0]		iDATA_RE_D;
    wire	[IL-1:0]		iDATA_IM_D;
    
    // BF
    wire	[IL	 :0]		oDATA_RE_HIGH;
    wire	[IL	 :0]		oDATA_RE_LOW;
    wire	[IL	 :0]		oDATA_IM_HIGH;
    wire	[IL	 :0]		oDATA_IM_LOW;
    
    // High path
    wire	[OL-1:0]		oDATA_RE_HIGH_C;
    wire	[OL-1:0]		oDATA_IM_HIGH_C;
    
    wire	[2*OL-1:0]		oDATA_HIGH;
    
    // Low path
    wire					Cnt_EN;
    wire	[3:0]			oCNT;
    
    wire	[2:0]			TW_ADDR;
    wire	[TW-1:0]		Tw_RE;
    wire	[TW-1:0]		Tw_IM;
    
    wire	[IL+TW:0]		oDATA_RE_LOW_TW;
    wire	[IL+TW:0]		oDATA_IM_LOW_TW;
    
    wire	[OL+1:0]		oDATA_RE_LOW_R;
    wire	[OL+1:0]		oDATA_IM_LOW_R;
    wire	[OL-1:0]		oDATA_RE_LOW_C;
    wire	[OL-1:0]		oDATA_IM_LOW_C;
    
    wire	[2*OL-1:0]		oDATA_LOW;
    
    // oDATA_tmp
    wire	[2*OL-1:0]		oDATA_TMP;
    
    wire                    iEN_1D;
    wire                    iEN_2D;
    
    // SINGLE BF
    //	Delay iDATA
    D_REG#(
    .WL(IL)
    )D_REG_BF1_RE(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(iEN||oEN),
    .iCLR(iCLR),
    .iDATA(iDATA_RE),
    .oDATA(iDATA_RE_D)
    );
    
    D_REG#(
    .WL(IL)
    )D_REG_BF2_IM(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(iEN||oEN),
    .iCLR(iCLR),
    .iDATA(iDATA_IM),
    .oDATA(iDATA_IM_D)
    );
    
    // BF
    BF#(
    .IL(IL),
    .OL(IL+1)
    )BF_RE(
    .iDATA1(iDATA_RE_D),		// Q(16,6)
    .iDATA2(iDATA_RE),
    .oDATA_add(oDATA_RE_HIGH),		// Q(16,6)
    .oDATA_sub(oDATA_RE_LOW)
    );
    
    BF#(
    .IL(IL),
    .OL(IL+1)
    )BF_IM(
    .iDATA1	(iDATA_IM_D),
    .iDATA2	(iDATA_IM),
    .oDATA_add(oDATA_IM_HIGH),
    .oDATA_sub(oDATA_IM_LOW)
    );
    
    
    //	HIGH PATH
    // Clip & Round
    CLIP#(
    .IL(IL+1),
    .OL(OL)
    )CLIP_HIGH_RE(
    // 1 BIT CLIP : Q(17,6) -> Q(16,6)
    .iDATA(oDATA_RE_HIGH),
    .oDATA(oDATA_RE_HIGH_C)
    );
    
    CLIP#(
    .IL(IL+1),
    .OL(OL)
    )CLIP_HIGH_IM(
    // 1 BIT CLIP : Q(17,6) -> Q(16,6)
    .iDATA(oDATA_IM_HIGH),
    .oDATA(oDATA_IM_HIGH_C)
    );
    
    // High path DATA
    assign	oDATA_HIGH = {oDATA_RE_HIGH_C,oDATA_IM_HIGH_C};
    
    //	LOW PATH
    // Counter Control Enable
    D_REG#(
    .WL(1'b1)
    )U_D_REG_EN_DELAY(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(1'b1),
    .iCLR(iCLR),
    .iDATA(iEN),
    .oDATA(Cnt_EN)
    );
    
    // Counter Function
    COUNTER_VER3#(
    .WL(4),
    .IV(0),
    .LSB(0),
    .ECV(CNT-1)
    )U_COUNTER_V3_WC(
    .iCLK(iCLK),
    .iRSTn(iRSTn),
    .iEN(Cnt_EN),
    .iCLR(iCLR),
    .oCNT(oCNT)
    );
    
    // TW_Factor ADDR Control
    assign TW_ADDR = (STATE == STATE1) ? {oCNT[3:1]} :
    (STATE == STATE2) ? {oCNT[2:1],1'b0} :
    (STATE == STATE3) ? {oCNT[3],2'b00} :
    (STATE == STATE4) ? {3'b000} : 0;
    
    // TW_Factor
    TW_ROM U_TW_ROM(		// TW : Q(10,9)
    .twiddle_addr(TW_ADDR),
    .oDATA_RE(Tw_RE),
    .oDATA_IM(Tw_IM)
    );
    
    // Complex Multiplication
    // INPUT  : Q(17,6) x Q(10,9)  // OUTPUT : Q(27,15)
    CPX_MULT#(
    .IL1(IL+1),
    .IL2(10)
    )CPX_MULT_LOW(
    .iCLK(iCLK),
    .iRSTn(iRSTn),
    .iEN(iEN||oEN),
    .iCLR(iCLR),
    .iDATA_re_1(oDATA_RE_LOW),
    .iDATA_im_1(oDATA_IM_LOW),
    .iDATA_re_2(Tw_RE),
    .iDATA_im_2(Tw_IM),
    .oDATA_re(oDATA_RE_LOW_TW),
    .oDATA_im(oDATA_IM_LOW_TW)
    );
    
    // Clip & Round
    ROUND_2B#(
    .IL(IL+11),
    .OL(IL+2)
    )ROUND_2B_LOW_RE(
    // 9 BIT ROUND : Q(27, 15) -> Q(18,6)
    .iDATA(oDATA_RE_LOW_TW),
    .oDATA(oDATA_RE_LOW_R)
    );
    
    ROUND_2B#(
    .IL(IL+11),
    .OL(IL+2)
    )ROUND_2B_LOW_IM(
    // 9 BIT ROUND : Q(27,15) -> Q(18,6)
    .iDATA(oDATA_IM_LOW_TW),
    .oDATA(oDATA_IM_LOW_R)
    );
    
    CLIP#(
    .IL(IL+2),
    .OL(OL)
    )CLIP_LOW_RE(
    // 2 BIT CLIP : Q(18,6) -> Q(16,6)
    .iDATA(oDATA_RE_LOW_R),
    .oDATA(oDATA_RE_LOW_C)
    );
    
    CLIP#(
    .IL(IL+2),
    .OL(OL)
    )CLIP_LOW_IM(
    // 2 BIT CLIP : Q(18,6) -> Q(16,6)
    .iDATA(oDATA_IM_LOW_R),
    .oDATA(oDATA_IM_LOW_C)
    );
    
    // Low Path DATA
    assign oDATA_LOW = {oDATA_RE_LOW_C,oDATA_IM_LOW_C};
    
    //	OUTPUT
    assign	oDATA_TMP = (oCNT[0] == 1) ?
    (oDATA_HIGH) :
    (oCNT[0] == 0) ?
    (oDATA_LOW) : (16'b0);
    
    
    //	FINAL
    // 3clk delay oEN using Shift_Reg
    D_REG#(
    .WL(1)
    )D_REG_iEN_1D(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(1'b1),
    .iCLR(iCLR),
    .iDATA(iEN),
    .oDATA(iEN_1D)
    );
    
    D_REG#(
    .WL(1)
    )D_REG_iEN_2D(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(1'b1),
    .iCLR(iCLR),
    .iDATA(iEN_1D),
    .oDATA(iEN_2D)
    );
    
    D_REG#(
    .WL(1)
    )D_REG_iEN_3D(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(1'b1),
    .iCLR(iCLR),
    .iDATA(iEN_2D),
    .oDATA(oEN)
    );
    
    
    D_REG#(
    .WL(2*IL)
    )D_REG_BF_OUT(
    // 32 BIT	->	RE:Q(16,6) / IM:Q(16,6)
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iEN(iEN||oEN),
    .iCLR(iCLR),
    .iDATA(oDATA_TMP),
    .oDATA(oDATA)
    );
    
endmodule
    
    
    
    
