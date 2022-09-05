% 4 LUGLIO 2022 - QUESITO 1
% Calcolo degli zeri di funzione [Quasi-Newton]

function [x1, i, res] = lug2022_q1(f, x0, h, tol, n)

    % x0 = xk-1
    % x1 = xk

    % Itero da 0 a n-1
    for i = 0:n-1

        fx0 = f(x0);  % f(xk)

        % Controllo che il denominatore sia diverso da zero
        den = f(x0+h) - f(x0-h);  % Denominatore
        if den == 0
            fprintf("Errore, il denominatore è uguale a zero.");
            return  % Termino
        end

        x1 = x0 - 2 * h * (fx0 / den);  % Risultato finale

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
