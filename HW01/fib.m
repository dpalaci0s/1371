function [nfib] = fib(num)
%fib calculates the nth fibonacci number
% Function calculates the nth fibonacci number using a formula rather than
% computing the entire sequence
%x = (1+sqrt(5))/2; %varaible to represent the golden ratio
%nfib = (x^num - (-x^(-num)))/sqrt(5); %formula from handout
%nfib = round(nfib); %rounding because fibs are ints
nfib = round((((1+sqrt(5))/2)^num - (-((1+sqrt(5))/2)^(-num)))/sqrt(5)); %formula from handout
end

