function [out] = potatoGrowth(growth, days)
%this function finds the days over which a set of data changed the most
    [sortedGrowth, ~] = sort(growth); %sort the vector and have a throwaway for second output
    growthChange = diff(sortedGrowth); %create vector of the differences in heights
    [maxGrowth, ~] = max(growthChange); %determine what the greatest amount of growth is
    [~,maxHeightIndex] = max(growth); %find the max value of the height
    daysI = days(days <= days(maxHeightIndex)); %get the days upto the day of greatest height
    daysI = sort(daysI); %sort the days
    daysI(end) = []; %remove the max height
    iDay = daysI(end); %grab the day closest to the day of highest growth
    fDay = days(maxHeightIndex); %get the day where height changed the most
    out = sprintf('The potato grew %d inches between day %d and day %d', maxGrowth, iDay, fDay);
    
end
