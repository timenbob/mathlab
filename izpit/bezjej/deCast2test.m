function tocke = deCast2test(b,t)
% Izracuna tocke na Bezierovi krivulji (st. n) s kontrolnimi tockami b s pomocjo de
% Casteljaujevega algoritma.
% b je vektor velikosti (n+1),
% metoda vrne tocke, enake velikosti kot je t.
tocke=zeros(1,length(t));
b_nov=b;
for k=1:length(t)
    b_nov=b;
    for j=1:length(b)-1
        %altgr 1=~
        [~,l]=size(b_nov);
        b_nov=b_nov(1:l-1).*(1-t(k))+b_nov(2:l).*t(k);
    end
    tocke(k)=b_nov;
end
tocke=tocke(end);
