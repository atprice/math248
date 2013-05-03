
n=1000000;
x = floor(sqrt(n));
a=ones(n,1);
a(1) = 0;
for i=2:x
    for j=i^2:i:n
        a(j) = 0;
    end
end

highestCount = 0;
for i=1:(length(a)/2)
    sum = 0;count = 0;
    if a(i) == 1
        j = i;
        while sum < n
            if sum > 0
                if count >= highestCount && a(sum)== 1
                    highestCount = count;highestCountSum = sum;
                end
            end
            if a(j) == 1;
                sum = sum + j;count = count + 1;
            end
            j=j+1;
        end
    end
end
disp(highestCountSum)