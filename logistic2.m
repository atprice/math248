function logistic2(x0,r)
%function plot the logistic solution with two close initial values
x=zeros(1,200); x(1)=x0;
y=zeros(1,200); y(1)=x0+1e-15;
for i=1:199
    x(i+1)=r*x(i)*(1-x(i));
    y(i+1)=r*y(i)*(1-y(i));
end
plot(1:200,x,'+',1:200,y,'+')