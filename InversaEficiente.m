function inv=InversaEficiente(A)
  n=length(A);
  lu=LU(A);
  L=tril(lu,-1)+eye(n);
  u=tril(lu);
  inv=[]
  for k=1:1:n
    e=0*ones(n,1);
    e(k)=1;
    y=sust_adel(L,e);
    x=sust_atras(u,y);
    inv=[inv,x];
  end
end