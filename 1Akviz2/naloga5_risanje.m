format long
T1=[1;5];
T2=[6;2];
hold on
brahistohrona(T1,T2) %narišemo staro
hold on


T1_nov=[0,0];
T2_nov=T2-T1;
[theta,k]=poisciOpt_theta_k(T2_nov(1),T2_nov(2));%stari theta in k
fu= @(l) fun(T1,T2,l)-1.5;%novi theta da bo čas 1.5
dtheta=fzero(fu,3);
hold on
[xe,ye]=fun2(T1,T2,dtheta)%končna točka