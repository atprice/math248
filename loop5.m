s=0;
n=input('Enter how many number: ');
for i=1:n
    x=input('Enter a number: ');
    s=s+x;
end
if n>0
    avg=s/n;
    disp(avg);
else
    disp('No data');
end