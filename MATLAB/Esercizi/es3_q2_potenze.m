% Quesito 2: Funzione che implementi il metodo delle potenze
% (calcolo dell'autovalore di massimo modulo di una matrice quadrata)

function [lambda, i] = es3_q2_potenze(A, x0, tol, n)

    % x0 = xk
    % x1 = xk+1
    % y0 = yk
    % v0 = vk
    % v1 = vk+1

    v0 = 0;  % Inizializzo vk

    % Itero da 0 a n-1
    for i = 0:n-1
    
        y0 = x0 / norm(x0, 2);  % Primo risultato
        x1 = A * y0;  % Secondo risultato
        v1 = y0' * x1;  % Terzo risultato
            
        err = abs(v1-v0);  % Errore assoluto
    
        % Controllo se l'errore è minore della tolleranza (e termino)
        if err < tol * abs(v1)
            lambda = v1;
            return  % Termino
        end
    
        % Approssimazione
        x0 = x1;
        v0 = v1;

    end

    i = -1;  % Flag di errore

end
