%% CURSO BASICO DE MATLAB - 2018 (mejorDeN.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia       
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc;
clear all;

% En este script vamos a simular el lanzamiento de una moneda y vamos a
% mostrar por pantalla el numero de veces que sale cara y el numero de 
% veces que sale cruz. Para ello, vamos a programar una funcion que nos 
% simule el lanzamiento de una moneda tantas veces como le indiquemos a su 
% entrada.

nVeces = 8; % Numero de veces que lanzamos la moneda.

[nVecesCara, nVecesCruz] = lanzar (nVeces);

disp (['Cara ha salido ' int2str(nVecesCara) ' veces.']);
disp (['Cruz ha salido ' int2str(nVecesCruz) ' veces.']);

if nVecesCara > nVecesCruz
    disp('¡Ha ganado cara!');
elseif nVecesCara < nVecesCruz
    disp('¡Ha ganado cruz!');
else
    disp('¡Empate!')
end
