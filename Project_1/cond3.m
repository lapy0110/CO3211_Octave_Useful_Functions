function output = cond3(A)
    b=[];
    N=length(A);
    for i=1:1:N
        b(i)=1/N;
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

    z=sistemaLU(At,y)
    

end