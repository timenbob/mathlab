format long
T1=[1;5];
T2=[6;2];
g=9.81;
%%%%%%%%%%%%%%%%%
%prva
odg1=brahistohrona(T1,T2);

%druga
%čas od 0 do 1
t1=sqrt(6/g);
t2=3/sqrt(2*g*3);
odg2=t1+t2

%tretja
odg3=sqrt(2*g*3);

%cetrta
y_min = brahistohrona_Ymin(T1,T2);
odg4=sqrt(2*g*(5-y_min))