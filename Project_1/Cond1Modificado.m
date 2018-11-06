function Ncond1 = Cond1Modificado(A)
    S11=[];
    YP=[];
    for i=1:1:5 
        for i=1:1:length(A)
            YP=[YP,((-1)^randi([1 6]))];
        end

        ZP=sistemaLU(A,YP);
    
        NCond1P=norm(ZP,1)/norm(YP,1);
        S11=[S11,NCond1P];
    end

    Ncond1= max(max(S11));
end