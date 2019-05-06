%% CURSO BASICO DE MATLAB - 2019 (info_lluvia.m)
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

%% Cargamos las imagenes y la plantilla al workspace
gioconda = imread('gioconda.jpg');
frame = imread('frame.jpg');
load('template.mat');

%% Mostramos las imagenes en la misma figura con subplot y imshow:
figure;
subplot(1,3,1)
imshow(gioconda);
subplot(1,3,2)
imshow(template);
subplot(1,3,3)
imshow(frame);

%% Jugamos un poco con los canales RGB para alterar los colores:
gioconda_red = gioconda;
gioconda_green = gioconda;
gioconda_blue = gioconda;

gioconda_red(:,:,1) = 0;
gioconda_green(:,:,2) = 0;
gioconda_blue(:,:,3) = 0;

figure;
subplot(1,3,1)
imshow(gioconda_red);
subplot(1,3,2)
imshow(gioconda_green);
subplot(1,3,3)
imshow(gioconda_blue);

%% Combinamos las imagenes usando la plantilla y bucles anidados:

[pix_ver,pix_hor,n_chann] = size (template);

for i = 1 : pix_ver
    for j = 1 : pix_hor
        if template(i,j) == 1
            gioconda(i,j,:) = frame(i,j,:);
        end
    end
end

figure;
imshow(gioconda);
