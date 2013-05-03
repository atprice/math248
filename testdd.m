x=[7,2,5,6,4];
y=sin(x.^2);
a=dd(x,y);
ptx=linspace(2,7,301);
pty=zeros(1,301);
for i=1:301, pty(i)=newtpoly(a,x,ptx(i)); end
plot(ptx,pty,x,y,'+',ptx,sin(ptx.^2))
figure
plot(ptx,abs(pty-sin(ptx.^2)))