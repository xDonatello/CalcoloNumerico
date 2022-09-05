% Quesito 1: radice n-esima (TEST)
% [La soluzione è 1.2...]

clear
clc

S = 2;
n = 3;
tol = 1e-10;
nmax = 100;

[x1, i] = es4_q1_radiceNesima(S, n, tol, nmax);

fprintf("Soluzione: %f\n", x1);
fprintf("Iterate: %d\n", i);
