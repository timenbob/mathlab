format long
%T1=[a,5.1]';
T2=[5.1,0.2]';

t=1.5;
f=@(x) brahistohrona([x;5.1],T2)-1.5;
x1=fzero(f,10);

Tx=3/4 * x1 +1/4*5.1;
%%%%%%%%%
[x,y] = brahistohrona2([x1;5.1],T2);
fun2=@(j) x(j)-Tx;
h=fzero(fun2,0.3);
y(h);
%%%%%%%%
cas = brahistohrona([x1;5.1],T2)
