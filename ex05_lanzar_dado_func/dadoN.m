%% CURSO BASICO DE MATLAB - 2023 (dadoN.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia       
% dlopez@ugr.es
% Universidad de Granada
% -------------------------------------------------------------------------

clc;
clear all;

% En este script vamos a simular el lanzamiento de un dado n veces, para
% ello definiremos una funcion a la que le pasaremos como entrada el numero
% de veces que queremos lanzar el dado. Esta funcion nos devolvera un
% vector con los resultados de cada lanzamiento. Finalmente, mostraremos un
% grafico con los resultados.

nVeces = 80;

vectorResultados = lanzarDado (nVeces);

bar(vectorResultados);
ylabel('Resultado del lanzamiento');
xlabel('Numero de lanzamiento');
title('Simulacion del lanzamiento de un dado');