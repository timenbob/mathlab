function notri = tocka_v_lomljenki(tocke, p)
    % preverimo ali je točka p v lomljenki podani z točkami točke
    notri=0;
    n = length(tocke);
    if n < 3
        notri = false;  %lomljenka more imeti vsaj 3 kose
        return
    end

    
    %if tocke(1,:) == tocke(end,:)
    %    n=n-1;
    %end
    if (tocke(1,1) ~= tocke(end,1))||(tocke(1,2) ~= tocke(end,2))
        tocke=[tocke;tocke(1,:)];
    end
    
    plot(tocke(:,1),tocke(:,2),'ro-')
    hold on
    plot([p(1)]',[p(2)]','bo-')
    % naredimo točko nikje zelo daleč stran da lahko nato vlečemo povezave
    extreme = [inf, p(2)];

    count = 0;%preštejemo vsa presečišča
    
    n=n+1;

    i = 1;
    while true && i<n
        naslednji = i+1;

        %preverimo ali se sekajo premice tocka(i)--tocka(i+1) ter premica
        % p--etreme
        if ali_se_sekajo(tocke(i,:), tocke(naslednji,:), p, extreme)
            %če so premice vsporedne preverimo če se točka p nahaja na
            %premici tocka(i)--tocka(i+1) če se nahajav na premici vrnemo
            %true
            if orientacija(tocke(i,:), p, tocke(naslednji,:)) == 0
                notri = na_premici(tocke(i,:), p, tocke(naslednji,:));
                return
            end
            %če se premice le sekajo števec povečamo
            count = count + 1;
        end
        
        i = naslednji;
        %if i == 1
        %    break
        %end
    end

    %kot pravi Ray-casting aloritem če je števec liho vrnemo
    %true(točka je notri) sicer vrnemo false
    if mod(count, 2) == 1
        notri=1;
    end
    
end


