%% CURSO BASICO DE MATLAB - 2018 (mejorDeTres.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia       
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc;
clear all;

% En este script vamos a simular el lanzamiento de una moneda y vamos a
% mostrar por pantalla el resultado. Para ello, repetiremos el lanzamiento
% tres veces eligindo el resultado al mejor de tres.

nVecesCara = 0; % Aqui guardaremos el numero total de veces que sale cara
nVecesCruz = 0; % Aqui guardaremos el numero total de veces que sale cruz

% Repetimos el lanzamiento tres veces con un bucle for de 1:3
for i = 1:3
    
    aleatorio = rand(); % Generamos el numero aleatorio
    
    if aleatorio <= 0.5 % Elegimos con una probabilidad del 50%
        nVecesCara = nVecesCara + 1;
    else
        nVecesCruz = nVecesCruz + 1;
    end
    
end

% Mostramos por pantalla que ha salido mas veces
if nVecesCara > nVecesCruz
    disp('¡Ha ganado cara!');
else
    disp('¡Ha ganado cruz!');
end