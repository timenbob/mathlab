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
sz=size(M);
n=sz(2)-1;

x=zeros(2,2+n);

% vektor mi-jev 'mi' in vektor delnih vsot 'vsote_mi' (vsote_mi = [0,mi_1,mi_1+mi_2,...]; ukaz cumsum)

% glej (3.13) in delno vsoto, ki se pojavlja v (3.16),(3.18),(3.19)

vsote_mi=[0 cumsum(M)]./2;

% iskanje nicle F(u,v) = [U(u,v);V(u,v)]


F = @(w) F_uv(w,obesisceL,obesisceD,L,vsote_mi);

W=fsolve(F,w);
u=W(1);
v=W(2);
% izracunamo x-e

% glej (3.16) ter (3.18), (3.19) ter (3.8) in (3.9)
ksi=zeros(size(L));
for i =1:length(L)
    ksi(i)=L(i)/(sqrt(1+(v-u*vsote_mi(i)).^2));
end

eta=zeros(size(L));
for i =1:length(L)
    eta(i)=ksi(i)*(v-u*vsote_mi(i));
end


vsota_ksi=cumsum(ksi);
vsota_eta=cumsum(eta);


for i=2:n+1
    x(1,i)=obesisceL(1)+vsota_ksi(i-1);
end

for i=2:n+1
    x(2,i)=obesisceL(2)+vsota_eta(i-1);
end

x(1)=obesisceL(1);
x(2)=obesisceL(2);
x(1,n+2)=obesisceD(1);
x(2,n+2)=obesisceD(2);

% narisemo veriznico

plot(x(1,:),x(2,:),'ro-','LineWidth',2,'MarkerSize',8,'MarkerFaceColor','r');






