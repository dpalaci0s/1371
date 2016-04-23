function [first, second] = solveQuad(a, b, c)
%This program given the a, b, c terms of a quadratic equation returns the
%roots 
    first = round(((-b) + sqrt(b^2 - 4 .* a .* c))/(2 .* a),4); %find first root
    second = round(((-b) - sqrt(b^2 - 4 .* a .* c))/(2 .* a),4); %find second root
end