function s=sumdigits(n)
%sum the digits of the number n, output at s
s=0;
if n>0 && floor(n)==n
    while n>0
        s=s+mod(n,10);
        n=floor(n/10);
    end
else
    error('not a natural number');
end