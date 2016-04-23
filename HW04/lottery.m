function [winnings] = lottery(bought, winning, amount)
    dashes = strfind(bought, '-'); %find the locations of all the dashes
    dashesW = strfind(winning, '-'); %find all the dashes in the winnings
    num1 = bought(1:dashes(1)-1); %go around the dashes to get the numbers
    num2 = bought(dashes(1)+1:dashes(2)-1);
    num3 = bought(dashes(2)+1:dashes(3)-1);
    num4 = bought(dashes(3)+1:dashes(4)-1);
    num5 = bought(dashes(4)+1:dashes(5)-1);
    powBall = bought(dashes(5)+1:end); %find the powerball
    powBallW = winning(dashesW(5)+1:end);
    count = length(strfind(winning, num1));
    count = count + round(length(strfind(winning, num2))/(length(strfind(winning, num2))+1));%this is kind of gross but this kind of like
    count = count + round(length(strfind(winning, num3))/(length(strfind(winning, num3))+1));%making it a unit vector so something like '2'
    count = count + round(length(strfind(winning, num4))/(length(strfind(winning, num4))+1));%isn't counted in '2' and '12'. This is because 
    count = count + round(length(strfind(winning, num5))/(length(strfind(winning, num5))+1));%at the min ~0 case it is 1/2 which rounds to 1. 
    multi = 0.2 * count; %what percent of the winnings
    winnings = round(amount*multi*((powBall==powBallW)+1),2); 
end