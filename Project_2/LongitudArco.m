function LA = LongitudArco(c0,c1,c2,c3,a,b)
    func = @(x) ((1+(3*c3*x^2 + 2*c2*x + c1))^1/2);
    LA = quad(func,a,b);
end