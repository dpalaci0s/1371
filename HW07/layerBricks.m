function [output] = layerBricks(height, color)
%creates a pyramid of bricks given what color the bricks are (so what they
%actually are) and what height the pyramid is going to be
    %create brick
    brick = ['[' color ']'];
    
    %create an array of the desired size to place the bricks into
    arr = (zeros(height, height .* length(brick)));
    
    %replace all the zeros in the array with a space character
    arr(arr == 0) = ' ';
    
    %create a variable that marks where the bricks need to start for each
    %row
    startPos = 1;
    
    %vector that will be used to hold each row of bricks
    tempVec = [];
    
    %outer for loop goes row by row, placing the bricks on each one
    for ndx = height:-1:1
        %inner for loop creates each row of bricks by concatenating the
        %brick to itself
        for indx = 1:ndx
            tempVec = [brick tempVec];
        end
        arr(ndx, startPos:ndx * length(brick)+(startPos-1)) = tempVec;
        
        %reset the holder variable
        tempVec = [];
        
        %increasing startPos by the necessary amount
        startPos = startPos + (length(color)/2)+1;
    end
    output = char(arr);
end