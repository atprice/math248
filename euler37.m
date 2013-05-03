n=1000000;
x = floor(sqrt(n));
a=ones(n,1);
a(1) = 0;
for i=2:x
    for j=i^2:i:n
        a(j) = 0;
    end
end
count = 0;
i=11;
while i <= n && count <= 11
    if a(i) == 1
        y=floor(log10(i));
        truce=1;
        for j=1:y
            z = mod(i,10^j);
            if a(z) ~= 1
                truce=0;
            end
        end
        if truce == 1
            for k=1:y
                z =(i - mod(i,10^k))/(10^(k));
                if a(z) ~= 1
                    truce=0;
                end
            end
        end
        if truce==1
            count=count + 1;
            sum = sum + i;
        end
    end
    i=i+2;
end
disp(sum)
