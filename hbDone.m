sum = 0
for k=1:n
    for l=k:(k+n-1) 
        sum = sum + 1/l;
    end
    b(k)=sum;
    sum = 0;
end

b=b'
a=hilb(n)
