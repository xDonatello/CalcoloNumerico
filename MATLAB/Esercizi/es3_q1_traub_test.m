% Quesito 1: metodo a due passi (di Traub) [TEST]
% [La soluzione è 0.62...]

clear
clc

f = @(x) cos(x) - x - x^2/2;
f1 = @(x) - sin(x) - 1 - (2*x)/2;
x0 = .5;
tol = 1e-10;
n = 100;

[x1, i, res] = es3_q1_traub(f, f1, x0, tol, n);

fprintf("Soluzione: %f\n", x1);
fprintf("Iterate: %d\n", i);
fprintf("Residuo: %f\n", res);
