n=200000;
x = floor(sqrt(n));
a=ones(n,1);
a(1) = 0;
for i=2:x
    for j=i^2:i:n
        a(j) = 0;
    end
end
count = 1;
k =1;
while count < 10001
    k=k+2;
    if a(k) == 1
        count = count +1;
    end
end
disp(k)