function s = SplineCubico(x,y,k1,k2)
  Largo = length(x);
  A = zeros(Largo-1,1);

  for j=1:Largo-1
    A(j) = x(j+1)-x(j);
  end
  
  Aux = zeros(Largo,1);

  if(nargin==2)
    largoFL = length(a)-1;
    yfl=y

    A(1,1)=1;
    A(largoFL+1,largoFL+1)=1;

    for i = 2:largoFL
      A(i,i+1) = yfl(i);
      A(i,i-1) = yfl(i-1);
      A(i,i) = 2*(yfl(i)+yfl(i-1));
    end

    b = zeros(largoFL+1,1);
    b(1)=0;
    b(largoFL+1)=0;

    for i=2:largoFL
      b(i) = (6/yfl(i))*(a(i+1)-a(i)) - (6/yfl(i-1))*(a(i)-a(i-1));
    end

    Aux = A\b;
    Aux = c/2;

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