format long

format long
obesisceL=[2.3;3];
obesisceD=[6;1.2];
M=[1.0,2.0,4.2,1.0,1.0,2.0];
L=[1.0,1.5,1.0,1.1,1.0,1.2];
g=9.81;
w0=[-1;-1];
%prva
odg1=potencialna(w0,obesisceL,obesisceD,L,M);

%druga
t=diskrVeriznica(w0,obesisceL,obesisceD,L,M);
y=t(2,:);
l=length(y);
max=-inf;
for i=1:l-1
    raz=abs(y(i)-y(i+1));
    if raz>max
        max=raz;
    end
end

odg2=max;

%tretja
masa=sum(M);
L3=[2,2,2,2,2,2];
M3=[masa/6,masa/6,masa/6,masa/6,masa/6,masa/6];
t3=diskrVeriznica(w0,obesisceL,obesisceD,L3,M3);
odg3=min(t3(2,:));

%cetrta
M4=[-2.0,-4.2,-1.0,-1.0,-2.0];
L4=[1.5,1.0,1.1,1.0,1.2];
levi_clenek=[t(1,2),t(2,2)];
t4=abs(potencialna(w0,levi_clenek,obesisceD,L4,M4) - 1*g*(3+t(2,2))/2);

%peta

fun5=@(h) visina_kraja(h);
odg4=fzero(fun5,5)+1.2;









