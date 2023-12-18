function [T] = miska(a,sirPozicija,N,risi)
% function [T] = miska(a,sirPozicija,N,risi)

if nargin < 4%če je število vhodni podatkov manj kot 4
    risi = false;
end 

slikica_mis = imread('mis_clipart.jpg'); 
slikica_mis  = flipud(slikica_mis);
slikica_sir = imread('sir_clipart.jpg'); 
slikica_sir  = flipud(slikica_sir);
markersize = [1/2,1/2]; %//The size of marker is expressed in axis units, NOT in pixels
x_low = @(x) x - markersize(1)/2; %//Left edge of marker
x_high = @(x) x + markersize(1)/2;%//Right edge of marker
y_low = @(y) y - markersize(2)/2; %//Bottom edge of marker
y_high = @(y) y + markersize(2)/2;%//Top edge of marker

% T(i) je stevilo korakov miske

T = zeros(1,N);
for p =1:N
% izris zacetnega stanja:
mis=[0;0];
if risi
        axis([-a,a,-a,a]);
        grid on;
        hold on;
        plot(0,0,'ro');
        imagesc([x_low(a) x_high(a)], [y_low(sirPozicija) y_high(sirPozicija)], slikica_sir);
end

st_korakov=0;
while true
    if risi
       temp=imagesc([x_low(mis(1)) x_high(mis(1))], [y_low(mis(2)) y_high(mis(2))], slikica_mis);  
       pause(0.5)
       delete(temp)
    end
    

    while true
        korak=randi(4);
        if korak==1 && mis(1)<a
           mis=mis+[1;0];
           break
        end
    
        if korak==2 && mis(1)>-a
            mis=mis+[-1;0];
            break
        end
    
        if korak==3 && mis(2)<a
            mis=mis+[0;1];
            break
        end
        
        if korak==4 && mis(2)>-a
            mis=mis+[0;-1];
            break
        end
        
    end
    if all(mis==[a;sirPozicija])
        break
    end

    st_korakov=st_korakov+1;
end

T(p)=st_korakov;

end








