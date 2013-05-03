function ret=bisect(f,a,b)
%function to solve f(x)=0 on interval [a,b]

fa=f(a); fb=f(b);
if (fa>0 && fb>0) || (fa<0 && fb<0)
    error('Function must change sign in interval')
end

n=0;
e=(b-a)/2;
while e>1e-10
    m=(a+b)/2; e=e/2; fm=f(m);
    if f(m)==0
        a=m; b=m; e=0;
    elseif (fb>0 && fm<0) || (fb<0 && fm>0)
        a=m; 
    else
        b=m; fb=fm;
        n=n+1;
    end
end

disp(n)
ret=(a+b)/2;