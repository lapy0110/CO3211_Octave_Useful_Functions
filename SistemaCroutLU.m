function x=SistemaCroutLU(A,b)
  n=length(A);
  lu=LU_Crout(A);
  L=tril(lu);
  u=triu(lu,-1)+eye(n);
  y=sust_adel(L,b);
  x=sust_atras(u,y);
  end