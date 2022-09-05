% Quesito 2: funzione che implementi il metodo di sostituzione in avanti
% (sistemi lineari con matrice dei coeff. triang. inferiore)

function [x] = es1_q2_sostituzioneInAvanti(A, b)

    n = length(A);  % Assegno la dimensione della matrice A
    x = zeros(n, 1);  % Inizializzo il vettore soluzione

    x(1) = b(1) / A(1,1);  % Primo risultato

    % Itero da 2 a n
    for i = 2:n
        
        % Sommatoria (da j=1 a i-1)
        sommatoria = 0;
        for j = 1:i-1
            sommatoria = sommatoria + A(i,j) * x(j);
        end

        x(i) = ( 1/A(i,i) ) * ( b(i) - sommatoria );  % Secondo risultato

    end

end