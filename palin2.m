count=0;
for a=100:999
    for b=a:999
        c=a*b;
        if palin(c)==1
            count=count+1;
        end
    end
end
disp(count)