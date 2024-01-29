function [r,u] = upogib_opne(f,R,n)
% upogib_opne racuna obliko prereza opne, napete na krozno zanko
% r je delitev v radialni smeri
% u je vektor priblizkov za resitev
% f je desna stran enacbe u''+1/r u' = f(r)
% R je radij krozne zanke
% n je stevilo delilnih intervalov (indeksi: 0,1,2,...,n)
% uporabimo kompakten zapis matrike s 3 stolpci (resi3.m)



% diskretna mreza r-jev in velikost celic h 

r=linspace(0,R,n+1);
h=abs(r(2)-r(1));

% desna stran

F=f(r).*h^2;



% diagonale

a=[];
for i=1:n-1
    a=[a; (1-1/(2*i))];
end

b=[];
for i=1:n
    b=[b; (-2)];
end

c=[2];
for i=1:n-2
    c=[c; (1+1/(2*i))];
end

% resimo 3-diag sistem

u = resi3(a,b,c,F);
u=[u;0];


% narisi u(r)

plot(r,u)

% narisi u(x,y) preko surf [neobvezni dodatek]




