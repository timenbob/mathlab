n = 32;
a = 1;
tol = 10^-3;
% primer a
f_levo = @(y) zeros(size(y));
f_desno = @(y) 1-y.^2;
f_zgoraj = @(x) 1-x.^2;
f_spodaj = @(x) x.^2-1;
% primer b
f_levo1 = @(y) 1-y.^2;
f_desno1 = @(y) 1-y.^2;
f_zgoraj1 = @(x) 1-x.^2; 
f_spodaj1 = @(x) 1-x.^2;

%milnica(a,n,f_spodaj,f_zgoraj,f_levo,f_desno,tol,"s")
milnica(a,n,f_spodaj1,f_zgoraj1,f_levo1,f_desno1,tol,"s");