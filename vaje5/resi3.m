function h = resi3(a,b,c,f)
N = length(b) ;
w = zeros(N, 1) ; 
g = zeros(N, 1) ;

w(1) = c(1)/b(1) ;
g(1) = f(1)/b(1) ;


c = [c; 0] ;
a = [0; a] ;

for i=2:N
    w(i) = c(i)/(b(i)-a(i)*w(i-1)) ;
    g(i) = (f(i)-a(i)*g(i-1))/(b(i)-a(i)*w(i-1)) ;
end

h = zeros(N, 1) ;
h(N) = g(N) ;

for i=N-1:-1:1
    h(i) = -w(i)*h(i+1)+g(i) ;
end
end
