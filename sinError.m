%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: April 4, 2013
% 
% PROGRAM: sinError.m
% PURPOSE: plots 3 different plots of sine from 0 to pi,each using +2 more
% points than the previous. Point is to find which one has the greatest
% error. 
% CREDIT:
%
% VARIABLES: 
%
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

