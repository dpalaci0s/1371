function [best] = election(candidates, voters)
   
    %read in the data, initialize variables, etc. Separate the candidates
    %and the voters from the policies. Create new variables that will
    %contain the number of votes for each candidates at state level,
    %popular vote, and electoral vote
    [~, ~, raw] = xlsread(candidates);
    candidates = raw(2:end,1);
    popVote = zeros(1, length(candidates));
    electoralVotes = zeros(1, length(candidates));
    stateVotes = zeros(1, length(electoralVotes));
    
    %get the policies and replace the 'yes' and 'no' positions with just a
    %true or false 
    policies = raw(2:end, 2:end);
    policies = strrep(policies, 'yes', '1');
    policies = strrep(policies, 'no', '0');
    policies = logical(str2double(policies));
    
    %get size of policy cell array
    [pR, ~] = size(policies);
    
    %initialize variables that will be changed during the loop
    best = '';
    [r, c] = size(voters);
    r2 = 1;
    
    %the most outer for loop goes down the list of states
    for i = 1:r
        
        %grab the cell array that contains the voters from that state
        people = voters{i,2};
        [r2, ~] = size(people);
        
        %the middle for loop goes through voters from the state
        for k = 1:r2
            
            %find the most important policy for the voter and find
            %whether or not they support that policy
            policy1 = people{k,1}(1);
            policy2 = people{k,1}(2);
            policy1Pos = people{k,2}(1);
            policy2Pos = people{k,2}(2);
            votePos = 0;
            
            %inner most for loop goes through the candidate positions and
            %finds the ones that match on the two policies
            for n = 1:pR
                
                %find if there is a candidate that matches both policies
                if ((policies(n,policy1) == policy1Pos) && (policies(n, policy2) == policy2Pos))
                    if votePos == 0
                        votePos = n;
                    else
                        %if a candidate has already been chosen, make it so
                        %that the person will not vote
                        votePos = -1;
                        continue
                    end
                end
            end
            
            %if when that loop concludes the person has still not been able
            %to choose a candidate, they will see if there's a unique
            %candidate that agrees with their most important policy, using
            %the same method to check as above
            if votePos == 0
                for n = 1:pR
                if ((policies(n,policy1) == policy1Pos))
                    if votePos == 0
                        votePos = n;
                    else
                        votePos = -1;
                        continue
                    end
                end
                end
                if votePos ~= -1
                    stateVotes(votePos) = stateVotes(votePos) + 1;
                else
                    continue
                end
            elseif votePos ~= -1
                stateVotes(votePos) = stateVotes(votePos) + 1;
            end
        end
        
        %add votes to the popular vote
        popVote = popVote + stateVotes;
        
        %determine who won the state
        [~, colWin] = max(stateVotes);
        
        %reset state votes
        stateVotes = zeros(1,length(stateVotes));
        
        %add electoral votes for the winner of the state
        electoralVotes(colWin) = electoralVotes(colWin) + voters{i,3};
    end
    
    %find who has the best chance based on electoral votes
    [~, winnerPos] = max(electoralVotes);
    
    %get the name of the winner
    winner = candidates{winnerPos};
    
    %calculate their vote percentages
    popVotePct = round(popVote(winnerPos)*100/sum(popVote),1);
    elecVotePct = round(electoralVotes(winnerPos)*100/sum(electoralVotes),1);
    
    %format output
    best = sprintf('%s wins with %s%% of the electoral vote, and %s%% of the popular vote.'...
        ,winner, num2str(elecVotePct), num2str(popVotePct));
end