function odg1 = lomljenka(tocke)
    % preverimo ali je res zaporedje točk sklenjena lomljenka.
    n = length(tocke);
    if n < 3
        odg1 = false; %moramo imete več kot 3 točke da ima stvar smisu
        return;
    end
    if tocke(1,:) == tocke(end,:)
        odg1 = false; 
        plot(tocke(:,1),tocke(:,2),'Bo-')
        return;
        %n=n-1;% namesto zgornjih 2h vrstic lahko vstavimo to in kodo
        %spremenimo tako da lahko našo lomljenko podamo na dva načina in
        %sicer: prva in zadnja točka sta enaki ali pa ne
    end
    
    if (tocke(1,1) ~= tocke(end,1))||(tocke(1,2) ~= tocke(end,2))
        tocke=[tocke;tocke(1,:)];
    end
    
    plot(tocke(:,1),tocke(:,2),'Bo-')
    hold on
    n=n-1;%da ne dobimo napake zaradi zadnjega skupnega stičišča
    %potreben je en popravek ko zadnja črta leži na isti črti kot prva

    for i = 1:n
        for j = (i + 2):n %i+2 zato da preskočimo en člen ker z tisti členom se nemore sekat edino kar je lahko je da konec tistega člena leži na daljici vendar to že tako ali tako preverjamo.
            if i ~= j
                p1 = tocke(i, :);
                q1 = tocke(i+1 , :);
                p2 = tocke(j, :);
                q2 = tocke(j+1 , :);
                if ali_se_sekajo(p1, q1, p2, q2)
                    odg1 = false; % se seka
                    return;
                end
            end
        end
    end
    odg1 = true; % se ne seka

    %zadnja točka lezi med prvima dvema ali druga točka lezi med prvo in
    %zadnjo
    if na_premici(tocke(1,:), tocke(end-1,:), tocke(2,:)) || na_premici(tocke(1,:), tocke(2,:), tocke(end-1,:))
        odg1= false;
    end
    
end