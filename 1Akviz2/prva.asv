format long

obesisceL=[0,20];
obesisceD=[10,15];
%%%%%%%%%%%%%%%%%%
%prva
L=15;
tol=10^-15;
T1=zvVeriznica(obesisceL,obesisceD,L,tol);

%druga
odg2=L-sqrt((obesisceL(1)-obesisceD(1))^2+(obesisceL(2)-obesisceD(2))^2);

%tretja
fun3=@(l) zvVeriznica_tri([0,20],[10,15],l,10^-15) - 14;
odg3=fzero(fun3,15);

%cetrta
T4=zvVeriznica(obesisceL,obesisceD,14,tol);
odg4=T4(1)-T1(1)


