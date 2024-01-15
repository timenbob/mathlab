function [xe,ye]=fun2(T1,T2,l)
T1_nov=[0,0];
T2_nov=T2-T1;
[theta,k]=poisciOpt_theta_k(T2_nov(1),T2_nov(2));

x=@(th) 1/2 *k^2*(th-sin(th)) + T1(1);
y=@(th) -1/2 *k^2*(1-cos(th)) + T1(2);

mreza=linspace(0,theta+l);

cas=k/sqrt(2*9.81)*(theta+l);
X=x(mreza);
Y=y(mreza);
hold on
plot(X,Y,"R--",'LineWidth',1)
hold on
xe=X(end);
ye=Y(end);
plot(xe,ye,"Go")
hold on