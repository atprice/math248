function [a] = listprimes(n)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
%       Jack Cochran
%       Michael O'Malley
% JMU-EID:  priceat
%           cochr2jr
%           omall2mp
% DATE: February 21, 2013
% 
% PROGRAM: listprimes.m
% PURPOSE: To create a one-dimensional array with length n where n is the
%   positive integer imputed into the array, and where each element of the 
%   array is either a 1 if it is prime or a 0 if it is not.
%
% CREDIT: 
%
% VARIABLES: n=the positive integer
%   x= the square root of n with the decimal dropped
%   i= the interval of the array
%   a= the one-dimensional array of values
%   count= the number of primes from 1 to n
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
% initialize x as the square root of n and the maximum positive integer 
%whose multiples are being crossed out
x = floor(sqrt(n));
 
%create a one-dimensional array with each element being 1
for i=1:n
    a(i) = 1;
end
%change the first 1 to a 0 since one is not prime
a(1) = 0;
%a for loop checking the multiples of each integer up to x, the square 
%root of n
for i=2:x
    for j=i^2:i:n
        a(j) = 0;
    end
end
count = 0;
%count each 1 in the array a showing how many primes there are from 1 to n
for i=1:length(a)
    if a(i) == 1
        count = count + 1;
    end
end
%displays value of count
disp(count)



