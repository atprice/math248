function ret=secant(f,x1,x2)
%solve f(x)=0 using newtons method where df holds the derivative starting
%at input x.

err=1; n=0;

while err>1e-10 &&n<50
    newx=x2-f(x2)*(x2 - x1)/(f(x2)-f(x1));
    x1=x2;
    x2=newx;
    err=abs((x2-x1)/x2);
    disp(x1);
    n=n+1;
end
disp(n);
disp(f(x1));
ret=x1;