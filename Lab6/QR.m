function z=QR(A,itmax)
  A0=A;
  for i=1:1:itmax
    [Q,R]=qr(A0);
    A1=R*Q;
    A0=A1;
  end
  z=diag(A1);
end