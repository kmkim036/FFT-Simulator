% discard LSB parts of input value
function oDATA = kau_Round(NOD,IL,RL,iDATA)

for t=1:1:NOD,
   
   if((iDATA(t)/2^RL)>=(2^(IL-RL-1)-1)),   % to prevent overflow
         oDATA(t)=floor(iDATA(t)/(2^RL));
    else 
        oDATA(t) = round(iDATA(t)/2^(RL));    
    end
end