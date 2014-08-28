function A = pascal(n)
if(n==1)
    A=1;
else
    A=zeros(n,2*n-1);
    A(1,n)=1;
    for row=2:n
        for col=1:(2*n-1)
            if (col==1)
                A(row,col)=A(row-1,col)+A(row-1,col+1);
            elseif (col==(2*n-1))
                A(row,col)=A(row-1,col)+A(row-1,col-1);
            else
                A(row,col)=A(row-1,col-1)+A(row-1,col+1);
            end
        end
    end
    %changing 0s with infinity to avoid loosing important 0s
    for row=1:n
        for col=1:(2*n-1)
            if(A(row,col)==0)
                A(row,col)=Inf;
            end
        end
    end
    A=num2str(A);
    [nrow ncol]=size(A);
    for row=1:nrow
        for col=1:ncol
            if(A(row,col)=='I')
                A(row,col)=' ';
            elseif(A(row,col)=='n')
                A(row,col)=' ';
            elseif(A(row,col)=='f')
                A(row,col)=' ';
            end
        end
    end
end
%replacing zeros with spaces


end

