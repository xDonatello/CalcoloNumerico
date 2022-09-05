% Esercizio di prova 2 - JACOBI (TEST)
% La soluzione esatta è [1 1 1]^T.

clear
clc

A = [4 2 1; 2 4 2; 1 2 4];
b = [7; 8; 7];
tol = 1e-5;
x0 = [1.1; 1.1; 1.1];
n = 100; 

[x1, i, res] = prova2_jacobi(A, b, tol, x0, n);

fprintf("Soluzione: [%f %f %f]\n", x1);
fprintf("Iterate: %d\n", i);
fprintf("Residuo: %f\n", res);
