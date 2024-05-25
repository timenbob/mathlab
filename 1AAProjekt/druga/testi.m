% Test example
%test_points = [0 0; 1 0; 1 1; 0 1]; % Example polygon points
x3 = [0 1 2 3 4 3 2 1 0]; % Koordinate x
y3 = [0 0 1 1 0 2 3 2 2];
test3=[x3;y3]';
test_point = [3.5, 0.8]; % Test point
%notri=tocka_v_lomljenki(test3, test_point)

x4=[1 0 2];
y4=[0 0 -1];
test=[x4;y4]';
T=[-3, 0];
tocka_v_lomljenki(test, T)