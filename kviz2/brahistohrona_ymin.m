function [cas,theta,k] = brahistohrona_ymin(T1,T2)

T1_nov=[0,0];
T2_nov=T2-T1;

% poiscemo optimalni theta (in pripadajoci k)
[theta,k]=poisciOpt_theta_k(T2_nov(1),T2_nov(2));

% definiramo diskr. vrednosti parametricne krivulje v odvisnosti od parametra theta
x=@(th) 1/2 *k^2*(th-sin(th)) + T1(1);
y=@(th) -1/2 *k^2*(1-cos(th)) + T1(2);

mreza=linspace(0,theta);

X=x(mreza);
Y=y(mreza);

cas=min(Y);
theta=theta;
k=k;
