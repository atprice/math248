function ret=newton(f,df,x)
%solve f(x)=0 using newtons method where df holds the derivative starting
%at input x.

err=1; n=0;

while err>1e-10 &&n<50
    newx=x-f(x)/df(x);
    err=abs(newx-x);
    x=newx;
    disp(x);
    n=n+1;
    
end

disp(n)
ret=x;