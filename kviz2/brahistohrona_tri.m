function cas = brahistohrona_tri(T1,T2,x)
% function cas = brahistohrona(T1,T2)
% 
% Funkcija narise brahistohrono za robni tocki T1 in T2 in vrne cas potovanja kroglice po njej.
%
% vhod
% T1=[x_1;y1]; T_2=[x_2;y_2]
%

T1i=T1+[0,x]';

% naredimo premik tock "v izhodisce":
T1_nov=[0,0];
T2_nov=T2-T1i;

% poiscemo optimalni theta (in pripadajoci k)
[theta,k]=poisciOpt_theta_k(T2_nov(1),T2_nov(2));


cas=k/sqrt(2*9.81)*theta;


