% Quesito 2: Funzione che implementi il metodo di sostituzione all'indietro
% (per la risoluzione dei sistemi lineari dei coeff. triang. superiore)

function [x] = es2_q2_sostituzioneAllIndietro(A, b)

    n = length(A);  % Assegno la dimensione della matrice A
    x = zeros(n, 1);  % Inizializzo il vettore soluzione

    x(n) = b(n) / A(n,n);  % Primo risultato

    % Itero da n-1 a n-2 a 1
    for i = n-1:-1:1

        % Sommatoria (da j=i+1 a n)
        sommatoria = 0;
        for j = i+1:n
            sommatoria = sommatoria + A(i,j) * x(j);
        end
    
        x(i) = ( 1/A(i,i) ) * ( b(i) - sommatoria );  % Secondo risultato

    end

end
