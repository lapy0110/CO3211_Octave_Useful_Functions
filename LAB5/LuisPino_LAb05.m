% CO3211 - Calculo Numerico
% Trimestre: Septiembre - Diciembre 2018
% Autor: Luis Pino (15-11138)

%                                              Laboratorio 5 - 05/11/2018


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

X = rand(10,10)*2 -1; 
Y = rand(2,10)*2 -1; 
I = eye(10);
e = ones(10);

% PARTE A:


% PARTE B:

% Para A1 y B1
A1 = X + 10*I;
b1 = A1*e;

printf("Ejercicio 1:\nParte b:\nSolucion primer sistema de ecuaciones, metodo Jacobi:\n");
[x1,iteraciones] = jacobi(A1,b1,ones(10,1),1000,10^-4)

printf("Solucion sistema 1, metodo Gauss-Seidel:\n");
[x1,iteraciones] = GaussSeidel(A1,b1,ones(10,1),1000,10^-4)


% Para A2 y B2
A2 = Y'*Y + (10^-3)*I;
b2 = A2*e;

printf("Solucion sistema 2, metodo Jacobi:\n");
[x2,iteraciones] = jacobi(A2,b2,ones(10,1),1000,10^-4)

printf("Solucion sistema 2, metodo Gauss-Seidel:\n");
[x2,iteraciones] = GaussSeidel(A2,b2,ones(10,1),1000,10^-4)

    
% Calculamos la matriz D:
D1 = diag(diag(A1));
D2 = diag(diag(A2));

% Calculamos la matriz L:
L1 = tril(A1,-1);
L2 = tril(A2,-1);

% Calculamos la matriz U:
U1 = triu(A1,1);
U2 = triu(A2,1);


%Calculamos el radio espectral para el metodo de Jacobi

printf("Radios espectrales para el metodo de Jacobi:\n")
RadioEspectralJacobiA1 = max(abs(eig((inv(D1))*(L1+U1))))
RadioEspectralJacobiA2 = max(abs(eig((inv(D2))*(L2+U2))))

% De aqui se puede ver que el radio espectral de A1 es menor que 1, por lo tanto
% para el metodo de Jacobi, A1 debe converger. Como para A2 el radio espectral 
% es mayor que 1 el metodo de Jacobi no converge.


% Calculamos el radio espectral para el metodo de Gauss-Seidel
N1 = D1 + U1;
N2 = D2 + U2;
P1 = (-1) * L1;
P2 = (-1) * L2;

printf("Radios espectrales para el metodo de Gauss-Seidel:\n")
REA12 = max(abs(eig(inv(N1)*P1)))
REA22 = max(abs(eig(inv(N1)*P2)))

% Como los dos resultados son ambos menores que 1 el metodo Gauss-Seidel converge para las dos matrices.

% Por otro lado, comparando la eficiencia, podemos ver que es mas rapido el gaussseidel porque
% realiza menos iteraciones que Jacobi como se vio en teoria. Ademas, Jacobi, al realizar mas operaciones sobre
% el vector, genera una precision mayor que Gauss-Seidel.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EJERCICIO 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A3 = [7,3,-1,2;3,8,1,-4;-1,1,4,-1;2,-4,-1,6];
b3 = [-1;0;-3;1];

A4 = [4,3,0;3,4,-1;0,-1,4];
b4 = [1;1;1];

i=1;
x = 0.01:0.01:1.99;
y1 = 0.01:0.01:1.99;
y2 = 0.01:0.01:1.99;
for w = 0.01:0.01:1.99 %Pruebo con varios valores de w
  [xi,y1(i)] = SOR(A3,b3,ones(4,1),w,10^-3,100); 
  [xi,y2(i)] = SOR(A4,b4,ones(3,1),w,10^-3,100);
  i++;
end

hold on
plot(x,y1);
plot(x,y2,'r');