function [chain] = foodChain(nature)
    [~, text, ~] = xlsread(nature);
    [sR, sC] = size(text);
    count = 0;
    topPredator = '';
    for i = 1:sR
        tempCount = 0;
        for j = 2:sC
            if any(strcmp(text(:,j),text{i,1}))
                tempCount = tempCount+1;
            end
        end
        if tempCount == 0;
            topPredator = text{i,1};
            prey = text(i,2:end);
        end
    end
    chain = struct('Predator', topPredator, 'Prey', struct('Predator', prey, 'Prey',''));
    [~, pC] = size(chain.Prey);
    for n = 1:pC
        hasPrey = any(strcmp(text(:,1),chain.Prey(n).Predator));
        if hasPrey
            mask = strcmp(text(:,1),chain.Prey(n).Predator);
            withTextMask = ~cellfun(@isempty,text(mask,1:end));
            withTextMask(1) = false;
            chain.Prey(n).Prey = struct('Predator',text(mask,withTextMask),'Prey','');
        end
    end
    for m = 1:pC
        [~, pC3] = size(chain.Prey(m).Prey);
        for thirdPred = 1:pC3
        hasPrey = any(strcmp(text(:,1),chain.Prey(m).Prey(thirdPred).Predator));
        if hasPrey
            mask = strcmp(text(:,1),chain.Prey(m).Prey(thirdPred).Predator);
            withTextMask = ~cellfun(@isempty,text(mask,1:end));
            withTextMask(1) = false;
            chain.Prey(m).Prey(thirdPred).Prey = struct('Predator',text(mask,withTextMask),'Prey','');
        end
        end
    end
    for p = 1:pC
        [~, pC3] = size(chain.Prey(p).Prey);
        for q = 1:pC3
            [~,pC4] = size(chain.Prey(p).Prey(q).Prey);
            for fourthPred = 1:pC4
               hasPrey = any(strcmp(text(:,1),chain.Prey(p).Prey(q).Prey(fourthPred).Predator));
               if hasPrey
                   mask = strcmp(text(:,1),chain.Prey(p).Prey(q).Prey(fourthPred).Predator);
                   withTextMask = ~cellfun(@isempty,text(mask,1:end));
                   withTextMask(1) = false;
                   chain.Prey(p).Prey(q).Prey(fourthPred).Prey = struct('Predator',text(mask,withTextMask),'Prey','');
               end
            end
        end
    end
end
