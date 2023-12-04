format long
obesisceL=[1;5];
obesisceD=[6;2];
M=[1,2,1,2,1,2,1,2];
L=[1,1.5,1,1.5,1,1.5,1,1.5];
g=9.81;
w=[-1;-1];

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%prva naloga
x1=diskrVeriznica(w,obesisceL,obesisceD,L,M);
[n,m]=size(x1);
odg1=mean(x1(1,:));

%druga
%za wp rabimo M G in H mase so kar M G=g in h
y=x1(2,:);
h=zeros(1, size(M,2));
for i = 1:size(M,2)
    h(i)=(y(i)+y(i+1))/2;
end
odg2=M*h'*g;

%tretja

MM=zeros(1, size(M,2)*2);
LL=zeros(1, size(M,2)*2);
k=1;
for i = 1:size(M,2)
    MM(k)=M(i)/2;
    MM(k+1)=M(i)/2;
    LL(k)=L(i)/2;
    LL(k+1)=L(i)/2;
    k=k+2;
end

x3=diskrVeriznica(w,obesisceL,obesisceD,LL,MM);
odg3=x3;

%cetrta
s=[2.543175828723523;0.275821184647270];
%x=diskrVeriznica(w,obesisceL,obesisceD,L,M);
%naloga4(1,s)
fun= @(h)naloga4(h,s)-180;
fzero(fun,1)

%peta




