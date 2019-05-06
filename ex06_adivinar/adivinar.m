%% CURSO BASICO DE MATLAB - 2019 (adivinar.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia       
% dlopez@ugr.es
% CIMCYC - Universidad de Granadax
% -------------------------------------------------------------------------

clc;
clear all;

% En este script vamos a intentar adivinar un numero aleatorio que genere
% el ordenador comprendido entre 0-9. Para ello usaremos un bucle while que
% nos pregunte constantemente el numero hasta que acertemos. Ademas,
% usaremos la funcion input para pedir datos al usuario.
% Nota: En caso de no adivinarlo podemos "romper" la ejecucion del bucle
% con las teclas Ctr+C.

nPensado = randi([1 9],1,1);
acertado = false;

while (acertado == false)
    respuesta = input('Que numero crees que he pensado? >> ');
    if respuesta == nPensado
        disp('Correcto! Has ganado!');
        acertado = true;
        % break;
    else
        disp('Has fallado! Vuelve a intentarlo...');
    end
end