% CO3211 - Calculo Numerico
% Trimestre: Septiembre - Diciembre 2018
% Autor: Luis Pino (15-11138)

%                                               Proyecto 1 - 05/11/2018


%%% Creación y carga de matrices utiles durante el proceso del proyecto 

load('CO3211_proy1datos.mat')
A6=[0.641 0.242; 0.321 0.121];
A7=[10 -7 0; -3 2 6; 5 -1 5];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PROCEDIMIENTO 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
display('NUMERO DE CONDICIÓN A TRAVES DEL PROCEDIMIENTO 1')
% Para A1

display('')
display('Para la Matriz A1')

CondAproxInf1=CondInf(A1)
CondAprox11=Cond1(A1)
CondExactoInf1=cond(A1,inf)
CondExacto11=cond(A1,1)


%%% PROCEDIMIENTO 2 

%Luego, como segunda idea, concentre su atencíon en vectores y cuyas componentes sean 1 o −1
%escogidos en forma aleatoria de nuevo, y obtenga cotas inferiores para la cond(A).

%%% PROCEDIMIENTO 3 

% Por  ́ultimo considere la siguiente idea: resolver primero el sistema Ax = b donde bi = 1/n para
% todo i; luego resolver A↑t*z=y donde yi = 1 si xi ≥ 0, y yi = −1 si xi < 0; asignar al  ́ındice
% k = arg max{|zi|, 1 ≤ i ≤ n}, y resolver de nuevo Ax = b donde ahora b tiene ceros en todas las
% posiciones menos en la k donde tiene un 1.
% Calcule kxk1 y  ́uselo como cota inferior de kA−1k1 (justifique por qu ́e s ́olo kxk1 para el c ́alculo de la
% cota inferior de kA−1k1). Compare con los resultados aleatorios. Comente los resultados observados
% y trate de explicar el por qúe de lo observado.
