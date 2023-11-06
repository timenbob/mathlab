function [S,r]=ocrtana_kroznica(T)
% ocrtana_kroznica vrne sredisce in radij ocrtane kroznice
% [S,r]=ocrtana_kroznica(T) vrne sredisce in radij trikotniku T
% ocrtane kroznice. T je 3x2 matrika: [x1 y1; x2 y2; x3 y3].
% S=[x y] %sredisce
% r radij

s1 = simetrala([T(1), T(2)],[T(3),T(4)]);
s2 = simetrala([T(1), T(2)],[T(5),T(6)]);

Tp=presek_premic(s1,s2);

r=norm([T(1),T(2)]-Tp,2);
S=Tp;
