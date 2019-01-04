function L = LongitudLineaCosta()
    % Capturamos los puntos y creamos los splines de cada uno
    [x1,y1] = captura_puntos('paraguana1.bmp');
    S1 = SplineCubico(x1,y1);

    [x2,y2] = captura_puntos('paraguana2.bmp');
    S2 = SplineCubico(x2,y2);  

    [x3,y3] = captura_puntos('paraguana3.bmp');
    S3 = SplineCubico(x3,y3);  

    [x4,y4] = captura_puntos('paraguana4.bmp');
    S4 = SplineCubico(x4,y4);  

    [x5,y5] = captura_puntos('paraguana5.bmp');
    S5 = SplineCubico(x5,y5);

    [x6,y6] = captura_puntos('paraguana6.bmp');
    S6 = SplineCubico(x6,y6);

    [x7,y7] = captura_puntos('paraguana7.bmp');
    S7 = SplineCubico(x7,y7);

    [x8,y8] = captura_puntos('paraguana8.bmp');
    S8 = SplineCubico(x8,y8);
    
    [x9,y9] = captura_puntos('paraguana9.bmp');
    S9 = SplineCubico(x9,y9);

    %Variable donde se guardará el valor final y que retorna la función
    L = 0;

    % Realizamos el calculo de la longitud de cada spline cubico y luego cada
    % uno es sumado a la longitud total para dar el resultado final
    for i=1:length(x1)-1
      L+=LongitudArco(x1(i),x1(i+1),S1(i,:));
    end

    for i=1:length(x2)-1
      L+=LongitudArco(x2(i),x2(i+1),S2(i,:));
    end

    for i=1:length(x3)-1
      L+=LongitudArco(x3(i),x3(i+1),S3(i,:));
    end

    for i=1:length(x4)-1
      L+=LongitudArco(x4(i),x4(i+1),S4(i,:));
    end

    for i=1:length(x5)-1
      L+=LongitudArco(x5(i),x5(i+1),S5(i,:));
    end 
    for i=1:length(x6)-1
      L+=LongitudArco(x6(i),x6(i+1),S6(i,:));
    end

    for i=1:length(x7)-1
      L+=LongitudArco(x7(i),x7(i+1),S7(i,:));
    end

    for i=1:length(x8)-1
      L+=LongitudArco(x8(i),x8(i+1),S8(i,:));
    end

    for i=1:length(x9)-1
      L+=LongitudArco(x9(i),x9(i+1),S9(i,:));
    end

    L = (L*10)/66; 
    % La logintud L viene dada en pixeles, entonces por regla de 3 si 66 px = 10 km entonces L = (L*10)/66
end