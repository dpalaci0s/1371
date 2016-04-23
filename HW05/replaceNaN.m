function output = replaceNaN(inp1, inp2)
%This function replaces NaN values in one array with values of the same
%position from another array
    inp1(isnan(inp1)) = inp2(isnan(inp1))%replace the values for which the
    %first array is NaN with the values from the second array
    output = inp1
end