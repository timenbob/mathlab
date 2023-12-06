format long

format long
parametri=[130,1.5,1.1];
zac=[40000;0];
n=10000;
g=9.81;
%%%%%%%%%%%%%%%%%%%%%%
%prva
tk=100;
[y,v,t]=padalec(parametri,zac,tk,n);
odg1=y(end);
%druga
zac2=[40000;0];
zac22=[40000;-10];
tk2=200;
[y2,v2,t2]=padalec(parametri,zac2,tk2,n);
[y22,v22,t22]=padalec(parametri,zac22,tk2,n);
odg2=abs(v2(end)-v22(end));

%tretja
t3=200;
parametri3=[130,1.5,1.1];
zac3=[40000;0];
n=10000;
[y3,v3,t3]=padalec(parametri3,zac3,t3,n);
v3k=v3(end,1);

parametri33=[130,1.5*4,4.4];
zac33=[y3(end,1);v3(end,1)];
[y33,v33,t33]=padalec(parametri33,zac33,10,n);
v333=v33(end,1);
odg3=abs(v333-v3k);


%cetrta
fun=@(m) padalec_teza(m);
odg4=fzero(fun,130);


%peta
fun2=@(t) padalca(t)-1000;
odg5=fzero(fun2,15)



