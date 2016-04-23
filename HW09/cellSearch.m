function [val] = cellSearch(toSearch, sequence)
    B = toSearch;
    for k = sequence
        if iscell(B)
            B = B{k};
        else
            B = B(k);
        end
    end
    val = B;
end