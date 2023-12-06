function raz = visina_kraja(h)
    obesisceL=[2.3;3];
    obesisceD=[6;1.2+h];
    M=[1.0,2.0,4.2,1.0,1.0,2.0];
    L=[1.0,1.5,1.0,1.1,1.0,1.2];
    w0=[-1;-1];

    t=diskrVeriznica(w0,obesisceL,obesisceD,L,M);
    raz=t(2,2)-3;
end