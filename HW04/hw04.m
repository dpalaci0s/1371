%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : danielpalacios@gatech.edu
% Homework     : HW04
% Course       : CS1371
% Section      : C03
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%                 
%                
%
%
% Files provided with this homework:  
%	ABCs_hw04_pretest.p
%	ABCs_logicals.m
%	Homework04_DrillProblems.pdf
%	caesarSalad_soln.p
%	criminalMinds_soln.p
%	grammarCheck_soln.p
%	hw04.m
%	lottery_soln.p
%
% Files to submit:
%	ABCs_logicals.m
%	caesarSalad.m
%	criminalMinds.m
%	grammarCheck.m
%	hw04.m
%	lottery.m
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
% Part of this homework is an m-file called "ABCs_logicals.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_logicals.m

%
% ABCs File Testing:
%	ABCs_hw04_pretest.p
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
% Included with this homework is a file entitled "Homework04_DrillProblems.pdf",
% containing instructions for 4 drill problems that cover the
% following topic:
%
%	Logicals
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
%% Function Name: grammarCheck
%
% Test Cases:
% [test1] = grammarCheck('I love coding in MATLAB!');
% 	test1 => 1
% 
% [test2] = grammarCheck('Just keep swimming');
% 	test2 => 0
% 
% [test3] = grammarCheck('why so serious?');
% 	test3 => 0
%
%--------------------------------------------------------------------------------
%% Function Name: lottery
%
% Test Cases:
% [amount1] = lottery('10-15-34-9-27-1', '10-34-12-20-15-5', 100000);
% 	amount1 => 60000
% 
% [amount2] = lottery('12-2-49-7-15-6', '8-15-2-54-19-6', 150000);
% 	amount2 => 120000
% 
% [amount3] = lottery('19-26-31-43-10-7', '10-31-19-2-11-7', 450565125);
% 	amount3 => 540678150
%
%--------------------------------------------------------------------------------
%% Function Name: caesarSalad
%
% Test Cases:
% [coded1] = caesarSalad('matlab',5);
% 	coded1 => 'rfyqfg'
% 
% [coded2] = caesarSalad('rfyqfg',-5);
% 	coded2 => 'matlab'
% 
% [coded3] = caesarSalad('hippopotomonstrosesquipedaliophobia',84);
% 	coded3 => 'novvuvuzusutyzxuykywaovkjgrouvnuhog'
%
%--------------------------------------------------------------------------------
%% Function Name: criminalMinds
%
% Test Cases:
% [criminal1] = criminalMinds([true],[true],[false],[true]);
% 	criminal1 => 'Suspect #3 is lying.'
% 
% [criminal2] = criminalMinds([true false false true true], [false true true true false], [false true true true false], [false true true true false]);
% 	criminal2 => 'Suspect #1 is lying.'
% 
% [criminal3] = criminalMinds([true true true false], [true true true false], [true true true false], [true true false false]);
% 	criminal3 => 'Suspect #4 is lying.'
%
%==========================================================================
%% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=AhbMPn-s5l0
%
%==========================================================================
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.