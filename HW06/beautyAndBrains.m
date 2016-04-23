function [winner,wScore] = beautyAndBrains(beauty, brains, candidates)
    %add the two vectors together to get their combined scores
    overallScore = beauty+brains;
    
    %find who has the highest
    [score, wPos] = max(overallScore);
    
    %If that score is higher than 15, say there are perfect
    if score >= 15
        winner = sprintf('The perfect date is candidate #%d.',candidates(wPos));
        wScore = overallScore(wPos);
    %If it is not greater than 15, print them out anyways.
    else
        winner = sprintf('No perfect date was found, however candidate #%d has the highest score.',candidates(wPos));
        wScore = overallScore(wPos);
    end
end