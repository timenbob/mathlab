c=2.02;
f=@(r) c-r;
R=2;
n=20;
%%%prva
[r,u] = upogib_opne(f,R,n);
u(11);
hold on
%plot(1,u(11),'ro')
%%%druga
m=40;
[r2,u2] = upogib_opne(f,R,m);
razlika=0;
for i=1:length(r)-1
    raz=abs(u2(i*2)-u(i));
    if raz>razlika
        razlika=raz;
    end
end
u2(1)-u(1)
%%%%%%%%%%%%%%tretja
fun=@(c) u11c(c)+1;
fzero(fun,3)



