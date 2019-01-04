function evaluado = Horner(coef, x, xaux)
  n = length(coef);
  evaluado = coef(n);
  for i=n-1:-1:1
    evaluado = (evaluado * (x-xaux) + coef(i);
  end
end