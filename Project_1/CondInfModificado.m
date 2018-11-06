function NcondInf = CondInfModificado(A)
    Sinf=[];
    for i=1:1:50 
        YP=[];
        for i=1:1:length(A)
            YP=[YP,((-1)^randi([1 6]))];
        end
        ZP=sistemaLU(A,YP);
    
        NCondInfP=norm(ZP,inf)/norm(YP,inf);
        Sinf=[Sinf,NCondInfP];
    end

    NcondInf=norm(A,inf)*(max(max(Sinf)));
end