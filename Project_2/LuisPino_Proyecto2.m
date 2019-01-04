% CO3211 - Calculo Numerico
% Trimestre: Septiembre - Diciembre 2018
% Autor: Luis Pino (15-11138)

% Proyecto 2 - 03/01/2019

%%% PARTE 1 - GRAFICA DE LA PENINSULA CON SPLINES

% Hacemos la captura de los puntos de la imagen paraguana.bmp
% Capturamos los puntos y creamos los splines de cada uno
[x1,y1] = captura_puntos('paraguana1.bmp');
S1 = SplineCubico(x1,y1);

[x2,y2] = captura_puntos('paraguana2.bmp');
S2 = SplineCubico(x2,y2);  

[x3,y3] = captura_puntos('paraguana3.bmp');
S3 = SplineCubico(x3,y3);  

[x4,y4] = captura_puntos('paraguana4.bmp');
S4 = SplineCubico(x4,y4);  

[x5,y5] = captura_puntos('paraguana5.bmp');
S5 = SplineCubico(x5,y5);

[x6,y6] = captura_puntos('paraguana6.bmp');
S6 = SplineCubico(x6,y6);

[x7,y7] = captura_puntos('paraguana7.bmp');
S7 = SplineCubico(x7,y7);

[x8,y8] = captura_puntos('paraguana8.bmp');
S8 = SplineCubico(x8,y8);

[x9,y9] = captura_puntos('paraguana9.bmp');
S9 = SplineCubico(x9,y9);

% Procedemos a hacer la grafica de todos nuestros splines cubicos juntos para
% evaluar su similitud con la peninsula dada

figure
hold on
% Utilizaremos la función auxiliar "Graficar" para poder hacer la grafica con
% cada spline
Graficar(x1,y1,S1);
Graficar(x2,y2,S2);
Graficar(x3,y3,S3);
Graficar(x4,y4,S4);
Graficar(x5,y5,S5);
Graficar(x6,y6,S6);
Graficar(x7,y7,S7);
Graficar(x8,y8,S8);
Graficar(x9,y9,S9);
Graficar(x10,y10,S10);

%%% PARTE 2 - CALCULO DE LA LONGITUD DE LA COSTA