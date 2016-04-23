function [output] = lostThatLovinFeelin(map, loc)
    %extract values from the input
    [r,c] = size(map);
    dir = '';
    currentX = loc(1);
    currentY = loc(2);
    
    %create vectors that represent all the directions
    north = map(currentX:-1:1,currentY)';
    east = map(currentX,currentY:end)';
    south = map(currentX:end,currentY)';
    west = map(currentX,currentY:-1:1)';
    majorDiag = diag(map,currentY-currentX)';
    newY = (c-currentY)+1;
    minorDiag = diag(fliplr(map),abs(newY-currentX))';
    
    %these if statements find the diagonal directions but there a few if
    %statements in order to take care of cases where the position is at
    %some point along the edge of the map
    if(currentX == 1)
        northwest = false;
        northeast = false;
    elseif(currentY == c)
        northeast = false;
        northwest = majorDiag(1:currentX);
    elseif(currentY == 1)
        northwest = false;
        northeast = minordiag(1:currentX);
    else
        if(currentX >= length(majorDiag))
            northwest = majorDiag(1:currentY);
        else
            northwest = majorDiag(1:currentX);
        end
        if(currentX >= length(minorDiag))
            northeast = minorDiag(1:newY);
        else
            northeast = minorDiag(1:currentX);
        end
    end
    if(currentX == r)
        southeast = false;
        southwest = false;
    else
        southeast = majorDiag(currentX:end);
        southwest = minorDiag(currentX:end);
    end
    
    %check in each direction
    if(any(north))
        dir = 'North';
    elseif(any(northeast))
        dir = 'Northeast';
    elseif(any(east))
        dir = 'East';
    elseif(any(southeast))
        dir = 'Southeast';
    elseif(any(south))
        dir = 'South';
    elseif(any(southwest))
        dir = 'Southwest';
    elseif(any(west))
        dir = 'West';
    elseif(any(northwest))
        dir = 'Northwest';
    end
    
    %if the direction was not already set, say the no love thing
    if(isempty(dir))
        output = sprintf('There is no love to be found :(');
    else
        output = sprintf('Head %s to find love.',dir);
    end
        
end