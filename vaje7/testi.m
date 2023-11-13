%AAAA
format long
% test F_uv

F_uv([2; 3],[1 2],[3 5],[1 2 3],[0 2 3])

%ans =
%   0.679124626440447
%  -6.311580158474122




%BBBB

% test diskretne veriznice

L = [1 2 1 1.5 1];

M = [2 4 2 1 1];

obesisceL = [1;5];

obesisceD = [4;4];


%Za rešitev dobimo:

%x =
%    1.0000    1.1540    1.7310    2.7074    3.6099    4.0000
%    5.0000    4.0119    2.0970    1.8811    3.0792    4.0000


%CCCC

%ničla funkcije F je

%w =
%   -1.0325
%   -6.4163
diskrVeriznica([1;-1],obesisceL,obesisceD,L,M)
