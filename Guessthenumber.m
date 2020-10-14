%%Choose difficulty.
usdif = input("Choose difficulty: \n[1] Easy (1-10) \n[2] Normal(1 - 20) \n[3] Hard (1 - 50) \n[4] Insane (1 - 100)\n> ");
error = 0;
switch usdif
    case 1
        dif = 10;
    case 2
        dif = 20;
    case 3
        dif = 50;
    case 4
        dif = 100;
    otherwise
        error = 1;
end
%% Computer chooses number.
switch error
    case 0
        n = randi(dif);
    case 1
        n = 0;
end
attempts = 0;
%% Game step.
usn = input("Which number am I thinking about?\n> ");
while usn ~= 0
    attempts = attempts + 1;
    if usn > n
        usn = input("My number is lower. Try again.\n> ");
    elseif usn < n
        usn = input("My number is higher. Try again.\n> ");
    else
        disp("That's the number!");
        break
    end
end
score = int2str(attempts);
disp("It took you " + score + " attempts to guess the number.");