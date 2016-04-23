function [astronaut, time] = EVAtime(names, times)
%given names and corresponding EVAtime, find the astronaut with the 
%most EVA time    

    %initialize variables
    name = '';
    
    %find which time is the greatest
    [time, pos] = max(times);
    
    %iterarte through the vector to the position of the greatest time to
    %get the corresponding name
    for ind = 1:pos
        [name names] = strtok(names,',');
    end
    
    %set output
    astronaut = name;
    time = round(time,2);
end