function output = modIFY(input, shift)
    lowerCaseMask = (input >= 'a' & input <= 'z'); %find the lower case pos
    upperCaseMask = (input >= 'A' & input <= 'Z'); %find the upper case pos
    input(lowerCaseMask) = char(mod(input(lowerCaseMask)+shift-97, 26)+97); %do shift on lower
    input(upperCaseMask) = char(mod(input(upperCaseMask)+shift-65, 26)+65); %do shift on upper
    output = input;
end