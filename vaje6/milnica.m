function milnica(a,n,f_spodaj,f_zgoraj,f_levo,f_desno,tol,metoda)
% MILNICA izracuna obliko milnice na kvadratu
% [-a,a] x [-a,a], kjer so podane robne vrednosti
% s funkcijami f_i. Pri tem je:
% n+2 je stevilo delilnih tock na eni koordinatni osi
% f_i so stiri funkcije ene spremenljivke, ki dolocajo
% vrednosti na robu.
% tol je toleranca pri iterativni metodi
% metoda je stikalo, ki doloca iterativno metodo:
%'Jacobi' = Jacobijevo iteracijo
%'Gauss-Seidel' = Gauss-Seidelovo iteracijo

U=zeros(n+2,n+2);

x=linspace(-a,a,n+2);
y=linspace(-a,a,n+2);

U(1,:)=f_zgoraj(x);
U(n+2,:)=f_spodaj(x);
U(:,1)=f_levo(y);
U(:,n+2)=f_desno(y);

U=jacobi(U,tol);

[X,Y]=meshgrid(x,y);

surf(X,Y,U)
xlabel("x")
ylabel("Y")
