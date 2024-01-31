%parametricne vaje

seme=47;
rand('seed',seme);
a=6+rand(1);

xt=@(t) a*cos(t);
yt=@(t) (a+1)*sin(t);

t=linspace(0,2*pi);
%%%%%%%%%%%%%%%
odg1=sqrt((xt(sqrt(2)))^2+(yt(sqrt(2)))^2);
%%%%%%%%%%%%%%%%
T1=[12;5];

fun=@(t) dist_parm(xt,yt,t,T1);

odg2=fminsearch(fun,pi/4);
%%%%%%%%%%%%%%%%
odg3=sqrt((xt(odg2)-12)^2+(yt(odg2)-5)^2);
%%%%%%%%%%%
fun4=@(t) exp(xt(t))-yt(t);
t4=fzero(fun4,pi/4);
odg4=xt(t4)

