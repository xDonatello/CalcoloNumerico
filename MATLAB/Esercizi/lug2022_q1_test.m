% 4 LUGLIO 2022 - QUESITO 1 (TEST)
% [La soluzione è 1.2...]

clear
clc

f = @(x) exp(x) - sin(x) - 2*x;
x0 = 2;
h = 1e-4;
tol = 1e-8;
n = 100;

[x1, i, res] = lug2022_q1(f, x0, h, tol, n);

fprintf("Soluzione: %f\n", x1);
fprintf("Iterate: %d\n", i);
fprintf("Residuo: %f\n", res);
