% Questio 1: Funzione che implementi il metodo per il calcolo della radice n-esima
%

function [x1, i] = es4_q1_radiceNesima(S, n, tol, nmax)

    % Controllo che il numero S sia maggiore di zero
    if S <= 0
        fprintf("Esecuzione terminata, il numero in input deve essere maggiore di zero.");
        return  % Termino
    end

    x0 = S;  % Primo risultato

    % Itero da 0 a nmax-1
    for i = 0:nmax-1

        % Controllo che il denominatore sia diverso da zero
        den = x0^(n-1);
        if den == 0 || n == 0
            fprintf("Esecuzione terminata, il denominatore è uguale a zero.");
            return  % Termino
        end
    
        x1 = ( 1/n ) * ( (n-1) * x0 + S/den );  % Secondo risultato
    
        err = abs(x1-x0) / abs(x1);  % Errore relativo
    
        % Controllo se l'errore è minore della tolleranza (e termino)
        if err < tol
            return  % Termino
        end
    
        % Approssimazione
        x0 = x1;

    end

    i = -1;  % Flag di errore

end
