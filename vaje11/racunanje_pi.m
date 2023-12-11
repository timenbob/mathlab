function vr=racunanje_pi(N)
    A=rand(N,2);
    K=0;
    for i=1:N
        if A(i,1)^2+A(i,2)^2<=1
            K=K+1;
        end
    end
    
    vr=4*K/N;

end