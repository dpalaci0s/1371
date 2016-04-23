function [output] = careerFair(appData)
%get everything out of the excel file and initialize variables. Only going
%to use the text because the name and the resume name are the only things
%that are needed. 
    [~, text, ~] = xlsread(appData);
    [~, c] = size(text);
    resumeNames = [];
    names = [];
    
    %goes through the first row and find which columns contain the names
    %and the names of the resume files. Put these names into arrays. 
    for i = 1:c
        if(strcmp('Resume',text(1,i)))
            resumeNames = [resumeNames; text(2:end,i)];
        end
        if strcmp('Name', text(1,i))
            names = [names; text(2:end,i)];
        end
    end
    
    %create a GPA vector and get the GPAs using the helper function
    GPAs = [];
    for k = 1:length(resumeNames)
        GPAs = [GPAs; getGPA(resumeNames(k))];
    end
    
    %sort the GPAs in descending order and the sort the names in that same
    %order using the second output
    [sortedGPAs, order] = sort(GPAs, 'descend');
    [fR, ~] = size(names);
    names = names(order);
    output = {};
    
    %go through line by line of a cell array, adding the names and the
    %GPAs. If you're in the first column, put a name, otherwise, GPA. 
    for x = 1:fR
        for y = 1:2
            if y == 1
                output{x,y} = names{x};
            else
                output{x,y} = sortedGPAs(x);
            end
        end
    end
    
end

function [gpa] = getGPA(fileName)
    %open the file and get the first line, as that is where the GPA will e
    fh1 = fopen(fileName{1});
    line = fgetl(fh1);
    
    %find where the phrase 'GPA: ' occurs because after that is where the
    %numbers will be
    pos = strfind(line, 'GPA: ');
    
    %get the GPA
    gpa = line(pos+5:pos+8);
    
    %just to be sure, remove everything that is not a number of a period
    %from the GPA
    mask1 = (gpa >= '0' & gpa <= '9');
    mask2 = gpa == '.';
    gpa = gpa(mask1 | mask2);
    
    %return the GPA as a double
    gpa = str2double(gpa);
end