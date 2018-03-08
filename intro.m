%% CURSO BASICO DE MATLAB - 2018 (intro.m)
% -------------------------------------------------------------------------
% David Lopez-Garcia       
% dlopez@ugr.es
% CIMCYC - Universidad de Granada
% -------------------------------------------------------------------------

%% 1. PATH
% -------------------------------------------------------------------------
% Lo primero que vamos a hacer es comprobar el path (la carpeta) en la que
% estamos trabajando cuando abrimos Matlab. Para esta sesion vamos a crear
% una carpeta nueva en el escritorio con el nombre *cursomatlab18* que sera
% en la que trabajemos.

%% 2. DEFINICION DE VARIABLES NUMERICAS
% -------------------------------------------------------------------------

numeroMayor = 9;    % Defino una variable numerica
numeroMenor = 2;    % Defino otra variable numerica

resSuma =  numeroMayor + numeroMenor;   % Sumo las dos variables
resResta =  numeroMayor - numeroMenor;  % Resto las dos variables

%% 3. DEFINICION DE VARIABLES LOGICAS
% -------------------------------------------------------------------------

logica = false;     % Defino una variable logica (true/false)
logicab = 0;        % Defino una variable logica equivalente (1/0)

% Defino una variable logica comparando dos variables
comparacion = (numeroMayor > numeroMenor);   

%% 4. DEFINICION DE VARIABLES TIPO CADENA
% -------------------------------------------------------------------------

% Defino una variable tipo cadena de caracteres
cadenaCaracteres = 'Esto es una cadena tipo char'; 

% Defino una variable tipo cadena string (solo v2017 en adelante)
% cadenaString = "Esto es una cadena tipo string"; 

%% 5. DEFINICION DE VECTORES
% -------------------------------------------------------------------------

vectorNotas = [ 9 8 9 10 8 9 10 ];  % Defino un vector
notaNeuroIm = vectorNotas(3);       % Me quedo con un elemento del vector
vectorNotas(1) = 10;                % Modifico una posicion del vector

%% 6. DEFINICION DE MATRICES
% -------------------------------------------------------------------------

matrizNotas = [ 9 8 9 ; 10 8 9 ; 10 10 9 ];     % Defino una matriz 
notaDavidNeuroIm = matrizNotas(3,3);            % Me quedo con un elemento de la matriz
matrizNotas(2,3) = 10;                          % Modifico un valor de la matriz

%% 7. DEFINICION DE STRUCT
% -------------------------------------------------------------------------

expediente.notas = matrizNotas;
expediente.comentario = 'Aqui guardamos las notas del master de Neurociencia para varios alumnos';

nAsignaturas = length(vectorNotas);

[nAlumnos, nAsignaturas] = size (matrizNotas);

expediente.numeroAlumnos = nAlumnos;
expediente.numeroAsignaturas = nAsignaturas;


%% 8. CONSIDERACIONES
% -------------------------------------------------------------------------
% Si ponemos ; despues de una linea de codigo, Matlab no nos da feedback de
% lo que va haciendo, mientras que si no la ponemos por cada linea que
% ejecute nos dice que ha hecho y eso hace que el rendimiento sea peor.

% Funciones interesantes:
% ONES
% ZEROS
% RAND
% PLOT
% BAR


% El comando CLC limpia la linea de comandos
% El comando CLEAR ALL limpia todo el workspace
