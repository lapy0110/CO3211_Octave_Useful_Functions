function s = SplineCubico(x,y,k1,k2)
  Largo = length(x);
  A = zeros(Largo-1,1);

  % Creamos la matriz A cuya función es alojar los resultados 

  for j=1:Largo-1
    A(j) = x(j+1)-x(j);
  end
  
  Aux = zeros(Largo,1);

  if(nargin==2)
    Aux = FronteraLibre(A,y);
  else
    Aux = Amarrado(A,y,k1,k2);
  end
  
  b = zeros(Largo-1,1);
  d = zeros(Largo-1,1);
  
  for j = 1:Largo-1
    b(j) = (y(j+1)-y(j))/A(j)-A(j)*(2*Aux(j)+Aux(j+1))/3;
    d(j) = (Aux(j+1)-Aux(j))/(3*A(j));
  end
   
  b = [b;0];
  d = [d;0];

  s = [y',b,Aux,d]; 
end