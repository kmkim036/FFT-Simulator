//********************************************************************************************************
//
//  Title             : Clipping Block
//  File Name         : CLIP.v
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

`timescale 1 ns / 100 ps

module CLIP(iDATA,
            oDATA);
    
    parameter IL = 10; // Register Input Bit Width(Input Word Length). IL must be greater than OL.
    parameter OL = 8; // Register Output Bit Width(Output Word Length). OL must be smaller than IL.
    
    input  [IL-1:0] iDATA; // Input Data
    output [OL-1:0] oDATA; // Clipped data(Output Data)
    
    wire   [OL-1:0] oDATA;
    
    assign oDATA = (iDATA[IL-1]) ?
    ((((&iDATA[IL-2:OL-1]) == 0)|((|iDATA[OL-2:0]) == 0)) ?
    ({iDATA[IL-1],{(OL-2){1'b0}},{1'b1}}) :
    ({iDATA[IL-1],iDATA[OL-2:0]})) : // to prevent minus max problem
    ((|(iDATA[IL-2:OL-1])) ?
    ({iDATA[IL-1],{(OL-1){1'b1}}}) : ({iDATA[IL-1],iDATA[OL-2:0]}));
    
endmodule
