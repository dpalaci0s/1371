function carnival(filename, waves)
    %read in the image file
    image = imread(filename);
    
    %get image size
    [rows, cols, ~] = size(image);
    
    %initialize the output array
    output = [];
    
    %initialize place variables
    initial = 1;
    final = rows .* waves(1);
    
    %determine how the output is going to be split up
    frac = rows/length(waves);
    
    %create the first section of the image
    output = double(imresize(image(initial:final,:,:),[frac cols]));
    
    %go through the rest of the image
    for i = 2:length(waves)
        %move on to the new initial position
        initial = final+1;
        
        %calculate the new final row
        final = final + rows .* waves(i);
        
        %resize the rows between the initial and final into matching the
        %specified dimensions
        toAdd = double(imresize(image(initial:final,:,:),[frac cols]));
        
        %append resized rows to the output
        output = [output; toAdd];
    end
    
    %convert the output to uint8 from type double
    output = uint8(output);
    
    %generate filename and write the image
    outputFile = [filename(1:end-4) '_warped' filename(end-3:end)];
    imwrite(output,outputFile);
end