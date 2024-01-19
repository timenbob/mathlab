function cas = brahistohrona(T1,T2)
% function cas = brahistohrona(T1,T2)
% 
% Funkcija narise brahistohrono za robni tocki T1 in T2 in vrne cas potovanja kroglice po njej.
%
% vhod
% T1=[x_1;y1]; T_2=[x_2;y_2]
%





% naredimo premik tock "v izhodisce":
T1_nov=[0,0];
T2_nov=T2-T1;




% poiscemo optimalni theta (in pripadajoci k)
[theta,k]=poisciOpt_theta_k(T2_nov(1),T2_nov(2));

% definiramo diskr. vrednosti parametricne krivulje v odvisnosti od parametra theta
x=@(th) 1/2 *k^2*(th-sin(th)) + T1(1);
y=@(th) -1/2 *k^2*(1-cos(th)) + T1(2);

mreza=linspace(0,theta);

cas=k/sqrt(2*9.81)*theta;
% narisemo krivuljo
X=x(mreza);
Y=y(mreza);
hold on
plot(X,Y,"b",'LineWidth',1)
hold on

