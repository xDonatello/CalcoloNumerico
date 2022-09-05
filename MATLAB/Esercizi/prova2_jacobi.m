% Esercizio di prova 2 - JACOBI

function [x1, i, res] = prova2_jacobi(A, b, tol, x0, n)

    % x0 = xk
    % x1 = xk+1

    D = triu(tril(A));  % Porzione triangolare superiore [upper] della porzione triangolare inferiore [lower] di A
    R = A - D;

    % Itero da 0 a n-1
    for i = 0:n-1

        x1 = D \ (b - R * x0);  % Risultato finale

        nix0 = norm(x0, "inf");  % x0 in norma infinito
        nix1 = norm(x1, "inf");  % x1 in norma infinito

        % Controllo se l'errore è minore della tolleranza (e termino)
        err = abs(nix1-nix0) / abs(nix1);  % Errore relativo (in norma infinito)
        if err < tol
            res = norm(A * x1 - b, "inf");  % Salvo il residuo (in norma infinito)
            return  % Termino
        end

        % Approssimazione
        x0 = x1;

    end

    i = -1;  % Flag di errore

end
