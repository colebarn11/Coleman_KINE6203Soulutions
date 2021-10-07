function [validTri] = ArrayProblem(triArray)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
triArray = [3 4 5];
   if triArray(1,1) + triArray(1,2) < triArray(1,3)
       validTri = input('Invalid Triangle')
   end

end

