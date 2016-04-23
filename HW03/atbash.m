function [encode] = atbash(input)
%this function applies the atbash cipher to a given string
   temp = input-96; %change so that the 'a' is now at 1
   temp = 27-temp; %swap letter places (i.e. 'a' becomes 'z')
   encode = char(fliplr(temp+96)); %flip the vector
end
