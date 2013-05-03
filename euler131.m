% initialize x as the square root of n and the maximum positive integer 
%whose multiples are being crossed out
clear all;
num=1000000;
x = floor(sqrt(num));
 
%create a one-dimensional array with each element being 1
a=ones(num,1);
%change the first 1 to a 0 since one is not prime
a(1) = 0;
%a for loop checking the multiples of each integer up to x, the square 
%root of n
for i=2:x
    for j=i^2:i:num
        a(j) = 0;
    end
end
count=0;
for p=1:num
    if a(p) == 1
        for n=1:p^2
            x=nthroot((n^3 + (n^2)*p),3);
            if rem(x,1)==0
                count = count + 1;
                b(count,:) = [p, n, x];
                disp(b(count,:));
            end
        end
    end
end
disp(count);
disp(b);