L=12.7;
obesisceL=[0.8,7.0];
obesisceD=[4.0,5.9];
tol=10^-15;
T_min = zvVeriznica(obesisceL,obesisceD,L,tol);

obesisceL2=[0.8,7.0-1];
obesisceD2=[4.0,5.9+2];
T_min2 = zvVeriznica(obesisceL2,obesisceD2,L,tol);

d=sqrt((T_min2(1)-T_min(1))^2+(T_min2(2)-T_min(2))^2);

g=@(x) 2*x;
w = zvVeriznica2(obesisceL,obesisceD,L,tol);
hold on
h=@(s) g(s)-w(s);
x=fzero(h,1);
w(x);
plot(x,w(x),'ro')

%%%%%%%%%%%%%%%%%
[dw,D] = zvVeriznica3(obesisceL,obesisceD,L,tol);
f=@(x) sqrt(1+dw(x).^2);
integral(f,0.8,D)

