function x=sistemaLU(A,b)
  n=length(A);
  lu=LU(A);
  L=tril(lu,-1)+eye(n);
  u=triu(lu);
  y=sust_adel(L,b);
  x=sust_atras(u,y);
  end