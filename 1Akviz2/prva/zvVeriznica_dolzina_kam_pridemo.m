function tocka = zvVeriznica_dolzina_kam_pridemo(obesisceL,obesisceD,L,tol,dolzina)

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

tocke_x=linspace(obesisceL(1),obesisceD(1),1000000);
tocke_y=w(tocke_x);
dol=length(tocke_x);
vsota=0;
i=1;
while (vsota<dolzina) && (i<dol-1)
    vsota=vsota+norm([tocke_x(i+1)-tocke_x(i),tocke_y(i+1)-tocke_y(i)]);
    i=i+1;
end

tocka=[tocke_x(i),tocke_y(i)];






