%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: January 24, 2013
% 
% PROGRAM: maxcollatz.m
% PURPOSE: Prints the collatz sequence with the largest length of an
% integer between 1 and 1000
% CREDIT:
%
% VARIABLES: 
%   n = max integer to collatz
%   i = for loop interval that represents the integer to be placed in the
% collatz sequence
%   x = the current integers collatz length
%   maxSequenceLength = stores the max lengthed collatz sequence
%   maxSequenceInteger = stores the integer that had the max
%lengthed collatz sequence
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 1000;
maxSequenceLength = 0;
maxSequenceInteger = 0;

% for loop that represents the integer to be placed in the
% collatz sequence
for i=1:n
    x = collatz2(i);
    %Checks to see if the current integers collatz length is the largest
    %collatz sequence checked so far
    if x > maxSequenceLength
        maxSequenceLength = x;
        maxSequenceInteger = i;
    end
end

%Prints the integer that produces the largest collatz sequence length and
%and its length
fprintf('The max collatz sequence length is \n%d \n', maxSequenceLength);
fprintf('The max collatz sequence integer value is \n%d \n', maxSequenceInteger);