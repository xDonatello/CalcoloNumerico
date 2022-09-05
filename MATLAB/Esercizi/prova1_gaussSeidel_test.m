% Esercizio di prova 1 - GAUSS-SEIDEL (TEST)
% La soluzione esatta è [1 1 1]^T.

clear
clc

A = [2.4 -.8 -.7; .5 1.5 .7; -.1 .8 2.1];
b = [.9; 2.7; 2.8];
tol = 1e-5;
x0 = [.9; .9; .9];
n = 100;

[x1, i, res] = prova1_gaussSeidel(A, b, tol, x0, n);

fprintf("Soluzione: [%f %f %f]\n", x1);
fprintf("Iterate: %d\n", i);
fprintf("Residuo: %f\n", res);
