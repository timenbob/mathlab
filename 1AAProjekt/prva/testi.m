test1 = [0 0; 1 1; 1 0; 0 1];%false
test2=[0 1 1 0 ; 0 0 1 1 ]';%true

x1 = [0 1 2 1 0]; % Koordinate x
y1 = [0 0 1 2 2]; % Koordinate y
test3=[x1;y1]';
% Pričakovani rezultat: true

% Testni primer 2: Zaporedje s samopresečiščem
x2 = [0 1 2 1 0]; % Koordinate x
y2 = [0 0 1 2 0]; % Koordinate y (samopresečišče na zadnjem segmentu)
test4=[x2;y2]';
% Pričakovani rezultat: false

% Testni primer 3: Kompleksno zaporedje brez samopresečišč
x3 = [0 1 2 3 4 3 2 1 0]; % Koordinate x
y3 = [0 0 1 1 0 2 3 2 2]; % Koordinate y
test5=[x3;y3]';
% Pričakovani rezultat: true

% Testni primer 4: Zaporedje s samopresečiščem v notranjosti
x4 = [0 1 1 0 1 2 2 1 0]; % Koordinate x
y4 = [0 0 1 1 2 2 1 1 1]; % Koordinate y (samopresečišče znotraj)
test6=[x4;y4]';
% Pričakovani rezultat: false
x5=[0,5,5,3];
y5=[0 0 10 0];
test7=[x5;y5]'; %false

x6=[0,5,5,8];
y6=[0 0 10 0];%false
test8=[x6;y6]';%nop

x9=[0 5 5 10 5 5];
y9=[0 0 10 10 15 -5];
test9=[x9;y9]';%false dela

x10=[0 5 5 10 5 5];
y10=[0 0 10 10 15 5];
test10=[x10;y10]';%false dela

x11=[0 5 5 10 5 5];
y11=[0 0 10 10 5 -5];
test11=[x11;y11]';%false dela

xa = [0 1 2 1 ]; % Koordinate x
ya = [0 0 1 2 ]; % Koordinate y true
testa=[xa;ya]';

xb=[1 5 3 3 ];
yb=[1 1 1 3 ];
testb=[xb;yb]';

xc=[0 0 0 0];
yc=[0 0 0 0];
testc=[xc;yc]';



yd=[0 0 5 3 -3];
xd=[0 5 5 3 3];
testd=[xd;yd]';


xe=[1 2 -1 0 3];
ye=[0 0 1 -2 -3];
teste=[xe;ye]';
odg=lomljenka(teste) 
