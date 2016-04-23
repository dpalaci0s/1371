function [output] = changeCalc(amount)
%calculates the change in coins given some amount of money

%initialize variables
    qC = 0;
    dC = 0;
    nC = 0;
    pC = 0;
    
    %find the amount of each type of coin
    while(amount > 0)
        %if it can still be broken into quarters, do
        if amount >= 0.25;
            amount = round(amount - 0.25,2);
            qC = qC + 1;
            
        %if quarters are now too large, start taking out dimes
        elseif amount >= 0.1
            amount = round(amount - 0.1,2);
            dC = dC+1;
        
        %start taking out nickels
        elseif amount >= 0.05
            amount = round(amount - 0.05,2);
            nC = nC + 1;
        
        %start taking out pennies
        elseif amount > 0
            amount = round(amount - 0.01,2);
            pC = pC + 1;
        end
    end
    
    %format the output
    output = sprintf('Quarters: %d | Dimes: %d | Nickels: %d | Pennies: %d',...
        qC, dC, nC, pC);
end
