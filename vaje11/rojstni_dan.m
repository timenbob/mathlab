function ver = rojstni_dan(N, poizkusov)
% function ver = rojstni_dan(N, poizkusov)
%
% Funkcija vrne verjetnost, da imata vsaj dva v skupini N ljudi rojstni dan na isti dan
% v letu.
%
% ver je verjetnost, N je stevilo ljudi, poizkusov je stevilo ponovitev poskusa.
stevec=0;

for i = 1:poizkusov
    B= randi([1,365],N,1);
    C = histogram(B,linspace(1,365,366));%lahko bi tut z uniq
    C=C.Values;
    count=0;
    if(any(C>1)) %returns true if any of the elements of v is nonzero
        count=count+1;
        
    end
    if count>=1
        stevec=stevec+1;
    end
end

ver=stevec/poizkusov;
