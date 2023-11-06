function U = jacobi(U,tol)
% JACOBI izvaja Jacobijevo metodo na mrezi U, ki predstavlja
% diskretizacijo kvadrata [-a,a] x [-a,a]. Na vsakem koraku
% iteracije je vsak element izracunan kot povprecje njegovih
% stirih sosedov. Pri tem je U matrika z niclami v notranjosti
% in vrednostmi na robu, dolocenimi z robnimi pogoji.
% Pri Jacobijevi metodi potrebujemo pomozno mrezo.
% tol je toleranca, ki doloca natancnost izracunane resitve.

[n,m]=size(U);

while true
    U2=U;

    for i=2:n-1
        for j=2:n-1
            U2(i,j)=(U(i+1,j)+U(i-1,j)+U(i,j+1)+U(i,j-1))/4;
        end
    end

    if max(max(abs(U-U2))) < tol
        break

    else
        U=U2;
    end

end