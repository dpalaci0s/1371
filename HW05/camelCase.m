function [out] = camelCase(in)
    in = lower(in); %convert the entire string to lowercase
    mask = (~((in >= 'a' & in <= 'z') | (in >= 'A' & in <= 'Z'))); %find the indices
    afSpace = in==' ';%find the spaces
    afSpace = [false afSpace(1:end-1)];%letters after spaces should be treated
    %differently than those after apostophes, because letters have
    %apostrophes would not be the start of a new word
    in(afSpace) = char(in(afSpace)-32);
    in(mask) = ''; %remove all of the spaces
    %this shifts the mask over 1 so that it gets all the first letters
    %except the first one
    out = in;
end