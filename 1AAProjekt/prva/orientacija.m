function or = orientacija(p, q, r)
    % gledamo kako je r orientiran glede na premico pq
    % 0 --> na isti premici
    % 1 --> negativna smer
    % 2 --> pozitivna mser
    or = (q(1) - p(1)) * (r(2) - p(2)) - (q(2) - p(2)) * (r(1) - p(1));
    %vektorski produkt
    if or == 0
        or = 0; % na isti premici
    elseif or > 0
        or = 1; % negativna smer
    elseif or < 0
        or = 2; % pozitivna smer
    end
end