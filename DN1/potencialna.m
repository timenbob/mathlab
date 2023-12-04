function E=potencialna(w,obesisceL,obesisceD,L,M)
%poračuna energijo
x1=diskrVeriznica(w,obesisceL,obesisceD,L,M);
[n,m]=size(x1);
g=9.81;

y=x1(2,:);
h=zeros(1, size(M,2));
for i = 1:size(M,2)
    h(i)=(y(i)+y(i+1))/2;
end

E=M*h'*g;

end