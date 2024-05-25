function resitev = ali_se_sekajo(p1, q1, p2, q2)
    % preveri ali se premice p1-q1 in p2-q2 sekajo
    o1 = orientacija(p1, q1, p2);
    o2 = orientacija(p1, q1, q2);
    o3 = orientacija(p2, q2, p1);
    o4 = orientacija(p2, q2, q1);

    % splošno
    if o1 ~= o2 && o3 ~= o4
        resitev = true;
        return;
    end

    % Posebi primeri
    %ena od točk lezi na premici orentacija 0 potem še preverimo če je med
    %točkami če je vrnemo true(se seka)
    if o1 == 0 && na_premici(p1, p2, q1)
        resitev = true;
        return;
    end
    if o2 == 0 && na_premici(p1, q2, q1)
        resitev = true;
        return;
    end
    if o3 == 0 && na_premici(p2, p1, q2)
        resitev = true;
        return;
    end
    if o4 == 0 && na_premici(p2, q1, q2)
        resitev = true;
        return;
    end

    resitev = false;
end