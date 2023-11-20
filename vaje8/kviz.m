obesisceL = [0;5];

obesisceD = [5;3];
tol=10^-16;
L=19;
a=obesisceL(1);
A=obesisceL(2);
b=obesisceD(1);
B=obesisceD(2);

%prva

% Jacobijeva iteracija za enacbo (15)
z0=1;
z = zvVeriznica_iteracijskaFun(a,A,b,B,L,z0,10^-16);



% parametri v,u,C,D na koncu strani 4

v= atanh((B-A)/L) + z;
u= atanh((B-A)/L) - z;

C=(b-a)/(v-u);
D=(a*v-b*u)/(v-u);

% lambda, iz enacbe (5) ali (6)

lambda=A-C*cosh((a-D)/C);

% funkcija w, enacba (4)
w = @(x)lambda + C*cosh((x-D)/C) ;
w(2)

%druga

zvVeriznica(obesisceL,obesisceD,L,tol)
y=@(x)lambda + C*cosh((x-D)/C) -x;
%tretja
fsolve(y,1)







