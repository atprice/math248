%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
%       Jack Cochran
%       Michael O'Malley
% JMU-EID:  priceat
%           cochr2jr
%           omall2mp
% DATE: February 21, 2013
% 
% PROGRAM: plotGoldbach.m
% PURPOSE: To plot a graph showing the number of pairs of primes for each
%   even number greater than 4.
%
% CREDIT:
%
% VARIABLES: 
%   a = the array outputted from listprimes(10000)
%   i = for loop variable that will represent every even number between 4
%       and 10000
%   b = an array that stores the output of goldbach
%   x = range of 4 to 10000 of even numbers
%   
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%array from the outputted listprimes(10000)
a = listprimes(10000);
 
%for loop spanning from 4 to 10000 with the interval of 2
for i = 4:2:10000
    %stores the number of distinct pairs in a new array
    b(i/2-1)= goldbach(a,i);
end
%range of 4 to 10000 of even numbers for the x axis
x=4:2:10000;
%plots x vs b()
plot(x,b(),'+');
