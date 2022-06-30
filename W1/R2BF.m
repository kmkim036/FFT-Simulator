function [out] = R2BF(N_point,in1,in2,n)
    W = exp((-2*n*i*pi)/N_point);
    out(1) = in1+in2;
    out(2) = (in1-in2)*W;
end
