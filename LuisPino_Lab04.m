% CO3211 - Calculo Numerico
% Trimestre: Septiembre - Diciembre 2018
% Autor: Luis Pino (15-11138)

%                                             Laboratorio 4 - 26/10/2018


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Creamos la matriz A
A=[];
for i=1:1:1000
    for j=1:1:1000
        if i==j
            A(i,j)=-500000;
        else
            A(i,j)=menor(i,j);
        end
    end
end
Mensaje1=1;
Mensaje1

% Creamos el vector B
B=[];
for i=1:1:1000
    B(1,i)=i;
end

Mensaje2=2;
Mensaje2
%%% PREGUNTA A
tic;
[AG,BG]=Gauss_NoPivoteo(A,B);
STG=sust_atras(AG,BG);
toc

%%% PREGUNTA B
tic;
STLU=sistemaLU(A,B);
toc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Y=-5+(5+5)*rand(250,250) %Creamos la matriz Y
B=Y*transpose(Y)
A=B+()

