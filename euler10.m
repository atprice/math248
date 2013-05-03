n=2*10^6;
x = floor(sqrt(n));
a=ones(n,1);
a(1) = 0;
for i=2:x
    for j=i^2:i:n
        a(j) = 0;
    end
end

sum = 0;
for i=1:n
    if a(i) == 1
        sum = sum + i;
    end
end
disp(sum)