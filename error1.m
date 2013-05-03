x=zeros(1,21);
x(1)=1-exp(-1);
for i=2:21, x(i)=1-(i-1)*x(i-1); end
disp(x)