function ret=dd(x,y)
%return the coefficients of the Newton form of the polynomial through the
%data point (x,y)

n=length(x); d=zeros(n,n);
for i=1:n
    d(i,1)=y(i);
end
% fill rest of table
for i=2:n
    for j=2:i
            d(i,j)=(d(i,j-1)-d(i-1,j-1))/...
                (x(i)-x(i-j+1));
    end
end
%extract the diagonal
ret=zeros(1,n);
for i=1:n
    ret(i)=d(i,i);
end