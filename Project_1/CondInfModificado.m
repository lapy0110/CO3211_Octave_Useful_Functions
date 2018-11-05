function NcondInf = CondInfModificado(A)
    Sinf=[];
    for i=1:1:5 
        YP=[];
        for i=1:1:length(A)
            YP=[YP,-1.^rand];
        end

        ZP=sistemaLU(A,YP);
    
        NCondInfP=norm(ZP,inf)/norm(YP,inf);
        Sinf=[Sinf,NCondInfP];
    end

    NcondInf=max(max(Sinf));
end