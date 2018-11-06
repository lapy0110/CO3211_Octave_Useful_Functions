function Ncond1 = Cond1(A)
    S11=[];
    for i=1:1:50 
        YP=rand(length(A),1);
        ZP=sistemaLU(A,YP);
    
        NCond1P=norm(ZP,1)/norm(YP,1);
        S11=[S11,NCond1P];
    end

    NormaInversa= max(max(S11));
    Ncond1=norm(A,1)*NormaInversa;
end