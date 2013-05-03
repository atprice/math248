s=0; count=0;
x=input('enter a number, 0 to end: ')
while x>0
    s=s+x;
    count=count+1;
    x=input('enter a number, 0 to end: ');
end
if count>0
avg=s/count;
disp(avg);
else
    disp('No data');
end