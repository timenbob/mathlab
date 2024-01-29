function [leva_d,desna_d] = zvVeriznica_dolzina(obesisceL,obesisceD,presecisce,L,tol)

a = obesisceL(1);
b = obesisceD(1);
A = obesisceL(2);
B = obesisceD(2);
z0 = 1;
z = zvVeriznica_iteracijskaFun(a,A,b,B,L,z0,tol);
v = atanh((B-A)/L) + z;
u = atanh((B-A)/L) - z;
C = (b-a)/(v-u);
D = (a*v-b*u)/(v-u);
lambda = A - C * cosh((a-D)/C);
w = @(x) lambda + C * cosh((x-D)/C);
dw = @(x) sinh((x-D)/C);
leva_d = integral(@(x)(sqrt(1+(dw(x)).^2)),a,presecisce(1));
desna_d = L - leva_d;
