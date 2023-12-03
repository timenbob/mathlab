format long
parametri1=[90,1,0.9];
zac1=[40000,0];
tk1=25;
n1=10000;
% Vhod:
% parametri = [m,c,S], m je masa, c je koeficient upora (prib. 1 za
% obicajen skok in skakalca), S presek padalca pravokotno na smer padanja
% zac = [y0;v0] sta zacetna visina in zacetna hitrost
% tk je koncni cas, do katerega gledamo padanje (pred odprtjem padala!!!)
% n je stevilo enakomerno razporejenih casovnih trenutkov opazovanja
%
% Za gostoto zraka privzamemo ro=1.225 kg/m^3, tezni pospesek g=9.81 m/s^2
%
% Izhod:
% y so visine padalca ob casih t (vektor dolzine n)
% v so hitrosti padalca ob casih t (vektor dolzine n)
% t je vektor casovnih trenutkov

[y1,v1,t1] = padalec(parametri1,zac1,tk1,n1);
odg1=zac1(1,1)-y1(end,end);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
format long
parametri2=[90,1,0.9];
zac2=[40000,0];
tk2=60;
n2=10000;
[y2,v2,t2] = padalec(parametri2,zac2,tk2,n2);

parametri22=[190,1.1,1];
zac22=[40000,0];
tk22=60;
n22=10000;
[y22,v22,t22] = padalec(parametri22,zac22,tk22,n22);
odg2=abs(v2(end,end)-v22(end,end));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
parametri3=[90,1,0.9];
zac3=[40000,0];
tk3=60;
n3=10000;
[y3,v3,t3] = padalec(parametri3,zac3,tk3,n3);
odg3=max(abs(v3));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
parametri4=[90,5,10.9];
zac4=[y3[k],v3[k]];




