funtion nova
    h0=40000;
    g0=9.81;
    r=6371;
    g=@(h) g0*(r/(r+h))^2;
    m=90;
    c=1;
    S=0.9;
    ro = @(y)  5.038514626813336e-03 + 6.488352761211669e-02*((y-40000)/40000).^(2) + 1.158827281393931e+00*((y-40000)/40000).^(4);
    function rezultat = f(t_opt)
        [y4,v4,~]=padlec([m,c,S],[h0;0],t_opt,10000);
        [y5,~,~]=padalec([m,c*5,S+10],[y4(end,1);v4(end,1)],400-t_opt,10000);%pada 400
        retultat=y4(end,1)+yt(end,1)-h0;
    end
    rezultat=fzero(@f,100)
end