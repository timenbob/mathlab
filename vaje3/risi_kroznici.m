function risi_kroznici(T);
% risi_kroznici(T) narise trikotnik ter vcrtano in ocrtano kroznico
% skupaj s srediscema.
% Trikotnik T je podan kot matrika 2x3 tock,
% T= [ x1 y1; x2 y2; x3 y2]'

%trikotnik
hold on
x=[T(1) T(3) T(5) T(1)];
y=[T(2) T(4) T(6) T(2)];
plot(x,y,"-o");

%risanje kroznice
[s,r]=ocrtana_kroznica(T);

phi = linspace(0,2*pi);
xunit = r * cos(phi) + s(1);
yunit = r * sin(phi) + s(2);
plot(xunit, yunit,'k');
plot(s(1),s(2),"r*");
axis("equal");





