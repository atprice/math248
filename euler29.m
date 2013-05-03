
c(1)=4;
for a=2:100
    for b=2:100
        x=a^b;
        count = 0;
        for i=1:length(c)
            if c(i) ~= x
                count = count + 1;
                if count == length(c)
                    c(length(c)+1)=x;
                end
            end
        end
    end
end
disp(length(c))