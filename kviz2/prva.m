format long

 obesisceL=[0.70 20.50];
 obesisceD=[10.20 15.50];
 L=15.5;

%prva
tol=10^-15;
T1=zvVeriznica(obesisceL,obesisceD,L,tol);
%druga
odg= zvVeriznica_odv(obesisceL,obesisceD,L,tol,10.20);
%tretja
y3 =@(x) zvVeriznica_tri(obesisceL,obesisceD,L,tol,x)-12;
odg3=fzero(y3,2);
%štiri

[leva_d,desna_d] = zvVeriznica_dolzina(obesisceL,obesisceD,T1,L,tol);
odg4=min(20.5-leva_d,15.5-desna_d)

%pet
y5=@(x) zvVeriznica_pet(obesisceL,obesisceD,L,tol,x)-10.20;
odg5=fzero(y5,5);