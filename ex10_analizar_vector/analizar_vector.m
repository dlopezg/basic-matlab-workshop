%% CURSO BASICO DE MATLAB - 2021 (analizar_vector.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc
clear all

% En este ejercicio tenemos buscar si en un vector existen dos numeros
% iguales en posiciones consecutivas, y si es asi, avisar de en que
% posicion esta pasando.

load data_vector.mat

for i = 1 : length(data_vector)-1
    
    posicionActual = data_vector(i);
    posicionSiguiente = data_vector(i+1);
    
    if posicionActual == posicionSiguiente
        posicion = int2str(i);
        textoAMostrar = ['Hay numeros consecutivos en la posicion: ' posicion];
        disp(textoAMostrar);
    end
end