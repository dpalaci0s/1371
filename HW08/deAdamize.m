function deAdamize(orig, replacements)
    fh1 = fopen(replacements);
    fh2 = fopen(orig);
    newFileName = [orig(1:end-4) '_edited.txt'];
    fh3 = fopen(newFileName, 'w');
    punLine = fgetl(fh1);
    origLine = fgetl(fh2);
    %go through line by line
    while ischar(origLine)
        while ischar(punLine)
            %go through and check for all the puns on the line
            colonPos = find(punLine == ':');
            pun = punLine(1:colonPos-1);
            repl = punLine(colonPos+1:end);
            origLine = strrep(origLine, pun, repl);
            punLine = fgetl(fh1);
        end
        %this takes care to not print an extra new line character at the
        %end
        holder = origLine;
        origLine = fgetl(fh2);
        if ischar(origLine) 
            fprintf(fh3,'%s\n',holder);
        else
            fprintf(fh3,'%s',holder);
        end
        fclose(fh1);
        fh1 = fopen(replacements);
        punLine = fgetl(fh1);
    end
    fclose(fh1);
    fclose(fh2);
    fclose(fh3);
end