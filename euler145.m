

count =0;

for i=1:10^9
    reverse=0;
    y=floor(log10(i)+1);
    
    for j = 1:y
        z = mod(i,10^(j));
        reverse = reverse + (floor(z/(10^(j-1))))*10^(y-j);
    end
    
    w=floor(log10(reverse)+1);
    
    if y==w
        sum = i + reverse;
        subcount=0;
        u=floor(log10(sum)+1);

        for j = 1:u
            z = mod(sum,10^(j));
            if mod((floor(z/(10^(j-1)))),2) == 1
                subcount= subcount +1;
            end
        end

        if subcount == u
            count = count + 1;
            disp(i)
        end
    end
end
disp(count);
