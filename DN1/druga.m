format long
obesisceL=[1;5];
obesisceD=[6;2];
M=[1,2,1,2,1,2,1,2];
L=[1,1.5,1,1.5,1,1.5,1,1.5];
g=9.81;
w=[-1,1];

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%prva naloga
x1=diskrVeriznica(w,obesisceL,obesisceD,L,M);
n,m=size(x1);
odg1=mean(x1(1,:));
 