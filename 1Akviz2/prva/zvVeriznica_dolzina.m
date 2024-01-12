function vsota = zvVeriznica_dolzina(obesisceL,obesisceD,L,tol, tocka)

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

tocke_x=linspace(obesisceL(1),tocka(1),1000000);
tocke_y=w(tocke_x);
vsota=0;
for i=1:length(tocke_x)-1
    vsota=vsota+norm([tocke_x(i+1)-tocke_x(i),tocke_y(i+1)-tocke_y(i)]);
end






