function lezi = na_premici(p, q, r)
% Preveri, ali je točka q na premici pr


lezi=false;
lamda1=(q(1)-p(1)) / (r(1) - p(1));
lamda2=(q(2)-p(2)) / (r(2) - p(2));%izračunamo labde, ki pove kje se nahaja točka q glede na premico pr q=p+lamda*(r-q)

if isnan(lamda2) || isnan(lamda1) %se zgodi ko je kakšna od lamnd nedefinirana / premica je navprična ali vodoravna
    lezi = (q(1) <= max(p(1), r(1)) && q(1) >= min(p(1), r(1)) && q(2) <= max(p(2), r(2)) && q(2) >= min(p(2), r(2)));
    return;% lahko se lepo pokaže s skico kvadrata
end

if lamda2==lamda1 && 0<=lamda1 && lamda1<=1 %če se lambdi ujemata in sta med 0 in 1 potem točka res leži na daljici
   lezi=true;
end

end