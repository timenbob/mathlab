%23/10/2023
%y''=6t
%y0=1
%y0'=0
fun3=@(x,y)[y(2) 6*x]';
pog=[1 0]';
[i,j]=ode45(fun3,[0,5],pog);
plot(i,j(:,1),'O-')

hold("on")

x=linspace(0,5);
y=x.^3+1;
plot(x,y,'b')
%1,2,3 pri milici


