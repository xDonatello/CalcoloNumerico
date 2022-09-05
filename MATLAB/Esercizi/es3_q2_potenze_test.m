% Quesito 2: metodo delle potenze (TEST)
% [La soluzione è 22.4...]

clear
clc

A = [13 2 0; 2 1 3; 0 3 22];
x0 = [1; 1; 1];
tol = 1e-6;
n = 100;

[lambda, i] = es3_q2_potenze(A, x0, tol, n);

fprintf("Soluzione: %f\n", lambda);
fprintf("Iterate: %d\n", i);
