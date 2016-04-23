function detention(sentence, lines, times)
    perLine = times;
    line = [];
    %make fileName
    fileName = camelCase(sentence);
    fileName = [fileName '.txt'];
    %make the line that is going to be printed
    for x = 1:perLine
        line = [sentence ' ' line];
    end
    %get rid of trailing, leading white space
    line = strtrim(line);
    fh1 = fopen(fileName, 'wt');
    
    %print the lines, including a \n only if it isn't the last line
    for j = 1:lines
        if(j ~= lines)
            fprintf(fh1, 'Line %d. %s\n',j, line);
        else
            fprintf(fh1, 'Line %d. %s',j, line);
        end
    end
    fclose(fh1);
end
    
function [out] = camelCase(in)
    in = lower(in); %convert the entire string to lowercase
    mask = (~((in >= 'a' & in <= 'z') | (in >= 'A' & in <= 'Z'))); %find the indices
    afSpace = in==' ';%find the spaces
    afSpace = [false afSpace(1:end-1)];%letters after spaces should be treated
    %differently than those after apostophes, because letters have
    %apostrophes would not be the start of a new word
    in(afSpace) = char(in(afSpace)-32);
    in(mask) = ''; %remove all of the spaces
    %this shifts the mask over 1 so that it gets all the first letters
    %except the first one
    out = in;
end