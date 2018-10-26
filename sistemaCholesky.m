function x = sitemaCholesky(A,b)
L=cholesky(A);
U=transpose(L);
Y=sust_adel(L,b);
x=sust_atras(U,Y);    
end