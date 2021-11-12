%Function to pull in data
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

%Functino to determine individual male and female means, along with group
%male and female means
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc (Day1, Day2, Day3, Gender);

%function that compares different days to determine improvement
[day1toDay2] = dayComparer(SubjectID, Day1, Day2);
[day2toDay3] = dayComparer(SubjectID, Day2, Day3);

%Calculates the mean of the indicating days data
normDay1mean = mean(Day1)
normDay2mean = mean(Day2)
normDay3mean = mean(Day3)

%export Assignment 4 into a .csv file
csvwrite('iso_results.csv', 'Assignment4.m')