function [ nVecesCara, nVecesCruz ] = lanzar( nVeces )
% Lanzar Esta funcion simula el lanzamiento de una moneda nVeces.

nVecesCara = 0;
nVecesCruz = 0;

    % Repetimos el lanzamiento tantas veces con tengamos a la entrada
    for i = 1:nVeces

        aleatorio = rand(); % Generamos el numero aleatorio

        if aleatorio <= 0.5 % Elegimos con una probabilidad del 50%
            nVecesCara = nVecesCara + 1;
        else
            nVecesCruz = nVecesCruz + 1;
        end
        
    end
    
end

