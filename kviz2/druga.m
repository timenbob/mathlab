g=9.81;
T0=[0.00 5.00]';
T1=[8.70 2.00]';

%prva
odg1=brahistohrona(T0,T1);

%druga
odg2=sqrt(2*g*2);

%tretja
y3 = @(x) brahistohrona_tri(T0,T1,x)-2;
odg3=fzero(y3,15);

%stiri
[y_min,theta1,k]=brahistohrona_ymin(T0,T1);%dobimo minimalni y

th =@(l) brahistohrona_theta_l(T0,T1,l);
theta2=fsolve(th,y_min)+theta1

odg4=k/sqrt(2*9.81)*theta2;

%peta
b=5;
a=(2-5)/(sin(8.70/4));
fun5=@(x) a*sin(x/4);
dfun5=@(x) a/4 * cos(x/4);
f= @(x) sqrt((1+dfun5(x).^2)./(2*g.*(-fun5(x))));
t1=integral(f,0,8.70);