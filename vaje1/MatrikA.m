function M = MatrikA(x,y)

M= x' ./ y;% in inf zamenjamo z 1

%druga varijana ndgrid
%[x2d,y2d]=ndgrid(x,y);
%x2d ./ y2d == x' ./y

M(M==Inf)=1;


