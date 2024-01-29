format long
T1=[1;5];
T2=[6;2];
g=9.81;
%%%%%%%%%%%%%%%%%
%prva
odg1=brahistohrona(T1,T2);

%druga
T3=[3;2];
%k=(y1-y2)/(x1-x2)=-3/2
y=@(x) -3/2*x; %+13/2;
dy=@(x) -3/2;
f= @(x) sqrt((1+dy(x).^2)./(2*g.*(-y(x))));
t1=integral(f,0,2);
t2=3/sqrt(2*g*3);
odg2=t1+t2
 
%tretja
odg3=sqrt(2*g*3);

%cetrta
y_min = brahistohrona_Ymin(T1,T2);
odg4=sqrt(2*g*(5-y_min));

%peta
%cas = brahistohrona5(T1,T2)

