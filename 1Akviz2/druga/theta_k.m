function [theta,k] = theta_k(T1,T2)
T1_nov=[0,0];
T2_nov=T2-T1;
[theta,k]=poisciOpt_theta_k(T2_nov(1),T2_nov(2));
