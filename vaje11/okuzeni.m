function ver = okuzeni(N, delezOkuzenih, stPoizkusov)
% function ver = okuzeni(N, verjetnostOkuzenih, stPoizkusov)
%
% Funkcija vrne verjetnost, da je v skupini N ljudi vsaj ena oseba okuzena
% s prenosljivo boleznijo. Podatek delezOkuzenih \in [0,1] pove delez
% okuzenih ljudi v celotni populaciji. Z argumentom stPoizkusov dolocimo
% stevilo ponovitev simulacije.
stevec=0;

for i = 1:stPoizkusov
    B= rand(N);
    st=0;
    for i =1:N
        if B(i)<delezOkuzenih
            st=st+1;
            
        end
    end
    if st>0
        stevec=stevec+1;
    end
   
end

ver=stevec/stPoizkusov;
