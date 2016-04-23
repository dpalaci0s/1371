%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : danielpalacios@gatech.edu
% Homework     : HW14/Original
% Course       : CS1371
% Section      : C03
% Collaboration: I worked on the homework assignment alone, using
%                  only course materials.
%
% Files provided with this homework:  
%	BinaryBridge.jpg
%	Homework14_DrillProblems.pdf
%	Klaus.jpg
%	Library.jpg
%	gettysburgAddress.txt
%	hw14.m
%	iAmNotFamous.jpg
%	justDoIt1.jpg
%	justDoIt2.jpg
%	leviathan.txt
%	phase2Registration_soln.p
%	phase2Registration_testCaseInputs.mat
%	shakeitoff.txt
%	shakespeare.txt
%	sheet1.xlsx
%	sheet2.xlsx
%	sheet3.xlsx
%	shiaSurprise_soln.p
%	sortBy_soln.p
%	steaknshake.txt
%	tabulaRecta_soln.p
%	utilitarianism.txt
%	wordCountTests.mat
%	wordCount_soln.m
%	wordCount_soln.p
%	zipf_soln.p
%
% Files to submit:
%	hw14.m
%	phase2Registration.m
%	shiaSurprise.m
%	sortBy.m
%	tabulaRecta.m
%	wordCount.m
%	zipf.m
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
% Included with this homework is a file entitled "Homework14_DrillProblems.pdf",
% containing instructions for 6 drill problems that cover the
% following topic:
%
%	Extra Credit
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
%% Function Name: sortBy
%
% Test Cases:
% [raw1] = sortBy('sheet1.xlsx', 'id');
% 	raw1 =>  <use isequal to compare output cell array to solution>
% 
% [raw2] = sortBy('sheet2.xlsx', 'email');
% 	raw2 =>  <use isequal to compare output cell array to solution>
% 
% [raw3] = sortBy('sheet3.xlsx', 'quant');
% 	raw3 =>  <use isequal to compare output cell array to solution>
%
%--------------------------------------------------------------------------------
%% Function Name: phase2Registration
%
% Setup:
% load('phase2Registration_testCaseInputs.mat');
%
% Test Cases:
% [out1] = phase2Registration(class1, change1, registrar);
%   out1 =>  
%       1x4 struct array with fields:
%           title                        
%           CRN                          
%           courseNumber                 
%           days                         
%           time                         
%           instructor                   
%           location                     
% 
% [out2] = phase2Registration(class2, change2, registrar);
%   out2 =>  
%       1x5 struct array with fields:
%           title                        
%           CRN                          
%           courseNumber                 
%           days                         
%           time                         
%           instructor                   
%           location                     
% 
% [out3] = phase2Registration(class3, change3, registrar);
%   out3 =>  
%       1x5 struct array with fields:
%           title                        
%           CRN                          
%           courseNumber                 
%           days                         
%           time                         
%           instructor                   
%           location                     
%
%--------------------------------------------------------------------------------
%% Function Name: tabulaRecta
%
% Test Cases:
% [newStr1] = tabulaRecta('MATLAB','ABCDEF','encode');
% 	newStr1 => 'MBVOEG'
% 
% [newStr2] = tabulaRecta('PXINLYDEXPGHOJCWUP','NFUAHFWNTLODTFPIHL','decode');
% 	newStr2 => 'CSONETHREESEVENONE'
% 
% [newStr3] = tabulaRecta('Encode this sentence.','RGIMVGPOQSVZERHKBT','encode');
% 	newStr3 => 'VTKAYKIVYKNDRKLXDX'
% 
% [newStr4] = tabulaRecta('UKKAYKIVYKNDRKLXDX','RGIMVGPOQSVZERHKBT','decode');
% 	newStr4 => 'DECODETHISSENTENCE'
%
%--------------------------------------------------------------------------------
%% Function Name: shiaSurprise
%
% Test Cases:
% shiaSurprise('justDoIt1.jpg', 'BinaryBridge.jpg', 40);
% 		Output image(s) should be identical to that produced by solution file
% 
% shiaSurprise('justDoIt2.jpg', 'Klaus.jpg', 45);
% 		Output image(s) should be identical to that produced by solution file
% 
% shiaSurprise('iAmNotFamous.jpg', 'Library.jpg', 60);
% 		Output image(s) should be identical to that produced by solution file
%
%--------------------------------------------------------------------------------
%% Function Name: zipf
%
% Test Cases:
% [top20a] = zipf('gettysburgAddress.txt');
% 	top20a => 0.4964
% 		Output plot(s) should be identical to that produced by solution file
% 
% [top20b] = zipf('leviathan.txt');
% 	top20b => 0.9161
% 		Output plot(s) should be identical to that produced by solution file
% 
% [top20c] = zipf('utilitarianism.txt');
% 	top20c => 0.8366
% 		Output plot(s) should be identical to that produced by solution file
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