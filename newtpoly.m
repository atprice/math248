function y=newtpoly(a,x,ptx)

n=length(a); y=a(n);
for i=n-1:-1:1
    y=(ptx-x(i))*y+a(i);
end