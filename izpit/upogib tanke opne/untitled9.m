c=2.02;
f=@(r) c-r;
R=2;
n=20;

[r,u] = upogib_opne(f,R,n);
u(11);
hold on
%plot(1,u(11),'ro')
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
%%%%%%%%%%%%%%
fun=@(c) u11c(c)+1;
fzero(fun,3)



