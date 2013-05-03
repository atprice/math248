%sum the digits of a number
n=input('enter a number: ');
s=0;
if n>0 && floor(n)==n
    while n>0
        s=s+mod(n,10);
        n=floor(n/10);
    end
    disp(s)
else
    disp('not a natural number');
end