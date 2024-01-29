function [x_t,y_t]=aproks_kroz(segmentov,tock,L);
%APROKS_KROZ aproksimira kroznico s Hermitovo interpolacijo
%[x_t,y_t]=APROKS_KROZ(segmentov,tock,L)
%segmentov je stevilo segmentov kroznice (celo stevilo)
%tock je stevilo tock na posameznem segmentu
%L je parameter, ki doloca interpolant (ce ga ne podamo, se postavi na
%optimalno vrednost
%x_t in y_t sta vektorja (stolpca) abscis in ordinat interpolanta

a=2*pi/segmentov;
%na prvem segmentu:
if nargin<3
    L=4/3*tan(a/4);
end
%kontrolne tocke:
b=[1 1 cos(a)+L*sin(a) cos(a);0 L sin(a)-L*cos(a) sin(a)];
t=linspace(0,1,tock);
B=bezier(b,t);
%narisem prvi odsek
plot(B(1,:),B(2,:),'b*')
axis equal;
hold on;
x_t=B(1,:)';
y_t=B(2,:)';
%ostali segmenti:
M=[cos(a) -sin(a);sin(a) cos(a)];
for i=2:segmentov
    b=M*b; %rotiram za kot a
    B=bezier(b,t);
    if rem(i,2)==0
        col='r*';
    else
        col='b*';
    end
    plot(B(1,:),B(2,:),col);
    x_t=[x_t(1:end-1);B(1,:)'];
    y_t=[y_t(1:end-1);B(2,:)'];
end
%dodam sliko kroznice:
t=linspace(0,2*pi,100);
plot(cos(t),sin(t),'k');
    
    
    




