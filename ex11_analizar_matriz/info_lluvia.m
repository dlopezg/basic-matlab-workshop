%% CURSO BASICO DE MATLAB - 2021 (info_lluvia.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc
clear all

% En este ejercicio debemos comprobar cuantos Martes llovio en el 2017,
% para ello tenemos que cargar los datos almacenados en el archivo
% info_lluvia_2018.mat.

load info_lluvia_2018.mat;

% Cuando cargamos este archivo se nos cargan dos variables:
%
% dias_semana: Se almacena el dia de la semana para el 2018
% dias_lluvia: Si vale 1 es un dia lluvioso y si vale 0 no
%
% Nota: Las filas de estas matrices equivalen a los meses y las columnas
% a los dias.

dia_objetivo = 'Mar';
n_lluviosos = 0;

[n_meses, n_dias] = size (dias_lluvia);

for i = 1 : n_meses
    for j = 1 : n_dias
        if (dias_lluvia(i,j) == 1) && (strcmp(dias_semana{i,j}, dia_objetivo))
            n_lluviosos = n_lluviosos +1;
        end
    end
end


textoLluviosos = int2str(n_lluviosos); % Convertimos el número en texto

textoAMostrar = ['El numero total de ' dia_objetivo ' lluviosos es: ' textoLluviosos];

disp(textoAMostrar);
