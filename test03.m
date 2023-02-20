%% Checks the calculation of the same area but with different side lengths

% Clearing the workspace
clear;

% Setting allowed accuracy of calculations
accuracy = 1e-4;

% Header
disp(" ");
disp("TEST03");
disp(" ");

result = 25;

% Test 1
disp("[Test 1]");
disp("Preparing test...");

test1 = TR_doubleIntMain(@(x,y) 1 , 0, 5, 100, ...
    0, 5, 100);

if (abs(test1 - result) < accuracy) 
    disp(test1);
else 
    disp("Test failure :(");
    return
end

% Test 2
disp("[Test 2]");
disp("Preparing test...");

test2 = TR_doubleIntMain(@(x,y) 1 , -5, 0, 100, ...
    -5, 0, 100);

if (abs(test2 - result)< accuracy) 
    disp(test2);
else 
    disp("Test failure :(");
    return
end

% Test 3
disp("[Test 3]");
disp("Preparing test...");

test3 = TR_doubleIntMain(@(x,y) 1 , 0, 1, 100, ...
    0, 25, 100);

if (abs(test3 - result) < accuracy) 
    disp(test3);
else 
    disp("Test failure :(");
    return
end

% Test 4
disp("[Test 4]");
disp("Preparing test...");

test4 = TR_doubleIntMain(@(x,y) 1 , -50, 50, 100, ...
    -1/8, 1/8, 100);

if (abs(test4 - result) < accuracy) 
    disp(test4);
else 
    disp("Test failure :(");
    return
end

disp("Everything's correct! :)");