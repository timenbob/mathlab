t = linspace(0,4*pi);
cx = @(t) -cos(t) + 2*cos(t/2);
cy = @(t) -sin(t) + 2*sin(t/2);

dcx=@(t) sin(t)-sin(t./2);
dcy=@(t) -cos(t)+cos(t./2);

ddcx=@(t) cos(t)-0.5*cos(t./2);
ddcy=@(t) sin(t)-0.5*sin(t./2);

x=cx(t);
y=cy(t);
%plot(x,y)

% 1)
odg1=sqrt(cx(1)^2+cy(1)^2);

% 2)
fun2=@(t) sqrt((sin(t)-sin(t./2)).^2+(-cos(t)+cos(t./2)).^2);
odg2=integral(fun2,0,4*pi);

% 3)
fun3= @(t) (sin(t)-sin(t./2)).*(-sin(t) + 2*sin(t/2));
odg3=integral(fun3,0,4*pi);

% 4)
fun4=@(t)(dcx(t).*ddcy(t)-ddcx(t).*dcy(t))/((sqrt(dcx(t).^2+dcy(t).^2))^3);
odg4=fun4(2*pi);

% 5)
t1=fzero(@(t) cx(t)+cy(t),-2);
x1=cx(t1);
y1=cy(t1);

t2=fzero(@(t) cx(t)+cy(t),2);
x2=cx(t2);
y2=cy(t2);

% 6)
l=linspace(0,3*pi);
ex=@(t) t./4 .* cos(t);
ey=@(t) t./4 .* sin(t);

fun6= @(t) [cx(t(1));cy(t(1))]-[ex(t(2));ey(t(2))];
tpar=fsolve(fun6,[0.3*pi;2.5*pi]);
odg6a=[cx(tpar(1)),cy(tpar(1))]%to je druga

tpar2=fsolve(fun6,[2*pi;2*pi]);
odg6b=[cx(tpar2(1)),cy(tpar2(1))];%to je prva

% 7)

