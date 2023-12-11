function P=monte_carlo1(f,a,b,N)
    A=(rand(N).*(b-a))+a;
    sum=0;
    for i =1:N
        sum=sum+f(A(i));
    end
    sum=sum/N;

    P=sum*(b-a);
    
end