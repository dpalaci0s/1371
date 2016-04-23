% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A B C] = ABCs_highLevelFileIO(xls1, xls2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of High Level File I/O
%
%
% Directions:
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parentheses. 
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT. 
%
% Given Input Variables:
%   1. xls1 - Given Excel (.xls) file 
%   2. xls2 - .xls file name to write to
% Note: All file input variables will include the file extension  
% i.e.: xls1 = 'file.xls'
%
%
% A) Reading an Excel worksheet. Read in an Excel file whose filename is
% given as an input to this function in xls1.  Store the numerical data from
% this worksheet in A. Store the text data in B and store the raw data
% (entire worksheet) in C.
%
    [A, B, C] = xlsread(xls1);
% D) Writing Excel files. Write just the text data from xls1 to xls2.
xlswrite(xls2, B);

end
