function [U,k] = milnica(a,n,funL,funD,funS,funZ,tol,maxIter,metoda)

% funkcija [U,k] = milnica(a,n,funL,funD,funS,funZ,tol,maxIter,metoda) izracuna 

% obliko milnice na kvadratu [-a,a]^2, 

% ce so podane robne vrednosti.

% Resevanje D^2 u = 0, u \in (-a,a)^2,

%               u = f, u \in \partial [-a,a]^2

% prevedemo preko metode koncnih diferenc na resevanja linearnega sistema.

%

% a doloca velikost domene [-a,a]^2

% n+2 je stevilo delilnih tock na eni koordinatni osi

% funL,funD,funS,funZ so robne funkcije za (-a,y), (a,y), (x,-a) oz. (x,a)

% parametre maxIter in tol podamo funkciji laplace

%

% u je diskretna resitev problema, U je matrika, ki je preoblikovan u 

% k je stevilo iteracij metode za resevanje lin. sistema



% Dolocimo robne vrednosti za U

x = linspace(-a,a,n+2);

% rp = feval(fun,x,a);



U=zeros(n+2);

U(:,1) = funL(x)';

U(:,n+2) = funD(x)';

U(1,2:n+1) = funS(x(2:end-1));

U(n+2,2:n+1) = funZ(x(2:end-1));



[U,k]=laplace_jac(U,tol,maxIter);



% narisemo resitev

enke = ones(1,n+2);

robx = [ -a*enke x a*enke x ];

roby = [ x  a*enke x  -a*enke];

% U=flipud(U);

clf



plot3(-a+0*x, x,      funL(x),'r-', 'Linewidth',2)

hold on

plot3(a+0*x,  x,      funD(x),'r-', 'Linewidth',2)

plot3(x,      -a+0*x, funS(x),'r-', 'Linewidth',2)

plot3(x,      a+0*x,  funZ(x),'r-', 'Linewidth',2)



surf(x,x,U);

xlabel('X');ylabel('Y');

%axis equal

hold off