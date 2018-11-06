function ncond3 = cond3(A)
    b=[];
    N=length(A);
    for i=1:1:N
        b=[b,1/N];
    end

    x=sistemaLU(A,b);
    At=A.';
    
    y=[];
    for i=1:1:N
        if x(i)>=0
            y(i)=1;
        else
            y(i)=-1;
        end
    end

    z=sistemaLU(At,y);
    argmax=find(z==max(z));
    
    bn=[];
    for i=1:1:N
        if i==argmax
            bn(i)=1;
        else
            bn(i)=0;
        end
    end

    Zn=sistemaLU(A,bn);
    ncond3=norm(A,1)*norm(Zn,1);

end