function [output] = tabulaRecta(string, key, whatDo)
    %create an alphabet string
    alpha = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    
    %preallocate rectangle
    tabula = zeros(26,26);
    
    %create the tabula recta
    for i = 1:26
        tabula(i,:) = [alpha(i:end) alpha(1:i-1)];
    end
    
    %cast to char
    tabula = char(tabula);
    if(strcmp(whatDo,'encode'))
        %conver the entire string to uppercase
        string = upper(string);
        
        %remove anything that is not letters
        string = string(string >= 'A' & string <= 'Z');
        
        %preallocate output string
        output = char(zeros(1,length(string)));
        for i = 1:length(string)
            %find the row of the letter of the string
            row = tabula(:,1) == string(i);
            
            %find the column of the letter from the key
            column = tabula(1,:) == key(i);
            
            %get the letter that occurs where these intersect
            output(i) = tabula(row, column);
        end
    else
        %preallocate output string
        output = char(zeros(1,length(string)));
        for i = 1:length(string)
            %create a mask to find which column the encoded string came
            %from
            columnMask = tabula(1,:) == key(i);
            
            %extract that column
            column = tabula(:, columnMask);
            
            %get the row that the decrypted letter is on
            row = column == string(i);
            
            %get that letter
            output(i) = tabula(row,1);
        end
    end
end