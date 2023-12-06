function h = padalec_teza(m)
    t_skupni=400;
    parametri=[m,1.5,1.1];
    zac=[40000;0];
    n=10000;
    g=9.81;
    [y,v,t]=padalec(parametri,zac,t_skupni,n);
    h=y(end,1);
end