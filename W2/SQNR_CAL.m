function [oSQNR] = SQNR_CAL(REF_VAL,CR_VAL,RL)
   % SQNR CALCULATION MODULE
    MSE   = mean(abs(REF_VAL - CR_VAL*2^(RL)).^2);
    oSQNR = 10*log10(mean(abs(REF_VAL).^2)/MSE);
  
end