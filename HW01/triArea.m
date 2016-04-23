function [area] = triArea(ang1, ang2, baseLength)
%triArea outputs the area of a triangle given parameters
%The function outputs the area given two angles and the length of the base.
%This is accomplished by using the law of sines to find the length of
%another side and then using another area formula. 
angOfBase = 180-ang1-ang2; %find the remaining angle of the triangle
ratio = sind(angOfBase)/baseLength; %set up the ratio from the law of sines
legLength1 = sind(ang1)/ratio; %use this ratio to find the length of another leg
area = round((baseLength*legLength1*sind(ang2))/2, 2); %use the area formula from handout and round
end

