function [output] = caesarSalad(sent, shift)
    sent = sent-97; %this just makes 'a' be 0 because it is easier to work with
    sent = mod(sent+shift, 26); %shift around, taking care of the edge cases
    output = char(sent+97);%revert back to actual char values
end