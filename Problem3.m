function [output] = Problem3(numb1, numb2)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
numSum = numb1 + numb2
if rem(numSum,2) == 0
    output = 'Woo'
else
    output = 'Hah'
                    

end

