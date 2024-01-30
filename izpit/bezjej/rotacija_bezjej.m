function b=rotacija_bezjej(b,phi)

%plotBezier(b);
R=[cos(phi) -sin(phi); sin(phi) cos(phi)];
for i= 2:size(b,2)
    b(:,1)=R*(b(:,i)-b(:,1))+b(:,1);
end
%plotBezier(b);
b
end