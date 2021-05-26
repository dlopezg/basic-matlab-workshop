%% CURSO BASICO DE MATLAB - 2021 (dado.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia       
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc;
clear all;

% En este script vamos a simular el lanzamiento de un dado mediante la
% generacion de un numero aleatorio comprendido entre 1 y 6.

numMaximo = 6;
numMinimo = 1;

rango = [numMinimo numMaximo];

resultado = randi (rango, 1, 1);

switch resultado
    case 1
        disp('Ha salido 1!');
    case 2
        disp('Ha salido 2!');
    case 3
        disp('Ha salido 3!');
    case 4
        disp('Ha salido 4!');
    case 5
        disp('Ha salido 5!');
    case 6
        disp('Ha salido 6!');
end