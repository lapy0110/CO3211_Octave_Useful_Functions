function Graficar(x,y,Spline)  
    n = length(x);
    Puntos = 15;

    for i=1:n-1
        x2 = linspace(x(i),x(i+1),Puntos);
        for j = 1:Puntos
          y2(j) = Horner(Spline(i,:),x2(j),x(i));
        end
        hold on
        plot(x2,y2,'b');
        hold on
        plot(x(i),y(i),'r');
    end
    
    plot(x(n),y(n),'r');
    
end