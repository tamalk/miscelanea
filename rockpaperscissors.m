%Rock Paper Scissors MATLAB.
%Allowed vals: 0 = "Rock", 1 = "Paper", 2 = "Scissors".
%Generate random integer number between 1 and 3 that will serve as computer input.

%% Input gathering event.
cominput = randi(3); 
%Allow user to choose their preferred option.
usinput = input("Choose:\n [1] = Rock.\n [2] = Paper.\n [3] = Scissors.\n> ");

%% Game event I: display computer choice.
if cominput == 1
    disp("Computer chose rock.");
elseif cominput == 2
    disp("Computer chose paper.");
else
    disp("Computer chose scissors.");
end

%% Game event II: Check who wins.
%Check errors.
if (usinput ~= 1) && (usinput ~= 2) && (usinput ~= 3)
    disp("Error: Incorrect input.");
elseif (cominput == 1) %If computer's choice = Rock
    if (usinput == 1)
        disp("This is a tie!");
    elseif (usinput == 2)
        disp("You win!");
    else
        disp("Computer wins!");
    end
elseif (cominput == 2) %If computer's choice = Paper
    if (usinput == 1)
        disp("Computer wins!")
    elseif (usinput == 2)
        disp("This is a tie!")
    else
        disp("You win!")
    end
else %If computer's choice = Scissors
    if (usinput == 1)
        disp("You win!")
    elseif (usinput == 2)
        disp("Computer wins!")
    else
        disp("This is a tie!")
    end
end
