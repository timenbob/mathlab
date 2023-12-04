obesisceL=[1;5];
obesisceD=[6;2];
M=[1,2,1,2,1,2,1,2];
L=[1,1.5,1,1.5,1,1.5,1,1.5];
g=9.81;
w0=[-1;-1];

x=diskrVeriznica(w0,obesisceL,obesisceD,L,M);

h=x(2,2:end)/2+x(2,1:end-1)/2;
E=sum(h.*M)*g;

potencialna(w0,obesisceL,obesisceD,L,M)