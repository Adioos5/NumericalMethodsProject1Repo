%% Checks the calculation of double integral on four cubes

% Clearing the workspace
clear;

% Setting allowed accuracy of calculations
accuracy = 1e-4;

% Header
disp(" ");
disp("TEST04");
disp(" ");

% Test 1
disp("[Test 1]");
disp("Preparing test...");

test1 = TR_doubleIntMain(@(x,y) 1 , 0, 1, 100, ...
    0, 1, 100);
result1 = 1;

if (abs(test1 - result1) < accuracy) 
    disp(test1);
else 
    disp("Test failure :(");
    return
end

% Test 2
disp("[Test 2]");
disp("Preparing test...");

test2 = TR_doubleIntMain(@(x,y) 2 , 0, 2, 100, ...
    0, 2, 100);
result2 = 8;

if (abs(test2 - result2) < accuracy) 
    disp(test2);
else 
    disp("Test failure :(");
    return
end

% Test 3
disp("[Test 3]");
disp("Preparing test...");

test3 = TR_doubleIntMain(@(x,y) 3 , 0, 3, 100, ...
    0, 3, 100);
result3 = 27;

if (abs(test3 - result3) < accuracy) 
    disp(test3);
else 
    disp("Test failure :(");
    return
end

% Test 4
disp("[Test 4]");
disp("Preparing test...");

test4 = TR_doubleIntMain(@(x,y) 10 , 0, 10, 100, ...
    0, 10, 100);
result4 = 1000;

if (abs(test4 - result4) < accuracy) 
    disp(test4);
else 
    disp("Test failure :(");
    return
end

disp("Everything's correct! :)");