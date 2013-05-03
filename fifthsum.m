%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: January 17, 2013
% 
% PROGRAM: fifthsum.m
% PURPOSE: Calculates the fifth sum of an inputed variable
% CREDIT:
%
% VARIABLES: 
%   n = the number of fifth sums
%   sum = variable summing the value of each interval to the 5th
%   i = loop interval
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Input number of fifth sums and intialize variables
n=input('Please enter the number of fifth  \n');
sum = 0;

%For loop to sum each interval from 1 to n
for i = 1:n
  sum = sum + i^5;
end

% Outputs fifth sum to the screen
fprintf('the fifth sum of %d: %d \n', n, sum);