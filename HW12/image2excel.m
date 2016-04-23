function [outputCell] = image2excel(imageName)
    %get the image
    image = imread(imageName);
    
    %get the dimensions of the image
    [row, col, ~] = size(image);
    
    %preallocate the output cell
    outputCell = cell(row*3,col);
    
    %get all the red, green, and blue values
    red = double(image(:,:,1));
    green = double(image(:,:,2));
    blue = double(image(:,:,3));
    
    %place the red, green, and blue values into every third row
    outputCell(1:3:end) = num2cell(red);
    outputCell(2:3:end) = num2cell(green);
    outputCell(3:3:end) = num2cell(blue);
end