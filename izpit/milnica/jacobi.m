function [U2,k] = laplace_jac(U1, tol, maxIter)

% function [U2,k] = laplace_jac(U1, tol, maxIter)

% Funkcija poisce resitev sistema A u = b z Jacobijevo iteracijo.

% A je Laplaceova matrika v dveh dimenzijah, b je vektor desne strani

%

% Namesto direktno resevanja sistema je dovolj posodabljati vrednosti U1.

% U1 (U2) je n x n zacetna matrika (nastavljeni robni pogoj, znotraj 0)

% Vrednost U2(i,j) dobimo kot povprecje 4 "sosedov" od U1(i,j);

% posodabljanje izvajamo v iteraciji dokler ne dosezemo maxIter korakov ali

% je pogoj za tol izpolnjen.

%

% tol je vrednost tolerance: Iteracija naj se konca, ko max|U2-U1|<tol 

% maxIter je najvecje stevilo korakov iteracije



[n,m] = size(U1);

razlika = inf;

k=0;

U2 = U1;

while (razlika > tol) && (k < maxIter)

    for i=2:n-1

        for j=2:n-1

            U2(i,j) = 1/4*(U1(i,j-1)+U1(i,j+1)+U1(i-1,j)+U1(i+1,j));

        end

    end

    razlika = max(max(abs(U1-U2)));

    U1 = U2;

    k = k+1;

end