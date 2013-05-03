function [area,p]=triarea2(a,b,c)
%find the area of a triangle with input side lengths a,b,c.
%p=perimeter
%s=half perimeter
p=a+b+c; s=p/2;
area=sqrt(s*(s-a)*(s-b)*(s-c));
if imag(area)~=0, area=-1; end