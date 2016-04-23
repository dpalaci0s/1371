%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : Daniel Palacios
% T-square ID  : dpalacios7
% GT Email     : danielpalacios@gatech.edu
% Homework     : HW05
% Course       : CS1371
% Section      : C03
% Collaboration: "I worked on the homework assignment alone, using
%                  only course materials."
%
% Files provided with this homework:  
%	ABCs_arrays.m
%	ABCs_hw05_pretest.p
%	ABCs_masking.m
%	Homework05_DrillProblems.pdf
%	camelCase_soln.p
%	checkMagic_soln.p
%	hw05.m
%	jumbledRowsCols.mat
%	modIFY_soln.p
%	puzzleBox_soln.p
%	replaceNaN_soln.p
%
% Files to submit:
%	ABCs_arrays.m
%	ABCs_masking.m
%	camelCase.m
%	checkMagic.m
%	hw05.m
%	modIFY.m
%	puzzleBox.m
%	replaceNaN.m
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
% Part of this homework are m-files called "ABCs_arrays.m" and "ABCs_masking.m".
% Open these files in MATLAB and complete them
% according to the directions contained within. You can test your answers with
% the test file listed below.
%
% Files to Complete: 
%	ABCs_arrays.m
%	ABCs_masking.m
%
% ABCs File Testing:
%	ABCs_hw05_pretest.p
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
% Included with this homework is a file entitled "Homework05_DrillProblems.pdf",
% containing instructions for 5 drill problems that cover the
% following topics:
%
%	Arrays
%	Masking
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
%% Function Name: replaceNaN
%
% Test Cases:
% [rep1] = replaceNaN([NaN, 0, NaN; 0, NaN, 0; NaN, 0, NaN], magic(3));
% 	rep1 => [8, 0, 6;...
%            0, 5, 0;...
%            4, 0, 2]
% 
% [rep2] = replaceNaN([NaN 3 7 1; 1 NaN 7 1; 1 3 NaN 1; 1 3 7 NaN], [1 2 4 6; 8 3 9 0; 4 5 7 2; 0 3 1 1]);
% 	rep2 => [1, 3, 7, 1;...
%            1, 3, 7, 1;...
%            1, 3, 7, 1;...
%            1, 3, 7, 1]
% 
% [rep3] = replaceNaN([1 NaN 2 3 5; 8 13 NaN NaN 55; 89 NaN 233 NaN NaN], [100 1 53 19 70; 8 96 21 34 1678; 722 144 41 377 610]);
% 	rep3 => [ 1,   1,   2,   3,   5;...
%             8,  13,  21,  34,  55;...
%            89, 144, 233, 377, 610]
%
%--------------------------------------------------------------------------------
%% Function Name: camelCase
%
% Test Cases:
% [str1] = camelCase('Do you have a name or can I call you mine?');
% 	str1 => 'doYouHaveANameOrCanICallYouMine'
% 
% [str2] = camelCase('Like asthma, you take my breath away.');
% 	str2 => 'likeAsthmaYouTakeMyBreathAway'
% 
% [str3] = camelCase('There''s sideview, rearview, and iloview.');
% 	str3 => 'theresSideviewRearviewAndIloview'
%
%--------------------------------------------------------------------------------
%% Function Name: modIFY
%
% Test Cases:
% [encoded1] = modIFY('Hello world.. hello from the other side?', 7);
% 	encoded1 => 'Olssv dvysk.. olssv myvt aol vaoly zpkl?'
% 
% [encoded2] = modIFY('taad-wpn, pc-rpn dj-npn tps-gpn wxh-ipn?', -15);
% 	encoded2 => 'ello-hay, an-cay ou-yay ead-ray his-tay?'
% 
% [encoded3] = modIFY('Punctuation! Is? So-much:fun:):)', 27);
% 	encoded3 => 'Qvoduvbujpo! Jt? Tp-nvdi:gvo:):)'
%
%--------------------------------------------------------------------------------
%% Function Name: checkMagic
%
% Test Cases:
% [magic1] = checkMagic(magic(10)' - 35);
% 	magic1 => 1
% 
% [magic2] = checkMagic([8 1;3 5;4 9]);
% 	magic2 => 0
% 
% [magic3] = checkMagic([6]);
% 	magic3 => 1
% 
% [magic4] = checkMagic(ones(3, 3));
% 	magic4 => 0
%
%--------------------------------------------------------------------------------
%% Function Name: puzzleBox
%
% Setup:
% load('jumbledRowsCols.mat');
%
% Test Cases:
% [solution1] = puzzleBox(jumbled1, rows1, cols1);
%   solution1 => 
%                 ;XA#@@#AX;          
%               iB@Mh2SS2hM@Bi        
%             ;M@3:        :3@M;      
%            5@G,            ,G@5     
%           3@i                i@3    
%          2@s                  s@2   
%         r@i                    i@r  
%         MG                      GM  
%        S@,                      ,@S 
%        B3       :        :       3B 
%       ;@:      9@9      9@9      :@;
%       XM       B@B      B@B       MX
%       Ah       ;G;      ;G;       hA
%       #2                          2#
%       @S                          S@
%       @S   S@X              X@S   S@
%       #2   i@&              &@i   2#
%       Ah   :@@.            .@@:   hA
%       XM    H@5            5@H    MX
%       ;@:   i@@:          :@@i   :@;
%        B3    &@M:        :M@&    3B 
%        S@,   .M@@5.    .5@@M.   ,@S 
%         MG    .A@@@&33&@@@A.    GM  
%         r@i     sB@@@@@@Bs     i@r  
%          2@s      :i55i:      s@2   
%           3@i                i@3    
%            5@G,            ,G@5     
%             ;M@3:        :3@M;      
%               iB@Mh2SS2hM@Bi        
%                 ;XA#@@#AX;          
% 
% [solution2] = puzzleBox(jumbled2, rows2, cols2);
%   solution2 =>
%                              .r59H#@@@@MA95r,                     
%                           :2H@@@@@@##@@@@@@@@A2;                  
%                        ,5#@@BXr:.      ,;ihM@@@@B2,               
%                      ,9@@hr    ,ri522Ss;.   ,5H@@@@G;             
%                    ,9@Ms   r3B@@@@@@@@@@@#hs.  :9@@@@&;           
%                   5@H;  s&@@@@@@@@@@@@@@@@@@@&r  ,X@@@@G:         
%                 :BM; .X@@M@@@@@@@@@@@@@@@@@M&@@Bs  ,9@@@@2        
%                5@S .3@Bs.&@@@@@@@@@@@@@@@@@@r:G@@H;  rB@@@B;      
%               &A. 2@G;  r@@@@@@@@@@@@@@@@@@@B  rB@@3.  3@@@@2     
%             ,MS rMG:    A@@@@@@@Hi;r9@@@@@@@@r   3@@M;  s@@@@A,   
%            ;B, 9H;     ,@@@@@@@h     s@@@@@@@3    i@@@i  :M@@@@r  
%           rh :Hi       r@@@@@@#       3@@@@@@H     r@@@X  .H@@@@S 
%          r2 S9.        S@i53h#3       ;@@@@@@#      r@@@9  .A@@@@5
%         rs 2s          5#    9X       ,@@@@@@#       s@@@h  .H@@@@
%        :; i,           i@    S&       r@@@@@@M        2@@@h  .H@@#
%       ., ;             ;@,   ;@,      &@@@@@@&         B@@@3   2Ar
%                         @i :3@@B:    3@@@@@@@5         5@@@@s     
%                         9M3@@@@@@h23M@@@@@@@@,         i@@@@#     
%                         ,@@@@@@@@@@@@@@@@@@@9          3@@@@@i    
%          .               2@@@@@@@@@@@@@@@@@@.         ,@@@@@@&    
%           :,              &@@@@@@@@@@@@@@@@r         ,B@@@@@@H    
%            :s.             G@@@@@@@@@@@@@@r         ;#@2,H@@@S    
%             .Ss             5@@@@@@@@@@@A:         5@@3   XGs     
%               r3s            ,2B@@@@@@Gr         :A@Mr            
%                 ihS.            ,rsr;.         .X@@S              
%                   S&3;                       ,X@#S.               
%                     rhA3r.                .s&@&r                  
%                       .ihA&Xi;,.     ,:s2&Ahs.                    
%                           :S3&HBHHHHAAG3i:                        
% 
% [solution3] = [solution2] = puzzleBox(jumbled2, rows2, cols2);
%   solution3 =>
%                                               
%                                               
%                                               
%                                               
%                                               
%                ,sXhGh3i:  5HA&                
%              :9@@@@@@@@@Hs9@@M                
%             2@@@@@@@@@@@@@M@@M                
%            h@@@@@@@@@@@@@@@@@M                
%           h@@@@@@hs::;ih@@@@@B                
%          S@@@@@B;       :&@@@@.               
%         .#@@@@B,          siii                
%         i@@@@@r       s3XX5552XXXXXXXXXXXXX3, 
%         h@@@@H        3@@@@@@@@@@@@@@@@@@@@@: 
%         H@@@@3        2@@@@@@@@@@@@@@@@@@@@@, 
%         H@@@@X        X@@@@@@@@@@@@@@@@@@@@@, 
%         &@@@@&        X@@AiM@@XX@@@@9sss5@@@, 
%         5@@@@@;       X@@5:@@@r;@@@@i   .##@: 
%         ,@@@@@M:      .,.:B@@@rr@@@@S    .,,  
%          5@@@@@#i.      ;H@@@@rr@@@@i         
%           h@@@@@@M9Sss2A@@@@@@rr@@@@i         
%            3@@@@@@@@@@@@@@@@@@rr@@@@S         
%             sB@@@@@@@@@@@Ah@#@rr@@@@i         
%               r3H#@@#Hh5;  ,,:,s@@@@S         
%                  .,,.        ;MM@@@@MMs       
%                              r@@@@@@@@s       
%                              r@@@@@@@@i       
%                              :93333339;       
%                                               
%                                               
%
%==========================================================================
%% Click of the Week!!
%--------------------------------------------------------------------------
%
%   http://www.mathworks.com/matlabcentral/answers/217444-matlab-jokes-or-puns
%
%==========================================================================
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.