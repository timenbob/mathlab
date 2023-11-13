function x = diskrVeriznica(w,obesisceL,obesisceD,L,M)
% diskrVeriznica resi problem diskretne veriznice: preko fsolve najde u in v, tako da

% F(u,v) = [0; 0], nato veriznico narise.

% Po knjigi Matematicno modeliranje (E. Zakrajsek).



% vhod:

%w0 = [u0;v0]; %zacetna priblizka,

%obesisceL = [x_0;y_0];

%obesisceD = [x_n+1;y_n+1];

% L = dolzine palic (vektor).

% M = mase palic (vektor).

%

% izhod:

% x je 2x(n+2) tabela koordinat vozlisc.
[q,m]=size(M);
n=m-1;

x=zeros(2,2+n);

u=w(1);
v=w(2);

% vektor mi-jev 'mi' in vektor delnih vsot 'vsote_mi' (vsote_mi = [0,mi_1,mi_1+mi_2,...]; ukaz cumsum)

% glej (3.13) in delno vsoto, ki se pojavlja v (3.16),(3.18),(3.19)

vsote_mi=[0 cumsum(M)]./2;

% iskanje nicle F(u,v) = [U(u,v);V(u,v)]


F = @(w) F_uv(w,obesisceL,obesisceD,L,vsote_mi);

W=fsolve(F,w);
U=W(1,:);
V=W(:,1);
% izracunamo x-e

% glej (3.16) ter (3.18), (3.19) ter (3.8) in (3.9)

ksi=cumsum(U);
eta=cumsum(V);


for i=1:size(L)
    x(i:1)=obesisceL(1)+ksi(i);
end

for i=1:size(L)
    x(i:2)=obesisceL(2)+eta(i);
end

% narisemo veriznico

plot(x(1,:),x(2,:),'ro-','LineWidth',2,'MarkerSize',8,'MarkerFaceColor','r');






