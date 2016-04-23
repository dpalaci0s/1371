function [output] = hashtagMATLAB(name)
    fh1 = fopen(name);
    val = 0;
    %get the name
    actualName = name(1:end-4);
    line = fgets(fh1);
    %go line by line, checking non empty
    while ischar(line)
        if(~isempty(line))   
            %convert line to upperCamel case to find if it's the line with
            %the name because the line after that will have the username
            if(strcmp(upperCamelCase(line),actualName))
                line = fgetl(fh1);
                username = line(2:end);
            end
        end
        %find the number of hashtags on the line
        val = val + sum(line == '#');
        line = fgetl(fh1);
    end
    if(val == 1)
        output = sprintf('%s has used 1 hashtag.',username);
    else
        output = sprintf('%s has used %d hashtags.', username, val);
    end
    fclose(fh1);
end

    
function [out] = upperCamelCase(in)
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
    in(1) = char(in(1)-32);
    out = in;
end
