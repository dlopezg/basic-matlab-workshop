%% CURSO BASICO DE MATLAB - 2021 (ecg_apnea.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

clc
clear all

% En este ejercicio vamos a trabajar con un registro de
% electrocardiograma, para ello, lo primero que vamos a hacer es cargar los
% datos al workspace de Matlab:

load sample_ecg_data.mat;

% Cuando cargamos este archivo se nos cargan dos variables:
%
% ecg: Vector de datos de ECG [niveles de voltage].
% time: Vector con los valores temporales que corresponden a cada muestra.

%% 1. Calculo de la freq de muestreo del registro:
% Para calcular la freq de muestreo del registro, calculamos la
% diferencia temporal entre dos muestras del mismo. Esto nos indica cada
% cuanto tiempo se tomaron esas muestras (period). La freq de
% muestreo siempre sera la inversa del period.

period = time(2)-time(1);
freq = 1 / period;

%% Representacion estatica del registro:
% Ahora vamos a hacer una representacion estatica del registro.

figure(1);  % Inicializamos una figura
plot(time,ecg,'LineWidth',3); % Representamos el registro completo

% Ponemos titulo al grafico y a los ejes:
title('Registro de electrocardiograma');
xlabel('Time (s)');
ylabel('Voltaje (mV)')

% Ajustamos los limites de los ejes:
xlim([0 8]);
ylim([-2 2]);

% Activamos el grid bajo la figura
grid on
grid minor

%% Contar los pulsos:

n_peaks = 0;
counting = 0;

for i = 1 : length(ecg)
    if ecg(i) > .4 && ecg(i+1) > ecg(i) && counting == false
        n_peaks = n_peaks + 1;
        counting = true;
    end
    
    if ecg(i) > .4 && ecg(i+1) < .4 && counting == true
        counting = false;
    end
end

%% Otra forma 1:
[amplitude, location] = findpeaks(ecg,'MinPeakProminence',0.5);
n_peaks = length(location);

% Representacion:
figure(2)
findpeaks(ecg,'MinPeakProminence',0.5);


%% Otra forma 2:
% Podemos ver que valores estan por encima de 0.5 y buscar clusters de unos
% con la funcion bwconncomp
clusters = bwconncomp(ecg>.5);
n_peaks = clusters.NumObjects;

%% Representacion dinamica del registro:
n_peaks = 0;
counting = 0;

figure(3);

for i = 1 : length(ecg)-1
    
    if ecg(i) > .4 && ecg(i+1) > ecg(i) && counting == false
        beep
        n_peaks = n_peaks + 1;
        counting = true;
    end
    
    if ecg(i) > .4 && ecg(i+1) < .4 && counting == true
        counting = false;
        
    end
    
    plot(time(1:i),ecg(1:i),'r');
    xlim([0 8]);
    ylim([-3 3]);
    hold on
    pause(period/3)
end




