function goat(filename, rgbSearch, rgbRange, rgbRep, brightRange)
    %read in the file
    image = imread(filename);
    
    %get the size of the image
    [rows, cols, ~] = size(image);
    
    %find the base that we are basing the ranges off of
    redBase = rgbSearch(1);
    greenBase = rgbSearch(2);
    blueBase = rgbSearch(3);
    
    %if the range is given in percentages
    if ischar(rgbRange)
        %strtok for the red percentage
        [red, rgbRange] = strtok(rgbRange,'%');
        
        %strtok for the green percentage
        [green, rgbRange] = strtok(rgbRange,'%');
        
        %get the number from what is left of the string
        blue = rgbRange(rgbRange ~= '%');
        
        %calculate the integer amount that the percentage will change the
        %range by for red, green, and blue
        redP = round(redBase * (str2double(red)/100));
        greenP = round(greenBase * (str2double(green)/100));
        blueP = round(blueBase * (str2double(blue)/100));
        
        %create the vector that contains the ranges for red, green, and
        %blue
        redVec = [(redBase-redP), (redBase+redP)];
        greenVec = [(greenBase-greenP), (greenBase+greenP)];
        blueVec = [(blueBase-blueP), (blueBase+blueP)];
    else
        %if the ranges is given as integers, just create the vector by
        %adding and subtracting the values
        redVec = [redBase-rgbRange(1), redBase+rgbRange(1)];
        greenVec = [greenBase-rgbRange(2), greenBase+rgbRange(2)];
        blueVec = [blueBase-rgbRange(3), blueBase+rgbRange(3)];
    end
    
    %create the masks for red, green, and blue, finding where each one is
    %within their respective ranges
    redMask = (image(:,:,1) >= redVec(1) & image(:,:,1) <= redVec(2));
    greenMask = (image(:,:,2) >= greenVec(1) & image(:,:,2) <= greenVec(2));
    blueMask = (image(:,:,3) >= blueVec(1) & image(:,:,3) <= blueVec(2));
    
    %create a mask that is only true where red, green, and blue are within
    %their respective ranges
    greatMask = (redMask & greenMask & blueMask);
    
    %get the red, green, and blue layers out of the image
    redLayer = image(:,:,1);
    greenLayer = image(:,:,2);
    blueLayer = image(:,:,3);
    
    %replace the red, green, and blue values at the masked locations with
    %the values given in the input
    redLayer(greatMask) = rgbRep(1);
    greenLayer(greatMask) = rgbRep(2);
    blueLayer(greatMask) = rgbRep(3);
    
    %concatenate the replaced layers to create the edited image
    farewellImage = cat(3,redLayer, greenLayer, blueLayer);
    
    %use linspace to create the gradient
    gradRow = round(linspace(brightRange(1),brightRange(2),cols));
    
    %create the gradient matrix
    gradMat = gradRow(ones(1,rows),:);
    
    %create a 3d matrix for the gradient
    gradient = ones(rows,cols,3);
    
    %set each layer of the 3d matrix to be equal to the 2d gradient matrix
    gradient(:, :, 1) = gradMat;
    gradient(:, :, 2) = gradMat;
    gradient(:, :, 3) = gradMat;
    
    %apply the gradient to both images, so multiply the matrices together,
    %then divide by 100 and round
    image = double(image(:,:,:)) .* gradient;
    farewellImage = double(farewellImage(:,:,:)) .* gradient;
    image = image/100;
    farewellImage = farewellImage/100;
    image = round(image);
    farewellImage = round(farewellImage);
    
    %convert back to uint8
    image = uint8(image);
    farewellImage = uint8(farewellImage);
    
    %concatenate the image, flipping the edited one
    finalImage = [image, farewellImage(:,end:-1:1,:)];
    
    %write the image
    imwrite(finalImage, [filename(1:end-4) '_farewell.png']);
end