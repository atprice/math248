function [palindromic] = palin(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: January 24, 2013
% 
% PROGRAM: palin.m
% PURPOSE: Returns 1(true) if a number is a palindromic number or 0 (false)
% CREDIT:
%
% VARIABLES: 
%   x = inputed number to be checked if palindromic or not
%   palindromic = stores amount of times a digit is repeated backwards, 
%   and is used to check if the full number is palindromic, and returns 1
%   if true and 0 if false
%   numDigits = is the number of digits of the inputted integer
%   strDigits = places the integer x into a string
%   i = for loop interval to place each string character into its own 
%   array element
%   a() = the array that stores the digits of the integer
%   j = for loop interval to check elements of the array to be palindromic
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


palindromic = 0;
numDigits = floor(log10(x))+1;

%places the integer x into a string
strDigits = int2str(x);

%for loop to place each string character into its own array element
for i = 1:numDigits
    a(i) = strDigits(i:i);
end
for k = 1:numDigitsBinary
    b(k) = strDigits(k:k);
end
%for loop to check elements of the array to be palindromic
for j = 1:floor(numDigits/2)
    if a(j) == a(numDigits -j + 1)
        palindromic = palindromic + 1;
    end
end
for l = 1:floor(numDigitsBinary/2)
    if b(l) == b(numDigitsBinary -l + 1)
        palindromicBinary = palindromicBinary + 1;
    end
end

%checks if the full number is palindromic, and returns 1
%   if true and 0 if false
if palindromic == floor(numDigits/2)
    palindromic = 1;
else
    palindromic = 0;
end
if palindromic == floor(numDigits/2)
    palindromic = 1;
else
    palindromic = 0;
end