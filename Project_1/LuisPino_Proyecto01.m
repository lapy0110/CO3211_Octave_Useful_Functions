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

% Para A2

display('')
display('Para la Matriz A2')

CondAproxInf1=CondInf(A2)
CondAprox11=Cond1(A2)
CondExactoInf1=cond(A2,inf)
CondExacto11=cond(A2,1)

% Para A3

display('')
display('Para la Matriz A3')

CondAproxInf1=CondInf(A3)
CondAprox11=Cond1(A3)
CondExactoInf1=cond(A3,inf)
CondExacto11=cond(A3,1)

% Para A5

display('')
display('Para la Matriz A5')

CondAproxInf1=CondInf(A5)
CondAprox11=Cond1(A5)
CondExactoInf1=cond(A5,inf)
CondExacto11=cond(A5,1)

% Para A6

display('')
display('Para la Matriz A6')

CondAproxInf1=CondInf(A6)
CondAprox11=Cond1(A6)
CondExactoInf1=cond(A6,inf)
CondExacto11=cond(A6,1)

% Para A7

display('')
display('Para la Matriz A7')

CondAproxInf1=CondInf(A7)
CondAprox11=Cond1(A7)
CondExactoInf1=cond(A7,inf)
CondExacto11=cond(A7,1)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PROCEDIMIENTO 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

display('NUMERO DE CONDICIÓN A TRAVES DEL PROCEDIMIENTO 2')
% Para A1

display('')
display('Para la Matriz A1')

CondAproxInf1=CondInfModificado(A1)
CondAprox11=Cond1Modificado(A1)

% Para A2

display('')
display('Para la Matriz A2')

CondAproxInf1=CondInfModificado(A2)
CondAprox11=Cond1Modificado(A2)

% Para A3

display('')
display('Para la Matriz A3')

CondAproxInf1=CondInfModificado(A3)
CondAprox11=Cond1Modificado(A3)

% Para A5

display('')
display('Para la Matriz A5')

CondAproxInf1=CondInfModificado(A5)
CondAprox11=Cond1Modificado(A5)

% Para A6

display('')
display('Para la Matriz A6')

CondAproxInf1=CondInfModificado(A6)
CondAprox11=Cond1Modificado(A6)

% Para A7

display('')
display('Para la Matriz A7')

CondAproxInf1=CondInfModificado(A7)
CondAprox11=Cond1Modificado(A7)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PROCEDIMIENTO 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
display('NUMERO DE CONDICIÓN A TRAVES DEL PROCEDIMIENTO 3')
%Para A1
display('Para la Matriz A1')
CondAproxInf1=cond3(A1)
%Para A2
display('Para la Matriz A2')
CondAproxInf1=cond3(A2)
%Para A3
display('Para la Matriz A3')
CondAproxInf1=cond3(A3)
%Para A5
display('Para la Matriz A5')
CondAproxInf1=cond3(A5)
%Para A6
display('Para la Matriz A6')
CondAproxInf1=cond3(A6)
%Para A7
display('Para la Matriz A7')
CondAproxInf1=cond3(A7)