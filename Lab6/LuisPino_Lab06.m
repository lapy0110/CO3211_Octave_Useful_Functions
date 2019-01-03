% CO3211 - Calculo Numerico
% Trimestre: Septiembre - Diciembre 2018
% Autor: Luis Pino (15-11138)

%                                              Laboratorio 6 - 27/11/2018

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% PARTE A

% Para el calculo analitico 

%    A = 1   1   0
%        0   1   e
%        0   e   1

% Sabemos que|A-λI|=0 => Av=λv => (A-λI)v=0
% Si realizamos operaciones sobre la matriz esta nos queda planteada de la siguienqte forma

%    A = 1    1      0  
%        0    1      e  
%        0    0    1-e^2
% Luego , para poder continuar resolviendo, pasamos a calcular A-λI que nos queda:

%        1-λ    1      0           
%        0     1-λ     e      
%        0      0  1-e^2-λ

% Calculamos en determinante y nos queda: ((1-λ)^2)*(1-e^2-λ)=0 
% Posteriormente calculamos las raices de esa ecuación y tenemos que λ1=1 y λ2=1-e^2
% Para λ1=1
%        |0   1   0 ||x|   0
%        |0   0   e ||y| = 0
%        |0   0 -e^2||z|   0

% Para λ2=1-e^2
%        |-e^2  1     0 ||x|   0 
%        |0    -e^2   e ||y| = 0
%        |0     0     0 ||z|   0

% Finalmente nos queda que el mayor autovalor es λ=1, al igual que el autovector asociado a este autovalor: [1;0;0]
% Para el caso de un autovector asociado para todo e >= 0: [1/e^2;1;1/e]  

% PARTE B

e=[1;10^-2;10^-4;10^-8];

for f=1:1:4
  A=[1,1,0;0,1,e(f);0,e(f),1];
  [x,k,r]=potencia(A,10^-5,[1;1;1],1000)
  resta=max(eig(A))-r;
  error_relativo=norm(resta,inf)/norm(max(eig(A)),inf)
endfor 

% Despues de realizar esto nos damos cuenta que la matriz que en cuanto los valores tienden a cero
% es decir que son de menor tamaño, comienza a tener un error relativo mucho mayor que su anterior. COntrario
% al caso donde utilizamos una variable exacta, como lo es e=1, donde el resultado es mucho mas estable

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

MA = [4,-1,0,0; -1,4,-1,0; -1,-1,4,0; 1,0,-1, 2+i];
MB = [-4,0,1+i,3; 0,4,-2,1; 1+i,2,-2,0; 3,1,0,-4*i];
 
disco(MA)
disco(MB)

% Para la Matriz A: Aplicando el metodo de la potencia
[x,k,r]=potencia(MA,10^-5,[1;1;1;1],1000)
resta=max(eig(MA))-r;
Er=norm(resta,inf)/norm(max(eig(MA)),inf)
AutovalorA=eig(MA)

% Para la Matriz A: Aplicando el metodo de la potencia
[x,k,r]=potencia(MB,10^-5,[1;1;1;1],1000)
resta=max(eig(MB))-r;
Er=norm(resta,inf)/norm(max(eig(MB)),inf)
AutovalorB=eig(MB)

% Se cumple para ambos que el mayor autovalor coincide con el de la función de matlab
% y los otros autovalores no necesariamente coinciden 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

M3=[17,24,1,8,15;23,5,7,14,16;4,6,13,20,22;10,12,19,21,3;11,18,25,2,9];
D=[];
D1=[];
D2=[];

% Aplicamos 
[D] = QR(M3,100)
Autovalor3A=eig(M3)

[D1] = QR(MA,100)
AutovalorA

[D2] = QR(MB,100)
AutovalorB

% Podemos observar que en el caso del Autovalor3A los autovalores cambian mas no el valor del mayor
% autovalor, contrarío a lo que ocurre al aplicar QR con la Matriz A donde la mayoria de los autovalores
% coinciden o tienen pequeñas variaciones, al igual que al aplicar QR en la AMtriz B