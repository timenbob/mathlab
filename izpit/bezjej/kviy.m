seme=550;
rand('seed',seme);
x2=2+rand(1);
cx=[0 1 x2 4];
cy=[0 -1 -1 2];
%%%%%%%%5
t1=0.5;
odg1=deCast(cx,t1);
%%%%%%%%%%
odx=deCast(3*diff(cx),t1);
ody=deCast(3*diff(cy),t1);
odg2=sqrt(odx^2+ody^2);
%%%%%%%%%%%

%%%%%%%%%%%urkrivlejnost
b=[cx;cy];
v= bezier_der(b,t1,1);
vd=bezier_der(b,t1,2);
ukrivljenost = (v(1)*vd(2) - vd(1)*v(2))/((sqrt(v(1)^2 + v(2)^2))^3)