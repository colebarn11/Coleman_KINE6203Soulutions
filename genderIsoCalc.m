function [maleIsoIndMeans,femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Day1, Day2, Day3, Gender)

%This function will produce 4 outputs; Individual Isometric Means for Male,
%Individual Isometric Means for Female, Group Isometric Means for Males,
%and Group Isometric Means for Females based off the results gathered from
%3 seperate days of data labeled Day1, Day2, and Day3 and their respected
%gender.

%If statement to determine if male or female
for i = 1:length(Gender)
    if (Gender(i) == "M") 
        maleIsoIndMeans(i,1) = (Day1(i) + Day2(i) + Day3(i))/3;
        femaleIsoIndMeans(i,1) = NaN;
    else
        femaleIsoIndMeans(i,1) = (Day1(i) + Day2(i) + Day3(i))/3;
        maleIsoIndMeans(i,1) = NaN;
    end
end

femaleGroupIsoMean = mean(femaleIsoIndMeans, 'omitnan');
maleGroupIsoMean = mean(maleIsoIndMeans, 'omitnan');
end

