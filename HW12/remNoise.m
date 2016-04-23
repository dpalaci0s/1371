function remNoise(name, greatIndex, method)
    %read in the initial image
    image = imread([name '00.png']);
    
    %get the image size
    [rows, cols, ~] = size(image);
    
    %preallocate arrays for the red, green, and blue layers of the input
    %iamges
    redLayers = ones(rows,cols,greatIndex+1);
    greenLayers = ones(rows, cols, greatIndex+1);
    blueLayers = ones(rows,cols, greatIndex+1);
    
    %add the red, green, and blue layers of the 00 image
    redLayers(:,:,1) = image(:,:,1);
    greenLayers(:,:,1) = image(:,:,2);
    blueLayers(:,:,1) = image(:,:,3);
    
    %preallocate arrays for layers of the edited image
    redOutput = zeros(rows,cols);
    greenOutput = zeros(rows,cols);
    blueOutput = zeros(rows,cols);
    
    %read in all of the images, adding the red, green, and blue layers of
    %each image into the respective arrays that contain those layers
    for i = 1:greatIndex
        %if the index is still less than 10, put the leading 0
        if i < 10
            image = imread([name '0' num2str(i) '.png']);
            redLayers(:,:,i+1) = image(:,:,1);
            greenLayers(:,:,i+1) = image(:,:,2);
            blueLayers(:,:,i+1) = image(:,:,3);
        else
            image = imread([name num2str(i) '.png']);
            redLayers(:,:,i+1) = image(:,:,1);
            greenLayers(:,:,i+1) = image(:,:,2);
            blueLayers(:,:,i+1) = image(:,:,3);
        end
    end
    
    %make the method lowercase in case the input is not lower case
    method = lower(method);
    if strcmp(method,'mode')
        %if the method is mode, calculate the mode along the third
        %dimension, resulting in a 2d array
        redOutput = mode(redLayers,3);
        greenOutput = mode(greenLayers,3);
        blueOutput = mode(blueLayers,3);
    elseif strcmp(method,'mean')
        %if the method is mean, calculate the mean along the third
        %dimension, resulting in a 2d array
        redOutput = mean(redLayers,3);
        greenOutput = mean(greenLayers,3);
        blueOutput = mean(blueLayers,3);
    end
    
    %concatenate the final image
    outputImage = cat(3, uint8(redOutput), uint8(greenOutput), uint8(blueOutput));
    
    %create the filename
    filename = [name '_' method '.png'];
    
    %write the image
    imwrite(outputImage,filename);
end