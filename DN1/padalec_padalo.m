function h = padalec_padalo(topt)
    t_skupni=400;
    parametri1=[90,1,0.9];
    zac1=[40000;0];
    [y,v,t]=padalec(parametri1,zac1,topt,100);
    parametri2=[90,5,10.9];
    zac2=[y(end,1);v(end,1)];
    [yk,vk,tk]=padalec(parametri2,zac2,t_skupni-topt,100);
    h=yk(end,1);
end