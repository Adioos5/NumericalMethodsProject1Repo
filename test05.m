%% Checks the accuracy and time in terms of subdivisions amount

% Clearing the workspace
clear;

% Header
disp(" ");
disp("TEST05");
disp(" ");

result = 416 + 2/3;

% Test 1
disp("[Test 1]");
disp("10 subdivisions both on OX and OY.")
disp("Preparing test...");

start = tic;

test1 = TR_doubleIntMain(@(x,y) x^2 + y^2 , 0, 5, 10, ...
    0, 5, 10);

% Time of calculation
toc(start)

% Calculation error
disp(abs(test1 - result));

% Test 2
disp("[Test 2]");
disp("1000 subdivisions both on OX and OY.")
disp("Preparing test...");

start = tic;

test2 = TR_doubleIntMain(@(x,y) x^2 + y^2 , 0, 5, 100, ...
            0, 5, 100);
        
% Time of calculation
toc(start)

% Calculation error
disp(abs(test2 - result));

% Test 3
disp("[Test 3]");
disp("10 000 subdivisions both on OX and OY.")
disp("Preparing test...");

start = tic;

test3 = TR_doubleIntMain(@(x,y) x^2 + y^2 , 0, 5, 10000, ...
    0, 5, 10000);

% Time of calculation
toc(start)

% Calculation error
disp(abs(test3-result));