function logistic(x0,r)
%function plot the logistic solution
x=zeros(1,200); x(1)=x0;
for i=1:199, x(i+1)=r*x(i)*(1-x(i)); end
plot(1:200,x,'+')