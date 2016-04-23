function [outVol, inVol] = inAndOut(radius)
    %this program calculates the volume of a cube inscribed in a sphere and
    %one around the sphere
    outVol = round((2 .* radius)^3, 2);%calculate the volume of the inscribed cube
    inVol = round((sqrt((4 .* radius^2)/3))^3,2);%find the volume of the circumscribed cube
    %the side length of the circumscribed is found using a formula given on
    %the pdf
end
