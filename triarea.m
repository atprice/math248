%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NAME: Alexander Price
% JMU-EID: priceat
% DATE: January 10, 2013
% 
% PROGRAM: triarea.m
% PURPOSE: the perimeter and area of a triangle
% CREDIT:
%
% VARIABLES: 
%    a,b,c = each side's length
%    p = perimeter
%    s = one half of the perimeter
%    area = area of the triangle
%
% JMU PLEDGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Ask user for input of the length of the three sides of the triangle
a=input('Please enter the length of the first side of the triangle \n');
b=input('Please enter the length of the second side of the triangle \n');
c=input('Please enter the length of the third side of the triangle \n');

% Compute the perimeter of the triangle
p = a + b + c;
s = p/2;

% Compute the area of the triangle
area = sqrt(s*(s - a)*(s - b)*(s - c));


% Outputs perimeter and area of the triangle to the screen
fprintf('perimeter of triangle: %4.5f \n', p);
fprintf('area of triangle: %4.5f \n', area);
