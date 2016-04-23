%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : dpalacios7
% Homework     : HW06/Resubmission
% Course       : CS1371
% Section      : C03
% Collaboration: I worked on the homework assignment alone, using
%                  only course materials.
%       

%
% Files provided with this homework:  
%	ABCs_conditionals.m
%	ABCs_hw06_pretest.p
%	Homework06_DrillProblems.pdf
%	beautyAndBrains_soln.p
%	easterEgg.png
%	hw06.m
%	lostThatLovinFeelin_soln.p
%	lotteryNums.mat
%	lotteryTickets_soln.p
%	loveMeTinder_soln.p
%	lovinFeelinTestCases.mat
%
% Files to submit:
%	ABCs_conditionals.m
%	beautyAndBrains.m
%	hw06.m
%	lostThatLovinFeelin.m
%	lotteryTickets.m
%	loveMeTinder.m
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
% Part of this homework is an m-file called "ABCs_conditionals.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_conditionals.m

%
% ABCs File Testing:
%	ABCs_hw06_pretest.p
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
% Included with this homework is a file entitled "Homework06_DrillProblems.pdf",
% containing instructions for 4 drill problems that cover the
% following topic:
%
%	Conditionals
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
%% Function Name: beautyAndBrains
%
% Test Cases:
% [output1, score1] = beautyAndBrains([5 8 9], [10 10 10], [312 781 420]);
% 	output1 => 'The perfect date is candidate #420.'
% 	score1 => 19
% 
% [output2, score2] = beautyAndBrains(1:10, linspace(5, 5, 10), [1 2 4 8 16 32 64 128 256 512]);
% 	output2 => 'The perfect date is candidate #512.'
% 	score2 => 15
% 
% [output3, score3] = beautyAndBrains([2 7 3 9 5 4 1], [1 0 4 3 2 5 3], [123 456 789 012 234 567 890]);
% 	output3 => 'No perfect date was found, however candidate #12 has the highest score.'
% 	score3 => 12
%
%--------------------------------------------------------------------------------
%% Function Name: loveMeTinder
%
% Test Cases:
% [swipe1] = loveMeTinder('Harrison', [18, 25, 3], [21, 1], 'UCLA', false, 'Cats');
% 	swipe1 => 'Swipe right on Harrison's picture'
% 
% [swipe2] = loveMeTinder('Samantha', [20, 30, 15], [20, 7], 'Brandeis', false, '"Women');
% 	swipe2 => 'Swipe right on Samantha's picture'
% 
% [swipe3] = loveMeTinder('Daniel', [28, 32, 2], [32, 1], 'UAB', true, '"When');
% 	swipe3 => 'Swipe left on Daniel's picture'
% 
% [swipe4] = loveMeTinder('JoAnna', [35, 50, 20], [47, 17], 'Georgia Tech', true, '"Ramblin''');
% 	swipe4 => 'Super Like JoAnna's picture'
%
% There's an easter egg somewhere in the solution file to this problem!
% Type 'help loveMeTinder_soln' in the Command Window and see if you can figure
% it out!
%
% Also, you can type 'help <any solution function>' to get a quick summary of the
% function. This could be helpful if you ever forget which input is supposed to
% be what or something like that. You should still refer to the Drill Problems
% PDF for full function descriptions.
%--------------------------------------------------------------------------------
%% Function Name: lotteryTickets
%
% Setup:
% load lotteryNums.mat
%
% Test Cases:
% [prize1] = lotteryTickets(tickets1,winning1);
% 	prize1 => 'Congratulations! You've won the Grand Prize!'
% 
% [prize2] = lotteryTickets(tickets2,winning2);
% 	prize2 => 'Congratulations! You've won 50104 dollars!'
% 
% [prize3] = lotteryTickets(tickets3,winning3);
% 	prize3 => 'Congratulations! You've won 5000004 dollars!'
% 
% [prize4] = lotteryTickets(tickets4,winning4);
% 	prize4 => 'Too bad. You did not win any money.'
%
%--------------------------------------------------------------------------------
%% Function Name: lostThatLovinFeelin
%
% Setup:
% load('lovinFeelinTestCases.mat');
%
% Test Cases:
% [direc1] = lostThatLovinFeelin(board1, loc1);
% 	direc1 => 'Head Northwest to find love.'
% 
% [direc2] = lostThatLovinFeelin(board2, loc2);
% 	direc2 => 'Head Southeast to find love.'
% 
% [direc3] = lostThatLovinFeelin(board3, loc3);
% 	direc3 => 'Head East to find love.'
% 
% [direc4] = lostThatLovinFeelin(board4, loc4);
% 	direc4 => 'There is no love to be found :('
%
%==========================================================================
%% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=B4XzLDM3Py8
%
%==========================================================================
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.