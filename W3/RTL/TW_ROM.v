//********************************************************************************************************
//
//   Title             : TW_ROM
//   File Name         : TW_ROM.v
//   Author            : Yongchul Jung	(Email: ycjung@kau.kr)
//   Related document  : TM-2008-XX-XX.hwp/doc/ppt/vsd
//   Organization      : SoC Design Lab.
//                      School of Electrics, Telecommunications and Computer Engineering (ETCE)
//                      Korea Aerospace University (KAU)
//
//   Simulator         : ModelSim SE 6.1f
//   Synthesizer       : Synopsys
//   related document  : xxx.vsd
//   function		   :
//
//   Created date      : 2010-11-14
//   Last updated date : 2009-11-15
//   Update notice     : {date} - {comments}
//
//   Version           : Ver0.0
//
//********************************************************************************************************/
// Updated by Kim Kyeong-min
// From 8-point to 16-point
//********************************************************************************************************/

`timescale 1 ns / 100 ps

module TW_ROM(twiddle_addr,
              oDATA_RE,
              oDATA_IM);
    
    parameter WL = 10;
    parameter WN = 3;
    
    parameter paraP0000 = 10'b0000000000; // 0.0000 = sin(0) = sin(pi) = cos(pi/2)
    parameter paraP3827 = 10'b0011000100; // 0.3827 = sin(pi/8) = sin(7pi/8) = cos(3pi/8)
    parameter paraN3827 = 10'b1100111100; // -0.3827 = cos(5pi/8)
    parameter paraP7071 = 10'b0101101010; // 0.7071 = sin(pi/4) = cos(pi/4)
    parameter paraN7071 = 10'b1010010110; // -0.7071 = cos(3pi/4)
    parameter paraP9239 = 10'b0111011001; // 0.9239 = sin(3pi/8) = sin(5pi/8) = cos(pi/8)
    parameter paraN9239 = 10'b1000100110; // -0.9239 = cos(7pi/8)
    parameter paraP1000 = 10'b0111111111; // 1.0000 = sin(pi/2) = cos(0)
    parameter paraN1000 = 10'b1000000001; // -1.0000 = cos(pi)
    
    input		[WN-1:0]		twiddle_addr;
    output		[WL-1:0] 		oDATA_RE;
    output  	[WL-1:0] 		oDATA_IM;
    
    reg			[WL-1:0]		oDATA_RE;
    reg			[WL-1:0]		oDATA_IM;
    
    always @(twiddle_addr)
    begin
        case(twiddle_addr)	// Q(10,9)
            'd00:
            begin
                oDATA_RE <= #1 paraP1000;
                oDATA_IM <= #1 paraP0000;
            end
            'd01:
            begin
                oDATA_RE <= #1 paraP9239;
                oDATA_IM <= #1 paraN3827;
            end
            'd02:
            begin
                oDATA_RE <= #1 paraP7071;
                oDATA_IM <= #1 paraN7071;
            end
            'd03:
            begin
                oDATA_RE <= #1 paraP3827;
                oDATA_IM <= #1 paraN9239;
            end
            'd04:
            begin
                oDATA_RE <= #1 paraP0000;
                oDATA_IM <= #1 paraN1000;
            end
            'd05:
            begin
                oDATA_RE <= #1 paraN3827;
                oDATA_IM <= #1 paraN9239;
            end
            'd06:
            begin
                oDATA_RE <= #1 paraN7071;
                oDATA_IM <= #1 paraN7071;
            end
            'd07:
            begin
                oDATA_RE <= #1 paraN9239;
                oDATA_IM <= #1 paraN3827;
            end
            default:
            begin
                oDATA_RE <= #1 10'b0100000000;
                oDATA_IM <= #1 10'b0000000000;
            end
        endcase
    end
    
endmodule
    
    
