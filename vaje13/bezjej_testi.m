format long
%benzierove krivulje
%prvi test
bx= [1 2 3 4 3];
by= [0 1 -2 1 1];%komponenete kontrolnih točk

%narišemo kontrolni poligon
%plot(bx,by,'ko--');
%hold on
t=linspace(0,1);

Tx=deCast(bx',t);
Ty=deCast(by',t);

%plot(Tx,Ty)

%drugi test

b2x = [0 2 3 4 3]; 
b2y = [0 1 -2 1 1]; 
b2z = [0 0 1 1 0];
t=linspace(0,1);

T2x=deCast(b2x',t);
T2y=deCast(b2y',t);
T2z=deCast(b2z,t);

%plot3(b2x,b2y,b2z,'ko--')
%hold on
%plot3(T2x,T2y,T2z)

bx= [0 2 3 4 3];
by = [0 1 -2 1 1];

deCast(bx,1/3)
%2.111111111

deCast(by,1/3)
%-0.086419753

%risanje polinoma
b1=[1 0 0 0 0];
b2=[0 1 0 0 0];
b3=[0 0 1 0 0];
b4=[0 0 0 1 0];
b5=[0 0 0 0 1];

