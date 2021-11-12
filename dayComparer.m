function [gains] = dayComparer(SubjectID, Day1, Day2)

%dayComparer: This function takes the SubjectId of the individual and
%compares results from Day 1 and Day 2 and then also compares results for
%Day2 and Day3.  It will return an output of individuals who have shown
%growth over the 3 seperate days 


for i = 1:length(SubjectID)
    if (Day1(i,1) < Day2(i,1)) 
       gains = SubjectID(i,1);
    else
        SubjectID(i,1) = "No progress";
    end
end 
  
end

