%% Checks the calculation of convergent double integral

% Clearing the workspace
clear;

% Setting allowed accuracy of calculations
accuracy = 1e-4;

% Header
disp(" ");
disp("TEST01");
disp(" ");

% Test 1
disp("[Test 1]");
disp("Preparing test...");

test1 = TR_doubleIntMain(@(x,y) x^2 + y^2 , 0, 5, 1000, ...
    0, 5, 1000);
result1 = 416 + 2/3;

disp("x^2 + y^2 on [0, 5] x [0, 5]");

if (abs(test1-result1) < accuracy) 
    disp(test1);
else 
    disp("Test failure :(");
    return
end

% Test 2
disp("[Test 2]");
disp("Preparing test...");

test2 = TR_doubleIntMain(@(x,y) x*y, -1, 1, 1000, -1, 1, 1000);
result2 = 0;

disp("x*y on [-1, 1] x [-1, 1]");

if (abs(test2-result2) < accuracy) 
    disp(test2);
else 
    disp("Test failure :(");
    return
end

% Test 3
disp("[Test 3]");
disp("Preparing test...");

test3 = TR_doubleIntMain(@(x,y) 1, 0, 10, 1000, 0, 10, 1000);
result3 = 100;

disp("1 on [0, 10] x [0, 10]");

if (abs(test3-result3) < accuracy) 
    disp(test3);
else 
    disp("Test failure :(");
    return
end

% Test 4
disp("[Test 4]");
disp("Preparing test...");

test4 = TR_doubleIntMain(@(x,y) sin(x*y) , -5, 5, 1000, ...
    -pi/5, pi/5, 1000);
result4 = 0;

disp("sin(x*y) on [-5, 5] x [-pi/5, pi/5]");

if (abs(test4-result4) < accuracy) 
    disp(test4);
else 
    disp("Test failure :(");
    return
end

% Test 5
disp("[Test 5]");
disp("Preparing test...");

test5 = TR_doubleIntMain(@(x,y) sin(x) + cos(y) , -1, 1, 1000, ...
    -1, 1, 1000);
result5 = 3.365888;

disp("sin(x) + cos(y) on [-1, 1] x [-1, 1]");

if (abs(test5-result5) < accuracy) 
    disp(test5);
else 
    disp("Test failure :(");
    return
end

disp("Everything's correct! :)");

