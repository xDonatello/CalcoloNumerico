% Quesito 1: Funzione che implementi il metodo delle secanti
% (calcolo degli zeri di funzione)

function [x2, i, res] = es1_q1_secanti(f, x0, x1, tol, n)

    % x0 = xk-2
    % x1 = xk-1
    % x2 = xk

    % Itero da 0 a n-1
    for i = 0:n-1

        fx0 = f(x0);
        fx1 = f(x1);

        % Controllo che il denominatore sia diverso da zero
        den = fx1 - fx0;  % Denominatore
        if den == 0
            fprintf("Esecuzione terminata, il denominatore è uguale a zero.\n");
            return  % Termino
        end

        num = fx1 * (x1 - x0);  % Numeratore

        x2 = x1 - (num / den);  % Risultato finale

        % Controllo se l'errore è minore della tolleranza (e termino)
        err = abs(x1 - x0) / abs(x1);  % Errore relativo
        if err < tol
            res = f(x1);  % Salvo il residuo
            return  % Termino
        end

        % Approssimazione
        x0 = x1;
        x1 = x2;

    end

    i = -1;  % Flag di errore
    res = f(x1);  % Salvo il residuo

end
