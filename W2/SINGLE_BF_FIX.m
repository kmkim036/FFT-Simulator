function [oDATA_SINGLE_BF] = SINGLE_BF_FIX(N_point,iDATA1,iDATA2,n)
%======================================================================
% iDATA1,iDATA2 : S2P (serial to parallel)
% INPUT : Q(16,frac bits) = Q(16,6)
%======================================================================
iDATA1_RE = real(iDATA1);  iDATA1_IM = imag(iDATA1);
iDATA2_RE = real(iDATA2);  iDATA2_IM = imag(iDATA2);
%======================================================================
% BF operation 
% INPUT_BF : Q(16,6), OUTPUT_BF : Q(16,6)
%======================================================================
% BF operation
% Q(17,6) = Q(16,6)+Q(16,6)
%======================================================================
[oDATA_BF1_H,oDATA_BF1_L] = BF(iDATA1_RE,iDATA2_RE);    % BF1
[oDATA_BF2_H,oDATA_BF2_L] = BF(iDATA1_IM,iDATA2_IM);    % BF2
%======================================================================
% TW (twiddle factor) : Q(10,9)  
% TIP : *2^9 (floating point value인 W에 Q-format 정의 했으므로)
%======================================================================
W = exp((-2*n*i*pi)/N_point)*2^9; 
% CLIP
W_RE = clipping(real(W),10);  
W_IM = clipping(imag(W),10);
%======================================================================
% SIGN_MULT : Q(26,15)=Q(17,6)*Q(10,9)
%======================================================================
oDATA_BF1_L_RE_TMP  = oDATA_BF1_L*W_RE;  oDATA_BF1_L_IM_TMP  = oDATA_BF1_L*W_IM;
oDATA_BF2_L_RE_TMP  = oDATA_BF2_L*W_IM;  oDATA_BF2_L_IM_TMP  = oDATA_BF2_L*W_RE;
%======================================================================
% ADD/SUB : Q(27,15)=Q(26,15)+Q(26,15)
%======================================================================
oDATA_BF1_L_TMP_RE = oDATA_BF1_L_RE_TMP - oDATA_BF2_L_RE_TMP;
oDATA_BF2_L_TMP_IM = oDATA_BF1_L_IM_TMP + oDATA_BF2_L_IM_TMP;
%======================================================================
% ROUND/CLIP 
% HIGH DATA PATH : Q(17,6)  -> 1-bit CLIP   -> Q(16,6)
% LOW  DATA PATH : Q(27,15) -> 9-bit ROUND  -> Q(18,6)  -> 2-bit CLIP   ->Q(16,6)
% TIP : 항상 ROUND -> CLIP 순서 지킬 것
%======================================================================
NUM=length(oDATA_BF1_L_TMP_RE);
% ROUND
R_oDATA_BF1_L_TMP_RE = kau_Round(NUM,27,9,oDATA_BF1_L_TMP_RE);  
R_oDATA_BF2_L_TMP_IM = kau_Round(NUM,27,9,oDATA_BF2_L_TMP_IM);
% CLIP
C_oDATA_BF1_H_RE = clipping(oDATA_BF1_H,16);  
C_oDATA_BF2_H_IM = clipping(oDATA_BF2_H,16);

C_oDATA_BF1_L_TMP_RE = clipping(R_oDATA_BF1_L_TMP_RE,16);  
C_oDATA_BF2_L_TMP_IM = clipping(R_oDATA_BF2_L_TMP_IM,16);
%======================================================================
% OUTPUT_SINGLE_BF : Q(16,frac bits)
%======================================================================
oDATA_SINGLE_BF(1) = complex(C_oDATA_BF1_H_RE,C_oDATA_BF2_H_IM);
oDATA_SINGLE_BF(2) = complex(C_oDATA_BF1_L_TMP_RE,C_oDATA_BF2_L_TMP_IM);
end