function [ vectorResultados ] = lanzarDado( nVeces )
%lanzarDado Esta funcion simula el lanzamiento de un dado.
%   Esta funcion recibe como entrada el numero de veces que queremos lanzar
%   el dado. A su salida, encontramos un vector en el que se ha almacenado
%   el resultado de cada lanzamiento.

% Inicializamos el vector de resultados:
vectorResultados = zeros (1, nVeces);

% Simulamos el lanzamiento mediante la funcion randi
for i = 1:nVeces
    vectorResultados(i) = randi ([1 6], 1, 1);
end

end

