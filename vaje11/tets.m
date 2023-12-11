%ukazi za generiranje psevdo nakjučnih števil
%rand interval 0 1
A=rand(50,60); % matrika velikosti 50,60 z vrednostmi med 0 in 1

% round floor ceil ukazi za zaokroževanje
% randi([intrval od kej do kje mamo števila], velikost matrika(3,4)) vrne cela števila
B= randi([1,10],3,4);

%randn(5) gausova porazdelitev

%histogram(A,10)%naredi 10 stolpcev

%histogram(A,linspace(0,1,11))%vektor porazdelitve košev

histogram(randn(100))