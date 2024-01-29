function re = u11c(c)

f=@(r) c-r;
R=2;
n=20;

r=linspace(0,R,n+1);
h=abs(r(2)-r(1));
F=f(r).*h^2;
a=[];
for i=1:n-1
    a=[a; (1-1/(2*i))];
end
b=[];
for i=1:n
    b=[b; (-2)];
end
c=[2];
for i=1:n-2
    c=[c; (1+1/(2*i))];
end
u = resi3(a,b,c,F);
u=[u;0];

re=u(11);




