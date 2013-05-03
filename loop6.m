n=input('Enter n: ');
f1=1; f2=2; disp(f1); disp(f2);
for i=3:n
    f3=f1+f2; disp(f3);
    f1=f2; f2=f3;
end