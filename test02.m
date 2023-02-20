%% Checks the behaviour when calculating a divergent double integral

% Clearing the workspace
clear;

% Header
disp(" ");
disp("TEST02");
disp(" ");

% Test 1
disp("[Test 1]");
disp("Preparing test...");

test1 = TR_doubleIntMain(@(x,y) 1/(x*y) + y^2 , 0, 5, 10, ... 
    0, 5, 10);

if (isinf(test1)) 
    disp(test1);
else 
    disp("Test failure :(");
    return
end

% Test 2
disp("[Test 2]");
disp("Preparing test...");

test2 = TR_doubleIntMain(@(x,y) -1/(x - 1), 0, 5, 10, ... 
    0, 5, 10);

if (isinf(test2)) 
    disp(test2);
else 
    disp("Test failure :(");
    return
end

% Test 3
disp("[Test 3]");
disp("Preparing test...");

test3 = TR_doubleIntMain(@(x,y) 1/x + 1/y, 0, 5, 10, ... 
    0, 5, 10);

if (isinf(test3)) 
    disp(test3);
else 
    disp("Test failure :(");
    return
end

disp("Everything's correct! :)");

