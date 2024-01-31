function tocka=deCasteljau(b,t)
%b=[xs;ys] izracuna tocko na bezjejevi za t
n=size(b,2);

for i=2:n
    b=(1-t).*b(:,1:end-1)+t.*b(:,2:end);
end
tocka=b(:,end);
end