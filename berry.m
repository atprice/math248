close all;
n = 6;
while n<=10
    x=linspace(0,pi,n); y=sin(x);a=dd(x,y);
    ptx=linspace(0,pi,301);pty=zeros(1,301);
    for i=1:301, pty(i)=newtpoly(a,x,ptx(i)); end
    plot(x,y),figure
    plot(ptx,pty,x,y,'+',ptx,sin(ptx)),figure
    plot(ptx,abs(pty-sin(ptx))),figure
    n = n +2;
end
%close all;
%n=11; 
%x=linspace(-1,1,n); y=1./(1+25*x.^2);a=dd(x,y);
%ptx=linspace(-1,1,301);pty=zeros(1,301);
%for i=1:301, pty(i)=newtpoly(a,x,ptx(i)); end
%plot(x,y),figure
%plot(ptx,pty,x,y,'+',ptx,1./(1+25*ptx.^2)),figure
%plot(ptx,abs(pty-1./(1+25*ptx.^2)))
