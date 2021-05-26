%% CURSO BASICO DE MATLAB - 2021 (encontrarError.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc
clear all

% En este script hay un error, si ejecutamos el codigo podemos comprobarlo.
% El ejercicio consiste en encontrar y arreglar el error usando el
% debugging si fuese necesario.

%% 1. EXPERIMENT'S PARAMETERS : BLOCKS AND TRIALS PER BLOCK
% ----------------------------------------------------------
EPROP.nPraBlocks = 4;
EPROP.nPraTrials = 150;

EPROP.prob1 = 0.8;
EPROP.prob2 = 0.2;

%% 2. TARGET TYPE DEFINITION
% ----------------------------------------------------------
% CONGRUENT RIGHT   -   1
% CONGRUENT LEFT    -   2
% INCONGRUENT RIGHT -   3
% INCONGRUENT LEFT  -   4

%% 2. EXPERIMENT INITIALIZATION: FORCED STIMULUS & RESP MATRIX DEFINITION
% -------------------------------------------------------------------------
for i = 1 : EPROP.nPraBlocks
    congRow = [
        ones(1, EPROP.nPraTrials*.25*EPROP.prob1) ...
        ones(1, EPROP.nPraTrials*.25*EPROP.prob1)*2 ...
        ones(1, EPROP.nPraTrials*.25*EPROP.prob2)*3 ...
        ones(1, EPROP.nPraTrials*.25*EPROP.prob2)*4
        ];
    
    incoRow = [
        ones(1, EPROP.nPraTrials*.25*EPROP.prob2) ...
        ones(1, EPROP.nPraTrials*.25*EPROP.prob2)*2 ...
        ones(1, EPROP.nPraTrials*.25*EPROP.prob1)*3 ...
        ones(1, EPROP.nPraTrials*.25*EPROP.prob1)*4
        ];
    
    congMtx (i,:) = congRow(randperm(length(congRow)));
    incoMtx (i,:) = incoRow(randperm(length(incoRow)));
end
