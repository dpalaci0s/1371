ele%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : danielpalacios@gatech.edu
% Homework     : HW09/ Original
% Course       : CS1371
% Section      : C03
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:  
%	ABCs_cellArrays.m
%	ABCs_highLevelFileIO.m
%	ABCs_hw09_pretest.p
%	Homework09_DrillProblems.pdf
%	Players.xlsx
%	applicants1.xlsx
%	applicants2.xlsx
%	applicants3.xlsx
%	calories.txt
%	candidates1.xlsx
%	candidates2.xlsx
%	candidates3.xlsx
%	careerFair_soln.p
%	cellSearchTests.mat
%	cellSearch_soln.p
%	desktop.ini
%	election_soln.p
%	fantasyTanks_soln.p
%	hw09.m
%	mysteryCandidate.jpg
%	packIt_soln.p
%	recipes1.xlsx
%	recipes2.xlsx
%	recipes3.xlsx
%	resume01.txt
%	resume02.txt
%	resume03.txt
%	resume04.txt
%	resume05.txt
%	resume06.txt
%	resume07.txt
%	resume08.txt
%	resume09.txt
%	resume10.txt
%	rubric_hw1grades.xls
%	studentPicks1.xlsx
%	studentPicks2.xlsx
%	studentPicks3.xlsx
%	voters.mat
%
% Files to submit:
%	ABCs_cellArrays.m
%	ABCs_highLevelFileIO.m
%	careerFair.m
%	cellSearch.m
%	election.m
%	fantasyTanks.m
%	hw09.m
%	packIt.m
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
% Part of this homework are m-files called "ABCs_cellArrays.m" and "ABCs_highLevelFileIO.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_cellArrays.m
%	ABCs_highLevelFileIO.m
%
% ABCs File Testing:
%	ABCs_hw09_pretest.p
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
% Included with this homework is a file entitled "Homework09_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topics:
%
%	Cell Arrays
%	High Level File I/O
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
%% Function Name: cellSearch
%
% Setup:
% load('cellSearchTests.mat');
%
% Test Cases:
% [val1] = cellSearch(ca1, idx1);
% 	val1 => 16
% 
% [val2] = cellSearch(ca2, idx2);
% 	val2 => 's'
% 
% [val3] = cellSearch(ca3, idx3);
% 	val3 => 26
% 
% [val4] = cellSearch(ca4, idx4);
% 	val4 => 'evading'
%
%--------------------------------------------------------------------------------
%% Function Name: fantasyTanks
%
% Test Cases:
%
% [debug] = fantasyTanks('playersSmall.xlsx', 'picksSmall.xlsx');
%   debug => 'Edward won by 2 points over Jimmy!'
%
% [out1] = fantasyTanks('Players.xlsx','studentPicks1.xlsx');
% 	out1 => 'Eric won by 765 points over Robin!'
% 
% [out2] = fantasyTanks('Players.xlsx','studentPicks2.xlsx');
% 	out2 => 'Sandra won by 281 points over Marilyn!'
% 
% [out3] = fantasyTanks('Players.xlsx','studentPicks3.xlsx');
% 	out3 => 'Jessica won by 284 points over Kevin!'
%
%--------------------------------------------------------------------------------
%% Function Name: careerFair
%
% Test Cases:
% [ordered1] = careerFair('applicants1.xlsx');
% 	ordered1 =>
%   { 'Adam Silverman',  [5.00];...
%      'Bruce Wayne',    [4.00];...
%    'Annabell Kingman', [3.31];...
%    'Clinton Loiselle', [2.45]}
% 
% [ordered2] = careerFair('applicants2.xlsx');
% 	ordered2 =>
%   {  'Bruce Wayne',   [4.00];...
%    'Lisa Beauregard', [3.89];...
%     'Kristen Brinn',  [3.74];...
%       'Scotty P',     [1.21]}
% 
% [ordered3] = careerFair('applicants3.xlsx');
% 	ordered3 =>
%   {'Adam Silverman', [5.00];...
%    'Jessica Reece',  [3.45];...
%       'The Todd',    [2.52];...
%     'Emmett Brown',  [2.45]}
%
%--------------------------------------------------------------------------------
%% Function Name: packIt
%
% Test Cases:
% [lunch1] = packIt('calories.txt', 'recipes1.xlsx');
% 	lunch1 => 'I will make Tomato Soup and Grilled Cheese for lunch and consume 1593 calories.'
% 
% [lunch2] = packIt('calories.txt', 'recipes2.xlsx');
% 	lunch2 => 'I will make Chicken Salad for lunch and consume 2963 calories.'
% 
% [lunch3] = packIt('calories.txt', 'recipes3.xlsx');
% 	lunch3 => 'I will make Mac & Cheese for lunch and consume 3324 calories.'
%
%--------------------------------------------------------------------------------
%% Function Name: election
%
% Setup:
% load voters.mat
%
% Test Cases:
% [str1] = election('candidates1.xlsx', voters1);
% 	str1 => 'Jim Wedge wins with 92.1% of the electoral vote, and 26.3% of the popular vote.'
% 
% [str2] = election('candidates2.xlsx', voters2);
% 	str2 => 'Jim Wedge wins with 56.7% of the electoral vote, and 25% of the popular vote.'
% 
% [str3] = election('candidates3.xlsx', voters3);
% 	str3 => 'Martin O'Moccasins wins with 52.4% of the electoral vote, and 20.6% of the popular vote.'
%
%==========================================================================
%% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=pIHYPaoh79I
%
%==========================================================================
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.