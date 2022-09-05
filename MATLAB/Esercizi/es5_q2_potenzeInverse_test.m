% Quesito 2: potenze inverse (TEST)
% [La soluzione esatta è 0.27...]

clear
clc

A = [13 2 0; 2 1 3; 0 3 22];
x0 = [1; 1; 1];
tol = 1e-6;
n = 100;

[lambda, i] = es5_q2_potenzeInverse(A, x0, tol, n);

fprintf("Soluzione: %f\n", lambda);
fprintf("Iterate: %d\n", i);
