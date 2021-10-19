function [mySum,Diff,Product,max] = Problem2(num1,num2)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

mySum = (num1 + num2);
Diff = (num1 - num2);
Product = num1*num2;
if num1 > num2
    max = num1
else
    max = num2
end
   
end

