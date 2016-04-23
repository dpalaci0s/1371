function [output] = sortBy(filename, header)
    %read in data
    [~, ~, raw] = xlsread(filename);
    
    %get size of data
    [r, c] = size(raw);
    
    %determine if headers are on the first row. If the header is in (1,1)
    %assume that they are along the rows
    if(strcmp(raw{1,1},header) || any(strcmp(raw(1,:),header)))
        %create a mask for the column
        columnMask = strcmp(raw(1,:),header);
        
        %if that column has numbers, put the numbers in an array and sort,
        %else just sort
        if isnumeric(raw{2,columnMask})
            nums = cell2mat(raw(2:end,columnMask));
            [~, ind] = sort(nums);
        else
            [~, ind] = sort(raw(2:end,columnMask));
        end
        
        %shift the indices down 1
        ind = ind+1;
        for i = 1:c
            %sort the other columns by the sorted indices
            raw(2:end,i) = raw(ind,i);
        end
    else
        %create a mask to find the row with the header
        rowMask = strcmp(raw(:,1),header);
        
        %determine if the header's row contains numbers. If it does, put
        %them into an array and sort, else just sort
        if isnumeric(raw{rowMask,2})
            nums = cell2mat(raw(rowMask,2:end));
            [~, ind] = sort(nums);
        else
            [~, ind] = sort(raw(rowMask,2:end));
        end
        
        %shift the indices down 1
        ind = ind+1;
        for i = 1:r
            %sort each row by the sort indices
            raw(i,2:end) = raw(i,ind);
        end
    end
    output = raw;
end