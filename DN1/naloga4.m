function E = naloga4(h)
obesisceL=[1;5];
obesisceD=[6;2];
M=[1,2,1,2,1,2,1,2];
L=[1,1.5,1,1.5,1,1.5,1,1.5];
g=9.81;
w=[-1;-1];
s=[2.5;0.27];%od središča;

E1=potencialna([1,6 ; s+ [0;h]],L(1:4),M(1:4))
E2=potencialna([s+ [0;h] ; 5,2],L(5:8),M(5:8))

E=E1+E2;
end

%če h=0 mamo isto verižnico