function [hun, ten, one] = sepDigits(num)
%This program gives the individual digits of a 3 digit number
    hun = floor(num/100); %find the hundreths place digit
    ten = floor(mod(num, 100)/10); %find the tenths place digit
    one = mod(num,10); %find the ones place digit
end
