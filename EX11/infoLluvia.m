%% CURSO BASICO DE MATLAB - 2018 (infoLluvia.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc
clear all

% En este ejercicio debemos comprobar cuantos Martes llovio en el 2017,
% para ello tenemos que cargar los datos almacenados en el archivo
% infoLluvia2017.mat.

load infoLluvia2017.mat;

% Cuando cargamos este archivo se nos cargan dos variables:
%
% diasSemana: Se almacena el dia de la semana para el 2017
% diasLluvia: Si vale 1 es un dia lluvioso y si vale 0 no
%
% Nota: Las filas de estas matrices equivalen a los meses y las columnas
% a los dias.

diaObjetivo = 'Mar';
nDiasLluviosos = 0;

[nMeses, nDias] = size (diasLluvia);

for i = 1 : nMeses
    for j = 1 : nDias
        if (diasLluvia(i,j) == 1) && (strcmp(diasSemana{i,j}, diaObjetivo))
            nDiasLluviosos = nDiasLluviosos +1;
        end
    end
end

textoLluviosos = int2str(nDiasLluviosos);
textoAMostrar = ['El numero total de ' diaObjetivo ' lluviosos es: ' textoLluviosos];

disp(textoAMostrar);
