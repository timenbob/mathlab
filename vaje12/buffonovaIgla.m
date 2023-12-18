function [naDvehLetvah, priblizekPi] = buffonovaIgla(stPonovitev)
% function [naDvehLetvah, priblizekPi] = buffonovaIgla(stPonovitev)
%
% Problem Buffonove igle, kjer je dolzina igle 1 in razdalja med letvami 1.
% stPonovitev je stevilo ponovitev poskusa
% naDvehLetvah je stevilo primerov, ko igla lezi na dveh letvah
% priblizekPi = 2*stPonovitev/naDvehLetvah

naDvehLetvah=0;

for i=1:stPonovitev
    d=rand/2;
    fi=rand*pi;
    if sin(fi)/2>=d
        naDvehLetvah=naDvehLetvah+1;
    end
end

priblizekPi=2*stPonovitev/(naDvehLetvah);
disp(priblizekPi);