function dis=dist_parm(xt,yt,t,T)
    a=xt(t);
    b=yt(t);
    
    dis=sqrt((a-T(1))^2+(b-T(2))^2);
end