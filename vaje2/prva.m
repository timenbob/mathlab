%x=0:0.01:1;
%y=0:0.01:2;
format long

%1)

[x,y]=ndgrid(0:0.01:1,0:0.01:2);

f = @(x,y) sin(x.^2-y.^4)./(x.^2-y.^4);
z=f(x,y);

%2)

z(isnan(z))=1;
surf(x,y,z);
hold on
%3)

max(max(z));

a=min(min(z));
t=(z<=a+10^-5);
tx=x(t);
ty=y(t);
tz=z(t);

plot3(tx,ty,tz,'o',Color="red",MarkerSize=5);



%4)

g=diff(z)/0.01;
h=(diff(z')/0.01)';




