//********************************************************************************************************
//
//  Title             : Butterfly
//  File Name         : BF.v
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
//  Last updated date : 2010-11-20 (by SooHyun JANG)
//  Update notice     : {date} - {comments}
//  Version           : Ver0.0
//
//********************************************************************************************************/
// Updated by Kim Kyeong-min
// From 8-point to 16-point
//********************************************************************************************************/

`timescale 1 ns / 100 ps

module BF(iDATA1,
          iDATA2,
          oDATA_add,
          oDATA_sub);
    
    parameter IL = 16;
    parameter OL = IL+1;
    
    input	[IL-1:0] 	iDATA1;
    input	[IL-1:0] 	iDATA2;
    output	[OL-1:0] 	oDATA_add;
    output	[OL-1:0] 	oDATA_sub;
    
    
    assign oDATA_add = {iDATA1[IL-1],iDATA1} + {iDATA2[IL-1],iDATA2};
    assign oDATA_sub = {iDATA1[IL-1],iDATA1} - {iDATA2[IL-1],iDATA2};
    
    
endmodule
    
    
    
    
    
    
    
    
    
    
    
    
    
    
