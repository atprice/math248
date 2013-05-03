n=100000;
x = floor(sqrt(n));
a=ones(n,1);
a(1) = 0;
for i=2:x
    for j=i^2:i:n
        a(j) = 0;
    end
end

count = 0;
found = 0;
i=3;
while i < n &&  found < 1
    if a(i)==0
        j=2;
        count = 0;
        while found < 1 && j < i
            if a(j) == 1
                x = sqrt((i - j)/2);
                if x == floor(x)
                    count =count + 1;
                end
            end
            j=j+1;
        end
        if count == 0
            found = i;
        end
    end
    i=i+2;
end
disp(found)
