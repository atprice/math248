function [newb] = pow(a,b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: March 20, 2013
% 
% PROGRAM: pow.m
% PURPOSE: performs iterations to vector b
% CREDIT:
%
% VARIABLES: 
%   A=2 row vector that stores the dimensions of matrix a
%   B=2 row vector that stores the dimensions of vector b
%   newb = the new iteration of vector b
%   err = calculates the error of each iteration
%   n = counts the number of iterations
%   
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A=size(a);B=size(b);
%checks if the two inputted matrices be multiplied
if (A(2) == B(1) && A(1) == A(2))
    %initializes the variables err and n
    err = 1;n = 1;
    %runs the iterations untill there is 50 iterations or iterations will
    %be equal to the last.
    while (err>1e-10 && n < 50)
       %makes the new iteration
       newb = a*b/abs(a*b);
       %a problem occured when deviding and the 3rd column stored the 
       %real new vector. 
       newb=newb(:,3);
       %calculates the error each times
       err = max(abs(newb-b));
       %saves newb as b for the next iteration
       b = newb;
       %stores the count of iterations
       n=n+1;
    end
%returns newb as false if the inputted matrices can't be multiplied
else
    newb = false;
end
end

