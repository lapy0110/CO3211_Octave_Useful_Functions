function Result = FronteraLibre(h,y)
    Largo = length(y) - 1;

    % Creamos la matriz A que se va utilizar para resolver el sistema de ecuaciones
    A(1,1)=1;
    A(Largo+1,Largo+1)=1;

    for i = 2:Largo
      A(i,i+1) = h(i);
      A(i,i-1) = h(i-1);
      A(i,i) = 2*(h(i)+h(i-1));
    end

    % Creamos el vector B que se va utilizar para resolver el sistema de ecuaciones
    b = zeros(Largo+1,1);
    b(1)=0;
    b(Largo+1)=0;
    
    for i=2:Largo
      b(i) = (6/h(i))*(y(i+1)-y(i)) - (6/h(i-1))*(y(i)-y(i-1));
    end

    % Resolvemos el sistema de ecuaciones utilizando la función "\" de Matlab/Octave
    Result = A\b;
    Result = Result/2;  
end