%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: January 17, 2013
% 
% PROGRAM: collatz.m
% PURPOSE: This program prints the collatz sequence of an inputed number
% CREDIT:
%
% VARIABLES: 
%   n = is the current number in the collatz sequence
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Input number to collatz
n=input('Please enter the number to collatz  \n');

if n >= 1
    %First number for collatz sequence
    fprintf('The collatz sequence is \n%d \n', n);
    %Loops the current variable n and returns the next number in the collatz
    %sequence.
    while n > 1
        if mod(n,2) == 0
            n = n/2;
        else
            n = 3*n +1;
        end
        fprintf('%d \n', n);
    end
else
    fprintf('The collatz sequence can not copute \n%d \n', n);
end