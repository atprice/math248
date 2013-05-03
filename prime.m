function [n] = prime(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
%       Jack Cochran
%       Michael O'Malley
% JMU-EID:  priceat
%           cochr2jr
%           omall2mp
% DATE: February 21, 2013
%
% PROGRAM: prime.m
% PURPOSE:  To determine if an inputted number is prime. Outputs '1' if it
%   is prime and '0' if it is not.
% CREDIT:
%
% VARIABLES: 
%    n = is the output of the function. 1 if prime, 0 if not.
%    x = the inputted number being checked
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% the output will start out as 1, but if proven not to be prime will turn
% to zero
n = 1;
%Checks to see if the inputted number is zero
if x/2 ~= 1
    % if the remainder of a number divided by two is zero.
    % Then the number is even and thus not prime.
    if mod(x,2) == 0
        n = 0;
    %Checks to see if the inputted number is 1
    %because 1 is prime and would not work in the 'for' loop further in the
    %code.
    elseif x==1
        n=0;
    else
        % Starting at three, the 'for' loop will proceed in intervals of
        % two. This will go through all the odd numbers up to half the
        % inputted number. If there is no divisor in the first half then the
        % number is prime.
        for i=3:2:x/2
            %Looks for fully divisible numbers into the inputted number
            %by dividing by the current interval in the 'for' loop and 
            %finding the remainder. 
            if mod(x,i) == 0
                n = 0;
            end
        end
    end
end
