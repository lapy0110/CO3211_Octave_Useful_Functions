function vectorsol = MC(xd,yd,csol)
  csol+=1;
  n = length(xd);
  aux = ones(2*csol-1,1);
  for i=1:1:(2*csol-1)
    aux(i,1) = sum(xd.^(i-1));
  end
  for i=1:1:csol
    for j=1:1:csol
      X(i,j) = aux(i+j-1,1);
    end
  end
  for i=1:1:csol
    V(i)=sum((yd).*((xd).^(i-1)));
  end  
  vectorsol = X \ V';
  vectorsol=flipud(vectorsol);
end