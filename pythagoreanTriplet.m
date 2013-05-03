for a=1:500
    for b=a:500
        c = sqrt(a^2 + b^2);
        if (a + b + c == 1000)
            fprintf('a = %d \n', a);
            fprintf('b = %d \n', b);
            fprintf('c = %d \n', c);
        end
    end
end