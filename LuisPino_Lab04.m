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

% Creamos el vector B
B=[];
for i=1:1:1000
    B(1,i)=i;
end

%%% PREGUNTA A
tic;
[AG,BG]=Gauss_NoPivoteo(A,B);
STG=sust_atras(AG,BG);
toc

%%% PREGUNTA B
tic;
STLU=SistemaCroutLU(A,B);
toc
% Tiempo transcurrido: 40.0431 Segundos

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Y=-5+(5+5)*rand(250,250); %Creamos la matriz Y
B=Y*transpose(Y);
A=B+(eps-abs(min(eig(B))))*I(250);

e=[];
for i=1:1:250
    e(1,i)=(-1).^i;
end

%%% PREGUNTA A
if (A==transpose(A))
    Simetrica=1
else
    Simetrica=0
end
% Simetrica=1 Por tanto la matriz es simetrica

if (min(eig(A))>0)
    DefPositiva=1
else
    DefPositiva=0
end
% DefPositiva=1 Por tanto la matriz esta definida positiva

%%% PREGUNTA B
% Para EPS=10.^-12
A1=B+((10.^-12)-abs(min(eig(B))))*I(250);
b1=A1.*e;

tic;
LU1=SistemaCroutLU(A1,b1);
toc

tic;
C1=sistemaCholesky(A1,b1);
toc

% Para EPS=10.^-8
A2=B+((10.^-8)-abs(min(eig(B))))*I(250);
b2=A2*e;

tic;
LU2=SistemaCroutLU(A2,b2);
toc

tic;
C2=sistemaCholesky(A2,b2);
toc
% Para EPS=10.^-4
A3=B+((10.^-4)-abs(min(eig(B))))*I(250);
b3=A3*e;

tic;
LU3=SistemaCroutLU(A3,b3);
toc

tic;
C3=sistemaCholesky(A3,b3);
toc

%%% PREGUNTA C

%%% PREGUNTA D