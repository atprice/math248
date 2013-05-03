%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: April 4, 2013
% 
% PROGRAM: somePolyError.m
% PURPOSE: plots 3 different plots of a polynomial equation from -1 to 1,
%each using a more amount of points each
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
n=5; 
while n<=11
    x=linspace(-1,1,n); y=1./(1+25*x.^2);a=dd(x,y);
    ptx=linspace(-1,1,301);pty=zeros(1,301);
    for i=1:301, pty(i)=newtpoly(a,x,ptx(i)); end
    plot(x,y),figure
    plot(ptx,pty,x,y,'+',ptx,1./(1+25*ptx.^2)),figure
    plot(ptx,abs(pty-1./(1+25*ptx.^2))),figure
    if (n==11)
        n=12;
    elseif (n ==7)
        n=11;
    elseif (n ==5)
        n=7;
    else 
        n=12;
    end
end