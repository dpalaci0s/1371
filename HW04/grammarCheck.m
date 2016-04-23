function [isCorrect] = grammarCheck(sent)
    lets = sent(1) >= 'A' & sent(1) <= 'Z'; %check if first let is cap
    punc = sent(end) == '.' | sent(end) == '?' | sent(end) == '!'; %check if ends with punc
    isCorrect = lets & punc; %check if both of those are true
end