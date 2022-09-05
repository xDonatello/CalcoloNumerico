% Quesito 1: Funzione che implementi il metodo quasi-Newton
% (calcolo degli zeri di funzione)

function [x1, i, res] = es5_q1_quasiNewton(f, x0, h, tol, n)

    % Controllo che l'incremento (h) sia maggiore di zero
    if h <= 0
        fprintf("Esecuzione terminata, l'incremento dev'essere maggiore di zero.");
        return  % Termino
    end

    % x0 = xk-1
    % x1 = xk

    % Itero da 0 a n-1
    for i = 0:n-1

        fx0 = f(x0);

        % Controllo che il denominatore sia diverso da zero
        den = f(x0+h) - fx0;  % Denominatore
        if den == 0
            fprintf("Esecuzione terminata, il denominatore è uguale a zero.");
            return  % Termino
        end
    
        x1 = x0 - h * (fx0 / den);  % Risultato finale

        % Controllo che l'errore sia minore della tolleranza (e termino)
        err = abs(x1-x0) / abs(x1);  % Errore relativo
        if err < tol
            res = f(x1);  % Salvo il residuo
            return
        end

        % Approssimazione
        x0 = x1;

    end

    i = -1;  % Flag di errore

end
