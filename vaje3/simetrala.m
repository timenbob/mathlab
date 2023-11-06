function p=simetrala(A,B)
% simetrala(A,B) vrne simetralo daljice AB
% p=simetrala(A,B);
% p=[a b c] (ax+by+c=0)
% A=[x1,y1], B=[x2,y2]
sredisce=zeros(2,1);
sredisce(1)=A(1)/2 + A(2)/2;
sredisce(2)=B(1)/2 + B(2)/2;
vektor=B-A;
pravokotna=[-vektor(2),vektor(1)];
p=[pravokotna(1) pravokotna(2) -(pravokotna(1)*sredisce(1)+pravokotna(2)*sredisce(2))];



