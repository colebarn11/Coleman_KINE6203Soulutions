function [validTri] = Problem5(triArray)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


   if triArray(1,1) + triArray(1,2) < triArray(1,3)
       disp('Invalid Triangle')
       validTri = false;
   else
       validTri = true;
   end

end

