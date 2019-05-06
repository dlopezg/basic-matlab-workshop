%% CURSO BASICO DE MATLAB - 2018 (ensayos.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia       
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc;
clear all;

% En este script vamos a generar una matriz de ensayos para cuatro bloques,
% y la logica que vamos a seguir es la siguiente:
%
% Congruentes A : 'AAAAA';
% Congruentes B : 'BBBBB';
% Incongruentes A : 'BBABB';
% Incongruentes B : 'AABAA';
% Probabilidad de que salgan congruentes - 80%;
% Probabilidad de que salgan incongruentes - 20%;
% Probabilidad de que salgan tipo A - 50%;
% Probabilidad de que salgan tipo B - 50%;
% Numero de ensayos por bloque - 100;
% Numero de bloques 4;
% Matriz de ensayos - ensayosxbloques;

% Definimos los tipos de target
congruenteA = 'AAAAA';
congruenteB = 'BBBBB';
incongruenteA = 'BBABB';
incongruenteB = 'AABAA';

% Definimos las propiedades del experimento
nBloques = 4;
nEnsayos = 100;

for i = 1:nBloques
    for j = 1:nEnsayos
        aleatorioCong = rand();
        aleatorioAB = rand();
        if aleatorioCong <= 0.8 % Seria congruente tipo A o B (80%)
            if aleatorioAB <= 0.5 % Seria congruente tipo A (50%)
                tipoEnsayo = congruenteA;
            else % Seria congruente tipo B (50%)
                tipoEnsayo = congruenteB;
            end
        else % Seria incongruente tipo A o tipo B (50%)
            if aleatorioAB <= 0.5 % Seria incongruente tipo A (50%)
                tipoEnsayo = incongruenteA;
            else % Seria incongruente tipo B (50%)
                tipoEnsayo = incongruenteB;
            end
        end
        matrizEnsayos{j,i} = tipoEnsayo;
    end
end



