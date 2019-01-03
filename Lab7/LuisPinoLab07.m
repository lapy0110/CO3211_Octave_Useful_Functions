% CO3211 - Calculo Numerico
% Trimestre: Septiembre - Diciembre 2018
% Autor: Luis Pino (15-11138)

%                                              Laboratorio 7 - 04/12/2018

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

format longEng

% Haremos una doble evaluación para las preguntas A Y B utilizando una función nativa y una no nativa
% para comparar los resultados dados

%%% PARTE A
% Durante esta primera fase uilizamos la función MC que no es nativa del lenguaje y probamos
S=load('data.mat');
xd=S.xd;
yd=S.yd;
XP=min(xd):0.1:max(xd);

P1=MC(xd,yd,5);
y1=polyval(P1,XP);
y11=polyval(P1,xd);
E1=ECM(y11,yd)

P2=MC(xd,yd,15);

y2=polyval(P2,XP);
y12=polyval(P2,xd);
E2=ECM(y12,yd)

P3=MC(xd,yd,20);

y3=polyval(P3,XP);
y13=polyval(P3,xd);
E3=ECM(y13,yd)

%%% PARTE B
hold on
grid on 
plot(xd,yd,'-o')
plot(XP,y1,'-r');

plot(XP,y2,'-b');  

plot(XP,y3, '-g');
title('Modelo de ajuste')
xlabel('Tiempo')
ylabel('Temperatura')
legend('Ajuste con modelos polinomicos de grado: Rojo=5, Azul=15 , Verde=20')  
hold off

% Durante esta segunda fase uilizamos la función polyfit que no es nativa del lenguaje y probamos
%%% PARTE A
S=load('data.mat');
xd=S.xd;
yd=S.yd;
XP=min(xd):0.1:max(xd);

P1=polyfit(xd,yd,5);
y1=polyval(P1,XP);
y11=polyval(P1,xd);
E1=ECM(y11,yd)

P2=polyfit(xd,yd,15);

y2=polyval(P2,XP);
y12=polyval(P2,xd);
E2=ECM(y12,yd)

P3=polyfit(xd,yd,20);

y3=polyval(P3,XP);
y13=polyval(P3,xd);
E3=ECM(y13,yd)

%%% PARTE B
hold on
grid on 
plot(xd,yd,'-o')
plot(XP,y1,'-r');

plot(XP,y2,'-b');  

plot(XP,y3, '-g');
title('Modelo de ajuste')
xlabel('Tiempo')
ylabel('Temperatura')
legend('Ajuste con modelos polinomicos de grado: Rojo=5, Azul=15 , Verde=20')  
hold off

% En este caso, al utilizar la función polyfit vemosque las graficas quedan mas exactasycon un comportameinto 
% mas cercano al teoricamente esperado. Esto ocurre porquela función es nativa de matlab y una de sus
% caracteristicas es ser mas exactos 

%%% PARTE C

% Tomando en cuenta estos modelos, podemos ver que el ajuste del polinomio de Grado 15
% no posee el menor error, sin embargo dado que el ajuste delpolinomio de grado 20 tiene 
% una caracteristica oscilante mayor a la de grado 15, por tanto tomamos este como el 
% mas adecuado
Tiempo=[4.5,5,5.5];
ValorDeTemperatura=polyval(P2,Tiempo)

%%% PARTE D

Temp=36.612;
P2(length(P2))=P2(length(P2))-Temp;
Roots  = roots(P2);
for i=1:1:length(Roots)
  if(real(Roots(i))==(Roots(i)) && Roots(i)<=8 && Roots(i)>=0 || abs(polyval(P2,[Roots(i)])-36.612)<=1)
    printf("tiempo en [0, 8] para el cual la temperatura es de 36.612 grados.\n")
    Roots(i)
  end
end