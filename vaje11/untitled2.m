% Narišite histogram pojavitve cifre, ki pade na pošteni igralni kocki.
B= randi([0,6],50,1);
histogram(B, linspace(0,6,7))
% Narišite histogram pojavitve vsote cifer, ki padeta na dveh igralnih kockah.
c= randi([1,12],50,1);
histogram(c, linspace(1,12,12))