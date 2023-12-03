format long
obesisceL=[1;5];
obesisceD=[6;2];
M=[1,2,1,2,1,2,1,2];
L=[1,1.5,1,1.5,1,1.5,1,1.5];
g=9.81;
w=[-2;5];

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%prva naloga
x1=diskrVeriznica(w,obesisceL,obesisceD,L,M);
[n,m]=size(x1);
odg1=mean(x1(1,:));

%druga
%za wp rabimo M G in H mase so kar M G=g in h
y=x1(2,:);
h=zeros(1,size(M,2));
for i = 1:size(M,2)
    h(i)=(y(i)-y(i+1))/2;
end
odg2=M*h'*g;

%tretja
MM=[0.5,0.5,1,1,0.5,0.5,1,1,0.5,0.5,1,1,0.5,0.5,1,1];
LL=[0.5,0.5,0.75,0.75,0.5,0.5,0.75,0.75,0.5,0.5,0.75,0.75,0.5,0.5,0.75,0.75]
x3=diskrVeriznica(w,obesisceL,obesisceD,LL,MM);
odg3=mean(x3(1,:))


