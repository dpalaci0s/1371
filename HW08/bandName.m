function [output] = bandName(inp)
    fh1 = fopen(inp);
    fileLine = fgetl(fh1);
    output = '';
    while ischar(fileLine)
        %get the numbers that represent lyric file, line, word
        [lyr, rest] = strtok(fileLine, ',');
        [songLine, word] = strtok(rest, ',');
        
        %convert to doubles
        songLine = str2num(songLine);
        word = str2num(word);
        
        %get the lyrics file
        lyrFile = ['lyrics' lyr '.txt'];
        fh2 = fopen(lyrFile);
        
        %go down to the specified line
        lineText = '';
        for vec = 1:songLine
            lineText = fgetl(fh2);
        end
        toAppend = '';
        
        %get specified word
        for n = 1:word
            [toAppend, lineText] = strtok(lineText);
        end
        
        %add to the output
        output = [output ' ' toAppend];
        fileLine = fgetl(fh1);
    end
    
    %remove leading space
    output(1) = '';
    
    %remove everything that is not a space or an apostrophe
    spaceAposMask = (output == '''' | output == ' ');
    letterMask = (output >= 'a' & output <= 'z' | output >= 'A' & output <= 'Z');
    output = output(spaceAposMask | letterMask);
    fclose(fh1);
    fclose(fh2);
end