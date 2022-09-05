% Quesito 1: quasi-Newton (TEST)
% [La soluzione è 0.601...]

clear
clc

f = @(x) exp(x) - 1 - cos(x);
x0 = .5;
h = 1e-6;
tol = 1e-8;
n = 100;

[x1, i, res] = es5_q1_quasiNewton(f, x0, h, tol, n);

fprintf("Soluzione: %f\n", x1);
fprintf("Iterate: %d\n", i);
fprintf("Residuo: %f\n", res);
