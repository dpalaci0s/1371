%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : danielpalacios@gatech.edu
% Homework     : HW10/Resubmission
% Course       : CS1371
% Section      : C03
% Collaboration: 
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%
% Files provided with this homework:  
%	ABCs_hw10_pretest.p
%	ABCs_structureArrays.m
%	ABCs_structures.m
%	Homework10_DrillProblems.pdf
%	colorGradTests.mat
%	colorGrad_soln.p
%	desktop.ini
%	foodChain1.xlsx
%	foodChain2.xlsx
%	foodChain3.xlsx
%	foodChain_soln.p
%	hw10.m
%	structDisp_soln.p
%	structFind_soln.p
%	structShow.p
%	structs.mat
%
% Files to submit:
%	ABCs_structureArrays.m
%	ABCs_structures.m
%	colorGrad.m
%	foodChain.m
%	hw10.m
%	structDisp.m
%	structFind.m
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
% Part of this homework are m-files called "ABCs_structures.m" and "ABCs_structureArrays.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_structures.m
%	ABCs_structureArrays.m
%
% ABCs File Testing:
%	ABCs_hw10_pretest.p
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
% Included with this homework is a file entitled "Homework10_DrillProblems.pdf",
% containing instructions for 4 drill problems that cover the
% following topics:
%
%	Structures
%	Structure Arrays
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
%% Function Name: structDisp
%
% Setup:
% load('disps.mat')
%
% Test Cases:
% [disp1] = structDisp(bestOfTAIndex);
% 	disp1 =>
%            favHashtag: '#hashbrowns'                
%              bestJoke: 'Test team, best team #lolz' 
%               MacOrPC: 'PC'                         
%        cryWhenGrading: '==true'                     
%       when5growUpToBe: 'CS 1371 TA'                 
%                bestAt: 'zoning out'                 
%         favMATLABfunc: 'help'                       
%              favQuote: 'You can never be overdressed'
%                                                     
% 
% [disp2] = structDisp(halogens);
% 	disp2 =>
%           symbol: 'F'                               
%        atomicNum: 9                                 
%       atomicMass: 18.998                            
%                                                     
%           symbol: 'Cl'                              
%        atomicNum: 17                                
%       atomicMass: 35.453                            
%                                                     
%           symbol: 'Br'                              
%        atomicNum: 35                                
%       atomicMass: 79.904                            
%                                                     
%           symbol: 'I'                               
%        atomicNum: 53                                
%       atomicMass: 126.904                           
%                                                     
%           symbol: 'At'                              
%        atomicNum: 85                                
%       atomicMass: 210                               
%                                                     
% 
% [disp3] = structDisp(cars);
% 	disp3 =>
%            movie: 'Goldfinger'                               movie: 'Miami Vice'                      
%             year: 1963                                        year: 1972                              
%             make: 'Aston Martin'                              make: 'Ferrari'                         
%            model: 'DB5'                                      model: 'Testarossa'                      
%       aesthetics: [1x1 struct]                          aesthetics: [1x1 struct]                      
%                                                                                                       
%            movie: 'The A-Team'                               movie: 'Back to the Future'              
%             year: 1983                                        year: 1982                              
%             make: 'GMC'                                       make: 'Delorean'                        
%            model: 'G-15'                                     model: 'DMC-12'                          
%       aesthetics: [1x1 struct]                          aesthetics: [1x1 struct]                      
%                                                                                                       
%            movie: 'Jurassic Park'                            movie: 'The Love Bug'                    
%             year: 1993                                        year: 1963                              
%             make: 'Ford'                                      make: 'Volkswagen'                      
%            model: 'Explorer XLT'                             model: '117'                             
%       aesthetics: [1x1 struct]                          aesthetics: [1x1 struct]                      
%                                                                                                       
%
%--------------------------------------------------------------------------------
%% Function Name: structFind
%
% Setup:
% load('structs.mat');
%
% Test Cases:
% [idx1] = structFind(cds, 'Metallica');
% 	idx1 => {}
% 
% [idx2] = structFind(plants, 'Marigold');
% 	idx2 => {  3  'common'  }
% 
% [idx3] = structFind(cars, 'Volkswagen');
% 	idx3 => {  6  'make'  }
%
%--------------------------------------------------------------------------------
%% Function Name: colorGrad
%
% Setup:
% load('colorGradTests.mat');
%
% Test Cases:
% [out1] = colorGrad(test1, 'green', 'red');
% 	out1 => 50x50 struct array which matches that produced by the solution function
% 
% [out2] = colorGrad(test2, 'green', 'green');
% 	out2 => 75x150 struct array which matches that produced by the solution function
% 
% [out3] = colorGrad(test3, 'red', 'blue');
% 	out3 => 200x201 struct array which matches that produced by the solution function
%
%--------------------------------------------------------------------------------
%% Function Name: foodChain
%
% Test Cases:
% [chain1] = foodChain('foodChain1.xlsx');
% 	chain1 => 1x1 struct array which matches that produced by the solution function
% 
% [chain2] = foodChain('foodChain2.xlsx');
% 	chain2 => 1x1 struct array which matches that produced by the solution function
% 
% [chain3] = foodChain('foodChain3.xlsx');
% 	chain3 => 1x1 struct array which matches that produced by the solution function
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