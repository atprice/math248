%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: January 24, 2013
% 
% PROGRAM: palinScript.m
% PURPOSE: Prints the number of products of three digit positive integers 
%that are Palindromic by calling the function palin()
% CREDIT:
%
% VARIABLES: 
%   x = outputted product to be checked if palindromic or not
%   palindromicIntegers = counts how many products of three digit positive
%integers that are Palindromic
%   a = for loop interval that represents the first three digit integer 
%to be a product 
%   b = for loop interval that represents the second three digit integer 
%to be a product 
%   
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
palindromicIntegers = 0;
for a = 100:999
    for b = a:999
%stores the variable of x as the product of a and b
        x = a*b;
%checks if the variable x stores a palindromic integer or not
        if (palin(x) == 1)
%counts if x is a palindromic integer or not
            palindromicIntegers = palindromicIntegers +1;
        end
    end
end
%prints the amount of the number of products of three digit positive
%integers that are Palindromic
fprintf('The number of products of three digit positive integers that are Palindromic is: %d \n', palindromicIntegers)