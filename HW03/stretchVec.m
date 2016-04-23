function [out] = stretchVec(nums, scale)
%This program will space out a vector of double by some given scale
    holder = floor(linspace(1, length(nums)+(scale-1)/scale, scale*length(nums))); 
    %this line was pretty much just taken from fiddling after reading the
    %drill problems sheet
    out = nums(holder);
end