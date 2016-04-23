function shiaSurprise(shia, loc, range)
    %read in the two images
    shiaImage = (imread(shia));
    locImage = (imread(loc));
    
    %resize the background image
    [sR, sC, ~] = size(shiaImage);
    locImage = imresize(locImage, [sR sC]);
    
    %extract the red green and blue layers of the top left corner
    redL = shiaImage(1:10,1:10,1);
    greenL = shiaImage(1:10,1:10,2);
    blueL = shiaImage(1:10,1:10,3);
    
    %find the average value for the layers of the top left corner
    redAvg = uint8(mean(mean(redL)));
    greenAvg = uint8(mean(mean(greenL)));
    blueAvg = uint8(mean(mean(blueL)));
    
    %extract the shia rgb layers
    shiaR = shiaImage(:,:,1);
    shiaG = shiaImage(:,:,2);
    shiaB = shiaImage(:,:,3);
    
    %create masks for the acceptable ranges
    redMask = (shiaR >= (redAvg-range) & shiaR <= (redAvg+range));
    greenMask = (shiaG >= (greenAvg-range) & shiaG <= (greenAvg+range));
    blueMask = (shiaB >= (blueAvg-range) & shiaB <= (blueAvg+range));
    
    %create the overall mask and concatenate it to 3d
    toCat = redMask & greenMask & blueMask;
    greatMask = cat(3, toCat, toCat, toCat);
    
    %replace the background with the image
    shiaImage(greatMask) = locImage(greatMask);
    shiaImage = uint8(shiaImage);
    
    %write the image
    imwrite(shiaImage, ['shia_visits_' loc(1:end-4) '.png']);
end