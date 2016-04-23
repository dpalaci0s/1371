function [output] = fantasyTanks(players, friends)
    %read in files
    [nums, playerNames, ~] = xlsread(players);
    [~, friendText, ~] = xlsread(friends);
    
    %extract the names from the text
    playerNames = playerNames(2:end,1)';
    
    %turn the values into a row vector
    values = nums';
    
    %make a cell array with the first row being player names and the second
    %row being the values for each player
    playScore = {playerNames; values};
    
    %get the number of friends
    [r, ~] = size(friendText);
    
    %get the picks of the friends
    picks = friendText(2:end, 2:end);
    
    %get the names of the friends
    friendNames = friendText(2:end, 1)';
    
    %make a zero vector that represents the score of each friend
    scores = zeros(1, r-1);
    
    %find the size of the picks matrix to get the bounds for the for loop
    [pR, pC] = size(picks);
    
    %go through each person's picks and add the points to their score
    for x = 1:pR
        for y = 1:pC
            %create a mask that marks the position of the matching player's
            %point value and then add that point value to the score
            mask = strcmp(playScore{1,:}, picks(x,y));
            scores(x) = scores(x) + playScore{2}(mask);
        end
    end
    
    %find the first place person and their score
    [maxScore, personPos] = max(scores);
    
    %set the max value to zero in order to find the second max
    scores(personPos) = 0;
    
    %find the second place person and their position
    [secondMax, secondPersonPos] = max(scores);
    
    %find the difference between scores
    difference = maxScore-secondMax;
    
    %find the names of the first and second place people
    firstP = friendNames(personPos);
    secondP = friendNames(secondPersonPos);
    
    %if their scores aren't the same, print the winner, else, say it is a
    %tie
    if(difference ~= 0)
        output = sprintf('%s won by %d points over %s!',firstP{1}, difference, secondP{1});
    else
        output = sprintf('It''s a tie!');
    end
end