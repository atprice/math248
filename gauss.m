function x=gauss(a,b,c)
%use gaussian elimination to solve ax=b

[n,m]=size(a); p=length(b);
if n~=m || n~=p
    error('size mismatch');
end

%transform a to upper triangular 
for k=1:n-1   %k is column number
    if a(k,k)==0  % pivot zero, need a row swap
        i=k+1;
        while i<n && a(i,k)==0, i=i+1; end
        if a(i,k)==0
            error('No unique solution')
        else   %swap rows
            for j=k:n
                t=a(i,j); a(i,j)=a(k,j);
                a(k,j)=t;
            end
            t=b(i); b(i)=b(k); b(k)=t;
        end
    end
        
    for i=k+1:n    %i is row number
        t=a(i,k)/a(k,k);    %pivot
        a(i,k)=0;
        for j=k+1:n
            a(i,j)=a(i,j)-t*a(k,j);
        end
        b(i)=b(i)-t*b(k);
    end
end

%back substitution 
x=zeros(n,1); x(n)=b(n)/a(n,n);
for i=n-1:-1:1
    x(i)=b(i);
    for k=i+1:n, x(i)=x(i)-a(i,k)*x(k); end
    x(i)=x(i)/a(i,i);
end

x1=1/(1-c)
x2=2-1/(1-c)
err1=abs(x(1)-x1)
err2=abs(x(2)-x2)
