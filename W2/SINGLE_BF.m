function [oDATA_SINGLE_BF] = SINGLE_BF(N_point,iDATA1,iDATA2,n)
% iDATA1,iDATA2 : S2P ±¸Çö

% BF operation
[oDATA_BF_H,oDATA_BF_L] = BF(iDATA1,iDATA2); 
% twiddle factor
W = exp((-2*n*i*pi)/N_point);    
oDATA_BF1_H_TMP  = oDATA_BF_H;
oDATA_BF2_L_TMP  = oDATA_BF_L*W;

oDATA_SINGLE_BF(1) = oDATA_BF1_H_TMP;
oDATA_SINGLE_BF(2) = oDATA_BF2_L_TMP;
end