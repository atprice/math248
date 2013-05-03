function [err] = hb(n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
sum = 0;
for k=1:n
    for l=k:(k+n-1) 
        sum = sum + 1/l;
    end
    b(k)=sum;
    sum = 0;
end

b=b'
a=hilb(n)
c=a\b
maxerr=0;
for h=1:n
    err(h)=max(abs(c(h)-1));
    if (err(h) > maxerr)
        maxerr=err(h);
    end
end

mosterr=maxerr