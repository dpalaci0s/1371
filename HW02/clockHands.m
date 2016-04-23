function [hourFinal, minuteFinal] = clockHands(hourInitial, minuteInitial, minutes)
    currentTime = (hourInitial .* 60) + minuteInitial; %convert the current time to be in minutes
    newTime = currentTime + minutes; %add the minutes to the current time
    hourFinal = mod(floor(newTime ./ 60),12); %find the hour by dividing, 
    %use modulus in case it goes over the max value of 11
    minuteFinal = mod(newTime, 60); %find the minutes, using modulus to take
    %care for minutes values greater than 59
end
