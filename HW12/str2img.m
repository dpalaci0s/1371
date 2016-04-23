function str2img(phrase, font, rgb)
    %initialize array
    arr = [];
    
    %put the phrase into the array
    for i = 1:length(phrase)
        arr = [arr font{phrase(i)}];
    end
    
    %turn the font array into a logical array
    arrL = logical(arr);
    
    %make copies from red, green, and blue
    r = arr;
    g = arr;
    b = arr;
    
    %put values where the input says, set everything else to white. Repeat
    %for green and blue. 
    r(arrL) = rgb(1);
    r(~arrL) = 255;
    g(arrL) = rgb(2);
    g(~arrL) = 255;
    b(arrL) = rgb(3);
    b(~arrL) = 255;
    
    %concatenate the rgb layers into one image
    img = cat(3, r, g, b);
    
    %convert the image to uint8 type
    img = uint8(img);
    
    %get title image in camel case, put the file type, and output the image
    title = camelCase(phrase);
    title = [title '.png'];
    imwrite(img, title);
end

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