function tocke = deCast(b,t)
% Izracuna tocke na Bezierovi krivulji (st. n) s kontrolnimi tockami b s pomocjo de
% Casteljaujevega algoritma.
% b je vektor velikosti (n+1),
% metoda vrne tocke, enake velikosti kot je t.
tocke=zeros(1,length(t));
for k=1:length(t)
    for j=1:length(b)
        for i=1:length(b)-j
            b(i) = b(i) * (1 - t(k)) + b(i + 1) * t(k);
        end
    end
    tocke(1,k)=b(1,1);
end

