function tocke = deCast(b,t)
% Izracuna tocke na Bezierovi krivulji (st. n) s kontrolnimi tockami b s pomocjo de
% Casteljaujevega algoritma.
% b je vektor velikosti (n+1),
% metoda vrne tocke, enake velikosti kot je t.
tocke=b;
n=length(b);
for j=1:n
    for k=1:n-j
        tocke(k) = tocke(k) * (1 - t) + tocke(k + 1) * t;
    end
end

tocke
