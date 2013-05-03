function [sequenceLength] = collatz2(n)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: January 24, 2013
% 
% PROGRAM: collatz2.m
% PURPOSE: This returns the length of the collatz sequence of the inputed number
% CREDIT:
%
% VARIABLES: 
%   n = is the current number in the collatz sequence
%   sequenceLength = stores and returns the length of the collatz sequence
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sequenceLength = 1;

if n >= 1
    %Loops the current variable n and checks and counts how long the
    %sequence is
    while n > 1
        sequenceLength = sequenceLength + 1;
        if mod(n,2) == 0
            n = n/2;
        else
            n = 3*n +1;
        end
    end
end



