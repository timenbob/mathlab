B=95;
T1=[0,6];
T2=[4+B/100,3];
L=12;
tol=10^-15;
T_min = zvVeriznica(T1,T2,L,tol);
odg1=sqrt(T_min(1)^2+T_min(2)^2);

%%%
dol=sqrt((4+B/100)^2+3^2);
odg2=dol/3;
%%%%
% dolzina cas
[dw,D] = zvVeriznica3(T1,T2,L,tol);
f=@(x) sqrt(1+dw(x).^2);
dol3=integral(f,0,D);
odg3=dol3/3

%%%
hold on
fun4=@(x) zvVeriznica4(T1,T2,L,tol,x);
x=fminbnd(fun4,0,3);

y=zvVeriznica44(T1,T2,L,tol,x);

hold on
plot(x,y,'ro')