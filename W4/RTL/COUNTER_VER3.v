//********************************************************************************************************
//
//  Title             : COUNTER GENERATION
//  File Name         : COUNTER_VER3.v
//  Author            : Soohyun Jang	(Email: shjang@kau.ac.kr)
//  Related document  : TM-2008-XX-XX.hwp/doc/ppt/vsd
//  Organization      : SoC Design Lab.
//                      School of Electrics, Telecommunications and Computer Engineering (ETCE)
//                      Korea Aerospace University (KAU)
//
//  Simulator         : ModelSim SE 6.1b
//  Synthesizer       : Synopsys 2004 SP2
//
//  Created date      : 2009-04-07
//  Last updated date : 2009-xx-xx
//  Update notice     : {date} - {comments}
//
//  Version           : Ver0.0
//  Description       : count form IV to ECV
//********************************************************************************************************/

`timescale 1 ns / 100 ps

module COUNTER_VER3	(iCLK,
                     iRSTn,
                     iEN,
                     iCLR,
                     oCNT);

parameter WL  = 8;
parameter IV  = 0; // initial value
parameter LSB = 2;
parameter ECV = 13; // end-count value

input	       		iCLK;
input	       		iRSTn;
input	     		iCLR;
input	       		iEN;
output	[WL-1:0]	oCNT;

reg		[WL-1:0]	oCNT;

always @(negedge iRSTn or posedge iCLK)
begin
    if (~iRSTn)
    begin
        oCNT <= IV ;
    end
    else if (iCLR)
    begin
        oCNT <= IV ;
    end
        else if (iEN)
        begin
        if (oCNT[WL-1:LSB] == ECV)
        begin
            oCNT <= IV;
        end
        else
        begin
            oCNT <= oCNT+1;
        end
        end
    else
    begin
        oCNT <= oCNT;
    end
end

endmodule
