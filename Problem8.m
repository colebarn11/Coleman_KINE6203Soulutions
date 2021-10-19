function [x] = Problem8(num1,num2)
% counterFunction: This function asks the user to enter 2 numbers, 
% with the first being the larger of the two, and will produce a counter
% number between the lower and higher number

num1 = input('Input larger number');
num2 = input('Input smaller number');

for x =([num2:num1])
      fprintf('%d ', x); 
end

end

