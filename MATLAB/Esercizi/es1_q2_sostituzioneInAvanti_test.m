% Quesito 2: sostituzione in avanti (TEST)

clear
clc

A = [16 0 0 0; 5 11 0 0; 9 7 6 0; 4 14 15 1];
b = [16; 16; 22; 34];

[x] = es1_q2_sostituzioneInAvanti(A, b);

fprintf("Soluzione: [%f %f %f %f]\n", x);
