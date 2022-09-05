% Quesito 1: Funzione che implementi il metodo di Halley
% (per il calcolo degli zeri di una funzione)

function [x1, i, res] = es2_q1_halley(f, f1, f2, x0, tol, n)

    % x0 = xk
    % x1 = xk+1

    % Itero da 0 a n-1
    for i = 0:n-1

        fx0 = f(x0);    % f(xk)
        f1x0 = f1(x0);  % f'(xk)
        f2x0 = f2(x0);  % f''(xk)

        % Controllo che il denominatore sia diverso da zero
        den = 2 * (f1x0^2) - fx0 * f2x0;  % Denominatore
        if den == 0
            fprintf("Esecuzione terminata, il denominatore è uguale a zero.\n");
            return  % Termino
        end

        num = 2 * fx0 * f1x0;  % Numeratore

        x1 = x0 - num / den;  % Risultato finale

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

end
