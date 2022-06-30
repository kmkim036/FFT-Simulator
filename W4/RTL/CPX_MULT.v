//********************************************************************************************************
//*
//*  Title             : complex multiplier
//*  File Name         : Comp_Mult.v
//*  Author            : Yongchul Jung(Email: ycjung@kau.kr)
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

module CPX_MULT(iCLK,
                iRSTn,
                iEN,
                iCLR,
                iDATA_re_1,
                iDATA_im_1,
                iDATA_re_2,
                iDATA_im_2,
                oDATA_re,
                oDATA_im);
    
    parameter IL1 = 9;
    parameter IL2 = 10;
    parameter OL  = IL1+IL2;
    
    input 				iCLK;
    input				iRSTn;
    input				iEN;
    input				iCLR;
    input	[IL1-1:0]	iDATA_re_1;
    input	[IL1-1:0]	iDATA_im_1;
    input	[IL2-1:0]	iDATA_re_2;
    input	[IL2-1:0]	iDATA_im_2;
    
    output	[OL-1:0]	oDATA_re, oDATA_im;
    
    wire	[OL-2:0]	comp_re_1, comp_im_1;
    wire	[OL-2:0]	comp_re_2, comp_im_2;
    
    wire	[OL-1:0]	oDATA_re_tmp;
    wire	[OL-1:0]	oDATA_im_tmp;
    
    wire	[OL-2:0]	D_ff_re1, D_ff_im1,D_ff_re2, D_ff_im2;
    wire	[OL-2:0] 	iDATA1_re_ext  = {{(IL2-1){iDATA_re_1[IL1-1]}}, iDATA_re_1};
    wire 	[OL-2:0] 	iDATA2_re_ext = {{(IL1-1){iDATA_re_2[IL2-1]}}, iDATA_re_2};
    wire	[OL-2:0] 	iDATA1_im_ext  = {{(IL2-1){iDATA_im_1[IL1-1]}}, iDATA_im_1};
    wire	[OL-2:0] 	iDATA2_im_ext  = {{(IL1-1){iDATA_im_2[IL2-1]}}, iDATA_im_2};
    
    assign	comp_re_1 = iDATA1_re_ext*iDATA2_re_ext;
    assign	comp_re_2 = iDATA1_im_ext*iDATA2_im_ext;
    assign	comp_im_1 = iDATA1_re_ext*iDATA2_im_ext;
    assign	comp_im_2 = iDATA2_re_ext*iDATA1_im_ext;
    
    assign	oDATA_re_tmp = {{comp_re_1[OL-2],comp_re_1}}-{{comp_re_2[OL-2],comp_re_2}};
    assign	oDATA_im_tmp = {{comp_im_1[OL-2],comp_im_1}}+{{comp_im_2[OL-2],comp_im_2}};
    
    D_REG#(
    .WL(OL)
    )D_FF_oDATA_RE(
    .iCLK(iCLK),
    .iRSTn(iRSTn),
    .iEN(iEN),
    .iCLR(iCLR),
    .iDATA(oDATA_re_tmp),
    .oDATA(oDATA_re)
    );
    
    D_REG#(
    .WL(OL)
    )D_FF_oDATA_IM(
    .iCLK(iCLK),
    .iRSTn(iRSTn),
    .iEN(iEN),
    .iCLR(iCLR),
    .iDATA(oDATA_im_tmp),
    .oDATA(oDATA_im)
    );
    
endmodule
    
