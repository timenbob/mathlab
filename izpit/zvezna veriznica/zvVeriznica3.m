function [dw,D] = zvVeriznica3(obesisceL,obesisceD,L,tol)
a=obesisceL(1);
A=obesisceL(2);
b=obesisceD(1);
B=obesisceD(2);

z0=1;
z = zvVeriznica_iteracijskaFun(a,A,b,B,L,z0,tol);



% parametri v,u,C,D na koncu strani 4

v= atanh((B-A)/L) + z;
u= atanh((B-A)/L) - z;

C=(b-a)/(v-u);
D=(a*v-b*u)/(v-u);

% lambda, iz enacbe (5) ali (6)

lambda=A-C*cosh((a-D)/C);

% funkcija w, enacba (4)
w = @(x)lambda + C*cosh((x-D)/C) ;

T_min = [D;w(D) ];

dw= @(x) C*sinh((x-D)/C)/C;
