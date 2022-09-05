% Esercizio di prova 1 - GAUSS-SEIDEL

function [x1, i, res] = prova1_gaussSeidel(A, b, tol, x0, n)

    % x0 = xk
    % x1 = xk+1

    L = tril(A);  % Porzione triangolare inferiore [lower] di A
    U = triu(A, 1);  % Porzione triangolare superiore [upper] di A (dalla diagonale 1)

    % Itero da 0 a n-1
    for i = 0:n-1

        x1 = L \ (b - U * x0);  % Risultato finale

        nix0 = norm(x0, "inf");  % x0 in norma infinito
        nix1 = norm(x1, "inf");  % x1 in norma infinito

        % Controllo se l'errore è minore della tolleranza (e termino)
        err = abs(nix1-nix0) / abs(nix1);  % Errore relativo
        if err < tol
            res = norm(A * x1 - b, "inf");  % Salvo il residuo (in norma infinito)
            return  % Termino
        end

        % Approssimazione
        x0 = x1;

    end

    i = -1;  % Flag di errore
  
end
