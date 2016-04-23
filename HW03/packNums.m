function [nums] = packNums(in)
%this function takes a vector of nums and separates each of them
    out = sepDigits(in); %apply the sepDigits function on the input
    huns = out(1:length(in)); %extract the hundreds from out
    tenStart = length(in)+1; %indexing for the tens begins one after length of input
    tenStop = 2 .* length(in); %there would be length(in) tens
    oneStart = tenStop+1; %doing same thing for ones
    oneStop = 3 .* length(in); %there are 3*length(in) numbers in the vector
    tens = out(tenStart:tenStop); %extracting the tens
    ones = out(oneStart:oneStop); %extracting the ones
    nums(1:3:3 .* length(in)) = huns; %placing the huns into the output 
    nums(2:3:3 .* length(in)) = tens; %placing the tens into the output
    nums(3:3:3 .* length(in)) = ones; %placing the ones into the output
end

function [out] = sepDigits(num)
    hun = floor(num/100); %find the hundreths place digit
    ten = floor(mod(num, 100)/10); %find the tenths place digit
    one = mod(num,10); %find the ones place digit
    out = [hun, ten, one];
end

