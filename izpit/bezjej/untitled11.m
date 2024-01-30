b0=[0.0,0.0];
b1=[2.10,0.0];
b2=[2.0,2.80];
b3=[1.0,0.0];
b4=[2.10,-1.0];
b5=[2.80,0.0];

bx=[0 2.1 2 1 2.1 2.8];
by=[0 0 2.8 0 -1 0];%%%%%%%%%%ne rabis transponirat
t=linspace(0,1,1000);

Tx=deCast(bx,t);
Ty=deCast(by,t);
odg1=mean(Tx);

plot(Tx,Ty)
hold on
plot(bx,by,'ro--')
hold on
%%%%%%%%%%%%
f=@(x) deCast2test(bx,x)-2;
z=fzero(f,1/3);
y=deCast2(by,z);
odg=y(end)

%%%%%%%%%%%
b=[bx;by];
r_b=rotacija_bezjej(b,pi/6);
%rabis se k in n da nrdis funkcijo



