function [y,v,t] = padalec(parametri,zac,tk,n)
% function [y,v,t] = padalec(parametri,zac,tk,n)
% 
% Simulacija vertikalnega padanja padalca v odvisnosti od zacetne hitrosti
% in zracnega upora.
%
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

ro = @(y)  5.038514626813336e-03 + 6.488352761211669e-02*((y-40000)/40000).^(2) + 1.158827281393931e+00*((y-40000)/40000).^(4);
g = @(y) 9.81*(6371000/(6371000+y))^2;
m = parametri(1);
c = parametri(2);
S = parametri(3);
K = @(y) 1/2*ro(y)*c*S;

dY = @(t,Y) [Y(2); -g(Y(1))-K(Y(1))/m*abs(Y(2)).*Y(2)];
% Prva komponenta Y(1) predstavlja pozicijo.
% Druga komponenta Y(2) predstavlja hitrost.
% Opomba: Ce je hitrost pozitivna, je sila upora negativna in obratno.
%         Zato namesto y(2).^2 uporabimo -abs(y(2)).*y(2).

t = linspace(0,tk,n);
[~,Yres] = ode45(dY,t,zac);

% visine in hitrosti padalca
y = Yres(:,1);
v = Yres(:,2);


end
