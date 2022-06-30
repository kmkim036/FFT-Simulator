//********************************************************************************************************
//*
//*  Title             : Round design
//*  File Name         : Round_2b.v
//*  Author            : JaeYoung Roh(Email: rohjy1002@kau.ac.kr)
//*  Related document  : TM-2008-XX-XX.hwp/doc/ppt/vsd
//*  Organization      : SoC Design Lab.
//*                      School of Electrics, Telecommunications and Computer Engineering (ETCE)
//*                      Korea Aerospace University (KAU)
//*
//*  Simulator         : ModelSim SE 6.2d
//*  Synthesizer       : Synopsys 2004 SP2
//*
//*  Created date      : 2008-10-07
//*  Last updated date : 2008-xx-xx
//*  Update notice     : {date} - {comments}
//*
//*  Version           : Ver0.0
//*
//********************************************************************************************************/

`timescale 1 ns / 100 ps

module ROUND_2B(iDATA,
                oDATA);
    
    parameter IL = 10;
    parameter OL = 7;
    parameter RL = IL - OL;
    
    input [IL-1:0] iDATA;
    output [OL-1:0] oDATA;
    
    wire [1:0] sel = iDATA[RL-1:RL-2];
    
    // to prevent overflow
    // plus round
    // minus round
    assign oDATA = (iDATA[IL-1] == 0) ?
    (&iDATA[IL-2:RL-1]) ?
    (iDATA[IL-1:RL]) :
    (iDATA[IL-1:RL]+iDATA[RL-1]) :
    (sel == 2'b00 || sel == 2'b01) ?
    (iDATA[IL-1:RL]) :
    (sel == 2'b10) ?
    (iDATA[IL-1:RL]+|(iDATA[RL-2:0])) : (iDATA[IL-1:RL]+1'b1);
    
endmodule
    
    
