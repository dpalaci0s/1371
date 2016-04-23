function [output] = bracketCheck(textName)
    %initialize variables
    fh1 = fopen(textName);
    output = '';
    line = fgetl(fh1);
    unmatch = 0;
    num = 1;
    cont = true;
    things = [];
    while ischar(line) && cont
        %remove anything that isn't a bracket from the string
        mask = (line == '(' | line ==  '{' | line == '[' ...
        |line ==  ')' | line ==  '}' | line ==  ']');
        line = line(mask);
        things = [];
        %skip past lines that don't have any brackets
        if isempty(line)
            num = num+1;
            line = fgetl(fh1);
        %skip past brackets that only have one line
        elseif length(line) == 1
            unmatch = num;
            cont = false;
        else
            %append each bracket onto a running list of brackets, and if
            %the newest one is a closer that doesn't match the bracket
            %right before it, then things are broken
            for k = 1:length(line)
                things = [things line(k)];
                if length(things) ~= 1 && things(end) == ')' && things(end-1) == '('
                    things(end) = '';
                    things(end) = '';
                elseif length(things) ~= 1 && things(end) == ']' && things(end-1) == '[' 
                    things(end) = '';
                    things(end) = '';
                elseif length(things) ~= 1 && things(end) == '}' && things(end-1) == '{' 
                    things(end) = '';
                    things(end) = '';
                else
                    continue;
                end
            end
            %if everything ended up removed, the line is fine, otherwise,
            %get out of the loop
            if isempty(things)
                num = num+1;
                line = fgetl(fh1);
                continue
            else
                unmatch = num;
                cont = false;
            end
        end
    end
    %if no broken line was ever found, all are balanced. Otherwise, print
    %the line where the break occurs
    if unmatch == 0
        output = sprintf('All brackets are balanced.');
    else
        output = sprintf('The brackets on line %d are not balanced.', unmatch);
    end
    fclose(fh1);
end
