function t = diskrVeriznica(w0,obesisceL,obesisceD,L,M)

% function x = diskrVeriznica(w0,obesisceL,obesisceD,L,M)
% diskrVeriznica resi problem diskretne veriznice: preko fsolve najde u in v, tako da
% F(u,v) = [0; 0], nato veriznico narise.
% Po knjigi Matematicno modeliranje (E. Zakrajsek).
%
% vhod:
% w0 = [u0;v0] zacetna priblizka,
% obesisceL = [x_0;y_0],
% obesisceD = [x_n+1;y_n+1],
% L = dolzine palic (vektor).
% M = mase palic (vektor).
%
% izhod:
% x je 2x(n+2) tabela koordinat vozlisc.

% vektor mi-jev 'mi' in vektor delnih vsot 'vsote_mi' (vsote_mi = [0,mi_1,mi_1+mi_2,...]; ukaz cumsum)
% glej (3.13) in delno vsoto, ki se pojavlja v (3.16),(3.18),(3.19)

vsote_mi = [];
for i = 1:size(M, 2)-1
    vsote_mi(i) = (M(i) + M(i+1))/2;
end

vsote_mi = [0, cumsum(vsote_mi)];

% iskanje nicle F(u,v) = [U(u,v);V(u,v)]

F = @(w) F_uv(w,obesisceL,obesisceD,L,vsote_mi);
w = fsolve(F, w0);
u = w(1);
v = w(2);


% izracunamo x-e
% glej (3.16) ter (3.18), (3.19) ter (3.8) in (3.9)

ksi = L./sqrt(1 + (v - u*vsote_mi).^2);
eta = ksi.*(v-u*vsote_mi);

x = [obesisceL(1), obesisceL(1) + cumsum(ksi)];
y = [obesisceL(2), obesisceL(2) + cumsum(eta)];

t=[x;y];

% narisemo veriznico
barva = rand(1, 3);
plot(x,y,'ro-','LineWidth',2,'MarkerSize',8,'MarkerFaceColor','r','Color', barva);

end