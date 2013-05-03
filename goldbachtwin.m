function [distinctPairs] = goldbachtwin(a,n )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
%       Jack Cochran
%       Michael O'Malley
% JMU-EID:  priceat
%           cochr2jr
%           omall2mp
% DATE: February 21, 2013
% 
% PROGRAM: goldbachtwin.m
% PURPOSE: To count the number of distinct pairs of twin primes 
%   add up to an inputted even number.
% CREDIT:
%
% VARIABLES: 
%   a= is an inputted array created from the from the function twinprimes
%   n= is the inputted even number that is to be checked to see how many
%       distinct twin primes add up to.
%   distinct pairs = is the count of the distinct twin primes that add up
%       to n. It is the output from the function
%   x = the difference between the inputted value and a testing twin 
%       prime from the inputted array.
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%   distinctPairs count starts off at zero.
distinctPairs = 0;
% 'for' loop counts up to half the value because all the possible distinct 
% pairs have at least one additive before half the full value.
for i=1:n/2
    if a(i) == 1
        % if the number is a twin prime
        x = n - i;
        if a(x) == 1
            % If the difference between the inputted number and a 
            % twin prime is a twin prime then there is a distinct pair. 
            distinctPairs = distinctPairs +1;
        end
    end
    
end
 
end

