p=zeros(1,30);
p(1)=(1/3);
for i=2:30, p(i)=(1/3)*p(i-1); end
disp(p(30))

q=zeros(1,30);
q(1)=(1/3); q(2)=(1/9);
for i=3:30, q(i)=((4)*q(i-1))-((11/9)*q(i-2)); end
disp(q(30))