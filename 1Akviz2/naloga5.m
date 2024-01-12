format long
T1=[1;5];
T2=[6;2];
g=9.81;
T1_nov=[0,0];
T2_nov=T2-T1;
[theta,k]=poisciOpt_theta_k(T2_nov(1),T2_nov(2));
fu= @(l) fun(T1,T2,l)-1.5;
dtheta=fzero(fu,3);

[xe,ye]=fun2(T1,T2,dtheta)
odg5=sqrt(xe^2+ye^2)

