% Shared Variables - This will contain any variables that I want to include
% accross my tests

baseMeal = 10;
meal1 = 20;
meal2 = 18.30;
meal3 = 57.92;

badRating = 'bad';
goodRating = 'good';
greatRating = 'great';
errorRating = 'gret';

% Preconditions - This should be the base case, in my example the base case
% is if I enter in a rating that isn't on the list of acceptable inputs or
% if I don't enter a rating at all. 

baseTip = tipCalc(baseMeal);
assert(baseTip == 1.5)

%% Test 1 - No decimal all ratings
disp('Test 1')

meal1Tip = tipCalc(meal1, badRating);
assert(meal1Tip == 2);

meal1Tip = tipCalc(meal1, goodRating);
assert(meal1Tip == 4);

meal1Tip = tipCalc(meal1, greatRating);
assert(meal1Tip == 5);

meal1Tip = tipCalc(meal1, errorRating);
assert(meal1Tip == 3);

disp('All Test 1 Cases passed!')
%% Test 2 - 1 decimal all ratings
disp('Test 2')

meal2Tip = tipCalc(meal2, badRating);
assert(meal2Tip == 1.83);

meal2Tip = tipCalc(meal2, goodRating);
assert(meal2Tip == 3.66);

meal2Tip = tipCalc(meal2, greatRating);
assert(meal2Tip == 4.575);

meal2Tip = tipCalc(meal2, errorRating);
assert(meal2Tip == 2.745);

disp('All Test 2 Cases passed!')
%% Test 3 - 2 decimal all ratings
disp('Test 3')

meal3Tip = tipCalc(meal3, badRating);
assert(meal3Tip - 5.7920 <= 10e-3);

meal3Tip = tipCalc(meal3, goodRating);
assert(meal3Tip - 11.584 <= 10e-3);

meal3Tip = tipCalc(meal3, greatRating);
assert(meal3Tip - 14.48 <= 10e-3);

meal3Tip = tipCalc(meal3, errorRating);
assert(meal3Tip - 8.688 <= 10e-3);

disp('All Test 3 Cases passed!')