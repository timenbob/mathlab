m = 105;
c = 1;
S = 1.2;
parametri = [m,c,S];
zac = [40000;0];
tk = 300;
n = 10000;

% numericna resitev
[y,v,t] = padalec(parametri,zac,tk,n);

subplot(1,2,1)
plot(t,y,'bo-')
hold on
title('Pozicija v odvisnosti od casa')

subplot(1,2,2)
plot(t,v,'bo-')
hold on
title('Hitrost v odvisnosti od casa')