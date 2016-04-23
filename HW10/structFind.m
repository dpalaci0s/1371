function [output] = structFind(instruc, str)
    [~,columns] = size(instruc);
    output = {};
    names = fieldnames(instruc);
    i = 1;
    k = 1;
    testStr = '';
    while i <= columns
       while k <= length(names)
            testStr = instruc(i).(names{k});
            check = strfind(testStr, str);
            if ~isempty(check)
                output{1} = i;
                output{2} = names{k};
            end
            k = k+1;
       end
       k = 1;
        if ~isempty(output)
            i = columns+1;
        else
            i = i+1;
        end
    end
end