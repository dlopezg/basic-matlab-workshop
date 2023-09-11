%% CURSO BASICO DE MATLAB - 2023 (moneda.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia       
% dlopez@ugr.es
% Universidad de Granada
% -------------------------------------------------------------------------

clc;
clear all;

% En este script vamos a simular el lanzamiento de una moneda y vamos a
% mostrar por pantalla el resultado. Como sabemos, al lanzar una moneda, la
% probabilidad de que salga cara o cruz es equiprobable (50%)

aleatorio = rand(); % Generamos un numero aleatorio

if aleatorio <= 0.5
    % Mostrar por pantalla el resultado
    disp('Ha salido cara!');
else
    % Mostrar por pantalla el resultado
    disp('Ha salido cruz!');
end
