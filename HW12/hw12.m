%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : danielpalacios@gatech.edu
% Homework     : HW12/Original
% Course       : CS1371
% Section      : C03
% Collaboration: I worked on the homework assignment alone, using
%                  only course materials.
%
% Files provided with this homework:  
%	ABCs_hw12_pretest.m
%	ABCs_hw12_pretest.p
%	ABCs_images.m
%	Homework12_DrillProblems.pdf
%	abcs_pretest1.png
%	beach.jpg
%	bikes00.png
%	bikes01.png
%	bikes02.png
%	bikes03.png
%	bikes04.png
%	bikes05.png
%	bikes06.png
%	bikes07.png
%	bikes08.png
%	bikes09.png
%	bikes10.png
%	bikes11.png
%	bikes12.png
%	bikes13.png
%	bikes14.png
%	bikes15.png
%	bikes16.png
%	bikes17.png
%	bikes18.png
%	bikes19.png
%	bikes20.png
%	bikes21.png
%	bikes22.png
%	bikes23.png
%	bikes24.png
%	bikes25.png
%	bikes26.png
%	bikes27.png
%	bikes28.png
%	carnival_soln.p
%	cars00.png
%	cars01.png
%	cars02.png
%	cars03.png
%	cars04.png
%	cars05.png
%	cars06.png
%	cars07.png
%	cars08.png
%	cars09.png
%	cars10.png
%	cars11.png
%	cars12.png
%	cars13.png
%	cars14.png
%	cars15.png
%	cars16.png
%	cars17.png
%	cars18.png
%	cars19.png
%	cars20.png
%	cars21.png
%	cars22.png
%	cars23.png
%	cars24.png
%	cars25.png
%	cars26.png
%	cars27.png
%	cars28.png
%	cars29.png
%	cars30.png
%	cars31.png
%	cars32.png
%	cars33.png
%	cars34.png
%	cars35.png
%	cars36.png
%	cars37.png
%	cars38.png
%	cars39.png
%	cars40.png
%	city.jpg
%	desktop.ini
%	earth.jpg
%	excelImage.xlsx
%	font.mat
%	goat_soln.p
%	gt1.png
%	gt2.png
%	gt3.png
%	gt4.png
%	hw12.m
%	image2excel_soln.p
%	landscape.jpg
%	remNoise_soln.p
%	snow00.png
%	snow01.png
%	snow02.png
%	snow03.png
%	snow04.png
%	snow05.png
%	snow06.png
%	snow07.png
%	snow08.png
%	snow09.png
%	snow10.png
%	snow11.png
%	snow12.png
%	snow13.png
%	snow14.png
%	snow15.png
%	snow16.png
%	snow17.png
%	snow18.png
%	snow19.png
%	snow20.png
%	snow21.png
%	snow22.png
%	snow23.png
%	snow24.png
%	snow25.png
%	snow26.png
%	snow27.png
%	snow28.png
%	snow29.png
%	snow30.png
%	snow31.png
%	snow32.png
%	snow33.png
%	snow34.png
%	str2img_soln.p
%
% Files to submit:
%	ABCs_images.m
%	carnival.m
%	goat.m
%	hw12.m
%	image2excel.m
%	remNoise.m
%	str2img.m
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
% Part of this homework is an m-file called "ABCs_images.m".
% Open this file in MATLAB and complete it
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_images.m

%
% ABCs File Testing:
%	ABCs_hw12_pretest.p
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
% Included with this homework is a file entitled "Homework12_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topic:
%
%	Images
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
%% Function Name: str2img
%
% Setup:
% load('font.mat');
%
% Test Cases:
% str2img('Go ahead, make my day.', font, [255, 0, 0]);
% 		Output image(s) should be identical to that produced by solution file
% 
% str2img('I am Groot!', font, [100, 230, 20]);
% 		Output image(s) should be identical to that produced by solution file
% 
% str2img('I love lamp.', font, [120, 120, 40]);
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: image2excel
%
% Test Cases:
% out1 = image2excel('beach.jpg');
%       out1 => 384x227 cell array (Use isequal() to compare to the solution function)
% 
% out2 = image2excel('earth.jpg');
%       out2 => 384x227 cell array (Use isequal() to compare to the solution function)
% 
% out3 = image2excel('city.jpg');
%       out3 => 384x227 cell array (Use isequal() to compare to the solution function)
% 
% out4 = image2excel('landscape.jpg');
%       out4 => 300x180 cell array (Use isequal() to compare to the solution function)
%
%--------------------------------------------------------------------------------
%% Function Name: carnival
%
% Test Cases:
% carnival('Kara.png', [.1, .3, .4, .1, .1]);
% 		Output image(s) should be identical to that produced by solution file
% 
% carnival('Mandy.png', [.3, .1, .5, .05, .05]);
% 		Output image(s) should be identical to that produced by solution file
% 
% carnival('Raj.png', [.5, .05, .2, .05, .1, .1]);
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: goat
%
% Test Cases:
% goat('gt1.png', [192,192,35],[63,63,35],[150,192,230], [80 100]);
% 		Output image(s) should be identical to that produced by solution file
% 
% goat('gt2.png', [192 192 35],'50%, 50%, 101%',[206,17,65], [50 150]);
% 		Output image(s) should be identical to that produced by solution file
% 
% goat('gt3.png', [200 200 200],'25%, 25%, 25%',[238 178 17], [90 10]);
% 		Output image(s) should be identical to that produced by solution file
% 
% goat('gt4.png', [80 30 155],[70, 30, 105],[0,131,73], [-20 60]);
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: remNoise
%
% Setup:
% addpath('imgSeq');
%
% Test Cases:
% remNoise('bikes', 28, 'mode');
% 		Output image(s) should be identical to that produced by solution file
% 
% remNoise('snow', 34, 'mean');
% 		Output image(s) should be identical to that produced by solution file
% 
% remNoise('cars', 40, 'mode');
% 		Output image(s) should be identical to that produced by solution file
%
%==========================================================================
%% Click of the Week!!
%--------------------------------------------------------------------------
%
%   https://www.youtube.com/watch?v=PCTF95zNxhg
%
%==========================================================================
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.