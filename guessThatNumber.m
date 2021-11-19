function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:
%
%         DUE: November 18
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

%I changed "||" to "&&" as this is ensuring all possibilities are met.  I
%found this by running the code and identifying the error.
while level ~= beginner && level ~= moderate && level ~= advanced       
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner                     
    highest = beginnerHighest;
elseif level == moderate
    highest = moderateHighest;
else
    highest = advancedHighest; %I capitalized the "h" in advancedHighest. 
    %I saw that it was lowercase when looking at the code in depth
end

% randomly select secret number between 1 and highest for level of play

secretNumber = floor(randi([1 highest])); %The original code had the secretNumber being
%the max number everytime. I used 'randi' to give a random integer between
%1 and the highest value allowed.

% initialize number of guesses and User_guess

numOfTries = 0; %I reduced the numOfTries from 1 to 0 as when counting the number of moves
%it was always giving one more than the user would actually guess. 
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
numOfTries = numOfTries + 1; %I moved this up to be inside the while loop so that each 
%guess would be counted and the correct number would be given.
userGuess = input('');
end %added end to close out the while loop
   
while userGuess < 1 || userGuess > highest %removed the = sign as the guess can be the highest value
  fprintf('Sorry, that is not a valid guess\n Re-enter a guess (1-%d): ', highest);
  userGuess = input('');
end % of guess validation loop

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber %switched the sign to less than so it would be in line with 
    %what is being printed below
    fprintf('Sorry, %d is too low.\n\n', userGuess);
elseif userGuess > secretNumber 
    fprintf('Sorry, %d is too high.\n\n', userGuess);
elseif numOfTries == 1
    fprintf('\nLucky You!  You got it on your first try!\n\n');
else
    fprintf('\nCongratulations!  You guessed %d in %d tries.\n\n', ...
secretNumber, numOfTries); %added numOfTries so the second value (%d) would be included 
%in the printed statement


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop

% end of game