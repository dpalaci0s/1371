function [readability] = wordDist(filename)
    %open file and whatnot
    fh1 = fopen(filename,'r');
    line = fgetl(fh1);
    lines = [];
    
    %get all of the lines from the text file and put them into one
    %line/vector
    while ischar(line)
        lines = [lines line ' '];
        line = fgetl(fh1);
    end
    
    %get rid of last space, not really important
    lines(end) = '';
    
    %use masking to remove anything that isn't a letter or space
    mask1 = (lines >= 'A' & lines <= 'Z' | lines >= 'a' & lines <= 'z');
    mask2 = (lines == ' ');
    lines = lines(mask1 | mask2);
    
    %make the entire thing lowercase so that only 'technology' has to be
    %tested for
    lines = lower(lines);
    
    %make some copies of lines that will be used in the loops
    linesForLoop = lines;
    linesOrig = lines;
    
    %use the mask that found the spaces and sum it to find the number of
    %spaces
    numSpaces = sum(mask2);
    
    %we currently don't know if technology is in there, so we leave it
    %false for now
    isTech = false;
    
    %counter variable initialization
    temp = 0;
    idx = 1;
    lengths = [];
    
    %uses strtok to find every word and put the length into a vector
    while idx <= numSpaces+1
        [word, linesForLoop] = strtok(linesForLoop, ' ');
        word = strtrim(word);
        
        %use a variable because otherwise isTech would be tested for every
        %word and would ultimately output if the final word was
        %'technology'
        if strcmp(word,'technology')
            temp = temp+1;
        end
        len = length(word);
        lengths = [lengths len];
        idx = idx+1;
    end
    if temp > 0
        isTech = true;
    end
    
    %make it so each length only appears once
    lengths = unique(lengths);
    
    %initialize new counters, make lengths include all of the numbers
    %between the min and max, not just the lengths that were found. Also
    %make a vector of counts
    idx = 1;
    lengths = min(lengths(lengths > 0)):max(lengths);
    counts = zeros(1,length(lengths));
    
    %use masking to add to the counts for each length
    while idx <= numSpaces+1
        [word, lines] = strtok(lines,' ');
        word = strtrim(word);
        mask = lengths == length(word);
        counts(mask) = counts(mask) + 1;
        idx = idx+1;
    end
    
    %make the bar graph
    bar(lengths,counts);
    
    %format the graph
    titleStr = sprintf('Can we read %s?',filename(1:end-4));
    title(titleStr);
    xlabel('Length of word');
    ylabel('Number of Occurences');
    
    %check if the text is too long
    tooLong = any(lengths > 13);
    
    %readable if it has technology or if not too long
    if isTech || ~tooLong
        readability = sprintf('We''re at Georgia Tech, we can read that!');
    else
        readability = sprintf('We''re at Georgia Tech, we can''t read that :(');
    end
    fclose(fh1);
end