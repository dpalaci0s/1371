function [ans] = criminalMinds(sus1, sus2, sus3, sus4)
   nums = zeros(1,3);
   nums(1) = all(sus1 == sus2); %these check for differences with sus1
   nums(2) = all(sus1 == sus3);
   nums(3) = all(sus1 == sus4);
   isOne = all(nums == 0); %if they are all diff then sus1 is lying
   susp = ~nums - isOne; %this handles the case where sus1 is not lying
 %because it would take that false that was diff and make it 1
   susp = [isOne susp];
   who = find(susp==1);
   ans = sprintf('Suspect #%d is lying.',who);
end