function E=potencialna(w,obesisceL,obesisceD,L,M)
%poračuna energijo
x=diskrVeriznica(w,obesisceL,obesisceD,L,M);
g=9.81;
h=x(2,2:end)/2+x(2,1:end-1)/2;
E=sum(h.*M)*g;

end