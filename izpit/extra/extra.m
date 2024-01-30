load("shit.mat")
T=tab(1:50,1:50);
za_odstranit=[10.0, 17.0, 32.0, 40.0, 47.0];

T(za_odstranit, :) = [];
T(:, za_odstranit) = [];
%%%%%%%%%%%%%%%5
B=sort(max(T));
B(35)
%%%%%%%%%%%%
sum=0;
for i=1:45
    for j=1:45
        if mod(i+j,2)==0
            sum=sum+T(i,j);
        end
    end
end
sum