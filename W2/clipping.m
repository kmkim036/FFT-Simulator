% discard MSB parts of input value
function clp_out = clipping(din, bitwidth)
%=========================================================================
% <DESCRIPTION>
% if bitwidth = 10 ->  threshold = (threshold-1) -> 9bit
% din = [513 -513] -> 10 bit
% and then clp_out = [511 -512] % saturation(9bit)
%=========================================================================
    threshold = 2^(bitwidth-1);
    for i = 1: length(din),
        if (din(i) > (threshold-1)),    clp_out(i) = threshold -1; % to prevent plus max
        elseif (din(i) <= -threshold),  clp_out(i) = -threshold+1; % to prevent minus max problem 
        else                            clp_out(i) = din(i);
    end
end
