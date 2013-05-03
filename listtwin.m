function [output] = listtwin (input)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
%       Jack Cochran
%       Michael O'Malley
% JMU-EID:  priceat
%           cochr2jr
%           omall2mp
% DATE: Febuary 21, 2013
% 
% PROGRAM: listtwin.m
% PURPOSE:  To create a one dimensional array that goes from 1 to n, given
%   an inputted n. The twin primes are primes that have another prime that
%   differs by two.
% CREDIT:
%
% VARIABLES: 
%    input = is the inputted number that the array will go up to.
%    testing = is an array of primes up to the value of 'input'.
%    output = is the array that will sent out the function with the list of
%       twin primes.
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
% Using listprimes to create a list of primes up to two above the inputted
% number. Two is added so the 'for' loop later will function correctly.
testing = listprimes(input+2);
%Creates an array the length of the inputted value.
for i=1:input
    output(i)=0;
end
%Since 1 and 2 are both not twin primes. The 'for' loop starts at 3.
for i=3:(input)
    % If the interval in the for loop is a prime, the 'if' statements will
    % test to see if it is a twin prime. 
    if testing(i)==1
            %By subtracting the value in the
            % testing cells by two cells behind and two cells ahead. 
        if (testing(i)-testing(i+2))==0
            output(i)=1;
        end
        if (testing(i)-testing(i-2))==0
            output(i)=1;
            %If the
            % remainder is zero then the interval for that cell of the array is 
            %a twin prime.
        end
    end
end

    

