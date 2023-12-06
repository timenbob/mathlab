function h = padalca(t)
    parametri=[130,1.5,1.1];
    zac=[40000;0];
    n=10000;

    [y2,v2,t2]=padalec(parametri,zac,t,n);
    [y22,v22,t22]=padalec(parametri,zac,t-10,n);
    h=abs(y2(end)-y22(end));
end