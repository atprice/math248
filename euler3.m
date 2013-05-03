
% initialize x as the square root of n and the maximum positive integer 
%whose multiples are being crossed out
primeFactorOf=600851475143;
n=floor(primeFactorOf/2);

x = floor(sqrt(n));
 
%create a one-dimensional array with each element being 1
for i=1:n
    a(i) = 1;
end
%change the first 1 to a 0 since one is not prime
a(1) = 0;
%a for loop checking the multiples of each integer up to x, the square 
%root of n
for i=2:x
    for j=i^2:i:n
        a(j) = 0;
    end
end
count = 0;
i=n;
found = 0;
while i > 1  && found ~= 1
    if a(i) == 1
        m=primeFactorOf/i;
        
        if rem(m,1)==0
            j=i;
            while j > 1  && found ~= 1
                
                if a(w) == 1
                    
                end
                j=j-1;
            end
        end
    end
    i=i-2;
end


