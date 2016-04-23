function [vf] = freefall(vi, t)
%This function calculates the final velocity of an object given the 
%initial velocity and the time taken for the object to reach the ground
vf = vi + 9.807*t;
end

