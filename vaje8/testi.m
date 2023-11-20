% test zvezne veriznice

L = 6.5;

obesisceL = [1;5];

obesisceD = [4;4];

%----------------------------------------------------------

%Iskani z v nelinearni enačbi:

z = 2.295509628549871;

zvVeriznica(obesisceL,obesisceD,L,10^-16)
%najnižja točka verižnice:

%T_min =
%   2.601335317149085
%   1.836847806317597