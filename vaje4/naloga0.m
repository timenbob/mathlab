%reševanje ODE

%npr. da rešujemo y' = sin(y) + x (=f(x,y)), y(0)=5

fun = @(x,y) sin(y) + x;
y0=5;
[x,y] = ode45(fun,[0 1 1.5 2],y0);%določimo katere x-se želimo
plot(x,y,'bo-');
hold on
[a,b]=ode45(fun,[0 2],y0);
plot(a,b,'r--');
hold off

%prva

fun2=@(x,y) 2*x;
y_0=1;
[z,w]=ode45(fun2,[0 5],y_0);
plot(z,w);
hold on
x=linspace(0,5);
y=x.^2+1;
plot(x,y,'*--');
hold off

%druga

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




