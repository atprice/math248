for a=1:1000
    for b=a:1000
        c=1000-b-a;
        if c==sqrt(b^2+a^2);
            disp(a), disp(b), disp(c)
        end
    end
end