function y_min = brahistohrona_Ymin(T1,T2)

T1_nov=[0,0];
T2_nov=T2-T1;

[theta,k]=poisciOpt_theta_k(T2_nov(1),T2_nov(2));

x=@(th) 1/2 *k^2*(th-sin(th)) + T1(1);
y=@(th) -1/2 *k^2*(1-cos(th)) + T1(2);

mreza=linspace(0,theta);

cas=k/sqrt(2*9.81)*theta;

X=x(mreza);
Y=y(mreza);
y_min=min(Y);

