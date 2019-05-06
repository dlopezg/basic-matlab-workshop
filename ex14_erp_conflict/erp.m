%% CURSO BASICO DE MATLAB - 2019 (erp.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc
clear

% En este ejercicio vamos a trabajar con señales de electroencefalografia
% reales, lo primero que vamos a hacer es leer el archivo que contiene
% todos los datos

load sample_eeg_data.mat;

% Cuando cargamos este archivo se nos cargan dos variables:
%
% eeg_data_a: Matriz de datos de EEG (COND_A) [ensayos x tiempo].
% eeg_data_b: Matriz de datos de EEG (COND_b) [ensayos x tiempo].
% timess: Vector con los valores temporales que corresponden a cada muestra.

%% Representar un ensayo:
% El siguiente paso sera representar un ensayo, para ello extraemos la fila
% correspondiente al ensayo que queramos representar, en este caso el 5:
ensayo = eeg_data_a(5,:);

% Generamos una figura vacia:
figure;

% Representamos en ensayo con su correspondiente vector de tiempos:
plot(times,ensayo);

%% Representar todos los ensayos en un solo plot:
figure;
plot(times,eeg_data_a);

%% Calcular el ERP:
% Promediamos todos los ensayos:
my_erp_a = mean(eeg_data_a);
figure;
plot(times,my_erp_a);

%% Correcion de linea base:
% Para centrar el ERP en cero, restamos la media de la señal en el periodo
% de linea base [-200 - 0]ms a todo el ERP
baseline = (times > -200 & times < 0);
baseline_mean = mean(my_erp_a(baseline));
erp_a_baseline_corrected = my_erp_a - baseline_mean;

hold on
plot(times,erp_a_baseline_corrected,'LineWidth',1);


%% Calcular el segundo ERP:
% Promediamos todos los ensayos y le quitamos la linea base a todo el erp:
my_erp_b = mean(eeg_data_b);
figure;
plot(times,my_erp_b);

%% Correcion de linea base:
% Para centrar el ERP en cero
baseline_mean = mean(my_erp_b(baseline));
erp_b_baseline_corrected = my_erp_b - baseline_mean;

%% Representamos los dos ERPs superpuestos:
figure;
plot(times,erp_a_baseline_corrected,'LineWidth',1);
hold on
plot(times,erp_b_baseline_corrected,'LineWidth',1);

%% 