%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : danielpalacios@gatech.edu
% Homework     : HW11/Original
% Course       : CS1371
% Section      : C03
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:  
%	1984.txt
%	ABCs_hw11_pretest.m
%	ABCs_hw11_pretest.p
%	ABCs_numericalMethods.m
%	ABCs_plotting.m
%	Homework11_DrillProblems.pdf
%	abcs_plotting.mat
%	airfoilz_soln.p
%	cellData.mat
%	cellGrowth_soln.p
%	crimePunishment.txt
%	findCenter.m
%	findCenter.p
%	hw11.m
%	modified.xlsx
%	molecule_soln.p
%	oldMan.txt
%	proctorTest_soln.p
%	standardOne.xlsx
%	standardTwo.xlsx
%	studentMolecules.mat
%	wordDist_soln.p
%
% Files to submit:
%	ABCs_numericalMethods.m
%	ABCs_plotting.m
%	airfoilz.m
%	cellGrowth.m
%	hw11.m
%	molecule.m
%	proctorTest.m
%	wordDist.m
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
% Part of this homework are m-files called "ABCs_plotting.m" and "ABCs_numericalMethods.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_plotting.m
%	ABCs_numericalMethods.m
%
% ABCs File Testing:
%	ABCs_hw11_pretest.p
%
%==========================================================================
%% COMMENTING
%--------------------------------------------------------------------------
%
% Whenever you program, it is always a good idea to comment your code.
% Commenting helps you keep track of what you are attempting to code, and 
% it helps others in understanding why you wrote various lines of code.  
% Since the AutoGrader does not give partial credit for attempting a 
% problem, we have added a commenting system to give some incentive to at 
% least attempt each problem. From now on, when you write a solution to a
% problem, you should comment your code and explain what you were 
% attempting to code. Some good places to comment would be sections of your
% code that directly relate with your algorithm. However, don't comment
% every line of code. Instead comment the lines of code that are either  
% difficult to understand or are important to solving the problem. 
%
% Commenting will purely be for extra-credit purposes, so if you don't want
% to comment your code, you don't have to. Your Section TA will grade the
% comments from each Homework and will keep track of your commenting points
% throughout the semester. Commenting points will not change the score you
% receive on a homework assignment, but they will be factored into your
% homework average at the end of the semester. 
%
% Finally, if you come to help desk, you are expected to have your code
% commented. If a TA sees that your code is not commented, he or she will
% move on to another student until you comment your code.
%
%==========================================================================
%% DEBUGGING
%--------------------------------------------------------------------------
%
% MATLAB has a rich and powerful debugger that you can use to help you
% better understand your code.  With the debugger, you can step through
% your code line by line, step into functions that you call, and examine
% the workspaes of all of the functions currently on the stack.  This can
% help you tremendously in your understanding of MATLAB, especially when it
% comes to recursion.
%
% Your TA and/or professor have probably already shown you the debugger,
% but if you missed it, here are a few pointers to get you started.
%
% - On the left hand side of the MATLAB editor window, there are line
%   numbers and dashes.  You can stop MATLAB on a particular line of code
%   by clicking this dash (it will turn into a red dot).  When you run
%   your code, MATLAB will stop right before executing this line and give
%   you a command prompt (K>>).
% - You can also tell MATLAB to stop if it throws an error.  This option
%   can be found under the menu Debug->Stop if error/warning... or by
%   typing the command "dbstop if error".
% - While MATLAB is stopped, you can view your variables in the workspace
%   pane and interact with them through the command line.  You can also
%   view the workspace of functions that have called the current function
%   by using the Stack pulldown box in the Workspace pane.
% - From here, you can step through your code one line at a time.  There
%   are several step options, all of which have key combinations, can be
%   found under the debug menu, and have icons (the icons look like pages
%   with symbols on top of them, such as a green triangle and blue arrows)
%   	- Step: go to the next line of code
%		- Step in: if the line of code is a function, enter the function
%		  	to go line by line
%		- Step out: if you stepped in a function, step out will take you
%           back out
%   	- Continue/Run: Run until the next breakpoint or end of function
% - To clear all breakpoints, go to Debug->Clear all breakpoints or type
%   "dbclear all".
%
% For additional documentation, you can look up the official MATLAB
% documentation under the help menu.
%
%==========================================================================
%% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% Included with this homework is a file entitled "Homework11_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topics:
%
%	Plotting
%	Numerical Methods
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
%% Function Name: cellGrowth
%
% Setup:
% load('cellData.mat');
%
% Test Cases:
% cellGrowth(cell1,time1);
% 		Output plot(s) should be identical to that produced by solution file
% 
% cellGrowth(cell2, time2);
% 		Output plot(s) should be identical to that produced by solution file
% 
% cellGrowth(cell3,time3);
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: airfoilz
%
% Test Cases:
% [lift1] = airfoilz([0 5 8 9 10 11 14], [0 .5 .8 .9 1 1.1 .8], 13);
% 	lift1 => 0.930
% 		Output plot(s) should be identical to that produced by solution file
% 
% [lift2] = airfoilz([0 -1 10 25 14 20], [0 .03 .05 .05 .06 .07], [18 12 7]);
% 	lift2 => [0.062   0.057   0.045]
% 		Output plot(s) should be identical to that produced by solution file
% 
% [lift3] = airfoilz(0:10, [0.1:0.1:0.8 0.7:-0.1:0.5], 0.5:1:9.5);
% 	lift3 => [0.120   0.277   0.408   0.513   0.592   0.645   0.671   0.672   0.646   0.594]
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: proctorTest
%
% Test Cases:
% [p1, a1] = proctorTest('standardOne.xlsx', 90);
% 	p1 => '14.779 %, 100.641 lb/ft^3'
% 	a1 => 71.709
% 
% [p2, a2] = proctorTest('standardTwo.xlsx', 96);
% 	p2 => '14.222 %, 102.986 lb/ft^3'
% 	a2 => 24.063
% 
% [p3, a3] = proctorTest('modified.xlsx', 97);
% 	p3 => '18.253 %, 105.946 lb/ft^3'
% 	a3 => 18.363
%
%--------------------------------------------------------------------------------
%% Function Name: wordDist
%
% Test Cases:
% [str1] = wordDist('crimePunishment.txt');
%   str1 => 'We're at Georgia Tech, we can't read that :('
% 		Output plot(s) should be identical to that produced by solution file
% 
% [str2] = wordDist('oldMan.txt');
%   str2 => 'We're at Georgia Tech, we can read that!'
% 		Output plot(s) should be identical to that produced by solution file
% 
% [str3] = wordDist('1984.txt');
%   str3 => 'We're at Georgia Tech, we can read that!'
% 		Output plot(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: molecule
%
% Setup:
% load('studentMolecules.mat')
%
% Test Cases:
% molecule(mol1Lengths, mol1Angles, mol1Rings);
% 		Output plot(s) should be identical to that produced by solution file
% 
% molecule(mol2Lengths, mol2Angles, mol2Rings);
% 		Output plot(s) should be identical to that produced by solution file
% 
% molecule(mol3Lengths, mol3Angles, mol3Rings);
% 		Output plot(s) should be identical to that produced by solution file
% 
% molecule(mol4Lengths, mol4Angles, mol4Rings);
% 		Output plot(s) should be identical to that produced by solution file
%
%==========================================================================
%% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=dQw4w9WgXcQ
%   (Do not click until April 1st)
%
%==========================================================================
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.