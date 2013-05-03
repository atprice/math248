
count = 1;
for g=0:2
    for h = 0:4
        for i = 0:10
            for j = 0:20
                for k = 0:40
                    for l = 0:100
                        for m = 0:200
                            x=g*100+h*50+i*20+j*10+k*5+l*2+1*m;
                            if x == 200
                                count = count + 1;
                            end
                        end
                    end
                end
            end
        end
    end
end
disp(count)                
      