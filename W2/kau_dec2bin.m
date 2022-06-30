function [DATA_RE_tmp,DATA_IM_tmp]=kau_dec2bin(NOD,LEN,DATA_RE,DATA_IM)
%%% Add MAX value to minus sequence for dec2bin function
%%% caz dec2bin function isn't allow minus value
%%% -> 음수에 max를 더하면 양수가 된다 -> 이 값이 음수의 binary 값과 같게 된다.
%%% NOD (Number of Data), LEN(length) 

for i=1:NOD
    if(DATA_RE(i)<0)
        DATA_RE_tmp(i) = DATA_RE(i) + 2^LEN;
    else
        DATA_RE_tmp(i) = DATA_RE(i);
    end
end

for i=1:NOD
    if(DATA_IM(i)<0)
        DATA_IM_tmp(i) = DATA_IM(i) + 2^LEN;
    else
        DATA_IM_tmp(i) = DATA_IM(i);
    end
end
