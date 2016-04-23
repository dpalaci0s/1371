function [amt] = splitTicket(cost, tip, people)
%splitTicket calculates how much you have to pay. 
%Given the cost of the bill, the tip percentage, and the number of people
%in the party, this function will output the amount that each individual
%should contribute
amt = round((cost/people)*tip + (cost/people),2); %add the cost of the tip to the total
%amt is rounded to two decimal places because it is a dollar amount
end

