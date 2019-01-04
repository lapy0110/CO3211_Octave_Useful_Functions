function LA = LongitudArco(coef,a,b)
    func = @(x) (sqrt(1 +(coef(2)+2*coef(3)*(x-a)+3*coef(4)*(x-a).^2).^2)));
    LA = quad(func,a,b);
end