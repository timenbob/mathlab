function U = gauss_seidl(U,tol)
% GAUSS_SEIDL izvaja Gauss-Seidlovo metodo direktno
% na mrezi U, ki predstavlja diskretizacijo kvadrata
% [-a,a] x [-a,a]. V vsakem koraku iteracije je vsak element
% izracunan kot povprecje njegovih stirih sosedov.
% Pri tem je U matrika z niclami v notranjosti in
% vrednostmi na robu, dolocenimi z robnimi pogoji.
% tol je toleranca, ki doloca natancnost izracunane resitve.