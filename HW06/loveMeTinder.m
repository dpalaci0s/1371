function [swipe] = loveMeTinder(name, pref, actual, school, selfie, firstWord)
%function decides which way you would swipe on a tinder profile
    %get all the variables and stuff from the input
    lowAge = pref(1);
    highAge = pref(2);
    distRange = pref(3);
    actualAge = actual(1);
    actualDist = actual(2);
    isQuote = firstWord(1) == '"';
    
    %If the school is GT, then the other person is allowed a quote and a
    %selfie, meaning that the only thing that matters is their age and
    %distance being within the acceptable bounds
    if(strcmp(school,'Georgia Tech') || strcmp(school,'GT') || strcmp(school,'Georgia Institute of Technology'))
        if((actualAge >= lowAge && actualAge <= highAge) && actualDist <= distRange)
            swipe = sprintf('Super like %s''s picture',name);
        end
        
%check if their school is UGA, beacuse if it is nothing else matters
    elseif(strcmp(school,'u(sic)ga'))
        swipe = sprintf('Swipe left on %s''s picture',name);

%If not, school doesn't matter so check that the profile is within the 
%date and age ranges and that they don't have both a selfie and a quote
    elseif((actualAge >= lowAge && actualAge <= highAge) && actualDist <= distRange && ~(isQuote && selfie))
        swipe = sprintf('Swipe right on %s''s picture', name);
    else
        
%If they failed all of that, swipe left
        swipe = sprintf('Swipe left on %s''s picture', name); 
    end
end