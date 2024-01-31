function v= bezier_der(b,t,r)
%izracuna rti odvod krivulj b vt
for i=1:r
    b=(length(b)-1)*diff(b,1,2);
end
v=deCasteljau(b,t);