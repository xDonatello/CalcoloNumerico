% Quesito 1: Funzione che implementi il metodo "a due passi" (di Traub)
% (per il calcolo degli zeri di funzione)

function [x1, i, res] = es3_q1_traub(f, f1, x0, tol, n)

    % x0 = xk
    % x1 = xk+1
    % yk = y0

    % Itero da 0 a n-1
    for i = 0:n-1

        fx0 = f(x0);  % f(xk)
        f1x0 = f1(x0);  % f'(xk)

        % Controllo che il denominatore sia diverso da zero
        if f1x0 == 0
            fprintf("Esecuzione terminata, la derivata è uguale a zero.");
            return  % Termino
        end
    
        y0 = x0 - fx0 / f1x0;  % Primo risultato
        fy0 = f(y0);  % f(yk)
    
        x1 = y0 - fy0 / f1x0;  % Secondo risultato

        % Controllo se l'errore è minore della tolleranza (e termino)
        err = abs(x1-x0) / abs(x1);  % Errore relativo
        if err < tol
            res = f(x1);  % Salvo il residuo
            return  % Termino
        end
    
        % Approssimazione
        x0 = x1;

    end

    i = -1;  % Flag di errore
    res = f(x1);  % Salvo il residuo

end
