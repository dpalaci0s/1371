%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : danielpalacios@gatech.edu
% Homework     : HW02 Original
% Course       : CS1371
% Section      : C03
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%            
%
% Files provided with this homework:  
%	ABCs_hw02_pretest.p
%	ABCs_moreFunctions.m
%	Homework02_DrillProblems.pdf
%	clockHands_soln.p
%	hw02.m
%	inAndOut_soln.p
%	sepDigits_soln.p
%	solveQuad_soln.p
%
% Files to submit:
%	ABCs_moreFunctions.m
%	clockHands.m
%	hw02.m
%	inAndOut.m
%	sepDigits.m
%	solveQuad.m
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
% Part of this homework is an m-file called "ABCs_moreFunctions.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_moreFunctions.m

%
% ABCs File Testing:
%	ABCs_hw02_pretest.p
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "HW2_DrillProblems.pdf",
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
%% Function Name: solveQuad
%
% Test Cases:
% [root1a, root2a] = solveQuad(1, 0, -1);
% 	root1a => 1.0000
% 	root2a => -1.0000
% 
% [root1b, root2b] = solveQuad(1, -2, -2);
% 	root1b => 2.7321
% 	root2b => -0.7321
% 
% [root1c, root2c] = solveQuad(2, -11, 5);
% 	root1c => 5.0000
% 	root2c => 0.5000
%
%--------------------------------------------------------------------------------
%% Function Name: inAndOut
%
% Test Cases:
% [outer1, inner1] = inAndOut(3);
% 	outer1 => 216.00
% 	inner1 => 41.57
% 
% [outer2, inner2] = inAndOut(5);
% 	outer2 => 1000.00
% 	inner2 => 192.45
% 
% [outer3, inner3] = inAndOut(6);
% 	outer3 => 1728.00
% 	inner3 => 332.55
%
%--------------------------------------------------------------------------------
%% Function Name: sepDigits
%
% Test Cases:
% [huns1, tens1, ones1] = sepDigits(100);
% 	huns1 => 1
% 	tens1 => 0
% 	ones1 => 0
% 
% [huns2, tens2, ones2] = sepDigits(101);
% 	huns2 => 1
% 	tens2 => 0
% 	ones2 => 1
% 
% [huns3, tens3, ones3] = sepDigits(394);
% 	huns3 => 3
% 	tens3 => 9
% 	ones3 => 4
%
%--------------------------------------------------------------------------------
%% Function Name: clockHands
%
% Test Cases:
% [hrHand1, minHand1] = clockHands(3, 15, 10);
% 	hrHand1 => 3
% 	minHand1 => 25
% 
% [hrHand2, minHand2] = clockHands(4, 45, -30);
% 	hrHand2 => 4
% 	minHand2 => 15
% [hrHand3, minHand3] = clockHands(1, 10, -134)
% ;
% 	hrHand3 => 10
% 	minHand3 => 56
%
%==========================================================================
%% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://xkcd.com/844/
%
%==========================================================================
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.