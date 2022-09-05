% Quesito 2: sostituzione all'indietro (TEST)

clear
clc

A = [16 2 3 13; 0 11 10 8; 0 0 6 12; 0 0 0 1];
b = [34; 29; 18; 1];

[x] = es2_q2_sostituzioneAllIndietro(A, b);

fprintf("Soluzione: [%f %f %f %f]\n", x);
