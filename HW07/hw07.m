%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : danielpalacios@gatech.edu
% Homework     : HW07
% Course       : CS1371
% Section      : C03
% Collaboration:  "I worked on the homework assignment alone, using
%                  only course materials."
%                
%
% Files provided with this homework:  
%	ABCs_hw07_pretest.p
%	ABCs_iteration.m
%	EVAtime_soln.p
%	Homework07_DrillProblems.pdf
%	changeCalc_soln.p
%	cutTheRope_plot.p
%	cutTheRope_soln.p
%	hw07.m
%	layerBricks_soln.p
%	ugaMath_soln.p
%
% Files to submit:
%	ABCs_iteration.m
%	EVAtime.m
%	changeCalc.m
%	cutTheRope.m
%	hw07.m
%	layerBricks.m
%	ugaMath.m
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
% Part of this homework is an m-file called "ABCs_iteration.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_iteration.m

%
% ABCs File Testing:
%	ABCs_hw07_pretest.p
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
% Included with this homework is a file entitled "Homework07_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Iteration
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
%% Function Name: EVAtime
%
% Test Cases:
% [longest1 time1] = EVAtime('Apollo,Gemini,Mir', [175.55 26.00 732.88]);
% 	longest1 => 'Mir'
% 	time1 => 732.88
% 
% [longest2 time2] = EVAtime('Susan Helms,Sunita Williams,Colin Foale,Akihiko Hoshide', [8.93 8.28 8.17 8.28]);
% 	longest2 => 'Susan Helms'
% 	time2 => 8.93
% 
% [longest3 time3] = EVAtime('Neil Armstrong,Michael Collins,Buzz Aldrin,Alan Shepard', [2.51 0.86 2.50 4.78]);
% 	longest3 => 'Alan Shepard'
% 	time3 => 4.78
%
%--------------------------------------------------------------------------------
%% Function Name: changeCalc
%
% Test Cases:
% [change1] = changeCalc(.26);
% 	change1 => 'Quarters: 1 | Dimes: 0 | Nickels: 0 | Pennies: 1'
% 
% [change2] = changeCalc(.95);
% 	change2 => 'Quarters: 3 | Dimes: 2 | Nickels: 0 | Pennies: 0'
% 
% [change3] = changeCalc(3.14);
% 	change3 => 'Quarters: 12 | Dimes: 1 | Nickels: 0 | Pennies: 4'
%
%--------------------------------------------------------------------------------
%% Function Name: ugaMath
%
% Test Cases:
% [y1] = ugaMath('f(x) = 2 * x ^ 3', 5);
% 	y1 => 1000.00
% 
% [y2] = ugaMath('veloc(pos) = 2 / pos ^ 2 - 3', 0.5);
% 	y2 => 13.00
% 
% [y3] = ugaMath('f(var_name) = 4 * 3 / var_name ^ var_name - 10 * var_name',3.14);
% 	y3 => 180.05
%
%--------------------------------------------------------------------------------
%% Function Name: layerBricks
%
% Test Cases:
% [arr1] = layerBricks(3,'blue');
% 	arr1 =>       [blue]      
%              [blue][blue]   
%           [blue][blue][blue]
% 
% [arr2] = layerBricks(4,'yellow');
% 	arr2 =>              [yellow]            
%                    [yellow][yellow]        
%                [yellow][yellow][yellow]    
%            [yellow][yellow][yellow][yellow]
% 
% [arr3] = layerBricks(1,'orange');
% 	arr3 => '[orange]'
%
% *See what happens if you enter the name of a famous brick stacking game from the 80's as the color! 
%--------------------------------------------------------------------------------
%% Function Name: cutTheRope
%
% Test Cases:
% [loc1, pieces1] = cutTheRope([2, 3]);
% 	loc1 => 2.5
% 	pieces1 => 2.0
% 
% [loc2, pieces2] = cutTheRope([0, 5, 2, 5, 4, 5, 0, 2, 0, 1, 0, 2, 0, 1]);
% 	loc2 => 0.5
% 	pieces2 => 10.0
% 
% [loc3, pieces3] = cutTheRope([4, 1, 2, -3, 2, -1, 0, -1]);
% 	loc3 => -0.5
% 	pieces3 => 6.0
%
%==========================================================================
%% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=V_OVxxIvqVw
%
%==========================================================================
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.