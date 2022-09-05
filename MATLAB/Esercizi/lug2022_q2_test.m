% 4 LUGLIO 2022 - QUESITO 2 (TEST)
% [La soluzione esatta è 1.1...]

clear
clc

A = [6 2 2; 2 4 1; 2 1 2];
x0 = [1; 1; 1];
tol = 1e-5;
n = 100;

[lambda, i] = lug2022_q2(A, x0, tol, n);

fprintf("Soluzione: %f\n", lambda);
fprintf("Iterate: %d\n", i);
