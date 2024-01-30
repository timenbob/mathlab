cx = @(t) -cos(t) + 2*cos(0.5.*t);
cy = @(t) -sin(t) + 2*sin(0.5.*t);
t = linspace(0, 4*pi);
x = cx(t);
y = cy(t);
plot(x, y, 'color', [1,0,1], 'LineWidth', 1)
hold on

%oddaljenost c(1) od izhodišča
T = [cx(1), cy(1)];
plot(cx(1), cy(1), '.', 'LineWidth',5)
plot(0,0, '.', 'LineWidth',4)
disp(sqrt(T(1)^2 + T(2)^2))

%dolžina krivuje
cx_o = @(t) sin(t) - 2*sin(0.5.*t)*0.5;
cy_o = @(t) -cos(t) + 2*cos(0.5.*t)*0.5;
fun = @(t) sqrt(cx_o(t).^2 + cy_o(t).^2);
L = integral(fun, 0, 4*pi);
disp(L)

%ploščina zanke
fun2 = @(t) cx(t).*cy_o(t);
S = abs(integral(fun2, 0, 4*pi));
disp(S)

%ukrivljenost v tocki 2*pi
cx_2o = @(t) cos(t) - 0.5*cos(0.5.*t);
cy_2o = @(t) sin(t) - 0.5*cos(0.5.*t);
ukrivljenost = @(t) (cx_o(t)*cy_2o(t) - cx_2o(t)*cy_o(t))/((sqrt(cx_o(t)^2 + cy_o(t)^2))^3);
disp(ukrivljenost(2*pi))
u1 = @(t) cx_o(t)*cy_2o(t) - cy_o(t)*cx_2o(t);
u2 = @(t) (sqrt(cx_o(t)^2 + cy_o(t)^2))^3;
disp(u1(2*pi)/u2(2*pi))

%presecisci z premico
fun3 = @(t) cx(t) + cy(t);
t1 = fzero(fun3, 2);
t2 = fzero(fun3, -2);
disp([cx(t1), cy(t1)])
disp([cx(t2), cy(t2)])
x = [-3, 2];
plot(x, -x)
plot(cx(t1),cy(t1), 'o')
plot(cx(t2),cy(t2), 'o')

%presecisci z drugo krivuljo
c2x = @(t) t./4.*cos(t);
c2y = @(t) t./4.*sin(t);
t2 = linspace(0, 3*pi);
plot(c2x(t2), c2y(t2))
fun4 = @(t) [cx(t(1)); cy(t(1))] - [c2x(t(2)); c2y(t(2))];
tpar = fsolve(fun4, [0.3*pi,2.5*pi]);
disp(cx(tpar(1)))
disp(cy(tpar(1)))
tpar2 = fsolve(fun4, [2.3*pi, 1.8*pi]);
disp(cx(tpar2(1)))
disp(cy(tpar2(1)))