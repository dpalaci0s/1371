function [lunch] = packIt(calorieFile, recipes)
    %open files and initialize all variables
    [~, text, ~] = xlsread(recipes);
    fh1 = fopen(calorieFile);
    line = fgetl(fh1);
    count = 1;
    maxAmt = 0;
    maxRec = '';
    cA = {};
    ingNames = {};
    ingCals = {};
    
    %go through the calorie file, getting the food name and the calorie
    %count and storing them into separate cell arrays at a position denoted
    %by count
    while ischar(line)
        colonPos = strfind(line, ':');
        food = line(1:colonPos-1);
        amt = line(colonPos+1:end);
        ingNames{count} = food;
        ingCals{count} = amt;
        line = fgetl(fh1);
        count = count+1;
    end
    
    %concatenate the names and calories to be one cell array, with names on
    %the first row and calories on the second
    cA = {ingNames; ingCals};
    [r, c] = size(text);
    
    %initialize the variables that are going to be used in the for loop
    rec = '';
    num = 0;
    food = '';
    recNames = text(1, :);
    
    %go through the text, down each row and then across rather than across
    %and then down like usual. 
    for y = 1:c
        
        %reset the recipe name and calorie count for each new recipe
        cal = 0;
        rec = recNames{y};
        
        %go down the recipe, use isempty to avoid erroring at an empty line
        %because some recipes are longer than others
        for x = 2:r
            if(isempty(text{x,y}))
                continue
            else
                
                %find the food name and the amount that is going to be used
                colonPos = strfind(text{x,y},':');
                num = text{x,y}(1:colonPos(1)-1);
                food = text{x,y}(colonPos(2)+1:end);
                mask = strcmp(cA{1,:}, food);
                cal = cal + str2double(num) * str2double(cA{2,:}{mask});
            end
        end
        
        %if the calorie count from the last recipe is greater than the
        %current max, change the max to be the current count
        if cal > maxAmt
            maxAmt = cal;
            maxRec = rec;
        else
            continue;
        end
    end
    
    %round the value and the convert to a string to get rid of scientific
    %notation
    maxAmt = round(maxAmt);
    lunch = sprintf('I will make %s for lunch and consume %s calories.',maxRec, num2str(maxAmt));
end