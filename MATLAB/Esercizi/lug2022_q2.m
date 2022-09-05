% 4 LUGLIO 2022 - QUESITO 2
% Metodo delle potenze inverse

function [lambda, i] = lug2022_q2(A, x0, tol, n)

    % x0 = xk
    % x1 = xk+1
    % y0 = yk
    % v0 = vk
    % v1 = vk+1

    v0 = 0;  % Inizializzo vk

    % Itero da 0 a n-1
    for i = 0:n-1

        y0 = x0 / norm(x0, 2);  % Primo risultato
        x1 = A \ y0;  % Secondo risultato
        v1 = y0' * x1;  % Terzo risultato

        % Controllo se l'errore è minore della tolleranza (e termino)
        err = abs(v1-v0);  % Errore assoluto
        if err < tol * abs(v1)
            lambda = 1 / v1;  % Risultato finale
            return  % Termino
        end

        % Approssimazione
        x0 = x1;
        v0 = v1;

    end

    i = -1;  % Flag di errore

end
