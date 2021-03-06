%Name: Coleman Barnacascel Date:10/07/2021 Tic Tac Toe Game

%menu for playing the game. Y button plays game and N button exits game
while(true)
    play = menu('Would you like to play?','Y','N');
    if play==2
       break;
    end


%gameboard
gameboard = [1 2 3; 4 5 6; 7 8 9];

disp(gameboard)

%This is the first human move
humanMove = input('Please enter a number of the space you would like to move to: ');

if(humanMove == 1)
    gameboard(1,1)=99;
elseif(humanMove == 2)
    gameboard(1,2)=99;
elseif(humanMove == 3)
    gameboard(1,3)=99;
elseif(humanMove == 4)
    gameboard(2,1)=99;
elseif(humanMove == 5)
    gameboard(2,2)=99;
elseif(humanMove == 6)
    gameboard(2,3)=99;
elseif(humanMove == 7)
    gameboard(3,1)=99;
elseif(humanMove == 8)
    gameboard(3,2)=99;
elseif(humanMove == 9)
    gameboard(3,3)=99;
else
    disp('Invalid Move')
end

disp(gameboard)

%this is computer move
cpuMove = randi(9);

%conditional to check for valid number
while(cpuMove == humanMove)
    cpuMove = randi(9);
end
    

if(cpuMove == 1)
    gameboard(1,1)=77;
elseif(cpuMove == 2)
    gameboard(1,2)=77;
elseif(cpuMove == 3)
    gameboard(1,3)=77;
elseif(cpuMove == 4)
    gameboard(2,1)=77;
elseif(cpuMove == 5)
    gameboard(2,2)=77;
elseif(cpuMove == 6)
    gameboard(2,3)=77;
elseif(cpuMove == 7)
    gameboard(3,1)=77;
elseif(cpuMove == 8)
    gameboard(3,2)=77;
elseif(cpuMove == 9)
    gameboard(3,3)=77;
end

disp(gameboard)

%This is the second human move
humanMove2 = input('Please enter a number of the space you would like to move to: ');

if(humanMove2 == 1)
    gameboard(1,1)=99;
elseif(humanMove2 == 2)
    gameboard(1,2)=99;
elseif(humanMove2 == 3)
    gameboard(1,3)=99;
elseif(humanMove2 == 4)
    gameboard(2,1)=99;
elseif(humanMove2 == 5)
    gameboard(2,2)=99;
elseif(humanMove2 == 6)
    gameboard(2,3)=99;
elseif(humanMove2 == 7)
    gameboard(3,1)=99;
elseif(humanMove2 == 8)
    gameboard(3,2)=99;
elseif(humanMove2 == 9)
    gameboard(3,3)=99;
else
    disp('Invalid Move')
end

disp(gameboard)

%this is computer move
cpuMove2 = randi(9);

%conditional to check for valid number
while(cpuMove2 == humanMove || cpuMove2 == humanMove2)
    cpuMove2 = randi(9);
end
    
if(cpuMove2 == 1)
    gameboard(1,1)=77;
elseif(cpuMove2 == 2)
    gameboard(1,2)=77;
elseif(cpuMove2 == 3)
    gameboard(1,3)=77;
elseif(cpuMove2 == 4)
    gameboard(2,1)=77;
elseif(cpuMove2 == 5)
    gameboard(2,2)=77;
elseif(cpuMove2 == 6)
    gameboard(2,3)=77;
elseif(cpuMove2 == 7)
    gameboard(3,1)=77;
elseif(cpuMove2 == 8)
    gameboard(3,2)=77;
elseif(cpuMove2 == 9)
    gameboard(3,3)=77;
end

disp(gameboard)

humanMove3 = input('Please enter a number of the space you''d like to move to: ');

if(humanMove3 == 1)
    gameboard(1,1)=99;
elseif(humanMove3 == 2)
    gameboard(1,2)=99;
elseif(humanMove3 == 3)
    gameboard(1,3)=99;
elseif(humanMove3 == 4)
    gameboard(2,1)=99;
elseif(humanMove3 == 5)
    gameboard(2,2)=99;
elseif(humanMove3 == 6)
    gameboard(2,3)=99;
elseif(humanMove3 == 7)
    gameboard(3,1)=99;
elseif(humanMove3 == 8)
    gameboard(3,2)=99;
elseif(humanMove3 == 9)
    gameboard(3,3)=99;
else
    disp('Invalid Move')
end

disp(gameboard)

%Check to see whether the game has been won or not
% Horizontal Options
    if (gameboard(1,1) == gameboard(1,2) && gameboard(1,1) == gameboard(1,3))
       disp('Player Wins!')
        break
    elseif (gameboard(2,1) == gameboard(2,2) && gameboard(2,1) == gameboard(2,3))
       disp('Player Wins!')
        break
    elseif (gameboard(3,1) == gameboard(3,2) && gameboard(3,1) == gameboard(3,3))
       disp('Player Wins!')
        break
    % Vertical Options
    elseif (gameboard(1,1) == gameboard(2,1) && gameboard(1,1) == gameboard(3,1)) 
       disp('Player Wins!')
        break
    elseif (gameboard(1,2) == gameboard(2,2) && gameboard(1,2) == gameboard(3,2)) 
       disp('Player Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,3) && gameboard(1,3) == gameboard(3,3)) 
       disp('Player Wins!')
        break
    % Diagonal Options
    elseif (gameboard(1,1) == gameboard(2,2) && gameboard(1,1) == gameboard(3,3))
       disp('Player Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,2) && gameboard(1,3) == gameboard(3,1))
       disp('Player Wins!')
        break
    end


%this is cpuMove3
cpuMove3 = randi(9);

%conditional to check for valid number
while(cpuMove3 == humanMove || cpuMove3 == humanMove2 || cpuMove3 == humanMove3)
    cpuMove3 = randi(9);
end
    

if(cpuMove3 == 1)
    gameboard(1,1)=77;
elseif(cpuMove3 == 2)
    gameboard(1,2)=77;
elseif(cpuMove3 == 3)
    gameboard(1,3)=77;
elseif(cpuMove3 == 4)
    gameboard(2,1)=77;
elseif(cpuMove3 == 5)
    gameboard(2,2)=77;
elseif(cpuMove3 == 6)
    gameboard(2,3)=77;
elseif(cpuMove3 == 7)
    gameboard(3,1)=77;
elseif(cpuMove3 == 8)
    gameboard(3,2)=77;
elseif(cpuMove3 == 9)
    gameboard(3,3)=77;
end

disp(gameboard)


%Check to see whether the game has been won or not
% Horizontal Options
    if (gameboard(1,1) == gameboard(1,2) && gameboard(1,1) == gameboard(1,3))
       disp('Computer Wins!')
        break
    elseif (gameboard(2,1) == gameboard(2,2) && gameboard(2,1) == gameboard(2,3))
       disp('Computer Wins!')
        break
    elseif (gameboard(3,1) == gameboard(3,2) && gameboard(3,1) == gameboard(3,3))
       disp('Computer Wins!')
        break
    % Vertical Options
    elseif (gameboard(1,1) == gameboard(2,1) && gameboard(1,1) == gameboard(3,1)) 
       disp('Computer Wins!')
        break
    elseif (gameboard(1,2) == gameboard(2,2) && gameboard(1,2) == gameboard(3,2)) 
       disp('Computer Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,3) && gameboard(1,3) == gameboard(3,3)) 
       disp('Computer Wins!')
        break
    % Diagonal Options
    elseif (gameboard(1,1) == gameboard(2,2) && gameboard(1,1) == gameboard(3,3))
       disp('Computer Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,2) && gameboard(1,3) == gameboard(3,1))
       disp('Computer Wins!')
        break
    end

humanMove4 = input('Please enter a number of the space you''d like to move to: ');

if(humanMove4 == 1)
    gameboard(1,1)=99;
elseif(humanMove4 == 2)
    gameboard(1,2)=99;
elseif(humanMove4 == 3)
    gameboard(1,3)=99;
elseif(humanMove4 == 4)
    gameboard(2,1)=99;
elseif(humanMove4 == 5)
    gameboard(2,2)=99;
elseif(humanMove4 == 6)
    gameboard(2,3)=99;
elseif(humanMove4 == 7)
    gameboard(3,1)=99;
elseif(humanMove4 == 8)
    gameboard(3,2)=99;
elseif(humanMove4 == 9)
    gameboard(3,3)=99;
else
    disp('Invalid Move')
end

disp(gameboard)


%Check to see whether the game has been won or not
% Horizontal Options
    if (gameboard(1,1) == gameboard(1,2) && gameboard(1,1) == gameboard(1,3))
       disp('Player Wins!')
        break
    elseif (gameboard(2,1) == gameboard(2,2) && gameboard(2,1) == gameboard(2,3))
       disp('Player Wins!')
        break
    elseif (gameboard(3,1) == gameboard(3,2) && gameboard(3,1) == gameboard(3,3))
       disp('Player Wins!')
        break
    % Vertical Options
    elseif (gameboard(1,1) == gameboard(2,1) && gameboard(1,1) == gameboard(3,1)) 
       disp('Player Wins!')
        break
    elseif (gameboard(1,2) == gameboard(2,2) && gameboard(1,2) == gameboard(3,2)) 
       disp('Player Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,3) && gameboard(1,3) == gameboard(3,3)) 
       disp('Player Wins!')
        break
    % Diagonal Options
    elseif (gameboard(1,1) == gameboard(2,2) && gameboard(1,1) == gameboard(3,3))
       disp('Player Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,2) && gameboard(1,3) == gameboard(3,1))
       disp('Player Wins!')
        break
    end

cpuMove4 = randi(9);

%conditional for computer move
while(cpuMove4 == humanMove || cpuMove4 == humanMove2 || cpuMove4 == humanMove3 || cpuMove4 == humanMove4)
    cpuMove4 = randi(9);
end
    

if(cpuMove4 == 1)
    gameboard(1,1)=77;
elseif(cpuMove4 == 2)
    gameboard(1,2)=77;
elseif(cpuMove4 == 3)
    gameboard(1,3)=77;
elseif(cpuMove4 == 4)
    gameboard(2,1)=77;
elseif(cpuMove4 == 5)
    gameboard(2,2)=77;
elseif(cpuMove4 == 6)
    gameboard(2,3)=77;
elseif(cpuMove4 == 7)
    gameboard(3,1)=77;
elseif(cpuMove4 == 8)
    gameboard(3,2)=77;
elseif(cpuMove4 == 9)
    gameboard(3,3)=77;
end

disp(gameboard)


%Check to see whether the game has been won or not
% Horizontal Options
    if (gameboard(1,1) == gameboard(1,2) && gameboard(1,1) == gameboard(1,3))
       disp('Computer Wins!')
        break
    elseif (gameboard(2,1) == gameboard(2,2) && gameboard(2,1) == gameboard(2,3))
       disp('Computer Wins!')
        break
    elseif (gameboard(3,1) == gameboard(3,2) && gameboard(3,1) == gameboard(3,3))
       disp('Computer Wins!')
        break
    % Vertical Options
    elseif (gameboard(1,1) == gameboard(2,1) && gameboard(1,1) == gameboard(3,1)) 
       disp('Computer Wins!')
        break
    elseif (gameboard(1,2) == gameboard(2,2) && gameboard(1,2) == gameboard(3,2)) 
       disp('Computer Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,3) && gameboard(1,3) == gameboard(3,3)) 
       disp('Computer Wins!')
        break
    % Diagonal Options
    elseif (gameboard(1,1) == gameboard(2,2) && gameboard(1,1) == gameboard(3,3))
       disp('Computer Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,2) && gameboard(1,3) == gameboard(3,1))
       disp('Computer Wins!')
        break
    end

humanMove5 = input('Please enter a number of the space you''d like to move to: ');

if(humanMove5 == 1)
    gameboard(1,1)=99;
elseif(humanMove5 == 2)
    gameboard(1,2)=99;
elseif(humanMove5 == 3)
    gameboard(1,3)=99;
elseif(humanMove5 == 4)
    gameboard(2,1)=99;
elseif(humanMove5 == 5)
    gameboard(2,2)=99;
elseif(humanMove5 == 6)
    gameboard(2,3)=99;
elseif(humanMove5 == 7)
    gameboard(3,1)=99;
elseif(humanMove5 == 8)
    gameboard(3,2)=99;
elseif(humanMove5 == 9)
    gameboard(3,3)=99;
else
    disp('Invalid Move')
end

disp(gameboard)

%Check to see whether the game has been won or not
% Horizontal Options
    if (gameboard(1,1) == gameboard(1,2) && gameboard(1,1) == gameboard(1,3))
       disp('Player Wins!')
        break
    elseif (gameboard(2,1) == gameboard(2,2) && gameboard(2,1) == gameboard(2,3))
       disp('Player Wins!')
        break
    elseif (gameboard(3,1) == gameboard(3,2) && gameboard(3,1) == gameboard(3,3))
       disp('Player Wins!')
        break
    % Vertical Options
    elseif (gameboard(1,1) == gameboard(2,1) && gameboard(1,1) == gameboard(3,1)) 
       disp('Player Wins!')
        break
    elseif (gameboard(1,2) == gameboard(2,2) && gameboard(1,2) == gameboard(3,2)) 
       disp('Player Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,3) && gameboard(1,3) == gameboard(3,3)) 
       disp('Player Wins!')
        break
    % Diagonal Options
    elseif (gameboard(1,1) == gameboard(2,2) && gameboard(1,1) == gameboard(3,3))
       disp('Player Wins!')
        break
    elseif (gameboard(1,3) == gameboard(2,2) && gameboard(1,3) == gameboard(3,1))
       disp('Player Wins!')
        break
    end   

end
