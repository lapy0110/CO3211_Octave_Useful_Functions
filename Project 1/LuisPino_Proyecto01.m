% CO3211 - Calculo Numerico
% Trimestre: Septiembre - Diciembre 2018
% Autor: Luis Pino (15-11138)

%                                               Proyecto 1 - 05/11/2018


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PROCEDIMIENTO 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Como primera idea practica, genere vectores y!=0 en forma aleatoria, resuelva Az = y y consiga
% la mejor cota inferior posible de la norma de A↑-1, y por ende de cond(A). Compare con la cond(A) exacta
% que ofrece MATLAB en norma 1 y norma infinito. Por favor, tome ventaja de la factorizacion LU
% de A ya obtenida al resolver el sistema original, en esto radica la eficiencia.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PROCEDIMIENTO 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Luego, como segunda idea, concentre su atenci ́on en vectores y cuyas componentes sean 1 o −1
%escogidos en forma aleatoria de nuevo, y obtenga cotas inferiores para la cond(A).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PROCEDIMIENTO 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Por  ́ultimo considere la siguiente idea: resolver primero el sistema Ax = b donde bi = 1/n para
% todo i; luego resolver A↑t*z=y donde yi = 1 si xi ≥ 0, y yi = −1 si xi < 0; asignar al  ́ındice
% k = arg max{|zi|, 1 ≤ i ≤ n}, y resolver de nuevo Ax = b donde ahora b tiene ceros en todas las
% posiciones menos en la k donde tiene un 1.
% Calcule kxk1 y  ́uselo como cota inferior de kA−1k1 (justifique por qu ́e s ́olo kxk1 para el c ́alculo de la
% cota inferior de kA−1k1). Compare con los resultados aleatorios. Comente los resultados observados
% y trate de explicar el por qu ́e de lo observado.
