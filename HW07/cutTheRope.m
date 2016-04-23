function [whereCut, ropeBits] = cutTheRope(ropeTurns)
%function decides where to cut a rope to cut the most bits as possible
%given values where the rope twists
    
    %create a vector of numbers that correspond to the number line the rope
    %is across and offset it by 0.5 since those are the locations that the
    %rope can be cut
    nums = (min(ropeTurns):max(ropeTurns))+0.5;
    
    %create a vector of the number of rope bits that above each number
    ropeCount = zeros(1, length(nums));
    
    %go through the twists that the rope has, increasing the ropeCount each
    %time the rope goes over one of the cuttable values. This is done by
    %adding 1 to ropeCount in the positions that are crossed over during
    %the twisting
    for ndx = 2:length(ropeTurns)
        lower = min(ropeTurns(ndx), ropeTurns(ndx-1));
        upper = max(ropeTurns(ndx), ropeTurns(ndx-1));
        mask = (nums > lower & nums < upper);
        ropeCount(mask) = ropeCount(mask) + 1;
    end
    
    %find where the greatest number of rope bits is
    [val, ~] = max(ropeCount);
    
    %find the numbers that have the greatest number of rope bits
    greatest = nums(ropeCount == val);
    
    %find the smallest of those values
    [pos, ~] = min(greatest);
    
    %output
    whereCut = round(pos,2);
    ropeBits = round(val+1,2);
end