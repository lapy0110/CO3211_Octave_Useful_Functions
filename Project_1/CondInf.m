function NcondInf = CondInf(A)
    Sinf=[];
    for i=1:1:50 
        YP=rand(length(A),1);
        ZP=sistemaLU(A,YP);
    
        NCondInfP=norm(ZP,inf)/norm(YP,inf);
        Sinf=[Sinf,NCondInfP];
    end

    NormaInversa=max(max(Sinf));
    NcondInf=norm(A,inf)*NormaInversa;
end