function T_min = zvVeriznica(obesisceL,obesisceD,L,tol)
% function T_min = zvVeriznica(obesisceL,obesisceD,L,tol)
% Funkcija zvVeriznica narise zvezno veriznico in poisce njeno najnizjo tocko.
%
% Po knjigi Matematicno modeliranje (E. Zakrajsek).
%
% Vhod
% obesisceL, obesisceD: levo in desno obesisce veriznice, obesisceL=[a;A], obesisceD=[b;B]
% L:                    dolzina
% tol:                  toleranca pri iteraciji
%
% Izhod
% T_min:                najnizja tocka veriznice
%

a=obesisceL(1);
A=obesisceL(2);
b=obesisceD(1);
B=obesisceD(2);

% Jacobijeva iteracija za enacbo (15)
z0=1;
z = zvVeriznica_iteracijskaFun(a,A,b,B,L,z0,tol);



% parametri v,u,C,D na koncu strani 4

v= atanh((B-A)/L) + z;
u= atanh((B-A)/L) - z;

C=(b-a)/(v-u);
D=(a*v-b*u)/(v-u);

% lambda, iz enacbe (5) ali (6)

lambda=A-C*cosh((a-D)/C);

% funkcija w, enacba (4)
w = @(x)lambda + C*cosh((x-D)/C) ;



% graf veriznice
x = linspace(a,b,100);
plot(x,w(x),'b','LineWidth',0.5)
hold on
plot([a,b],[A,B],'ko','MarkerSize',5,'MarkerFaceColor','r');



% najnizja tocka, iz (4), ko je cosh(0) = 1
T_min = [D;w(D) ];


plot(T_min(1),T_min(2),'ko','MarkerSize',5,'MarkerFaceColor','g');
grid on;
hold off