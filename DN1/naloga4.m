function E = naloga4(h,s)
%obesisceL=[1;5];
%obesisceD=[6;2];
M=[1,2,1,2,1,2,1,2];
L=[1,1.5,1,1.5,1,1.5,1,1.5];
g=9.81;
w=[-1;-1];
%od središča;

%(w,obesisceL,obesisceD,L,M)
E1=potencialna(w,[1;5], s+ [0;h],L(1:4),M(1:4));
hold on
E2=potencialna(w,s+ [0;h],[6;2],L(5:8),M(5:8));

E=E1+E2;
end

%če h=0 mamo isto verižnico