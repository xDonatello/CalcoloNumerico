% Quesito 1: metodo delle secanti (TEST)
% [La soluzione è 0.62...]

clear
clc

f = @(x) cos(x) - x - (x^2)/2;
x0 = .6;
x1 = .7;
tol = 1e-10;
n = 100;

[x2, i, res] = es1_q1_secanti(f, x0, x1, tol, n);

fprintf("Soluzione: %f\n", x2);
fprintf("Iterate: %d\n", i);
fprintf("Residuo: %f\n", res);
