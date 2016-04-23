%% studentPlotCheck This is the 2016 CS 1371 MATLAB Student Plot Checker
% You must be running MATLAB R2015a or later to use the plot checker
%
% studentPlotCheck(funcName, input1, input2, ...)
%
% Inputs:
%   funcName (string): the name of the function to test, as a string
%   Remaining Inputs: the inputs required to run the function
%
% Output:
%   A text file of differences between your function's plot and the solution.
%   The contents of the text file are also printed to the Command Window.
%
% Example:
% Function to test: cellGrowth
% Test case 1 using inputs: cell1 and time1
%
% studentPlotCheck('cellGrowth', cell1, time1);
%
% --> Produces a txt file called differences_uniqueFit.txt
%     showing differences between your function and the soln file function.
%     This content will also be printed to the Command Window.
%
% Notes:
% 1) The function name must be a string and should not include .m or .p!
% 2) The additional inputs for the function must be in the same order the
%       function takes it in.
% 3) Input the function name only, not the solution function's name.
% 4) If there are differences displayed in the txt file, even if the plots
%       look the same, your plot is not exactly the same compared to the solution file.
%