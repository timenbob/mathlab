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
fun2=@(x) 2+0*x;
ay=fun2(Tx);
plot(ay,Tx)
%%%%%%%%%%%
r_b=rotacija_bezjej(b,pi/6)



