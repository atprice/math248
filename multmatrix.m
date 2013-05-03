function [c] = multmatrix(a, b)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: March 20, 2013
% 
% PROGRAM: multmatrix.m
% PURPOSE: multiplies two matrices together if possible.
% CREDIT:
%
% VARIABLES: 
%   A=2 row vector that stores the dimensions of matrix a
%   B=2 row vector that stores the dimensions of matrix b
%   c=the product matrix
%   i= for loop interval from 1 to amount of rows of matrix a
%   j= for loop interval from 1 to amount of columns of matrix b
%   k= for loop interval from 1 to amount of columns of matrix a
%   sum= sums the products to return each element for matrix c
%
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A=size(a);B=size(b);
%checks if the two inputted matrices be multiplied
if (A(2) == B(1))
    %intializes the product matrix
    c=zeros(A(1),B(2));
    for i=1:A(1)    
        for j=1:B(2)
            sum = 0;
            %sums the products to return each element of matrix c
            for k = 1:A(2)
                sum = sum + a(i,k)*b(k,j);
            end
            %places the summed products into the correct element of c
            c(i,j)=sum;
        end
    end   
else
%returns c as false if the inputted matrices can't be multiplied
    c = false;
end

end

