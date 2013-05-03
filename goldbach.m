function [distinctPairs] = goldbach(a,n)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
%       Jack Cochran
%       Michael O'Malley
% JMU-EID:  priceat
%           cochr2jr
%           omall2mp
% DATE: February 21, 2013
% 
% PROGRAM: goldbach.m
% PURPOSE: To find the number of distinct pairs of primes that can be added
%   up to a particular even number greater than or equal to 4.
% CREDIT:
%
% VARIABLES: 
%   distinctPairs = stores and counts the number of distinct pairs of primes
%       found
%   i=for loop variable ranging from 1 to n/2 used to check if 
%       that same value of elements of the array's is a prime or not
%   n= inputted even number to find the number distinct pair for
%   x = the difference of the even number and i
%   
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%initializes the output/counting variable as 0
distinctPairs = 0;
 
%for loop ranging from 1 to n/2 used to check if that same value of 
%   elements of the array is a prime or not
for i=1:n/2
    % if statement to check if that same value of elements of the
    % array's is a prime or not
    if a(i) == 1
        %the difference of the even number and the prime found
        x = n - i;
        %checks if the difference is a prime
        if a(x) == 1
            %counts if a distinct pair of primes is found
            distinctPairs = distinctPairs +1;
        end
    end
end

