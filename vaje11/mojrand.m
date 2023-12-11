function P = mojrand(p,q,a,c,m,x0)
% function P = mojrand(p,q,a,c,m,x0)
%
% Funkcija vrne matriko psevdo nakljucnih stevil na podlagi multiplikativnega kongruencnega
% generatorja. Generirana stevila so normirana na intervalu (0,1).
%
% P je matrika "nakljucnih" stevil dim. pxq
% a, c in m so parametri generatorja (veckratnik, zamik, modulo)
% x0 je zacetno stanje

%xn+1 =mod(a*xn+c,m)
stevil=[x0];
xs=x0;
for i=1:p*q-1
   x= mod(a*xs+c,m);
   stevil(i+1)=x;
   xs=x;

end

stevil_nom=(stevil)./max(stevil);
P=zeros(p,q);
for i =1:p
    for j=1:q
        P(i,j)=stevil_nom(i+j-1);
    end
end