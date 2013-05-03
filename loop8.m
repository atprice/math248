count=0;
for a=1:100
    for b=a:100
        for c=b:100
            if a+b+c==100, count=count+1; end
        end
    end
end
disp(count)

count=0;
for a=1:100
    for b=a:100
        c=100-a-b;
        if c>=b, count=count+1; end
    end
end
disp(count)

count=0;
for a=1:100
    for b=a:floor(50-a/2)
        count=count+1;
    end
end
disp(count)