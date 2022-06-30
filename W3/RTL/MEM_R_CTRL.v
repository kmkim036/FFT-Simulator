//********************************************************************************************************
//
//  Title             : FFT Memory Read controller
//  File Name         : MEM_R_CTRL.v
//  Author            : Yong Chul Jung	(Email: ycjung@kau.kr)
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

module MEM_R_CTRL(iRSTn,
                  iCLK,
                  iStart_INT,
                  iCLR,
                  oEN_RC,
                  oEN,
                  RADDR,
                  STATE);
    
    //	parameter Definition
    parameter	STATE0	 = 3'b000;
    parameter	STATE1	 = 3'b001;
    parameter	STATE2	 = 3'b010;
    parameter	STATE3	 = 3'b011;
    parameter	STATE4	 = 3'b100;
    parameter	STATE5	 = 3'b101;
    parameter	CNT		   = 20;
    
    //	Input Signals
    input 				iRSTn;
    input 				iCLK;
    input 				iStart_INT;
    input 				iCLR;
    
    //	Output Signals
    output 				oEN_RC;
    output 				oEN;
    output	[6:0]		RADDR;
    output	[2:0]		STATE;
    
    //	Internal Signals
    reg		[2:0]		current_state;
    wire	[2:0]		next_state;
    wire				Cnt_EN;
    
    wire	[4:0]		oCNT;
    wire				oEN_FINAL;
    
    // FSM
    // Current State register
    always @(posedge iCLK or negedge iRSTn)
    begin
        if (~iRSTn)
        begin
            current_state <= STATE0;
        end
        else if (iCLR)
        begin
            current_state <= STATE0;
        end
        else
        begin
            current_state <= next_state;
        end
    end
    
    
    // Next State logic
    assign next_state = (current_state == STATE0) ? ((iStart_INT == 1) ? STATE1 : STATE0) :
    (current_state == STATE1) ? ((oCNT == CNT-1) ?	STATE2 : STATE1) :
    (current_state == STATE2) ? ((oCNT == CNT-1) ? STATE3 : STATE2) :
    (current_state == STATE3) ? ((oCNT == CNT-1) ? STATE4 : STATE3) :
    (current_state == STATE4) ? ((oCNT == CNT-1) ? STATE5 : STATE4) :
    (current_state == STATE5) ? ((oCNT == CNT-1) ? STATE0 : STATE5) : STATE0;
    
    
    // Output_logic
    // Counter Enable Gen
    assign Cnt_EN = (current_state == STATE0) ? 1'b0 : 1'b1 ;
    
    // Counter Function
    COUNTER_VER3#(
    .WL(5),
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
    
    
    // Final Outputs : oEN_RC, RADDR, oEN_FINAL, STATE
    assign	oEN_RC = (current_state == STATE1) ? ((oCNT < 5'd16) ? {1'b1} : 0) :
    (current_state == STATE2) ? ((oCNT < 5'd16) ? {1'b1} : 0) :
    (current_state == STATE3) ? ((oCNT < 5'd16) ? {1'b1} : 0) :
    (current_state == STATE4) ? ((oCNT < 5'd16) ? {1'b1} : 0) :
    (current_state == STATE5) ? ((oCNT < 5'd16) ? {1'b1} : 0) : 0;
    
    assign	RADDR = (current_state == STATE1) ? {3'b000,{oCNT[0]},{oCNT[3]},{oCNT[2]},{oCNT[1]}} :
    (current_state == STATE2) ? {3'b001,{oCNT[3]},{oCNT[0]},{oCNT[2]},{oCNT[1]}} :
    (current_state == STATE3) ? {3'b010,{oCNT[2]},{oCNT[1]},{oCNT[0]},{oCNT[3]}} :
    (current_state == STATE4) ? {3'b011,{oCNT[3:0]}} :
    (current_state == STATE5) ? {3'b011,{oCNT[3:0]}} :	0;
    
    assign	oEN_FINAL = 	(current_state == STATE5)	? ((oCNT < 5'd16) ? 1'b1 : 0) : 0;
    
    assign	STATE = current_state;
    
    
    D_REG#(
    .WL(1)
    )D_REG_oEN(
    .iRSTn(iRSTn),
    .iCLK(iCLK),
    .iCLR(iCLR),
    .iEN(1'b1),
    .iDATA(oEN_FINAL),
    .oDATA(oEN)
    );
    
endmodule
    
