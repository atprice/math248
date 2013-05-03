amountOfVariables = 0;
greatestVariable = 0;
n=input('Please enter next variable \n');
while n ~= 0
  amountOfVariables = amountOfVariables + 1;
  if (n > greatestVariable)
          greatestVariable = n;   
  end    
   n=input('Please enter next variable\n');
end

fprintf('the number of variables is: %d: \n', amountOfVariables);
fprintf('the largest variable is: %d \n', greatestVariable);