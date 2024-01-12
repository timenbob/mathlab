function y = funkcija(L,x)

obesisceL=[0,20];
obesisceD=[10,15];
tol=10^-15;

a=obesisceL(1);
A=obesisceL(2);
b=obesisceD(1);
B=obesisceD(2);

z0=1;
z = zvVeriznica_iteracijskaFun(a,A,b,B,L,z0,tol);


v= atanh((B-A)/L) + z;
u= atanh((B-A)/L) - z;

C=(b-a)/(v-u);
D=(a*v-b*u)/(v-u);


lambda=A-C*cosh((a-D)/C);

w = @(x)lambda + C*cosh((x-D)/C) ;

y=w(x);


