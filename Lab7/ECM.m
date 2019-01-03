function x = ECM(p,y)
  n=length(p);
  x=sum((p.-y).^2);
  x= x/n;
end