%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
%       Jack Cochran
%       Michael O'Malley
% JMU-EID:  priceat
%           cochr2jr
%           omall2mp
% DATE: February 21, 2013
% 
% PROGRAM: primesOf100000.m
% PURPOSE: To find the number of prime numbers that is between the integers
%   of 2 and 100000.
% CREDIT:
%
% VARIABLES: 
%   numOfPrimes = stores and counts the number of primes that have been
%       tested
%   i=for loop variable ranging from 3 to 100000 with an interval of 2
%   
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%initial sum of the primes at 2 
numOfPrimes = prime(2);
 
%For loop of odd number ranging from 3 to 100000
for i=3:2:100000
    %Tests and counts if the variable i is a prime by using prime(i)
    numOfPrimes = numOfPrimes + prime(i);
end
 
%prints the number of primes between 2 and 100,000
fprintf('The number of primes between 2 and 100,000 is: %d \n', numOfPrimes);
