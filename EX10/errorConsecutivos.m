%% CURSO BASICO DE MATLAB - 2018 (errorConsecutivos.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc
clear all

% En este ejercicio tenemos buscar si en un vector existen dos numeros
% iguales en posiciones consecutivas, y si es asi, avisar de en que
% posicion esta pasando. Para ello generaremos un vector de numeros
% aleatorios comprendidos entre 0 y 100 de 2000 posiciones.

% OBJETIVO: Buscar el error y corregirlo

vector = randi([0 100],1,2000); % Vector de 2000 posiciones rand[0-100]

for i = 1 : length(vector)
    
    posicionActual = vector(i);
    posicionSiguiente = vector(i+1);
    
    if posicionActual == posicionSiguiente
        posicion = int2str(i);
        textoAMostrar = ['Hay numeros consecutivos en la posicion: ' posicion];
        disp(textoAMostrar);
    end
end