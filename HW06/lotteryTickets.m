function [winState] = lotteryTickets(tickets, winning)
%Function that calculates total winnings from the lottery
    %initialize variables, extract nums and powerBalls, etc. 
    winState = '';
    powerBalls = tickets(1:end,6);
    nums = tickets(:,1:5);
    powerBallWin = winning(6);
    amount = 0;
    
    %check for each number in all tickets if they are somewhere in the
    %winning ticket
    ticketMask = nums == winning(1) | nums == winning(2) ...
        | nums == winning(3) | nums == winning(4) |...
        nums == winning(5);
    
    %check which tickets had a winning Powerball
    powerBallMask = (powerBalls == powerBallWin)';
    
    %find the number of matches in each row
    matches = sum(ticketMask,2)';
    
    %separate the rows by those with a matching powerball and those that
    %did not
    withPowerBall = matches(powerBallMask);
    withoutPowerBall = matches(~powerBallMask);
    
    %This code is absolute garbage but I'm pretty sure it works.
    %Basically, for vectors, it is checking for each possible number of
    %matches and multiplying the winnings by the number of times that many
    %matches occur. This was originally written with elseif, which made it
    %look a LITTLE less disgusting, but using elseif causes some thing like
    %the zero check to never occur if the 4 one is successful. 
    if(any(withPowerBall == 5))
        winState = sprintf('Congratulations! You''ve won the Grand Prize!');
    end
    if(any(withPowerBall == 4))
        amount = amount + 50000.*(length(find(withPowerBall==4)));
    end
    if(any(withPowerBall == 3))
        amount = amount + 100.*(length(find(withPowerBall==3)));
    end
    if(any(withPowerBall == 2))
        amount = amount + 7.*(length(find(withPowerBall==2)));
    end
    if(any(withPowerBall == 1))
        amount = amount + 4.*(length(find(withPowerBall==1)));
    end
    if(any(withPowerBall == 0))
        amount = amount + 4.*(length(find(withPowerBall==0)));
    end
    if(any(withoutPowerBall == 5))
        amount = amount + 1000000.*(length(find(withoutPowerBall==5)));
    end
    if(any(withoutPowerBall == 4))
        amount = amount + 100.*(length(find(withoutPowerBall==4)));
    end
    if(any(withoutPowerBall == 3))
        amount = amount + 7.*(length(find(withoutPowerBall==3)));
    end
    
    %Basically, if the winState variable didn't have a value set to it by
    %the Grand Prize conditional, then it's length would still be zero as
    %I originally set it, in which case you would have to output the amount
    %that was won. 
    if(length(winState)==0)
        %If the amount isn't zero...
        if(amount > 0)
            winState = sprintf('Congratulations! You''ve won %d dollars!',amount);
        else
            winState = sprintf('Too bad. You did not win any money.');
        end
    end
end

