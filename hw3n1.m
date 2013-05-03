function integers=positiveintegers(n,a,b)
integers=0;
for i=1:(n-1)
    if mod(i,a)==0
        integers = intergers+1;
    elseif mod (i,b)==0
        integers = integers+1;
    end
end