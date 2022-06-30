//********************************************************************************************************
//
//  Title             : testbench FFT_TOP
//  File Name         : tb_FFT_TOP.v
//  Author            : Soohyun Jang	(Email: shjang@kau.ac.kr)
//  Related document  : TM-2008-XX-XX.hwp/doc/ppt/vsd
//  Organization      : SoC Design Lab.
//                      School of Electrics, Telecommunications and Computer Engineering (ETCE)
//                      Korea Aerospace University (KAU)
//
//  Simulator         : ModelSim SE 6.1b
//  Synthesizer       : Synopsys 2004 SP2
//
//  Created date      : 2010-11-19
//  Last updated date : 2009-xx-xx
//  Update notice     : {date} - {comments}
//
//  Version           : Ver0.0
//
//********************************************************************************************************/
// Updated by Kim Kyeong-min
// From 8-point to 16-point
//********************************************************************************************************/

`timescale 1 ns / 100 ps

module tb_FFT_TOP_BE();
    
    parameter CLOCK_PERIOD = 50;
    parameter WL           = 16;
    
    reg iCLK;
    reg iRSTn;
    reg iStart_INT;
    reg iCLR;
    
    wire oEN;
    wire [WL-1:0] oDATA_re;
    wire [WL-1:0] oDATA_im;
    
    FFT_Top uut(
    .iRSTn (iRSTn),
    .iCLK (iCLK),
    .iStart_INT (iStart_INT),
    .iCLR (iCLR),
    .oEN (oEN),
    .oDATA_re (oDATA_re),
    .oDATA_im (oDATA_im)
    );
    
    initial
    begin
        // Initialize Inputs
        iCLK       = 0;
        iRSTn      = 1;
        iCLR       = 0;
        iStart_INT = 0;
        // Wait 100 ns for global reset to finish
        #100;
        iRSTn = 0;
        #20;
        iRSTn = 1;
        // Add stimulus here
    end
    
    // CLK
    initial
    begin
        forever #(CLOCK_PERIOD/2)
            iCLK = ~iCLK;
    end
    
    // iStartINT GEN.
    initial
    begin
        #200;
        iStart_INT = 1;
        #300;
        iStart_INT = 0;
    end
    
    // FILE OUT
    wire				iCLK_FFT;
    wire            	oEN_FFT;
    wire	[WL-1:0]	oDATA_re_FFT;
    wire	[WL-1:0]	oDATA_im_FFT;
    
    assign	iCLK_FFT  	 = uut.iCLK;
    assign	oEN_FFT   	 = uut.oEN;
    
    assign	oDATA_re_FFT = uut.oDATA_re ;
    assign	oDATA_im_FFT = uut.oDATA_im ;
    
    integer				fp_oDATA_re_FFT;
    integer 			fp_oDATA_im_FFT;
    
    initial
    begin
        fp_oDATA_re_FFT = $fopen("DATA/OUT_DATA/oDATA_re_HDL_be.txt");
        fp_oDATA_im_FFT = $fopen("DATA/OUT_DATA/oDATA_im_HDL_be.txt");
    end
    
    always@(posedge iCLK_FFT)
    begin
        if (oEN_FFT)
        begin
            $fdisplay(fp_oDATA_re_FFT  ,  "%h", oDATA_re_FFT);
            $fdisplay(fp_oDATA_im_FFT  ,  "%h", oDATA_im_FFT);
        end
    end
    
endmodule
    
    
    
