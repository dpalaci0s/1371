%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : dpalacios7@gatech.edu
% Homework     : HW01
% Course       : CS1371
% Section      : C03
% Collaboration: I worked on the homework assignment alone, using
%                  only course materials.
%
%
% Files provided with this homework:  
%	ABCs_functions.m
%	ABCs_homeworkOverview.m
%	ABCs_hw01_pretest.p
%   CS 1371 Homework Guide.pdf
%	Homework01_DrillProblems.pdf
%	fib_soln.p
%	freefall_soln.p
%	hw01.m
%	splitTicket_soln.p
%	triArea_soln.p
%
% Files to submit:
%	ABCs_functions.m
%	ABCs_homeworkOverview.m
%	fib.m
%	freefall.m
%	hw01.m
%	splitTicket.m
%	triArea.m
%
%%  >>>> BEFORE YOU BEGIN <<<<
%   Please read the CS 1371 Homework Guide.pdf!
%   This document contains everything you need to know for completing and
%   submitting this and all future homeworks!
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%==========================================================================
%% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework are m-files called "ABCs_homeworkOverview.m" and
% "ABCs_functions.m". Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_homeworkOverview.m
%	ABCs_functions.m
%
% ABCs File Testing:
%	ABCs_hw01_pretest.m
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW01_DrillProblems.pdf",
% containing instructions for 4 drill problems that cover the
% following topic:
%
%	Functions
%
% Follow the directions carefully to write code to complete the drill
% problems as described. Make sure file names as well as function headers
% are written exactly as described in the problem text. If your function
% headers are not written as specified, you will recieve an automatic
% zero for that problem.
%
%==========================================================================
%% PART 3. Testing Your Code
%--------------------------------------------------------------------------
%
% You may use the following test cases for each problem to test your code.
% The function call with the test-inputs is shown in the first line of each
% test case, and the correct outputs are displayed in subsequent lines.
%
%% Function Name: freefall
%
% Test Cases:
% [v_f1] = freefall(0, 2);
% 	v_f1 => 19.6140
% 
% [v_f2] = freefall(-19.614, 2);
% 	v_f2 => 0.0000
% 
% [v_f3] = freefall(34, 21);
% 	v_f3 => 239.9470
%
%--------------------------------------------------------------------------------
%% Function Name: splitTicket
%
% Test Cases:
% [amt1] = splitTicket(23.19, .18, 2);
% 	amt1 => 13.68
% 
% [amt2] = splitTicket(56.72, .2, 4);
% 	amt2 => 17.02
% 
% [amt3] = splitTicket(10, .15, 1);
% 	amt3 => 11.50
%
%--------------------------------------------------------------------------------
%% Function Name: fib
%
% Test Cases:
% [nfib1] = fib(5);
% 	nfib1 => 5
% 
% [nfib2] = fib(10);
% 	nfib2 => 55
% 
% [nfib3] = fib(56);
% 	nfib3 => 225851433717
%
%--------------------------------------------------------------------------------
%% Function Name: triArea
%
% Test Cases:
% [area1] = triArea(34, 80, 5);
% 	area1 => 7.5400
% 
% [area2] = triArea(45, 90, 7);
% 	area2 => 24.5000
% 
% [area3] = triArea(12, 102, 34);
% 	area3 => 128.6700
%
%==========================================================================
%% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=efcNOvAkWHk
%
%==========================================================================
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.