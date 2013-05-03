function [x] = todec(a,b)
%Convert the base b number with digits in array
%   a to base ten, output as x
n = length(a);
x = a(n);
for i = n-1:-1:1
    x= x * b+ a(i);
end

